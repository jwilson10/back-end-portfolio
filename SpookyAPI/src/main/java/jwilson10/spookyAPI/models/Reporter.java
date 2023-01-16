package jwilson10.spookyAPI.models;

import jakarta.persistence.*;

import java.util.List;

@Entity
public class Reporter {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int reporterId;

    @Column(name = "name")
    private String name;

    @Column(name = "phone")
    private String phone;

    @OneToMany(orphanRemoval = true)
    @JoinColumn(name="reporter_id", insertable = false, updatable = false, nullable = false)
    private List<Sighting> sightingList;

    public int getReporterId() {
        return reporterId;
    }

    public void setReporterId(int reporterId) {
        this.reporterId = reporterId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
