package com.spring.musicmarket.repositories;

import com.spring.musicmarket.entities.Album;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;



@Repository
public interface AlbumRepository extends JpaRepository<Album, Long>  {


    Page<Album> findAll(Pageable pageable); // revoie limiter les element par page


    @Query("select a from Album a left join fetch a.musicList where a.id=:id")
    Album findByIdWithTags(@Param("id") long id);





}
