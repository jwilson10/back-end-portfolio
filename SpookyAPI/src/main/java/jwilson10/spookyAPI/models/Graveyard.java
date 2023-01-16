package jwilson10.spookyAPI.models;

import jakarta.persistence.*;

import java.util.List;

@Entity
public class Graveyard {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int graveyardId;

    @Column (name="name")
    private String name;

    @Column (name="street_address")
    private String streetAddress;

    @Column(name="city")
    private String city;

    @Column(name="state")
    private String state;

    @Column(name="zip")
    private String zip;

    @OneToMany (orphanRemoval = true)
    @JoinColumn (name="graveyard_id", insertable = false, updatable = false, nullable = false)
    private List<Ghost> ghostList;

    public String getStreetAddress() {
        return streetAddress;
    }

    public void setStreetAddress(String streetAddress) {
        this.streetAddress = streetAddress;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }
    public int getGraveyardId() {
        return graveyardId;
    }

    public void setGraveyardId(int graveyardId) {
        this.graveyardId = graveyardId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Ghost> getGhostList() {
        return ghostList;
    }

    public void setGhostList(List<Ghost> ghostList) {
        this.ghostList = ghostList;
    }
}
