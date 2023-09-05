package com.cosmoclub.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cosmoclub.models.Comment;
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
	
	@GetMapping("/")
	public String index(HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		if(userId != null) {
			return "redirect:/dashboard";
		}else {
			return "views/index.jsp";
		}
	}
	
	@GetMapping("/{noExiste}")
	public String vistaNoExistente(
			@PathVariable("noExiste") String noExiste) {
		return "redirect:/";
	}
	
	@GetMapping("/sesion")
	public String sesion(@ModelAttribute("user")User user, BindingResult result, HttpSession session,Model model) {
		Long userId = (Long) session.getAttribute("userId");
		if(userId != null) {
			return "redirect:/dashboard";
		}else {
			return "views/sesion.jsp";
		}
	}
	
	@PostMapping("/register")
    public String register(@Valid @ModelAttribute("user") User user, BindingResult result, HttpSession session, Model model) {
        userValidator.validate(user, result);
        if (result.hasErrors()) {
            model.addAttribute("showRegisterForm", true); // Establecer la variable para mostrar el formulario de registro
            return "views/sesion.jsp";
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
	        return "/views/sesion.jsp";
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
	    Long userId = (Long) session.getAttribute("userId");
	    if (userId != null) {
	    	List<User> connectedUsers = userService.getAllConnectedUsers();
	    	List<Post> allPosts = postService.findAllPosts();
	        model.addAttribute("allPosts", allPosts);
		    model.addAttribute("connectedUsers", connectedUsers);
	        User user = userService.findUserById(userId);
	        model.addAttribute("user", user);
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
	
	@GetMapping("/foro")
	public String foro(@ModelAttribute("newPost") Post newPost, HttpSession session, Model model) {
		Long userId = (Long) session.getAttribute("userId");
	    if (userId != null) {
	        User user = userService.findUserById(userId);
	        model.addAttribute("user", user);
	        List<Post> allPosts = postService.findAllPosts();
	        model.addAttribute("allPosts", allPosts);
	        return "views/foro.jsp";
	    } else {
	        return "redirect:/";
	    }
	}

	@PostMapping("/crear-post")
	public String crearPost(@Valid @ModelAttribute("newPost") Post newPost, BindingResult result, Model model, HttpSession session) {
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
		postService.createPost(newPost);
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
