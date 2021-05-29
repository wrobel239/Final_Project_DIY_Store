package pl.coderslab.model;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

@Entity
@Table(name = "cart_items")
public class CartItem {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Min(value = 1)
    @Max(value = 1000000000)
    private int quantity;

    // tutaj walidacji nie potrzeba, wartość uzupełniana na bieżąco
    @Column(scale=2, precision = 11, name = "total_price")
    private BigDecimal totalPrice;

//    tutaj walidacji nie może być, bo wywala błędy, bo pola te również walidowane, a wprowadzane tylko quantity
//    @NotNull
    @ManyToOne(optional = false)
    private Product product;

//    @NotNull
    @ManyToOne(optional = false)
    @JoinColumn(name = "shopping_cart_id")
    private ShoppingCart shoppingCart;

    // dodane dla sprawdzenia
    @Transient
    private double totalPriceInDouble;

    public double getTotalPriceInDouble() {
        return totalPriceInDouble;
    }

    public void setTotalPriceInDouble(double totalPriceInDouble) {
        this.totalPriceInDouble = totalPriceInDouble;
    }

    public void setTotalPriceInDoubleFromTotalPrice(){
        this.totalPriceInDouble = this.totalPrice.doubleValue();
    }

    public void setTotalPriceFromPriceInDouble(double price) {
        this.totalPrice = BigDecimal.valueOf(price);
    }
    // koniec sprawdzenia

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    // musi tutaj chyba być zwykły setter i potem metoda calculate
    public void setTotalPrice(BigDecimal totalPrice) {
        this.totalPrice = totalPrice;
    }

    public void calculateTotalPrice() {
        this.totalPrice = product.getPrice().multiply(new BigDecimal(quantity));
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public ShoppingCart getShoppingCart() {
        return shoppingCart;
    }

    public void setShoppingCart(ShoppingCart shoppingCart) {
        this.shoppingCart = shoppingCart;
    }

    @Override
    public String toString() {
        return "CartItem{" +
                "id=" + id +
                ", quantity=" + quantity +
                ", totalPrice=" + totalPrice +
                '}';
    }
}
