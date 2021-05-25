package pl.coderslab.service;

import org.springframework.stereotype.Service;
import pl.coderslab.model.Product;
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
}
