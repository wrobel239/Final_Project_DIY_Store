package pl.coderslab.service;

import org.springframework.stereotype.Service;
import pl.coderslab.model.CartItem;
import pl.coderslab.model.Product;
import pl.coderslab.model.ShoppingCart;
import pl.coderslab.model.ShoppingCartStatus;
import pl.coderslab.repository.ShoppingCartRepository;

import javax.persistence.EntityNotFoundException;
import java.math.BigDecimal;
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
        ShoppingCart cart = shoppingCartRepository.findFirstBySessionIdOrderByCreatedDesc(jSessionId);
        calculateTotalPriceAndTotalPriceWithShipping(cart);
        shoppingCartRepository.save(cart);
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
        Optional<ShoppingCart> cart = get(shoppingCart.getId());
        calculateTotalPriceAndTotalPriceWithShipping(cart.get());
        shoppingCartRepository.save(cart.get());
    }

    public void removeCartItem(String jSessionId, CartItem cartItem) {
        // tutaj jeszcze można by dać sprawdzenie, czy status koszyka not_approved
        if (cartItem.getShoppingCart().getSessionId() != null) {
            if (cartItem.getShoppingCart().getSessionId().equals(jSessionId)) {
                cartItemService.deleteById(cartItem);
            }
        }
        ShoppingCart cart = shoppingCartRepository.findFirstBySessionIdOrderByCreatedDesc(jSessionId);
        calculateTotalPriceAndTotalPriceWithShipping(cart);
        shoppingCartRepository.save(cart);
    }

    public void updateCartProduct(String jSessionId, Product product, int quantity) {
        ShoppingCart shoppingCart = shoppingCartRepository.findFirstBySessionIdOrderByCreatedDesc(jSessionId);
        if (shoppingCart == null) {
            shoppingCart = new ShoppingCart();
            shoppingCart.setSessionId(jSessionId);
            shoppingCart.setShipping(false);
            shoppingCart.setStatus(ShoppingCartStatus.NOT_APPROVED);
            // może tutaj ustawić jeszcze set TotalPrice i TotalPriceWithShipping na 0
            shoppingCartRepository.save(shoppingCart);
        }
        int isUsed = -1;
        // zamiast tego for może stream - przy refactor o tym pomyśleć !!!
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
        ShoppingCart cart = shoppingCartRepository.findFirstBySessionIdOrderByCreatedDesc(jSessionId);
        calculateTotalPriceAndTotalPriceWithShipping(cart);
        shoppingCartRepository.save(cart);
    }

    public void updateCartItem(String jSessionId, CartItem cartItem, CartItem item){
        checkIfPermittedAccessToCartItem(jSessionId, item);
        if (item.getId() == cartItem.getId()){
            cartItemService.updateCartItem(item, cartItem.getQuantity());
        } else {
            throw new EntityNotFoundException("Id CartItem przekazanego w formularzu i podanego w URL są różne");
        }
        ShoppingCart cart = shoppingCartRepository.findFirstBySessionIdOrderByCreatedDesc(jSessionId);
        calculateTotalPriceAndTotalPriceWithShipping(cart);
        shoppingCartRepository.save(cart);
    }

    public void checkIfPermittedAccessToCartItem(String jSessionId, CartItem cartItem) {
        // tutaj jeszcze można by dać sprawdzenie, czy status koszyka not_approved
        if (cartItem.getShoppingCart().getSessionId() != null) {
            if (!cartItem.getShoppingCart().getSessionId().equals(jSessionId)) {
                throw new EntityNotFoundException("Nie masz dostępu do danego CartItem");
            }
        } else {
            throw new EntityNotFoundException("Nie masz dostępu do danego CartItem");
        }
    }

    public void calculateTotalPriceAndTotalPriceWithShipping(ShoppingCart shoppingCart){
        BigDecimal totalPrice = new BigDecimal("0");
        for (CartItem item : shoppingCart.getCartItems()){
            totalPrice = totalPrice.add(item.getTotalPrice());
        }
        shoppingCart.setTotalPrice(totalPrice);
        if (shoppingCart.isShipping()){
            shoppingCart.setTotalPriceWithShipping(totalPrice.add(new BigDecimal("50")));
        } else {
            shoppingCart.setTotalPriceWithShipping(totalPrice);
        }
    }

    public void calculateTotalPriceWithShipping(ShoppingCart shoppingCart){
        BigDecimal totalPrice = shoppingCart.getTotalPrice();
        if (shoppingCart.isShipping()){
            shoppingCart.setTotalPriceWithShipping(totalPrice.add(new BigDecimal("50")));
        } else {
            shoppingCart.setTotalPriceWithShipping(totalPrice);
        }
    }
}
