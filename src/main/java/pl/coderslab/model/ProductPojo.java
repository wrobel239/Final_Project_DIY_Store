package pl.coderslab.model;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

public class ProductPojo {

    private Long id;

    @NotBlank(message = "Pole musi być niepuste")
    private String name;

    @NotNull(message = "Wartość musi być między 0.01 i 999999999.99")
    @DecimalMin(value = "0.01", inclusive = true, message = "Wartość musi być między 0.01 i 999999999.99")
    @DecimalMax(value = "999999999.99", inclusive = true, message = "Wartość musi być między 0.01 i 999999999.99")
    private BigDecimal price;

    @Enumerated(EnumType.STRING)
    private AvailabilityProduct availability;

    @NotBlank(message = "Pole musi być niepuste")
    private String description;

    private String srcImage;

    private String altImage;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public AvailabilityProduct getAvailability() {
        return availability;
    }

    public void setAvailability(AvailabilityProduct availability) {
        this.availability = availability;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSrcImage() {
        return srcImage;
    }

    public void setSrcImage(String srcImage) {
        this.srcImage = srcImage;
    }

    public String getAltImage() {
        return altImage;
    }

    public void setAltImage(String altImage) {
        this.altImage = altImage;
    }
}
