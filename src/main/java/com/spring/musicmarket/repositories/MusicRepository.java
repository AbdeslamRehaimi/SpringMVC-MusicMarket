package com.spring.musicmarket.repositories;

import com.spring.musicmarket.entities.Music;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface MusicRepository extends JpaRepository<Music, Long> {

    Page<Music> findAll(Pageable pageable);

}
