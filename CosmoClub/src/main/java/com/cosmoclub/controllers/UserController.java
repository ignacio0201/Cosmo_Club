package com.cosmoclub.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cosmoclub.models.User;
import com.cosmoclub.repositories.UserRepository;
import com.cosmoclub.services.UserService;
import com.cosmoclub.validators.UserValidator;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;


@Controller
public class UserController {
	
	@Autowired
	private UserRepository userRepository;

	@Autowired
	private UserService userService;
	
	@Autowired 
	private UserValidator userValidator;
	
	@GetMapping("/")
	public String index() {
		
		return "views/index.jsp";
	}
	
	@GetMapping("/sesion")
	public String sesion(@ModelAttribute("user")User user, BindingResult result, HttpSession session,Model model) {
		return "views/session.jsp";
	}
	
	@PostMapping("/register")
    public String register(@Valid @ModelAttribute("user") User user, BindingResult result, HttpSession session, Model model) {
        userValidator.validate(user, result);
        if (result.hasErrors()) {
            model.addAttribute("showRegisterForm", true); // Establecer la variable para mostrar el formulario de registro
            return "views/session.jsp";
        }
        userService.registerUser(user);
        session.setAttribute("userId", user.getId());
        return "redirect:/dashboard";
    }
	
	@PostMapping("/login")
	public String login(HttpSession session, @RequestParam("email") String email, @RequestParam("pass") String password, Model model) {
	    boolean authenticated = userService.authenticateUser(email, password);
	    if (authenticated) {
	        User user = userService.findUserByEmail(email);
	        user.setStatus("active");
	        userService.save(user);
	        session.setAttribute("userId", user.getId());
	        return "redirect:/dashboard";
	    } else {
	        model.addAttribute("user", new User());
	        return "/views/session.jsp";
	    }
	}
	@GetMapping("/logout")
	public String logout(HttpSession session) {
	    Long userId = (Long) session.getAttribute("userId");
	    if (userId != null) {
	        User user = userService.findUserById(userId);
	        user.setStatus("inactive");
	        userService.save(user);
	        session.invalidate();
	    }
	    return "redirect:/";
	}
	
	@GetMapping("/dashboard")
	public String inicio(HttpSession session, Model model) {
	    List<User> connectedUsers = userService.getAllConnectedUsers();
	    model.addAttribute("connectedUsers", connectedUsers);

	    Long userId = (Long) session.getAttribute("userId");
	    if (userId != null) {
	        User user = userService.findUserById(userId);
	        model.addAttribute("user", user);
	    }

	    return "views/dashboard.jsp";
	}
	
	@GetMapping("/aprender")
	public String learn() {
		
		return "views/aprender.jsp";
	}
	@GetMapping("/galeria")
	public String galeria(HttpSession session, Model model) {
	    Long userId = (Long) session.getAttribute("userId");

	    if (userId != null) {
	        User user = userService.findUserById(userId);
	        model.addAttribute("user", user);
	        return "views/galeria.jsp";
	    } else {
	        return "redirect:/";
	    }
	}
	@GetMapping("/perfil")
	public String perfil(HttpSession session, Model model) {
	    Long userId = (Long) session.getAttribute("userId");

	    if (userId != null) {
	        User user = userService.findUserById(userId);
	        model.addAttribute("user", user);

	        return "views/perfil-user.jsp";
	    } else {
	        return "redirect:/";
	    }
	}



	
}
