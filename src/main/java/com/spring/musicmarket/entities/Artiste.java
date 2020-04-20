package com.spring.musicmarket.entities;


import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@NoArgsConstructor
@AllArgsConstructor
@Setter @Getter
@Entity
@Table(name="artists")
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
    private String image;


    @OneToMany(cascade=CascadeType.ALL)
    @JoinColumn(name="artiste_id")
    private List<Album> albums;

    public Artiste(long id) {
        this.id=id;
    }
}
