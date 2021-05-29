package pl.coderslab.model;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

public class CartItemPojo {

    private Long id;

    @Min(value = 1)
    @Max(value = 1000000000)
    private int quantity;

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
}
