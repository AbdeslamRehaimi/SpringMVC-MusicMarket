package com.spring.musicmarket.services;

import com.spring.musicmarket.entities.Music;
import com.spring.musicmarket.exceptions.ResourceNotFoundException;
import org.springframework.data.domain.Page;

import java.util.List;
import java.util.Optional;

public interface MusicService {
    public Page<Music> getAllMusic(Optional<Integer> pageNo, Integer pageSize, String sortBy);
    public List<Music> getAllMusic();

    Music findById(long id) throws ResourceNotFoundException;

    void save(Music music);

    void deleteById(long id);
}
