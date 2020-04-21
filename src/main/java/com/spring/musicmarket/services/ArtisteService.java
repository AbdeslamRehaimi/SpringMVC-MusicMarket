package com.spring.musicmarket.services;

import com.spring.musicmarket.entities.Artiste;
import com.spring.musicmarket.exceptions.ResourceNotFoundException;
import org.springframework.data.domain.Page;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface ArtisteService {

    public Page<Artiste> getAllArtiste(Optional<Integer> pageNo, Integer pageSize, String sortBy);
    public List<Artiste> getAllArtiste();

    Artiste findById(long id) throws ResourceNotFoundException;

    void save(Artiste artiste);

    void deleteById(long id);
}
