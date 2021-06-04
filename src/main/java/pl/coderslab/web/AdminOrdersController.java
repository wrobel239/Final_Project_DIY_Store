package pl.coderslab.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.CartStatusPojo;
import pl.coderslab.model.ShoppingCart;
import pl.coderslab.model.ShoppingCartEditPojo;
import pl.coderslab.model.ShoppingCartStatus;
import pl.coderslab.service.ShoppingCartService;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;


@Controller
@RequestMapping("/shop/admin")
public class AdminOrdersController {

    private final ShoppingCartService shoppingCartService;

    public AdminOrdersController(ShoppingCartService shoppingCartService) {
        this.shoppingCartService = shoppingCartService;
    }

    public List<CartStatusPojo> getCartStatusPojo(){
        List<CartStatusPojo> cartStatusPojos = new ArrayList<>();
        cartStatusPojos.add(new CartStatusPojo(ShoppingCartStatus.NOT_APPROVED, "nie zatwierdzone"));
        cartStatusPojos.add(new CartStatusPojo(ShoppingCartStatus.APPROVED, "zatwierdzone do realizacji"));
        cartStatusPojos.add(new CartStatusPojo(ShoppingCartStatus.PENDING, "w trakcie realizacji"));
        cartStatusPojos.add(new CartStatusPojo(ShoppingCartStatus.ON_HOLD, "wstrzymane"));
        cartStatusPojos.add(new CartStatusPojo(ShoppingCartStatus.REALIZED, "zrealizowane"));
        return cartStatusPojos;
    }

    @GetMapping("")
    public String getViewAdmin(){
        return "adminPage";
    }

    @GetMapping("/orders")
    public String showOrders(Model model){
        List<ShoppingCart> shoppingCarts = shoppingCartService.getAll();
        model.addAttribute("shoppingCarts", shoppingCarts);
        return "adminOrders";
    }

    @GetMapping("/orders/details/{id}")
    public String showOrdersDetails(Model model, @PathVariable long id){
        Optional<ShoppingCart> shoppingCart = shoppingCartService.get(id);
        if (shoppingCart.isPresent()){
            model.addAttribute("shoppingCart", shoppingCart.get());
            return "adminOrdersDetails";
        }
        throw new EntityNotFoundException("Nie istnieje dany koszyk");
    }

    @GetMapping("/orders/edit/{id}")
    public String editOrder(Model model, @PathVariable long id){
        Optional<ShoppingCart> shoppingCart = shoppingCartService.get(id);
        if (shoppingCart.isPresent()){
            ShoppingCartEditPojo shoppingCartEditPojo = new ShoppingCartEditPojo();
            shoppingCartEditPojo.setStatus(shoppingCart.get().getStatus());
            model.addAttribute("shoppingCartEditPojo", shoppingCartEditPojo);
            model.addAttribute("statuses", getCartStatusPojo());
            return "adminOrderEdit";
        }
        throw new EntityNotFoundException("Nie istnieje dany koszyk");
    }

    @PostMapping("/orders/edit/{id}")
    public String editOrderPost(Model model, @PathVariable long id, @ModelAttribute @Valid ShoppingCartEditPojo shoppingCartEditPojo, BindingResult bindingResult){
        Optional<ShoppingCart> shoppingCart = shoppingCartService.get(id);
        if (shoppingCart.isPresent()){
            if (bindingResult.hasErrors()){
                model.addAttribute("statuses", getCartStatusPojo());
                return "adminOrderEdit";
            }
            shoppingCartService.saveEditedShoppingCart(shoppingCart.get(), shoppingCartEditPojo.getStatus());
            return "redirect:/shop/admin/orders";
        }
        throw new EntityNotFoundException("Nie istnieje dany koszyk");
    }
}
