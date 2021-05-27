package pl.coderslab.model;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "shopping_cart")
public class ShoppingCart {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "session_id")
    private String sessionId;

    @OneToMany(mappedBy = "shoppingCart")
    private List<CartItem> cartItems = new ArrayList<>();

    private LocalDateTime created;

    @Column(scale=2, precision = 11, name = "total_price")
    private BigDecimal totalPrice;

    @Column(name = "is_shipping")
    private boolean isShipping;

    @Enumerated(EnumType.STRING)
    private ShoppingCartStatus status;

    @Column(name = "date_of_order")
    private LocalDateTime dateOfOrder;
    @Column(name = "date_of_realization")
    private LocalDateTime dateOfRealization;

    @OneToOne
    @JoinColumn(name = "customer_details_id")
    private CustomerDetails customerDetails;

    @PrePersist
    public void prePersist(){
        created = LocalDateTime.now();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getSessionId() {
        return sessionId;
    }

    public void setSessionId(String sessionId) {
        this.sessionId = sessionId;
    }

    public List<CartItem> getCartItems() {
        return cartItems;
    }

    public void setCartItems(List<CartItem> cartItems) {
        this.cartItems = cartItems;
    }

    public LocalDateTime getCreated() {
        return created;
    }

    public void setCreated(LocalDateTime created) {
        this.created = created;
    }

    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(BigDecimal totalPrice) {
        this.totalPrice = totalPrice;
    }

    public boolean isShipping() {
        return isShipping;
    }

    public void setShipping(boolean shipping) {
        isShipping = shipping;
    }

    public ShoppingCartStatus getStatus() {
        return status;
    }

    public void setStatus(ShoppingCartStatus status) {
        this.status = status;
    }

    public LocalDateTime getDateOfOrder() {
        return dateOfOrder;
    }

    public void setDateOfOrder(LocalDateTime dateOfOrder) {
        this.dateOfOrder = dateOfOrder;
    }

    public LocalDateTime getDateOfRealization() {
        return dateOfRealization;
    }

    public void setDateOfRealization(LocalDateTime dateOfRealization) {
        this.dateOfRealization = dateOfRealization;
    }

    public CustomerDetails getCustomerDetails() {
        return customerDetails;
    }

    public void setCustomerDetails(CustomerDetails customerDetails) {
        this.customerDetails = customerDetails;
    }

    @Override
    public String toString() {
        return "ShoppingCart{" +
                "id=" + id +
                ", sessionId='" + sessionId + '\'' +
                ", created=" + created +
                ", totalPrice=" + totalPrice +
                ", isShipping=" + isShipping +
                ", status='" + status + '\'' +
                ", dateOfOrder=" + dateOfOrder +
                ", dateOfRealization=" + dateOfRealization +
                '}';
    }
}
