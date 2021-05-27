package pl.coderslab.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.util.WebUtils;
import pl.coderslab.model.Product;
import pl.coderslab.service.ProductService;
import pl.coderslab.service.ShoppingCartService;

import javax.persistence.EntityNotFoundException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/shop")
public class ProductListController {

    private final ProductService productService;
    private final ShoppingCartService shoppingCartService;

    public ProductListController(ProductService productService, ShoppingCartService shoppingCartService) {
        this.productService = productService;
        this.shoppingCartService = shoppingCartService;
    }

    @GetMapping("/productlist")
    public String showProducts(Model model){
        List<Product> availableProducts = productService.getProducts();
        model.addAttribute("products", availableProducts);
        model.addAttribute("productsLength", availableProducts.size());
        return "productList";
    }

    @GetMapping("/productlist/add-to-cart/{id}")
    public String addToCart(HttpServletRequest request, @PathVariable long id){
        Cookie jSessionId = WebUtils.getCookie(request, "JSESSIONID");
        Optional<Product> product = productService.get(id);
        if (product.isPresent() && jSessionId != null) {
            if (product.get().isAvailable()) {
                shoppingCartService.addToCartProduct(jSessionId.getValue(), product.get(), 1);
            }
        } else {
            // tutaj może jeszcze wewnątrze id dodatkowy throw new
            throw new EntityNotFoundException("Product not found or you don't have JSESSIONID");
        }
        return "redirect:/shop/productlist";
    }
}
