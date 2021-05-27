package pl.coderslab.service;

import org.springframework.stereotype.Service;
import pl.coderslab.model.CartItem;
import pl.coderslab.model.Product;
import pl.coderslab.model.ShoppingCart;
import pl.coderslab.repository.ShoppingCartRepository;

import java.util.Optional;

@Service
public class ShoppingCartService {

    private final ShoppingCartRepository shoppingCartRepository;
    private final CartItemService cartItemService;

    public ShoppingCartService(ShoppingCartRepository shoppingCartRepository, CartItemService cartItemService) {
        this.shoppingCartRepository = shoppingCartRepository;
        this.cartItemService = cartItemService;
    }

    public Optional<ShoppingCart> get (long id) {
        return shoppingCartRepository.findById(id);
    }

    public void decreaseQuantity(ShoppingCart shoppingCart ,CartItem cartItem, int quantity) {
        for (CartItem item : shoppingCart.getCartItems()) {
            Product productFromItems = item.getProduct();
            if (productFromItems.equals(cartItem.getProduct())) {
                cartItemService.decreaseQuantity(cartItem, quantity);
            }
        }
    }
}
