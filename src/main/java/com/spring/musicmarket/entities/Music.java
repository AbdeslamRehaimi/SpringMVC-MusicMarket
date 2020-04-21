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


@AllArgsConstructor
@NoArgsConstructor
@Setter @Getter
@Entity
@Table(name="music")
public class Music implements Serializable{

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
    private String longueur;

    @Size(min = 1, max = 100)
    @Basic(optional = false)
    @Column(name = "artistsparticiper")
    @NotBlank(message = "Vous devez indiquer les artists ayant participer !")
    @NotNull
    private String artistsparticiper;

    //@Size(min = 1, max = 500)
    //@Basic(optional = false)
    @Column(name = "image")
    private String image;


    @ManyToMany(mappedBy="musicList")
    List<Album> albumList;


    @Transient
    private Boolean used;

    public Music(long id) {
        this.id=id;
    }
}
