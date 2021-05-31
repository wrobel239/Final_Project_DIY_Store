package pl.coderslab.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.util.WebUtils;
import pl.coderslab.model.*;
import pl.coderslab.service.CustomerDetailsService;
import pl.coderslab.service.ShoppingCartService;

import javax.persistence.EntityNotFoundException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/shop")
public class CheckoutController {

    private final ShoppingCartService shoppingCartService;
    private final CustomerDetailsService customerDetailsService;

    public CheckoutController(ShoppingCartService shoppingCartService, CustomerDetailsService customerDetailsService) {
        this.shoppingCartService = shoppingCartService;
        this.customerDetailsService = customerDetailsService;
    }

    @GetMapping("/checkout")
    public String getCheckout(HttpServletRequest request, Model model){
        Cookie jSessionId = WebUtils.getCookie(request, "JSESSIONID");
        if (jSessionId != null){
            ShoppingCart shoppingCart = shoppingCartService.getByJSessionId(jSessionId.getValue());
            if (shoppingCart != null){
                if (shoppingCart.getTotalPrice().compareTo(new BigDecimal("0")) > 0){
                    CustomerDetails customerDetails = new CustomerDetails();
                    model.addAttribute("customerDetails", customerDetails);
                    model.addAttribute("shoppingCart", shoppingCart);
                    return "checkout";
                }
            }
        }
        throw new EntityNotFoundException("Koszyk jest pusty lub nie masz ciasteczka JSESSIONID");
    }

    @PostMapping("/checkout")
    public String postCheckout(HttpServletRequest request, HttpServletResponse response, Model model, @ModelAttribute @Valid CustomerDetails customerDetails, BindingResult bindingResult){
        Cookie jSessionId = WebUtils.getCookie(request, "JSESSIONID");
        if (jSessionId != null){
            ShoppingCart shoppingCart = shoppingCartService.getByJSessionId(jSessionId.getValue());
            if (shoppingCart != null){
                if (shoppingCart.getTotalPrice().compareTo(new BigDecimal("0")) > 0){
                    if (bindingResult.hasErrors()){
                        model.addAttribute("shoppingCart", shoppingCart);
                        return "checkout";
                    }
                    customerDetailsService.addCustomerDetails(customerDetails);
                    shoppingCartService.addCustomerDetails(customerDetails, shoppingCart);
                    jSessionId.setValue(null);
                    jSessionId.setMaxAge(0);
                    jSessionId.setPath("/");
                    response.addCookie(jSessionId);
                    model.addAttribute("typeOfPayment", String.valueOf(customerDetails.getTypeOfPayment()));
                    return "ordered";
                }
            }
        }
        throw new EntityNotFoundException("Koszyk jest pusty lub nie masz ciasteczka JSESSIONID");
    }

    @ModelAttribute("countries")
    public List<CustomerDetailsCountry> countries(){
        CustomerDetailsCountry[] countries = CustomerDetailsCountry.values();
        return Arrays.asList(countries);
    }

    @ModelAttribute("payments")
    public List<PaymentPojo> payments(){
        List<PaymentPojo> paymentPojos = new ArrayList<>();
        paymentPojos.add(new PaymentPojo(CustomerDetailsTypeOfPayment.CASH_ON_DELIVERY, "Płatność przy odbiorze"));
        paymentPojos.add(new PaymentPojo(CustomerDetailsTypeOfPayment.BANK_TRANSFER, "Płatność przez przelew"));
        paymentPojos.add(new PaymentPojo(CustomerDetailsTypeOfPayment.PAYPAL, "Płatność w systemie PayPal"));
        return paymentPojos;
    }
}
