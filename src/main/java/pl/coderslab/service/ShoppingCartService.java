package pl.coderslab.service;

import org.springframework.stereotype.Service;
import pl.coderslab.model.CartItem;
import pl.coderslab.model.Product;
import pl.coderslab.model.ShoppingCart;
import pl.coderslab.model.ShoppingCartStatus;
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

    public Optional<ShoppingCart> get(long id) {
        return shoppingCartRepository.findById(id);
    }

    public ShoppingCart getByJSessionId(String jSessionId) {
        return shoppingCartRepository.findFirstBySessionIdOrderByCreatedDesc(jSessionId);
    }

    public void addToCartProduct(String jSessionId, Product product, int quantity) {
        ShoppingCart shoppingCart = shoppingCartRepository.findFirstBySessionIdOrderByCreatedDesc(jSessionId);
        if (shoppingCart == null) {
            shoppingCart = new ShoppingCart();
            shoppingCart.setSessionId(jSessionId);
            shoppingCart.setShipping(false);
            shoppingCart.setStatus(ShoppingCartStatus.NOT_APPROVED);
            shoppingCartRepository.save(shoppingCart);
        }
        if (quantity >= 1) {
            int isUsed = -1;
            for (CartItem item : shoppingCart.getCartItems()) {
                Product productFromItems = item.getProduct();
                if (productFromItems.equals(product)) {
                    cartItemService.increaseQuantity(item, quantity);
                    isUsed = 1;
                }
            }
            if (isUsed < 0) {
                cartItemService.createNewCartItem(shoppingCart, product, quantity);
            }
        }
    }

    public void decreaseQuantity(ShoppingCart shoppingCart, CartItem cartItem, int quantity) {
        // tutaj mogłoby być porównywanie po id CartItem, przemyśleć kod, mogłoby być jeszcze coś takiego
//        if (cartItem.getShoppingCart().getId() == shoppingCart.getId()) -- to może sporo uprościć
        for (CartItem item : shoppingCart.getCartItems()) {
            Product productFromItems = item.getProduct();
            if (productFromItems.equals(cartItem.getProduct())) {
                cartItemService.decreaseQuantity(cartItem, quantity);
            }
        }
    }

    public void removeCartItem(String jSessionId, CartItem cartItem) {
        // tutaj jeszcze można by dać sprawdzenie, czy status koszyka not_approved
        if (cartItem.getShoppingCart().getSessionId() != null) {
            if (cartItem.getShoppingCart().getSessionId().equals(jSessionId)) {
                cartItemService.deleteById(cartItem);
            }
        }
    }

    public void updateCartProduct(String jSessionId, Product product, int quantity) {
        ShoppingCart shoppingCart = shoppingCartRepository.findFirstBySessionIdOrderByCreatedDesc(jSessionId);
        if (shoppingCart == null) {
            shoppingCart = new ShoppingCart();
            shoppingCart.setSessionId(jSessionId);
            shoppingCart.setShipping(false);
            shoppingCart.setStatus(ShoppingCartStatus.NOT_APPROVED);
            shoppingCartRepository.save(shoppingCart);
        }
        int isUsed = -1;
        for (CartItem item : shoppingCart.getCartItems()) {
            Product productFromItems = item.getProduct();
            if (productFromItems.equals(product)) {
                // tutaj zrobić update - tylko tutaj zmiana względem add
                cartItemService.updateCartItem(item, quantity);
                isUsed = 1;
            }
        }
        if (isUsed < 0) {
            cartItemService.createNewCartItem(shoppingCart, product, quantity);
        }
    }
}
