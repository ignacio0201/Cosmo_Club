let stompCliente = null;

const onConnectSocket = () => {
    stompCliente.subscribe('/tema/mensajes', function (mensaje) {
        var mensajeDTO = JSON.parse(mensaje.body);
        var chatRoomId = mensajeDTO.chatRoomId;

        const txtChatRoomId = document.getElementById('txtChatRoomId');
        const currentChatRoomId = txtChatRoomId.value;
        const txtUsuarioId = document.getElementById('txtUsuarioId');
		const usuarioId = txtUsuarioId.value;		
		
        if (chatRoomId == currentChatRoomId) {
            const nuevoMensaje = document.createElement('li');
            nuevoMensaje.className = `list-group-item ${mensajeDTO.userId == usuarioId ? 'mensaje-enviado' : 'mensaje-recibido'}`;
            
            const mensajeContenedor = document.createElement('div');
            mensajeContenedor.className = 'mensaje-contenedor';
            
            const mensajeContenido = document.createElement('span');
            mensajeContenido.className = 'mensaje-contenido';
            mensajeContenido.textContent = mensajeDTO.content;
            
            mensajeContenedor.appendChild(mensajeContenido); 
             nuevoMensaje.appendChild(mensajeContenedor);
            
            document.getElementById('ULMensajes').appendChild(nuevoMensaje);
            agregarMensaje();
            ultimoUsuario = mensajeDTO.userId; // Actualizar el último usuario
        }
    });
};

const onWebSocketClose = () => {
    if (stompCliente !== null) {
        stompCliente.deactivate();
    }
};

const conectarWS = () => {
    onWebSocketClose();
    stompCliente = new StompJs.Client({
        webSocketFactory: () => new WebSocket('ws://192.168.0.200:8080/websocket')
    });
    //localhost:8080 y  192.168.0.200:8080(ip kalfu) y direccion del ngrok agregar wss
    stompCliente.onConnect = onConnectSocket;
    stompCliente.onWebSocketClose = onWebSocketClose;
    stompCliente.activate();
};

const enviarMensaje = () => {
    const txtNombre = document.getElementById('txtNombre');
    const txtChatRoomId = document.getElementById('txtChatRoomId');
    const txtUser1Id = document.getElementById('txtUser1Id');
    const txtUser2Id = document.getElementById('txtUser2Id'); 
    const txtMensaje = document.getElementById('txtMensaje');
    
    stompCliente.publish({
        destination: '/app/envio',
        body: JSON.stringify({
            user: { name: txtNombre.value },
            content: txtMensaje.value,
            chatRoom: {
                id: txtChatRoomId.value,
                user1: { id: txtUser1Id.value },
                user2: { id: txtUser2Id.value }
            }
        })
    });
	
    txtMensaje.value = ''; // Limpiar el campo de mensaje después de enviar
    btnEnviar.disabled = true;
};

document.addEventListener('DOMContentLoaded', () => {
    const btnEnviar = document.getElementById('btnEnviar');
    btnEnviar.addEventListener('click', (e) => {
        e.preventDefault();
        enviarMensaje();
    });
    // Agregar evento keydown para detectar Enter
    txtMensaje.addEventListener('keydown', (e) => {
        if (e.key === 'Enter' && txtMensaje.value.trim() !== '') {
            e.preventDefault();
            enviarMensaje();
        }
    });
    conectarWS();
});