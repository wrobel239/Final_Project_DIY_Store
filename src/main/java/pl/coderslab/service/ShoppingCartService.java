package pl.coderslab.service;

import org.springframework.stereotype.Service;
import pl.coderslab.model.*;
import pl.coderslab.repository.ShoppingCartRepository;

import javax.persistence.EntityNotFoundException;
import java.math.BigDecimal;
import java.time.LocalDateTime;
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
        shoppingCart = checkIfDemandedToSetNewShoppingCart(jSessionId, shoppingCart);
        if (quantity >= 1) {
            int isUsed = -1;
            Optional<CartItem> item = findCartItemWithProduct(shoppingCart, product);
            if (item.isPresent()){
                cartItemService.increaseQuantity(item.get(), quantity);
                isUsed = 1;
            }
            if (isUsed < 0) {
                cartItemService.createNewCartItem(shoppingCart, product, quantity);
            }
        }
        setTotalPriceAndTotalPriceWithShipping(jSessionId);
    }

    public void decreaseQuantity(String jSessionId, CartItem cartItem, int quantity) {
        checkIfPermittedAccessToCartItem(jSessionId, cartItem);
        cartItemService.decreaseQuantity(cartItem, quantity);
        setTotalPriceAndTotalPriceWithShipping(jSessionId);
    }

    public void removeCartItem(String jSessionId, CartItem cartItem) {
        // niekoniecznie tutaj jeszcze można by dać sprawdzenie, czy status koszyka not_approved
        checkIfPermittedAccessToCartItem(jSessionId, cartItem);
        cartItemService.deleteById(cartItem);
        setTotalPriceAndTotalPriceWithShipping(jSessionId);
    }

    public void updateCartProduct(String jSessionId, Product product, int quantity) {
        ShoppingCart shoppingCart = shoppingCartRepository.findFirstBySessionIdOrderByCreatedDesc(jSessionId);
        shoppingCart = checkIfDemandedToSetNewShoppingCart(jSessionId, shoppingCart);
        int isUsed = -1;
        Optional<CartItem> item = findCartItemWithProduct(shoppingCart, product);
        if(item.isPresent()){
            cartItemService.updateCartItem(item.get(), quantity);
            isUsed = 1;
        }
        if (isUsed < 0) {
            cartItemService.createNewCartItem(shoppingCart, product, quantity);
        }
        setTotalPriceAndTotalPriceWithShipping(jSessionId);
    }

    public void updateCartItem(String jSessionId, CartItem cartItem, CartItem item){
        checkIfPermittedAccessToCartItem(jSessionId, item);
        if (item.getId() == cartItem.getId()){
            cartItemService.updateCartItem(item, cartItem.getQuantity());
        } else {
            throw new EntityNotFoundException("Id CartItem przekazanego w formularzu i podanego w URL są różne");
        }
        setTotalPriceAndTotalPriceWithShipping(jSessionId);
    }

    public void updateShipping(ShoppingCart shoppingCart, String shipping){
        if (shipping.equals("true")){
            shoppingCart.setShipping(true);
        } else {
            shoppingCart.setShipping(false);
        }
        calculateTotalPriceWithShipping(shoppingCart);
        shoppingCartRepository.save(shoppingCart);
    }

    public void checkIfPermittedAccessToCartItem(String jSessionId, CartItem cartItem) {
        // niekoniecznie tutaj jeszcze można by dać sprawdzenie, czy status koszyka not_approved
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

    public void addCustomerDetails (CustomerDetails customerDetails, ShoppingCart shoppingCart){
        shoppingCart.setCustomerDetails(customerDetails);
        shoppingCart.setStatus(ShoppingCartStatus.APPROVED);
        shoppingCart.setDateOfOrder(LocalDateTime.now());
        shoppingCartRepository.save(shoppingCart);
    }

    public ShoppingCart checkIfDemandedToSetNewShoppingCart(String jSessionId, ShoppingCart shoppingCart){
        if (shoppingCart == null) {
            shoppingCart = new ShoppingCart();
            shoppingCart.setSessionId(jSessionId);
            shoppingCart.setShipping(false);
            shoppingCart.setStatus(ShoppingCartStatus.NOT_APPROVED);
            shoppingCartRepository.save(shoppingCart);
        }
        return shoppingCart;
    }

    public Optional<CartItem> findCartItemWithProduct(ShoppingCart shoppingCart, Product product){
        return shoppingCart.getCartItems().stream()
                .filter(item -> item.getProduct().equals(product))
                .findFirst();
    }

    public void setTotalPriceAndTotalPriceWithShipping (String jSessionId){
        ShoppingCart cart = shoppingCartRepository.findFirstBySessionIdOrderByCreatedDesc(jSessionId);
        calculateTotalPriceAndTotalPriceWithShipping(cart);
        shoppingCartRepository.save(cart);
    }
}
