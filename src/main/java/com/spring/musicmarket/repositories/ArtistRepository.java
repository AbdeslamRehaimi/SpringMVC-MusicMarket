package com.spring.musicmarket.repositories;

import com.spring.musicmarket.entities.Artiste;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ArtistRepository extends JpaRepository<Artiste, Long> {
    Page<Artiste> findAll(Pageable pageable);
}
