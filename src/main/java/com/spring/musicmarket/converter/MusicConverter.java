package com.spring.musicmarket.converter;

import com.spring.musicmarket.entities.Music;
import org.springframework.core.convert.converter.Converter;

import java.util.ArrayList;
import java.util.List;

public class MusicConverter implements Converter<List<String>, Object> {

    @Override
    public List<Music> convert(List<String> strings) {
        List<Music> musicList=new ArrayList<>();
        if(strings.isEmpty()) {
            return null;
        }else{
            //strings.forEach(e->musicList.add(new Music(Long.parseLong(e))));
            strings.forEach(e->musicList.add(new Music()));
            return musicList;
        }
    }
}
