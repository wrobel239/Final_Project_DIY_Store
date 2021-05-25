package pl.coderslab.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.coderslab.model.Product;
import pl.coderslab.service.ProductService;

import java.util.List;

@Controller
@RequestMapping("/shop")
public class ProductListController {

    private final ProductService productService;

    public ProductListController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/productlist")
    public String showProducts(Model model){
        List<Product> availableProducts = productService.getProducts();
        model.addAttribute("products", availableProducts);
        model.addAttribute("productsLength", availableProducts.size());
        return "productList";
    }
}
