package com.spring.musicmarket.converter;

import com.spring.musicmarket.entities.Music;
import lombok.SneakyThrows;
import org.springframework.beans.propertyeditors.CustomCollectionEditor;

import java.util.Collection;

public class MusicFormatter extends CustomCollectionEditor {

    public MusicFormatter(Class<? extends Collection> collectionType ) {
        super(collectionType);
    }

    @SneakyThrows
    @Override
    protected Object convertElement(Object element) {
        if(!element.equals(null)) {
            Music music =  new Music();
            return music;
        }else{
            return null;
        }
    }
}
