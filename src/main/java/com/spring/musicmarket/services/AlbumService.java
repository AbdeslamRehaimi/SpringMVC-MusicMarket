package com.spring.musicmarket.services;

import com.spring.musicmarket.entities.Album;
import com.spring.musicmarket.exceptions.ResourceNotFoundException;
import org.springframework.data.domain.Page;
import org.springframework.data.repository.query.Param;

import java.util.Optional;


public interface AlbumService {


    public Page<Album> getAllAlbums(Optional<Integer> pageNo, Integer pageSize, String sortBy);

    Album findById(long id) throws ResourceNotFoundException;

    void save(Album album);

    void deleteById(long id);

    Album findByIdWithMusic(@Param("id") long id);


}
