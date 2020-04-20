package com.spring.musicmarket.services;

import com.spring.musicmarket.entities.Music;
import com.spring.musicmarket.exceptions.ResourceNotFoundException;
import com.spring.musicmarket.repositories.MusicRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.sql.Timestamp;
import java.util.List;
import java.util.Optional;

@Service
public class MusicServiceImpl implements MusicService {
    @Autowired
    private MusicRepository musicRepository;

    @Override
    @Transactional
    public Page<Music> getAllMusic(Optional<Integer> pageNo, Integer pageSize, String sortBy) {
        if(pageNo.isPresent()){
            Pageable paging = PageRequest.of(pageNo.get(), pageSize, Sort.by(sortBy));
            return musicRepository.findAll(paging);
        }else{
            Pageable paging = PageRequest.of(0, pageSize, Sort.by(sortBy));
            return musicRepository.findAll(paging);
        }
    }

    @Override
    @Transactional
    public List<Music> getAllMusic() {
        return musicRepository.findAll();
    }

    @Override
    @Transactional
    public Music findById(long id) throws ResourceNotFoundException {
        return musicRepository.findById(id).orElseThrow(
                ()->new ResourceNotFoundException(id)
        );
    }

    @Override
    @Transactional
    public void save(Music music) {
        musicRepository.save(music);
    }

    @Override
    public void deleteById(long id) {
        musicRepository.deleteById(id);
    }
}
