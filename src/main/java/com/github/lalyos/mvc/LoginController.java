package com.github.lalyos.mvc;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LoginController {

    @RequestMapping("/login")
    public String login(String username, String password, HttpSession session) {
        Map<String,String> users = (Map<String, String>) session.getServletContext().getAttribute("users");
        
        String origPassword = users.get(username);
        if (password != null && password.equals(origPassword)) {
            session.setAttribute("username", username);
        }
        return "redirect:/lunch/list";
    }
}
