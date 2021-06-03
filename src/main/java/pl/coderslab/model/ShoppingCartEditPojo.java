package pl.coderslab.model;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.validation.constraints.PastOrPresent;
import java.time.LocalDateTime;

public class ShoppingCartEditPojo {

    @Enumerated(EnumType.STRING)
    private ShoppingCartStatus status;

//    tutaj tylko ręcznie w kontrolerze to sprawdzić, bo admin może nie chcieć ustawiać tego pola
//    automatyczne bindowanie daty w formularzu jest skomplikowane, dlatego zmiana tego !!!
//    przy zmianie pola status na realized, data ustawiana automatycznie jako aktualna
//    @PastOrPresent(message = "Data może być tylko z przeszłości lub aktualny czas")
//    private LocalDateTime dateOfRealization;
    public ShoppingCartStatus getStatus() {
        return status;
    }

    public void setStatus(ShoppingCartStatus status) {
        this.status = status;
    }

}
