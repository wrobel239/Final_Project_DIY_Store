package pl.coderslab.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.model.Product;
import pl.coderslab.service.ProductService;

import javax.persistence.EntityNotFoundException;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/shop")
public class ProductDetailsController {

    private final ProductService productService;

    public ProductDetailsController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/productdetails/{id}")
    public String showProductDetails(@PathVariable long id, Model model){
        Optional<Product> product = productService.get(id);
        if (product.isPresent()){
            if (product.get().isAvailable()){
                model.addAttribute("product", product.get());
                return "productDetails";
            }
        }
        // dorobić jeszcze obsługę wyjątku !!!
        throw new EntityNotFoundException("entity not found or is unavailable");
    }
}
