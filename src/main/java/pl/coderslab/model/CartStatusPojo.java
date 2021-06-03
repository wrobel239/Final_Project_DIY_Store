package pl.coderslab.model;

public class CartStatusPojo {

    private ShoppingCartStatus status;
    private String description;

    public CartStatusPojo(ShoppingCartStatus status, String description) {
        this.status = status;
        this.description = description;
    }

    public ShoppingCartStatus getStatus() {
        return status;
    }

    public void setStatus(ShoppingCartStatus status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
