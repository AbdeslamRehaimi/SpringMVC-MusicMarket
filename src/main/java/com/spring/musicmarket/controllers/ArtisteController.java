package com.spring.musicmarket.controllers;

import com.spring.musicmarket.entities.Artiste;
import com.spring.musicmarket.exceptions.ResourceNotFoundException;
import com.spring.musicmarket.services.ArtisteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Optional;

@Controller
@RequestMapping("/artiste")
public class ArtisteController {
    @Autowired
    private ArtisteService artisteService;

    @GetMapping(value = {"/","/page/{id}"})
    public String home(@PathVariable(name="id",required = false) Optional<Integer> id, ModelMap model)
    {
        Page<Artiste> pages = artisteService.getAllArtiste(id, 8, "id");
        model.addAttribute("pageable", pages);
        return "artiste/list";
    }


    @GetMapping("/add")
    public String add(ModelMap model,Artiste artiste) {
        model.addAttribute("artiste", artiste);
        return "artiste/add";
    }

    @GetMapping("/add/{id}")
    public String edit(@PathVariable("id") long id, ModelMap model) throws ResourceNotFoundException {
        model.addAttribute("artiste", artisteService.findById(id));
        return "artiste/add";
    }

    @PostMapping("/save")
    public String saveArtiste(@Valid @ModelAttribute("artiste") Artiste artiste, BindingResult result, ModelMap model) throws ResourceNotFoundException {
        if(result.hasErrors()){
            model.addAttribute("artiste",artiste);
            return "artiste/add";
        }
        artisteService.save(artiste);
        return "redirect:/artiste/";
    }

    @GetMapping("/delete/{page}/{id}")
    public String delete(@PathVariable("page") long page,@PathVariable("id") long id, ModelMap model) throws ResourceNotFoundException {
        artisteService.deleteById(id);
        return "redirect:/artiste/page/"+page;
    }

}
