package pl.coderslab.service;

import org.springframework.stereotype.Service;
import pl.coderslab.model.AvailabilityProduct;
import pl.coderslab.model.Product;
import pl.coderslab.model.ProductPojo;
import pl.coderslab.repository.ProductRepository;

import java.util.List;
import java.util.Optional;

@Service
public class ProductService {

    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public List<Product> getProducts(){
        return productRepository.findByIsAvailableTrue();
    }

    public Optional<Product> get (long id){
        return productRepository.findById(id);
    }

    public List<Product> getAll(){
        return productRepository.findAll();
    }

    public void createNewProduct(ProductPojo productPojo){
        Product product = new Product();
        product.setName(productPojo.getName());
        if (productPojo.getAvailability().equals(AvailabilityProduct.DOSTĘPNY)){
            product.setAvailable(true);
        } else {
            product.setAvailable(false);
        }
        product.setPrice(productPojo.getPrice());
        product.setDescription(productPojo.getDescription());
        product.setSrcImage(productPojo.getSrcImage());
        product.setAltImage(productPojo.getAltImage());
        productRepository.save(product);
    }

    public void saveEditedProduct(Product product, ProductPojo productPojo){
        if (productPojo.getAvailability().equals(AvailabilityProduct.DOSTĘPNY)){
            product.setAvailable(true);
        } else {
            product.setAvailable(false);
        }
        product.setName(productPojo.getName());
        product.setPrice(productPojo.getPrice());
        product.setDescription(productPojo.getDescription());
        product.setSrcImage(productPojo.getSrcImage());
        product.setAltImage(productPojo.getAltImage());
        productRepository.save(product);
    }
}
