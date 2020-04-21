package com.spring.musicmarket.controllers;


import com.spring.musicmarket.entities.Music;
import com.spring.musicmarket.exceptions.ResourceNotFoundException;
import com.spring.musicmarket.services.MusicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Optional;

@Controller
@RequestMapping("/music")
public class MusicController {

    @Autowired
    private MusicService musicService;

    @GetMapping(value = {"/","/page/{id}"})
    public String home(@PathVariable(name="id",required = false) Optional<Integer> id, ModelMap model)
    {
        Page<Music> pages = musicService.getAllMusic(id, 8, "id");
        model.addAttribute("pageable", pages);
        return "music/list";
    }


    @GetMapping("/add")
    public String add(ModelMap model,Music music) {
            model.addAttribute("music", music);
       return "music/add";
    }

    @GetMapping("/add/{id}")
    public String edit(@PathVariable("id") long id, ModelMap model) throws ResourceNotFoundException {
        model.addAttribute("music", musicService.findById(id));
        return "music/add";
    }

    @PostMapping("/save")
    public String saveTag(@Valid @ModelAttribute("music") Music music, BindingResult result, ModelMap model) throws ResourceNotFoundException {
        if(result.hasErrors()){
            model.addAttribute("music",music);
            return "music/add";
        }
        musicService.save(music);
        return "redirect:/music/";
    }

    @GetMapping("/delete/{page}/{id}")
    public String delete(@PathVariable("page") long page,@PathVariable("id") long id, ModelMap model) throws ResourceNotFoundException {
        musicService.deleteById(id);
        return "redirect:/music/page/"+page;
    }

}
