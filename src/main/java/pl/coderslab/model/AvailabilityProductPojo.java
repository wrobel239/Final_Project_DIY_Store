package pl.coderslab.model;

public class AvailabilityProductPojo {

    private String availabilityPojo;
    private String descriptionOfAvailability;

    public AvailabilityProductPojo(String availabilityPojo, String descriptionOfAvailability) {
        this.availabilityPojo = availabilityPojo;
        this.descriptionOfAvailability = descriptionOfAvailability;
    }

    public String getAvailabilityPojo() {
        return availabilityPojo;
    }

    public void setAvailabilityPojo(String availabilityPojo) {
        this.availabilityPojo = availabilityPojo;
    }

    public String getDescriptionOfAvailability() {
        return descriptionOfAvailability;
    }

    public void setDescriptionOfAvailability(String descriptionOfAvailability) {
        this.descriptionOfAvailability = descriptionOfAvailability;
    }
}
