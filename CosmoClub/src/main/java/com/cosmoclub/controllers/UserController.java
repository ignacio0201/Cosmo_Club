package com.cosmoclub.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cosmoclub.components.PaisesDelMundo;
import com.cosmoclub.models.User;
import com.cosmoclub.services.UserService;
import com.cosmoclub.validators.UserValidator;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;


@Controller
public class UserController {
	

	@Autowired
	private UserService userService;
	
	@Autowired 
	private UserValidator userValidator;
	
	@Autowired
	private PaisesDelMundo paises;
	
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
        String defaultProfileImage = "/img/profile.jpg";
        user.setUser_img(defaultProfileImage);
        
        
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
	public String learn(HttpSession session, Model model) {
		 Long userId = (Long) session.getAttribute("userId");

		    if (userId != null) {
		        User user = userService.findUserById(userId);
		        model.addAttribute("user", user);
		        return "views/aprender.jsp";
		    } else {
		        return "redirect:/";
		    }
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
	
	@PostMapping("/perfil")
	public String actualizarImagenPerfil(@RequestParam("profileImage") MultipartFile profileImage, HttpSession session) {
	    Long userId = (Long) session.getAttribute("userId");

	    if (userId != null) {
	        User user = userService.findUserById(userId);

	        if (!profileImage.isEmpty()) {
	            try {
	                String profileImageFileName = userId + ".jpg";
	                String profileImagePath = "src/main/resources/static/img/" + profileImageFileName;

	                Path imagePath = Paths.get(profileImagePath);
	                Files.write(imagePath, profileImage.getBytes());

	                // Actualiza solo el campo user_img en el objeto usuario
	                user.setUser_img("img/" + profileImageFileName);

	                // Guarda el objeto usuario actualizado en la base de datos
	                userService.save(user);
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	        }
	        return "redirect:/perfil";
	    } else {
	        return "redirect:/dashboard";
	    }
	}
	
	@GetMapping("/perfil/{id}")
	public String editarPerfil(@PathVariable("id")Long id,Model model,@ModelAttribute("user")User user,BindingResult result) {
		model.addAttribute("user", userService.findUserById(id));
		model.addAttribute("paises", paises.getPaises());
		
		return "views/edit-perfil.jsp";
		
	}
	
	@PostMapping("/perfil/{id}/edit")
	public String editarCampos(@PathVariable("id")Long id,Model model,@Valid @ModelAttribute("user")User user,BindingResult result) {
		if (result.hasErrors()) {
			
			model.addAttribute("paises", paises.getPaises());
			return "views/edit-perfil.jsp";
		}
		userService.editarUsuario(id, user);

		return "redirect:/perfil";
	}
	
	@PostMapping("/perfil/{id}/editpwd")
	public String editarContra(@RequestParam String contrasenaActual, @RequestParam String nuevaContrasena, @RequestParam String confirmarContrasena, HttpSession session,
	        @PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
		
	    Long userId = (Long) session.getAttribute("userId");

	    if (userId != null) {
	        User user = userService.findUserById(userId);

	        // Verificar que la contraseña actual sea válida
	        if (BCrypt.checkpw(contrasenaActual, user.getPassword())) {
	            // Verificar que la nueva contraseña y la confirmación coincidan
	            if (nuevaContrasena.equals(confirmarContrasena)) {
	                // Aplicar validaciones de complejidad de contraseña aquí si es necesario

	                // Encriptar la nueva contraseña
	                String hashedNuevaContrasena = BCrypt.hashpw(nuevaContrasena, BCrypt.gensalt());

	                // Actualizar la contraseña en la base de datos
	                user.setPassword(hashedNuevaContrasena);
	                userService.save(user);

	                // Redirigir al formulario de edición de perfil
	                return "redirect:/perfil";
	            } else {
	                // Las contraseñas nueva y confirmar no coinciden, agrega un mensaje de error
	                redirectAttributes.addFlashAttribute("error", "Las contraseñas nuevas no coinciden.");
	            }
	        } else {
	            // La contraseña actual es incorrecta, agrega un mensaje de error
	            redirectAttributes.addFlashAttribute("error", "La contraseña actual es incorrecta.");
	        }
	    }

	    // Redirigir al formulario de edición de perfil
	    return "redirect:/perfil/" + id;
	}

}
