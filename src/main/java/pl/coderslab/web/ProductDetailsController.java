package pl.coderslab.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.WebUtils;
import pl.coderslab.model.CartItem;
import pl.coderslab.model.Product;
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
public class ProductDetailsController {

    private final ProductService productService;
    private final ShoppingCartService shoppingCartService;

    public ProductDetailsController(ProductService productService, ShoppingCartService shoppingCartService) {
        this.productService = productService;
        this.shoppingCartService = shoppingCartService;
    }

//    BigDecimal nie może być uwzględniany w formularzu w polu hidden i nie może być ustawiony gdy przekazywany obiekt do formularza
    @GetMapping("/productdetails/{id}")
    public String showProductDetails(@PathVariable long id, Model model) {
        Optional<Product> product = productService.get(id);
        if (product.isPresent()) {
            if (product.get().isAvailable()) {
                CartItem cartItem = new CartItem();
                cartItem.setQuantity(1);
//                cartItem.setTotalPrice(new BigDecimal("2"));
                model.addAttribute("product", product.get());
                model.addAttribute("cartItem", cartItem);
                return "productDetails";
            }
        }
        throw new EntityNotFoundException("Product not found or is unavailable");
    }

    @PostMapping("/productdetails/{id}")
    public String addCartItem(HttpServletRequest request, @PathVariable long id, @ModelAttribute @Valid CartItem cartItem, BindingResult bindingResult, Model model) {
        Cookie jSessionId = WebUtils.getCookie(request, "JSESSIONID");
        Optional<Product> product = productService.get(id);
        if (product.isPresent() && jSessionId != null) {
            if (product.get().isAvailable()) {
                if (bindingResult.hasErrors()) {
                    model.addAttribute("product", product.get());
                    return "productDetails";
                }
                shoppingCartService.updateCartProduct(jSessionId.getValue(), product.get(), cartItem.getQuantity());
            }
        } else {
            // tutaj może jeszcze wewnątrze id dodatkowy throw new
            throw new EntityNotFoundException("Product not found or you don't have JSESSIONID");
        }
        return "redirect:/shop/productdetails/" + id;
    }
}
