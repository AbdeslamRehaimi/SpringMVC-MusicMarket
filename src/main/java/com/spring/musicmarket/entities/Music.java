package com.spring.musicmarket.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "music")
public class Music implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private long id;

    @Size(min = 1, max = 100)
    @Basic(optional = false)
    @Column(name = "titre")
    @NotBlank(message = "Vous devez indiquer le titre de cette music !")
    @NotNull
    private String titre;

    @Size(min = 1, max = 100)
    @Basic(optional = false)
    @Column(name = "genre")
    @NotBlank(message = "Vous devez indiquer le genre de ce titre !")
    @NotNull
    private String genre;

    @Size(min = 1, max = 100)
    @Basic(optional = false)
    @Column(name = "longueur")
    @NotBlank(message = "Vous devez indiquer le longueur de cette morceau !")
    @NotNull
    private double longueur;

    //@Size(min = 1, max = 500)
    //@Basic(optional = false)
    @Column(name = "image")
    //@NotBlank(message = "image et obligatoire !")
    //@NotNull
    private String image;

    @ManyToMany(mappedBy="musicList")
    List<Album> albumList;

    public Music() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre(String titre) {
        this.titre = titre;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public double getLongueur() {
        return longueur;
    }

    public void setLongueur(double longueur) {
        this.longueur = longueur;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
