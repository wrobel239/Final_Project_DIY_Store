package pl.coderslab.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.util.WebUtils;
import pl.coderslab.model.CartItem;
import pl.coderslab.model.ShoppingCart;
import pl.coderslab.service.CartItemService;
import pl.coderslab.service.ShoppingCartService;

import javax.persistence.EntityNotFoundException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.Optional;

@Controller
@RequestMapping("/shop")
public class CartController {

    private final ShoppingCartService shoppingCartService;
    private final CartItemService cartItemService;

    public CartController(ShoppingCartService shoppingCartService, CartItemService cartItemService) {
        this.shoppingCartService = shoppingCartService;
        this.cartItemService = cartItemService;
    }

    @GetMapping("/cart/{idCart}/decreaseQuantity/{idCartItem}/{quantity}")
    public String decreaseQuantity(HttpServletRequest request, @PathVariable long idCart, @PathVariable long idCartItem, @PathVariable int quantity, Model model){
        Cookie jSessionId = WebUtils.getCookie(request, "JSESSIONID");
        Optional<ShoppingCart> shoppingCart = shoppingCartService.get(idCart);
        Optional<CartItem> cartItem = cartItemService.get(idCartItem);
        if (shoppingCart.isPresent() && cartItem.isPresent() && jSessionId != null  && quantity >=1) {
            ShoppingCart cart = shoppingCart.get();
            // ten if tylko na chwilę próby zakomentowany
            if (jSessionId.getValue().equals(cart.getSessionId())) {
                shoppingCartService.decreaseQuantity(cart, cartItem.get(), quantity);
            }
        } else {
            // tutaj może jeszcze wewnątrze id dodatkowy throw new
            throw new EntityNotFoundException("ShoppingCart not found or you don't have access");
        }
        // tutaj dokończyć
        return "redirect:/shop/cart";
    }

    @GetMapping("/cart")
    public String showCart(HttpServletRequest request, Model model){
        Cookie jSessionId = WebUtils.getCookie(request, "JSESSIONID");
        if (jSessionId != null){
            ShoppingCart shoppingCart = shoppingCartService.getByJSessionId(jSessionId.getValue());
            model.addAttribute("shoppingCart", shoppingCart);
        } else {
            throw new EntityNotFoundException("You don't have JSESSIONID");
        }
        return "cart";
    }
}
