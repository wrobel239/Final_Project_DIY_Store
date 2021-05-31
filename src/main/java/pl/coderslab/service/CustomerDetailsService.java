package pl.coderslab.service;

import org.springframework.stereotype.Service;
import pl.coderslab.model.CustomerDetails;
import pl.coderslab.model.ShoppingCart;
import pl.coderslab.repository.CustomerDetailsRepository;

@Service
public class CustomerDetailsService {

    private final CustomerDetailsRepository customerDetailsRepository;

    public CustomerDetailsService(CustomerDetailsRepository customerDetailsRepository) {
        this.customerDetailsRepository = customerDetailsRepository;
    }

    public void addCustomerDetails (CustomerDetails customerDetails){
        customerDetailsRepository.save(customerDetails);
    }
}
