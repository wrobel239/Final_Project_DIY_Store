package pl.coderslab.model;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;

public class ShoppingCartEditPojo {

    @Enumerated(EnumType.STRING)
    private ShoppingCartStatus status;

    public ShoppingCartStatus getStatus() {
        return status;
    }

    public void setStatus(ShoppingCartStatus status) {
        this.status = status;
    }

}
