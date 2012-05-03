package com.github.lalyos.mvc;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.github.lalyos.domain.Address;

@Controller
@RequestMapping("/address/*")
public class AddressController {

    @RequestMapping("show")
    public String show(Model model, HttpSession session) {
        
        Address deliveryAddress = (Address) session.getAttribute("deliveryAddress");
        if(deliveryAddress == null) {
            deliveryAddress = new Address();
            session.setAttribute("deliveryAddress", deliveryAddress);
        }
        
        model.addAttribute("address", deliveryAddress);
        
        return "address/show";
    }
    
    @RequestMapping(value="set", method= RequestMethod.GET)
    public String form(Model model, HttpSession session) {
        Address deliveryAddress = (Address) session.getAttribute("deliveryAddress");
        if(deliveryAddress == null) {
            deliveryAddress = new Address();
            session.setAttribute("deliveryAddress", deliveryAddress);
        }
        model.addAttribute("address", deliveryAddress);
        
        return "address/set";
    }
    
    @RequestMapping(value="set", method= RequestMethod.POST)
    public String set(Model model, HttpSession session, @Valid @ModelAttribute("address") Address deliveryAddress, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            model.addAttribute("address", deliveryAddress);
            return "address/set";
        } else {
            session.setAttribute("deliveryAddress", deliveryAddress);
            return "redirect:/address/show";
        }
    }
}
