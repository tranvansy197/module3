package model.facility;

public class FacilityType {
    private int id;
    private String name;

    public FacilityType() {
    }

    public FacilityType(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public FacilityType(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}