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
import java.util.Date;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "album")
public class Album implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private long id;

    @Size(min = 1, max = 100)
    @Basic(optional = false)
    @Column(name = "titre")
    @NotBlank(message = "Vous devez indiquer le titre de cette album !")
    @NotNull
    private String titre;

    @Size(min = 1, max = 100)
    @Basic(optional = false)
    @Column(name = "dateSortie")
    @NotBlank(message = "Vous devez indiquer la date sortie !")
    @NotNull
    private Date dateSortie;

    @Size(min = 1, max = 100)
    @Basic(optional = false)
    @Column(name = "genre")
    @NotBlank(message = "Vous devez indiquer le genre !")
    @NotNull
    private String genre;

    @Size(min = 1, max = 100)
    @Basic(optional = false)
    @Column(name = "maisondisque")
    @NotBlank(message = "Vous devez indiquer la maison de disque !")
    @NotNull
    private String maisondisque;

    //@Size(min = 1, max = 500)
    //@Basic(optional = false)
    @Column(name = "image")
    //@NotBlank(message = "image et obligatoire !")
    //@NotNull
    private String image;

    @ManyToOne
    private Artiste artiste;

    @Size(min=1,message = "Vous devez choisis des titre pour cette album")
    @ManyToMany
    @JoinTable(name="album_music", joinColumns={@JoinColumn(referencedColumnName="id")}
            , inverseJoinColumns={@JoinColumn(referencedColumnName="id")})
    List<Music> musicList;

    public Album() {
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

    public Date getDateSortie() {
        return dateSortie;
    }

    public void setDateSortie(Date dateSortie) {
        this.dateSortie = dateSortie;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getMaisondisque() {
        return maisondisque;
    }

    public void setMaisondisque(String maisondisque) {
        this.maisondisque = maisondisque;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Artiste getArtiste() {
        return artiste;
    }

    public void setArtiste(Artiste artiste) {
        this.artiste = artiste;
    }

    public List<Music> getMusicList() {
        return musicList;
    }

    public void setMusicList(List<Music> musicList) {
        this.musicList = musicList;
    }
}
