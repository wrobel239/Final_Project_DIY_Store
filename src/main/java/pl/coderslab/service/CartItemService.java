package pl.coderslab.service;

import org.springframework.stereotype.Service;
import pl.coderslab.model.CartItem;
import pl.coderslab.model.Product;
import pl.coderslab.model.ShoppingCart;
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

    public void increaseQuantity(CartItem cartItem, int quantity) {
        cartItem.setQuantity(cartItem.getQuantity() + quantity);
        cartItem.setTotalPrice();
        cartItemRepository.save(cartItem);
    }

    public void createNewCartItem (ShoppingCart shoppingCart, Product product, int quantity){
        CartItem item = new CartItem();
        item.setShoppingCart(shoppingCart);
        item.setProduct(product);
        item.setQuantity(quantity);
        item.setTotalPrice();
        cartItemRepository.save(item);
    }

    public void deleteById(CartItem cartItem){
        cartItemRepository.deleteById(cartItem.getId());
    }
}
