package pl.coderslab.model;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "customer_details")
public class CustomerDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "Pole musi być niepuste")
    @Column(name = "first_name")
    private String firstName;

    @NotBlank(message = "Pole musi być niepuste")
    @Column(name = "last_name")
    private String lastName;

    @Email(message = "Należy wprowadzić poprawny email")
    private String email;

    @Column(name = "company_name")
    private String companyName;

    @Enumerated(EnumType.STRING)
    private CustomerDetailsCountry country;

    @NotBlank(message = "Pole musi być niepuste")
    @Column(name = "street_address")
    private String streetAddress;

    @NotBlank(message = "Pole musi być niepuste")
    private String town;

    @NotBlank(message = "Pole musi być niepuste")
    private String voivodeship;

    @Pattern(regexp = "dd-ddd", message = "Kod pocztowy musi być w formacie: dd-ddd")
    private String postcode;

    @Pattern(regexp = "[+]?d{9,}", message = "Numer telefonu musi być w formacie bez spacji i nawiasów i zawierać co najmniej 9 cyfr: +ddddddddd lub ddddddddd")
    private String phone;

    @Column(name = "order_note", columnDefinition = "TEXT")
    private String orderNote;

    @Enumerated(EnumType.STRING)
    @Column(name = "type_of_payment")
    private CustomerDetailsTypeOfPayment typeOfPayment;

    @OneToOne(mappedBy = "customerDetails", optional = false)
    private ShoppingCart shoppingCart;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public CustomerDetailsCountry getCountry() {
        return country;
    }

    public void setCountry(CustomerDetailsCountry country) {
        this.country = country;
    }

    public String getStreetAddress() {
        return streetAddress;
    }

    public void setStreetAddress(String streetAddress) {
        this.streetAddress = streetAddress;
    }

    public String getTown() {
        return town;
    }

    public void setTown(String town) {
        this.town = town;
    }

    public String getVoivodeship() {
        return voivodeship;
    }

    public void setVoivodeship(String voivodeship) {
        this.voivodeship = voivodeship;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getOrderNote() {
        return orderNote;
    }

    public void setOrderNote(String orderNote) {
        this.orderNote = orderNote;
    }

    public CustomerDetailsTypeOfPayment getTypeOfPayment() {
        return typeOfPayment;
    }

    public void setTypeOfPayment(CustomerDetailsTypeOfPayment typeOfPayment) {
        this.typeOfPayment = typeOfPayment;
    }

    public ShoppingCart getShoppingCart() {
        return shoppingCart;
    }

    public void setShoppingCart(ShoppingCart shoppingCart) {
        this.shoppingCart = shoppingCart;
    }

    @Override
    public String toString() {
        return "CustomerDetails{" +
                "id=" + id +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", companyName='" + companyName + '\'' +
                ", country='" + country + '\'' +
                ", streetAddress='" + streetAddress + '\'' +
                ", town='" + town + '\'' +
                ", voivodeship='" + voivodeship + '\'' +
                ", postcode='" + postcode + '\'' +
                ", phone='" + phone + '\'' +
                ", orderNote='" + orderNote + '\'' +
                ", typeOfPayment='" + typeOfPayment + '\'' +
                '}';
    }
}
