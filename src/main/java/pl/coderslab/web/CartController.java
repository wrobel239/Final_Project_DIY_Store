package pl.coderslab.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.WebUtils;
import pl.coderslab.model.CartItem;
import pl.coderslab.model.Product;
import pl.coderslab.model.ShoppingCart;
import pl.coderslab.service.CartItemService;
import pl.coderslab.service.ProductService;
import pl.coderslab.service.ShoppingCartService;

import javax.persistence.EntityNotFoundException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.math.BigDecimal;
import java.util.Optional;

@Controller
@RequestMapping("/shop")
public class CartController {

    private final ProductService productService;
    private final ShoppingCartService shoppingCartService;
    private final CartItemService cartItemService;

    public CartController(ProductService productService, ShoppingCartService shoppingCartService, CartItemService cartItemService) {
        this.productService = productService;
        this.shoppingCartService = shoppingCartService;
        this.cartItemService = cartItemService;
    }

    @GetMapping("/cart/decreaseQuantity/{id}")
    public String decreaseQuantity(HttpServletRequest request, @PathVariable long id) {
        Cookie jSessionId = WebUtils.getCookie(request, "JSESSIONID");
        Optional<CartItem> cartItem = cartItemService.get(id);
        if (cartItem.isPresent() && jSessionId != null) {
            shoppingCartService.decreaseQuantity(jSessionId.getValue(), cartItem.get(), 1);
        } else {
            throw new EntityNotFoundException("Dany CartItem nie znaleziony lub nie masz ciasteczka JSESSIONID");
        }
        return "redirect:/shop/cart";
    }

    @GetMapping("/cart")
    public String showCart(HttpServletRequest request, Model model) {
        Cookie jSessionId = WebUtils.getCookie(request, "JSESSIONID");
        if (jSessionId != null) {
            ShoppingCart shoppingCart = shoppingCartService.getByJSessionId(jSessionId.getValue());
            if (shoppingCart == null){
                shoppingCart = new ShoppingCart();
                shoppingCart.setTotalPrice(new BigDecimal("0"));
            }
            model.addAttribute("shoppingCart", shoppingCart);
        } else {
            throw new EntityNotFoundException("Nie masz ciasteczka JSESSIONID");
        }
        return "cart";
    }

    @GetMapping("/cart/add-to-cart/{id}")
    public String increaseQuantityOfProduct(HttpServletRequest request, @PathVariable long id) {
        Cookie jSessionId = WebUtils.getCookie(request, "JSESSIONID");
        Optional<Product> product = productService.get(id);
        if (product.isPresent() && jSessionId != null) {
            if (product.get().isAvailable()) {
                shoppingCartService.addToCartProduct(jSessionId.getValue(), product.get(), 1);
                return "redirect:/shop/cart";
            }
        }
        throw new EntityNotFoundException("Produkt nie znaleziony lub jest niedostępny lub nie nie masz ciasteczka JSESSIONID");
    }

    @GetMapping("/cart/remove-from-cart/{id}")
    public String removeCartItem(HttpServletRequest request, @PathVariable long id) {
        Cookie jSessionId = WebUtils.getCookie(request, "JSESSIONID");
        Optional<CartItem> cartItem = cartItemService.get(id);
        if (cartItem.isPresent() && jSessionId != null) {
            shoppingCartService.removeCartItem(jSessionId.getValue(), cartItem.get());
        } else {
            throw new EntityNotFoundException("Dany CartItem nie znaleziony lub nie masz ciasteczka JSESSIONID");
        }
        return "redirect:/shop/cart";
    }

    @GetMapping("/cart/updateCartItem/{id}")
    public String updateCartItemGet(HttpServletRequest request, @PathVariable long id, Model model) {
        Cookie jSessionId = WebUtils.getCookie(request, "JSESSIONID");
        Optional<CartItem> cartItem = cartItemService.get(id);
        if (cartItem.isPresent() && jSessionId != null) {
            shoppingCartService.checkIfPermittedAccessToCartItem(jSessionId.getValue(), cartItem.get());
            if (cartItem.get().getProduct().isAvailable()) {
                model.addAttribute("product", cartItem.get().getProduct());
                model.addAttribute("cartItem", cartItem.get());
                return "productDetails";
            }
        }
        throw new EntityNotFoundException("CartItem nie znaleziony lub produkt jest niedostępny lub nie masz ciasteczka JSESSIONID");
    }

    @PostMapping("/cart/updateCartItem/{id}")
    public String updateCartItemPost(HttpServletRequest request, @PathVariable long id, Model model, @ModelAttribute @Valid CartItem cartItem, BindingResult bindingResult) {
        Cookie jSessionId = WebUtils.getCookie(request, "JSESSIONID");
        Optional<CartItem> item = cartItemService.get(id);
        if (item.isPresent() && jSessionId != null){
            if (item.get().getProduct().isAvailable()){
                if (bindingResult.hasErrors()) {
                    model.addAttribute("product", item.get().getProduct());
                    return "productDetails";
                }
                shoppingCartService.updateCartItem(jSessionId.getValue(), cartItem, item.get());
                return "redirect:/shop/cart";
            }
        }
        throw new EntityNotFoundException("CartItem nie znaleziony lub produkt jest niedostępny lub nie masz ciasteczka JSESSIONID");
    }
}
