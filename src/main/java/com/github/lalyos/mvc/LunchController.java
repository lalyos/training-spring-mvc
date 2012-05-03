package com.github.lalyos.mvc;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.github.lalyos.domain.Food;

@Controller
@RequestMapping("/lunch/*")
public class LunchController {

    @Autowired
    private List<Food> foods;
    
    private SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd HH:mm");
    @RequestMapping("go")
    public String go(Model model ) throws ParseException {
        
        Date now = new Date();
        long minutes = 0;
        Date lunch = sdf.parse("2012.05.03x 12:00");
        minutes = (lunch.getTime() - now.getTime()) / 60000;
        
        model.addAttribute("minutes", minutes);
        
        return "go";
    }
    
    @RequestMapping(value="list", produces = "text/html")
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
    public String delete(RedirectAttributes model, @PathVariable String name) {
        System.out.println("food name:" + name);
        
        deleteFood(name);
        model.addFlashAttribute("flash", name + " has been successfully deleted");
        return "redirect:/lunch/list";
    }

    @RequestMapping(value="list", headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> listJson() {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        headers.add("Access-Control-Allow-Origin", "*");
        headers.add("Access-Control-Allow-Methods", "GET,POST");
        headers.add("Access-Control-Max-Age", "360");
        headers.add("Access-Control-Allow-Headers", "x-requested-with");        
        return new ResponseEntity<String>(Food.toJsonArray(foods), headers, HttpStatus.OK);
    }

    
    private void deleteFood(String name) {
        Iterator<Food> iterator = foods.iterator();
        while (iterator.hasNext()) {
            if(name.equals(iterator.next().getName())){
                iterator.remove();
            }
        }
    }
    
    @ExceptionHandler(ParseException.class)
    public ModelAndView exception(ParseException e) {
        ModelAndView ret = new ModelAndView("exception");
        ret.addObject("exception", e);
        return ret;
    }
    

}
