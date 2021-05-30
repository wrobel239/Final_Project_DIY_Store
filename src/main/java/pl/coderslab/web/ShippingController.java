package pl.coderslab.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.WebUtils;
import pl.coderslab.model.ShoppingCart;
import pl.coderslab.service.ShoppingCartService;

import javax.persistence.EntityNotFoundException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;

@Controller
@RequestMapping("/shop")
public class ShippingController {

    private final ShoppingCartService shoppingCartService;

    public ShippingController(ShoppingCartService shoppingCartService) {
        this.shoppingCartService = shoppingCartService;
    }

    @GetMapping("/chooseShipping")
    public String chooseShipping(HttpServletRequest request, Model model){
        Cookie jSessionId = WebUtils.getCookie(request, "JSESSIONID");
        if (jSessionId != null){
            ShoppingCart shoppingCart = shoppingCartService.getByJSessionId(jSessionId.getValue());
            if (shoppingCart != null){
                if (shoppingCart.getTotalPrice().compareTo(new BigDecimal("0")) > 0){
                    model.addAttribute("shoppingCart", shoppingCart);
                    return "shipping";
                }
            }
        }
        throw new EntityNotFoundException("Koszyk jest pusty lub nie masz ciasteczka JSESSIONID");
    }

    @PostMapping("/chooseShipping")
    public String confirmShipping(HttpServletRequest request, @RequestParam String shipping){
        Cookie jSessionId = WebUtils.getCookie(request, "JSESSIONID");
        if (jSessionId != null){
            ShoppingCart shoppingCart = shoppingCartService.getByJSessionId(jSessionId.getValue());
            if (shoppingCart != null && (shipping.equals("true") || shipping.equals("false")) ){
                if (shoppingCart.getTotalPrice().compareTo(new BigDecimal("0")) > 0){
                    shoppingCartService.updateShipping(shoppingCart, shipping);
                    return "redirect:/shop/chooseShipping";
                }
            }
        }
        throw new EntityNotFoundException("Koszyk jest pusty lub nie masz ciasteczka JSESSIONID lub dane wysłane z formularza są niepoprawne");
    }
}
