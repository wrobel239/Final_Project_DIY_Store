package pl.coderslab.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.service.ShoppingCartService;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/shop")
public class OrderedViewController {

    private final ShoppingCartService shoppingCartService;

    public OrderedViewController(ShoppingCartService shoppingCartService) {
        this.shoppingCartService = shoppingCartService;
    }

    @GetMapping("/ordered")
    public String orderedView(HttpServletRequest request, Model model){
        return "ordered";
    }
}
