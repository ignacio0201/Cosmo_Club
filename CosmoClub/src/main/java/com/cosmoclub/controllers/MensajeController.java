package com.cosmoclub.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cosmoclub.models.ChatRoom;
import com.cosmoclub.models.Mensaje;
import com.cosmoclub.models.User;
import com.cosmoclub.repositories.ChatRoomRepository;
import com.cosmoclub.repositories.MensajeRepository;
import com.cosmoclub.repositories.UserRepository;
import com.cosmoclub.services.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class MensajeController {

	@Autowired
	private MensajeRepository mensajeRepository;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private UserService userService;

	@Autowired
	private ChatRoomRepository chatRoomRepository;

	@GetMapping("/chat")
	public String chat(HttpSession session, Model model) {

		Long usuarioIdi = (Long) session.getAttribute("userId");
		User usuarioActual = userRepository.findById(usuarioIdi).orElse(null);

		if (usuarioActual != null) {
			List<User> usuariosConChatComun = userRepository.findUsersWithCommonChatRooms(usuarioActual);
			Map<User, Mensaje> ultimoMensajePorUsuario = new HashMap<>();

			for (User usuarioComun : usuariosConChatComun) {
				ChatRoom commonChatRoom = chatRoomRepository.findChatRoomWithParticipants(usuarioIdi,
						usuarioComun.getId());
				if (commonChatRoom != null) {
					List<Mensaje> mensajes = mensajeRepository.findByChatRoomOrderByCreatedAt(commonChatRoom);
					if (!mensajes.isEmpty()) {
						Mensaje ultimoMensaje = mensajes.get(mensajes.size() - 1);
						ultimoMensajePorUsuario.put(usuarioComun, ultimoMensaje);
					}
				}
			}

			model.addAttribute("ultimoMensajePorUsuario", ultimoMensajePorUsuario);
			model.addAttribute("usuarios", usuariosConChatComun);
			return "/views/elegirChat.jsp";

		} else {
			return "redirect:/";
		}
	}

	@GetMapping("/chat/{usuarioId}")
	public String iniciarChat(@PathVariable Long usuarioId, HttpSession session, Model model) {
		Long usuarioIdi = (Long) session.getAttribute("userId");
		User usuarioActual = userRepository.findById(usuarioIdi).orElse(null);

		User usuarioSeleccionado = userRepository.findById(usuarioId).orElse(null);
		if (usuarioSeleccionado != null) {
			ChatRoom chatRoom = chatRoomRepository.findChatRoomWithParticipants(usuarioIdi, usuarioId);
			if (chatRoom == null) {
				chatRoom = new ChatRoom();
				chatRoom.setUser1(usuarioActual);
				chatRoom.setUser2(usuarioSeleccionado);
				chatRoom = chatRoomRepository.save(chatRoom);
			}

			List<User> usuariosConChatComun = userRepository.findUsersWithCommonChatRooms(usuarioActual);
			Map<User, Mensaje> ultimoMensajePorUsuario = new HashMap<>();
			for (User usuarioComun : usuariosConChatComun) {
				ChatRoom commonChatRoom = chatRoomRepository.findChatRoomWithParticipants(usuarioIdi,
						usuarioComun.getId());
				if (commonChatRoom != null) {
					List<Mensaje> mensajes = mensajeRepository.findByChatRoomOrderByCreatedAt(commonChatRoom);
					if (!mensajes.isEmpty()) {
						Mensaje ultimoMensaje = mensajes.get(mensajes.size() - 1);
						ultimoMensajePorUsuario.put(usuarioComun, ultimoMensaje);
					}
				}
			}

			model.addAttribute("ultimoMensajePorUsuario", ultimoMensajePorUsuario);
			model.addAttribute("usuarios", usuariosConChatComun);
			model.addAttribute("usuarioId", usuarioId);
			model.addAttribute("nombre", usuarioActual.getName());
			model.addAttribute("chatRoom", chatRoom);
			model.addAttribute("usuarioSeleccionado", usuarioSeleccionado);
			model.addAttribute("historialMensajes", mensajeRepository.findByChatRoomOrderByCreatedAt(chatRoom));
			return "/views/chat.jsp";

		} else {
			return "/views/elegirChat.jsp";
		}

	}

	@MessageMapping("/envio")
	@SendTo("/tema/mensajes")
	public MensajeDTO envio(Mensaje mensaje) {
		User emisor = userRepository.findByName(mensaje.getUser().getName());

		if (emisor != null) {
			ChatRoom chatRoom = chatRoomRepository.findById(mensaje.getChatRoom().getId()).orElse(null);
			Mensaje nuevoMensaje = new Mensaje(mensaje.getContent(), emisor, chatRoom);
			mensajeRepository.save(nuevoMensaje);

			// Crear un MensajeDTO con la información relevante
			return new MensajeDTO(nuevoMensaje.getContent(), nuevoMensaje.getUser().getName(),
					nuevoMensaje.getChatRoom().getId(), nuevoMensaje.getUser().getId());
		} else {
			return null;
		}
	}

	@PostMapping("/buscarUsuarioChat")
	@ResponseBody
	public String buscarUsuarioChat(@RequestParam("q") String name, Model model) {
		List<User> usuariosBus = userService.findUsersLike(name);
		model.addAttribute("usuarioBus", usuariosBus);

		return renderUsuariosBusqueda(usuariosBus);
	}

	private String renderUsuariosBusqueda(List<User> usuarios) {
		StringBuilder htmlBuilder = new StringBuilder();

		// Comienzas creando una etiqueta <ul> (lista desordenada) para mostrar los
		// resultados
		htmlBuilder.append("<ul class=\"resultados-list\">");

		// Verifica si hay usuarios en la lista
		if (!usuarios.isEmpty()) {
			// Itera sobre la lista de usuarios para construir cada elemento de la lista
			for (User usuario : usuarios) {
				// Dentro de cada elemento <li>, muestra el nombre del usuario como un enlace
				htmlBuilder.append("<li class=\"resultado\"><a href=\"/chat/" + usuario.getId() + "\">"
						+ usuario.getName() + "</a></li>");
			}
		} else {
			// Si no hay usuarios, muestra un mensaje indicando que no coinciden los
			// resultados
			htmlBuilder.append("<li class=\"resultado\">No se encontraron resultados</li>");
		}

		// Finalmente, cierras la etiqueta </ul> para completar la lista
		htmlBuilder.append("</ul>");

		return htmlBuilder.toString();
	}

}
