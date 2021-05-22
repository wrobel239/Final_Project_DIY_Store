package pl.coderslab.model;

import javax.persistence.*;

@Entity
@Table(name = "customer_details")
public class CustomerDetails {
//  relacje jeszcze dodać
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;
    private String email;

    @Column(name = "company_name")
    private String companyName;

    // może enum
    private String country;

    @Column(name = "street_address")
    private String streetAddress;
    private String town;
    private String voivodeship;
    private String postcode;
    private String phone;

    @Column(name = "order_note", columnDefinition = "TEXT")
    private String orderNote;

    // może enum
    @Column(name = "type_of_payment")
    private String typeOfPayment;
}
