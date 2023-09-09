package com.cosmoclub.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import com.cosmoclub.cache.ImageCache;
import com.cosmoclub.components.CalcularTiempoTranscurrido;
import com.cosmoclub.components.PaisesDelMundo;
import com.cosmoclub.models.Comment;
import com.cosmoclub.logicaNegocio.Foro;
import com.cosmoclub.models.Post;
import com.cosmoclub.models.User;
import com.cosmoclub.repositories.UserRepository;
import com.cosmoclub.services.CommentService;
import com.cosmoclub.services.PostService;
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
	
	@Autowired
	private PostService postService;
	
	@Autowired
	private CommentService commentService;

	@Autowired
	private PaisesDelMundo paises;
	
	@Autowired
	private Foro foro;
	
	@Autowired
	private CalcularTiempoTranscurrido calcTiempoTranscurrido;

	
	@GetMapping("/")
	public String index(HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
			return "views/index.jsp";
	}
	
	@GetMapping("/{noExiste}")
	public String vistaNoExistente(
			@PathVariable("noExiste") String noExiste) {
		return "redirect:/";
	}
	
	@GetMapping("/sesion")
	public String sesion(@ModelAttribute("user")User user, BindingResult result, HttpSession session,Model model) {
		Long userId = (Long) session.getAttribute("userId");
			return "views/sesion.jsp";
	}
	
	@PostMapping("/register")
    public String register(@Valid @ModelAttribute("user") User user, BindingResult result, HttpSession session, Model model) {
        userValidator.validate(user, result);
        if (result.hasErrors()) {
            model.addAttribute("showRegisterForm", true); // Establecer la variable para mostrar el formulario de registro
            return "views/sesion.jsp";
        }
		String defaultProfileImage = "/img/profile.jpg";
        user.setUser_img(defaultProfileImage);
        userService.registerUser(user);
        
        session.setAttribute("userId", user.getId());
        
        user.setStatus("active");
        userService.save(user);
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
	        return "/views/sesion.jsp";
	    }
	}
	@GetMapping("/logout")
	public String logout(HttpSession session) {
	    Long userId = (Long) session.getAttribute("userId");
	    User user = userService.findUserById(userId);
		user.setStatus("inactive");
		userService.save(user);
	    session.invalidate();
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
	        
	        byte[] imageData = ImageCache.getImageFromCache(userId);
	        if (imageData == null) {
	            String profileImageFileName = user.getUser_img();
	            
	            if (profileImageFileName != null) {
	                try {
	                    String profileImagePath = "src/main/resources/static" + profileImageFileName; 
	                    Path imagePath = Paths.get(profileImagePath);
	                    
	                    if (Files.exists(imagePath)) {
	                        imageData = Files.readAllBytes(imagePath);
	                        
	                        // Agrega la imagen al caché para futuras solicitudes
	                        ImageCache.addImageToCache(userId, imageData);
	                    }
	                } catch (IOException e) {
	                    e.printStackTrace();
	                }
	            }
	        }
	        if (imageData != null) {
	            // Genera el Base64 de la imagen
	            String userImageBase64 = Base64.getEncoder().encodeToString(imageData);
	            
	            // Agrega el Base64 al modelo
	            model.addAttribute("userImageBase64", userImageBase64);
	        }

	        // Agregar el código para obtener y agregar los recuentos de comentarios aquí
	        List<Post> allPosts = postService.findAllPosts();
	        model.addAttribute("allPosts", allPosts);

	        // Crear un mapa para almacenar los recuentos de comentarios por postId
	        Map<Long, Long> commentCounts = new HashMap<>();
	        for (Post post : allPosts) {
	            Long postId = post.getId();
	            Long numberCommentsDash = commentService.countCommentsByPostId(postId);
	            commentCounts.put(postId, numberCommentsDash);
	        }

	        model.addAttribute("commentCounts", commentCounts);

	        return "views/dashboard.jsp";
	    } else {
	        return "redirect:/";
	    }
	}

	
	@GetMapping("/aprender")
	public String learn(HttpSession session, Model model) {
		 Long userId = (Long) session.getAttribute("userId");

		    if (userId != null) {
		    	  User user = userService.findUserById(userId);
			        model.addAttribute("user", user);
			        
			        byte[] imageData = ImageCache.getImageFromCache(userId);
			        if (imageData != null) {
			            // Generar la URL de la imagen en el caché basada en el userId
			        	 String userImageBase64 = Base64.getEncoder().encodeToString(imageData);

			     
			             model.addAttribute("userImageBase64", userImageBase64);
			        }
		        model.addAttribute("user", user);
		        return "views/aprender.jsp";
		    } else {
		        return "redirect:/";
		    }
	}
	
	@GetMapping("/curso")
	public String curso(HttpSession session, Model model) {
		Long userId = (Long) session.getAttribute("userId");
		return "views/curso.jsp";
	}
	@GetMapping("/unidad")
	public String unidad(HttpSession session, Model model) {
		Long userId = (Long) session.getAttribute("userId");
		return "views/unidad.jsp";
	}
	@GetMapping("/juegos")
	public String juegos(HttpSession session, Model model) {
		Long userId = (Long) session.getAttribute("userId");
		return "views/juegos.jsp";
	}
	@GetMapping("/cosmochat")
	public String chat(HttpSession session, Model model) {
		Long userId = (Long) session.getAttribute("userId");
		return "views/chat.jsp";
	}
	
	@GetMapping("/galeria")
	public String galeria(HttpSession session, Model model) {
	    Long userId = (Long) session.getAttribute("userId");

	    if (userId != null) {
	        User user = userService.findUserById(userId);
	        model.addAttribute("user", user);
	        
	        byte[] imageData = ImageCache.getImageFromCache(userId);
	        if (imageData != null) {
	            // Generar la URL de la imagen en el caché basada en el userId
	        	 String userImageBase64 = Base64.getEncoder().encodeToString(imageData);

	             // Agrega el Base64 al modelo
	             model.addAttribute("userImageBase64", userImageBase64);
	        }
	        
	        
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
	        
	        byte[] imageData = ImageCache.getImageFromCache(userId);
	        if (imageData != null) {
	           
	        	 String userImageBase64 = Base64.getEncoder().encodeToString(imageData);

	        
	             model.addAttribute("userImageBase64", userImageBase64);
	        }

	        return "views/perfil-user.jsp";
	    } else {
	        return "redirect:/";
	    }
	}

	@PostMapping("/perfil")
	public String actualizarImagenPerfil(@RequestParam("profileImage") MultipartFile profileImage, HttpSession session, Model model) {
	    Long userId = (Long) session.getAttribute("userId");

	    if (userId != null) {
	        User user = userService.findUserById(userId);

	        if (!profileImage.isEmpty()) {
	            try {
	                byte[] imageData = profileImage.getBytes();                
	                // Agrega la imagen al caché
	                ImageCache.addImageToCache(userId, imageData);
	                String staticImageFileName = "user_" + userId + ".jpg";
	                String staticImagePath = "/img/" + staticImageFileName;
	                user.setUser_img(staticImagePath);

	                userService.save(user);

	                // Convierte la imagen en base64 y agrega al modelo para su visualización en la página
	                String userImageBase64 = "data:image/jpeg;base64," + Base64.getEncoder().encodeToString(imageData);
	                model.addAttribute("userImageBase64", userImageBase64);

	                // Guarda la imagen en la carpeta 'img' dentro de 'static'
	                String staticImgPath = "src/main/resources/static/img/";

	                Files.write(Paths.get(staticImgPath + staticImageFileName), imageData);

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
	
	@GetMapping("/foro")
	public String foro(@ModelAttribute("newPost") Post newPost, HttpSession session, Model model) {
		Long userId = (Long) session.getAttribute("userId");
	    if (userId != null) {
	        User user = userService.findUserById(userId);
	        model.addAttribute("user", user);
	        List<Post> allPosts = postService.findAllPosts();
	        model.addAttribute("allPosts", allPosts);
	        
	     // Crear un mapa para almacenar los recuentos de comentarios por postId
	        Map<Long, Long> commentCounts = new HashMap<>();
	        for (Post post : allPosts) {
	            Long postId = post.getId();
	            Long numberCommentsDash = commentService.countCommentsByPostId(postId);
	            commentCounts.put(postId, numberCommentsDash);
	        }
	        model.addAttribute("commentCounts", commentCounts);
	        
	     // Calcular la diferencia de tiempo y formatearla para cada comentario
            for (Post post : allPosts) {
            	String timeAgo = calcTiempoTranscurrido.calcularFecha(post.getCreatedAt());
//                String timeAgo = commentService.calcularFecha(post.getCreatedAt());
                post.setTimeAgo(timeAgo);
            }
            
	        return "views/foro.jsp";
	    } else {
	        return "redirect:/";
	    }
	}

	@PostMapping("/crear-post")
	public String crearPost(@Valid @ModelAttribute("newPost") Post newPost, @RequestParam("post_img") MultipartFile post_img, BindingResult result, Model model, HttpSession session) {
		if (result.hasErrors()) {
			Long userId = (Long) session.getAttribute("userId");
	        User user = userService.findUserById(userId);
	        model.addAttribute("user", user);
	        
	        List<Post> allPosts = postService.findAllPosts();
	        model.addAttribute("allPosts", allPosts);
			return "views/foro.jsp";
		}
		Long userId = (Long) session.getAttribute("userId");
		User user = userService.findUserById(userId);
		Post post = postService.createPost(newPost);
		foro.guardarImgPost(post, post_img);
		
		return "redirect:/foro";
	}
	
	@GetMapping("/post/{id}")
	public String verPost(@PathVariable("id") Long postId, @ModelAttribute("newComment") Comment newComment, HttpSession session, Model model) {
		Long userId = (Long) session.getAttribute("userId");
		if (userId != null) {
			User user = userService.findUserById(userId);
			Post post = postService.findPost(postId);
			List<Comment> allCommentsPost = commentService.commentsByPost(postId);
			Long numberCommentsPost = commentService.countCommentsByPostId(postId); //this
	        
			model.addAttribute("user", user);
			model.addAttribute("post", post);
			model.addAttribute("allCommentsPost", allCommentsPost);
			model.addAttribute("numberCommentsPost", numberCommentsPost); //this
			
			// Calcular la diferencia de tiempo y formatearla para cada comentario
            for (Comment comment : allCommentsPost) {
            	String timeAgo = calcTiempoTranscurrido.calcularFecha(comment.getCreatedAt());
                comment.setTimeAgo(timeAgo);
            }
			return "views/post.jsp";
		} else {
	        return "redirect:/";
	    }
	}
	
	@PostMapping("/post/{postId}/comment")
	public String comentarPost(@PathVariable("postId") Long postId, @Valid @ModelAttribute("newComment") Comment newComment, BindingResult result, HttpSession session, Model model) {
		if (result.hasErrors()) {
			Long userId = (Long) session.getAttribute("userId");
			User user = userService.findUserById(userId);
			Post post = postService.findPost(postId);
			List<Comment> allCommentsPost = commentService.commentsByPost(postId);
			Long numberCommentsPost = commentService.countCommentsByPostId(postId); //this
			model.addAttribute("user", user);
			model.addAttribute("post", post);
			model.addAttribute("allCommentsPost", allCommentsPost);
			model.addAttribute("numberCommentsPost", numberCommentsPost); //this
			return "views/post.jsp";
		}
		Long userId = (Long) session.getAttribute("userId");
	    User user = userService.findUserById(userId);
	    Post post = postService.findPost(postId);
	    
	    List<Comment> comments = post.getComments();
	    newComment.setUser(user);
	    newComment.setPost(post);
	    comments.add(newComment);
	    post.setComments(comments);
	    
	    commentService.createComment(newComment);
	    postService.createPost(post);
		return "redirect:/post/" + post.getId();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
