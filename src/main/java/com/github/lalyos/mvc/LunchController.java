package com.github.lalyos.mvc;

import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.lalyos.domain.Food;

@Controller
@RequestMapping("/lunch/*")
public class LunchController {

    @Autowired
    private List<Food> foods;
    
    private SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd HH:mm");
    @RequestMapping("go")
    public String go(Model model ) {
        
        Date now = new Date();
        long minutes = 0;
        try {
            Date lunch = sdf.parse("2012.05.02 12:00");
            minutes = (lunch.getTime() - now.getTime()) / 60000;
        } catch (ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        model.addAttribute("minutes", minutes);
        
        return "go";
    }
    
    @RequestMapping("list")
    public String list(Model model) {
        model.addAttribute("foods", foods);
        model.addAttribute("food", new Food());
        
        return "list";
    }

    @RequestMapping(method=RequestMethod.POST)
    public String add(@Valid Food food, BindingResult bindingResult, Model model) {
        
        if (bindingResult.hasErrors()) {
            model.addAttribute("foods", foods);
            return "list";            
        } else {
            foods.add(food);            
            return "redirect:/lunch/list";            
        }
        
    }

    @RequestMapping(value="delete/{name}", method=RequestMethod.DELETE)
    public String delete(Model model, @PathVariable String name) {
        System.out.println("food name:" + name);
        
        deleteFood(name);
        
        return "redirect:/lunch/list";
    }

    private void deleteFood(String name) {
        Iterator<Food> iterator = foods.iterator();
        while (iterator.hasNext()) {
            if(name.equals(iterator.next().getName())){
                iterator.remove();
            }
        }
    }
    

}
