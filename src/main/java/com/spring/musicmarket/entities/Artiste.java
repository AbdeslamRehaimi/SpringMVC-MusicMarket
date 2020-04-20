package com.spring.musicmarket.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Entity
@Table(name="artiste")
public class Artiste implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private long id;

    @Size(min = 1, max = 100)
    @Basic(optional = false)
    @Column(name = "nomreel")
    @NotBlank(message = "Vous devez indiquer le nom reel !")
    @NotNull
    private String nomreel;

    @Size(min = 1, max = 100)
    @Basic(optional = false)
    @Column(name = "artistnom")
    @NotBlank(message = "Vous devez indiquer le nom artistic !")
    @NotNull
    private String artistnom;

    @Size(min = 1, max = 100)
    @Basic(optional = false)
    @Column(name = "nationaliter")
    @NotBlank(message = "Vous devez indiquer la nationaliter !")
    @NotNull
    private String nationaliter;

    @Size(min = 1, max = 100)
    @Basic(optional = false)
    @Column(name = "email", unique = true)
    @NotBlank(message = "Vous devez indiquer l'email !")
    @NotNull
    @Email

    private String email;

    //@Size(min = 1, max = 500)
    //@Basic(optional = false)
    @Column(name = "image")
    //@NotBlank(message = "image et obligatoire !")
    //@NotNull
    private String image;

    @OneToMany(cascade=CascadeType.ALL)
    @JoinColumn(name="id")
    private List<Album> albums;

    public Artiste() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNomreel() {
        return nomreel;
    }

    public void setNomreel(String nomreel) {
        this.nomreel = nomreel;
    }

    public String getArtistnom() {
        return artistnom;
    }

    public void setArtistnom(String artistnom) {
        this.artistnom = artistnom;
    }

    public String getNationaliter() {
        return nationaliter;
    }

    public void setNationaliter(String nationaliter) {
        this.nationaliter = nationaliter;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public List<Album> getAlbums() {
        return albums;
    }

    public void setAlbums(List<Album> albums) {
        this.albums = albums;
    }
}
