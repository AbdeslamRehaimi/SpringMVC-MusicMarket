package com.spring.musicmarket.converter;

import com.spring.musicmarket.entities.Music;
import org.springframework.core.convert.converter.Converter;

import java.util.ArrayList;
import java.util.List;

public class MusicConverter implements Converter<List<String>, Object> {

    @Override
    public List<Music> convert(List<String> source) {
       List<Music> listTag=new ArrayList<>();
       if(source.isEmpty()) {
           return null;
       }else{
            source.forEach(e->listTag.add(new Music(Long.parseLong(e))));
            return listTag;
       }
    }
}
