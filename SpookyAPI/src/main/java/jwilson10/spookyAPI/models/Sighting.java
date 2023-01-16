package jwilson10.spookyAPI.models;

import jakarta.persistence.*;

import java.util.List;

@Entity
public class Sighting {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int sightingId;

    @Column(name = "reporter_id")
    private int reporterId;

    @Column(name = "location_id")
    private int locationId;

    @OneToMany
    @JoinColumn(name="sighting_id", insertable = false, updatable = false, nullable = false)
    private List<GhostSighting> ghostSightingList;

    public List<GhostSighting> getGhostSightingList() {
        return ghostSightingList;
    }

    public void setGhostSightingList(List<GhostSighting> ghostSightingList) {
        this.ghostSightingList = ghostSightingList;
    }

    public int getSightingId() {
        return sightingId;
    }

    public void setSightingId(int sightingId) {
        this.sightingId = sightingId;
    }

    public int getReporterId() {
        return reporterId;
    }

    public void setReporterId(int reporterId) {
        this.reporterId = reporterId;
    }

    public int getLocationId() {
        return locationId;
    }

    public void setLocationId(int locationId) {
        this.locationId = locationId;
    }
}
