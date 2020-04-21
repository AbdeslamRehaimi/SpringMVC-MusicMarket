package com.spring.musicmarket.services;

import com.spring.musicmarket.entities.Artiste;
import com.spring.musicmarket.exceptions.ResourceNotFoundException;
import com.spring.musicmarket.repositories.ArtisteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
public class ArtisteServiceImpl implements ArtisteService{

    @Autowired
    private ArtisteRepository artisteRepository;


    @Override
    @Transactional
    public Page<Artiste> getAllArtiste(Optional<Integer> pageNo, Integer pageSize, String sortBy) {
        if(pageNo.isPresent()){
            Pageable paging = PageRequest.of(pageNo.get(), pageSize, Sort.by(sortBy));
            return artisteRepository.findAll(paging);
        }else{
            Pageable paging = PageRequest.of(0, pageSize, Sort.by(sortBy));
            return artisteRepository.findAll(paging);
        }
    }

    @Override
    @Transactional
    public List<Artiste> getAllArtiste() {
        return artisteRepository.findAll();
    }

    @Override
    @Transactional
    public Artiste findById(long id) throws ResourceNotFoundException {
        return artisteRepository.findById(id).orElseThrow(
                ()->new ResourceNotFoundException(id)
        );
    }

    @Override
    @Transactional
    public void save(Artiste artiste) {
        artisteRepository.save(artiste);
    }

    @Override
    @Transactional
    public void deleteById(long id) {
        artisteRepository.deleteById(id);
    }
}
