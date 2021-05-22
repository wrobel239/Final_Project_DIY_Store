package pl.coderslab.model;

import javax.persistence.*;
import java.math.BigDecimal;

@Entity
@Table(name = "cart_items")
public class CartItem {
//    dorobić jeszcze relacje, gettery, settery
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private int quantity;

    @Column(scale=2, precision = 11, name = "total_price")
    private BigDecimal totalPrice;
}
