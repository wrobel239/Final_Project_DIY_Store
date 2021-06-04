package pl.coderslab.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.AvailabilityProduct;
import pl.coderslab.model.AvailabilityProductPojo;
import pl.coderslab.model.Product;
import pl.coderslab.model.ProductPojo;
import pl.coderslab.service.ProductService;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/shop/admin")
public class AdminProductsController {

    private final ProductService productService;

    public AdminProductsController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/products")
    public String showProducts(Model model){
        List<Product> products = productService.getAll();
        model.addAttribute("products", products);
        return "adminProducts";
    }

    @ModelAttribute("availabilities")
    public List<AvailabilityProduct> availabilityProduct(){
        AvailabilityProduct[] availabilityProducts = AvailabilityProduct.values();
        return Arrays.asList(availabilityProducts);
    }

    @GetMapping("/addProduct")
    public String addProduct(Model model){
        ProductPojo productPojo = new ProductPojo();
        productPojo.setAvailability(AvailabilityProduct.NIEDOSTĘPNY);
        model.addAttribute("productPojo", productPojo);
        return "adminAddProduct";
    }

    @PostMapping("/addProduct")
    public String addProductPost(@ModelAttribute @Valid ProductPojo productPojo, BindingResult bindingResult){
        if (bindingResult.hasErrors()){
            return "adminAddProduct";
        }
        productService.createNewProduct(productPojo);
        return "redirect:/shop/admin/products";
    }

    @GetMapping("/products/edit/{id}")
    public String editProduct(Model model, @PathVariable long id){
        Optional<Product> product = productService.get(id);
        if (product.isPresent()){
            ProductPojo productPojo = new ProductPojo();
            productPojo.setId(product.get().getId());
            productPojo.setName(product.get().getName());
            productPojo.setPrice(product.get().getPrice());
            productPojo.setDescription(product.get().getDescription());
            if (product.get().isAvailable()){
                productPojo.setAvailability(AvailabilityProduct.DOSTĘPNY);
            } else {
                productPojo.setAvailability(AvailabilityProduct.NIEDOSTĘPNY);
            }
            productPojo.setSrcImage(product.get().getSrcImage());
            productPojo.setAltImage(product.get().getAltImage());
            model.addAttribute("productPojo", productPojo);
            return "adminAddProduct";
        }
        throw new EntityNotFoundException("Nie istnieje dany produkt");
    }

    @PostMapping("/products/edit/{id}")
    public String editProductPost(@PathVariable long id, @ModelAttribute @Valid ProductPojo productPojo, BindingResult bindingResult){
        Optional<Product> product = productService.get(id);
        if (product.isPresent()){
            if (bindingResult.hasErrors()){
                return "adminAddProduct";
            }
            productService.saveEditedProduct(product.get(), productPojo);
            return "redirect:/shop/admin/products";
        }
        throw new EntityNotFoundException("Nie istnieje dany produkt");
    }
}
