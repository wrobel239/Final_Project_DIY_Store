package pl.coderslab.service;

import org.springframework.stereotype.Service;
import pl.coderslab.model.CartItem;
import pl.coderslab.repository.CartItemRepository;

import java.util.Optional;

@Service
public class CartItemService {

    private final CartItemRepository cartItemRepository;

    public CartItemService(CartItemRepository cartItemRepository) {
        this.cartItemRepository = cartItemRepository;
    }

    public Optional<CartItem> get (long id){
        return cartItemRepository.findById(id);
    }

    public void decreaseQuantity(CartItem cartItem, int quantity){
        if (quantity > 0) {
            if (cartItem.getQuantity() > quantity) {
                cartItem.setQuantity(cartItem.getQuantity() - quantity);
                cartItem.setTotalPrice();
                cartItemRepository.save(cartItem);
            } else {
                cartItemRepository.deleteById(cartItem.getId());
            }
        }
    }
}
