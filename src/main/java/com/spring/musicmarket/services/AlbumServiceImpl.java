package com.spring.musicmarket.services;

import com.spring.musicmarket.entities.Album;
import com.spring.musicmarket.exceptions.ResourceNotFoundException;
import com.spring.musicmarket.repositories.AlbumRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.sql.Timestamp;
import java.util.Optional;

@Service
public class AlbumServiceImpl implements AlbumService {

    @Autowired
    private AlbumRepository albumRepository;

    @Override
    @Transactional
    public Page<Album> getAllAlbums(Optional<Integer> pageNo, Integer pageSize, String sortBy) {
        Pageable paging = PageRequest.of(0, pageSize, Sort.by(sortBy));
        if(pageNo.isPresent()){
            paging = PageRequest.of(pageNo.get(), pageSize, Sort.by(sortBy));
        }
        return albumRepository.findAll(paging);
    }

    @Override
    @Transactional
    public Album findById(long id) throws ResourceNotFoundException {
        return albumRepository.findById(id).orElseThrow(
                ()->new ResourceNotFoundException(id)
        );
    }

    @Override
    @Transactional
    public void save(Album album) {
         albumRepository.save(album);
    }

    @Override
    @Transactional
    public void deleteById(long id) {
        albumRepository.deleteById(id);
    }

    @Override
    public Album findByIdWithMusic(long id) {
        return albumRepository.findByIdWithMusic(id);
    }
}
