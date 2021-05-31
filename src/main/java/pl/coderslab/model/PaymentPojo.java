package pl.coderslab.model;


public class PaymentPojo {

    private CustomerDetailsTypeOfPayment payment;
    private String description;

    public PaymentPojo(CustomerDetailsTypeOfPayment payment, String description) {
        this.payment = payment;
        this.description = description;
    }

    public CustomerDetailsTypeOfPayment getPayment() {
        return payment;
    }

    public void setPayment(CustomerDetailsTypeOfPayment payment) {
        this.payment = payment;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
