package com.spring.musicmarket.controllers;


import com.spring.musicmarket.converter.MusicFormatter;
import com.spring.musicmarket.entities.Album;
import com.spring.musicmarket.entities.Music;
import com.spring.musicmarket.exceptions.ResourceNotFoundException;
import com.spring.musicmarket.services.AlbumService;
import com.spring.musicmarket.services.MusicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping(value = {"","/album"})
public class AlbumController {

    @Autowired
    private AlbumService albumService;

    @Autowired
    private MusicService musicService;


    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(List.class, "musicList",
                new MusicFormatter(List.class));
    }

    @GetMapping(value = {"/","/page/{id}"})
    public String home(@PathVariable(name="id",required = false) Optional<Integer> id, ModelMap model)
    {
            Page<Album> pages = albumService.getAllAlbums(id, 3, "id");
            model.addAttribute("pageable", pages);
        return "album/list";
    }

    @RequestMapping("/view/{id}")
    public String view(@PathVariable("id") long id,ModelMap model) throws ResourceNotFoundException {
        model.addAttribute("album",albumService.findById(id));
        return "album/show";
    }


    @GetMapping("/add")
    public String add(ModelMap model,Album album) {
            model.addAttribute("music", musicService.getAllMusic());
            model.addAttribute("album", album);
        return "album/add";
    }

    @GetMapping("/add/{id}")
    public String edit(@PathVariable("id") long id, ModelMap model) throws ResourceNotFoundException {
        Album album=albumService.findByIdWithMusic(id);
        List<Music> music=musicService.getAllMusic();
        music.forEach(e->{
            album.getMusicList().forEach(t->{
                 if(e.getId() ==t.getId()){
                     e.setUsed(true);
                 }
             });
        });
        model.addAttribute("music", music);


        model.addAttribute("album", albumService.findByIdWithMusic(id));
        return "album/add";
    }

    @PostMapping("/save")
    public String saveArticle(@Valid @ModelAttribute("album") Album album, BindingResult result, ModelMap model) throws ResourceNotFoundException {
        if(result.hasErrors()){

            model.addAttribute("music", musicService.getAllMusic());
            model.addAttribute("album",album);
            return "album/add";
        }
        albumService.save(album);
        return "redirect:/album/";
    }

    @GetMapping("/delete/{page}/{id}")
    public String delete(@PathVariable("page") long page,@PathVariable("id") long id, ModelMap model) throws ResourceNotFoundException {
        albumService.deleteById(id);
        return "redirect:/album/page/"+page;
    }


}
