package jwilson10.spookyAPI.models;

import jakarta.persistence.*;

import java.util.List;

@Entity
public class Ghost {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ghost_id;

    @Column(name = "name")
    private String name;

    @Column (name="age")
    private int age;

    @Column (name = "ghost_type")
    private GhostType ghostType;

    @Column (name = "graveyard_id")
    private int graveyardId;

    @OneToMany (orphanRemoval = true)
    @JoinColumn (name="ghost_id")
    private List<GhostSighting> ghostSightingList;

    public List<GhostSighting> getGhostSightingList() {
        return ghostSightingList;
    }

    public void setGhostSightingList(List<GhostSighting> ghostSightingList) {
        this.ghostSightingList = ghostSightingList;
    }

    public int getGhost_id() {
        return ghost_id;
    }

    public void setGhost_id(int ghost_id) {
        this.ghost_id = ghost_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public GhostType getGhostType() {
        return ghostType;
    }

    public void setGhostType(GhostType ghostType) {
        this.ghostType = ghostType;
    }

    public int getGraveyardId() {
        return graveyardId;
    }

    public void setGraveyardId(int graveyardId) {
        this.graveyardId = graveyardId;
    }
}
