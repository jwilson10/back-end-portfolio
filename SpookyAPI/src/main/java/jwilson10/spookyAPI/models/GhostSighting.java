package jwilson10.spookyAPI.models;

import jakarta.persistence.*;

@Entity
public class GhostSighting {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ghostSightingId;

    @Column(name = "ghost_id")
    private int ghostId;

    @Column(name = "sighting_id")
    private int sightingId;

    public int getGhostSightingId() {
        return ghostSightingId;
    }

    public void setGhostSightingId(int ghostSightingId) {
        this.ghostSightingId = ghostSightingId;
    }

    public int getGhostId() {
        return ghostId;
    }

    public void setGhostId(int ghostId) {
        this.ghostId = ghostId;
    }

    public int getSightingId() {
        return sightingId;
    }

    public void setSightingId(int sightingId) {
        this.sightingId = sightingId;
    }
}
