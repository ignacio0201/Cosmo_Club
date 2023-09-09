<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
			<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
				<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
					<!DOCTYPE html>
					<html lang="es">

					<head>
						<meta charset="UTF-8">
						<meta name="viewport" content="width=device-width, initial-scale=1.0">
						<title>Chat con ${usuarioSeleccionado.name}</title>
						<link rel="stylesheet"
							href="https://cdnjs.cloudflare.com/ajax/libs/emojionearea/3.4.2/emojionearea.min.css">
						<link rel="stylesheet"
							href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
						<link rel="stylesheet"
							href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
						<script src="https://cdn.jsdelivr.net/npm/@stomp/stompjs@5.0.0/bundles/stomp.umd.js"></script>
						<c:url value="/resources/js/index.js" var="jsURL" />
						<script src="${jsURL}"></script>
						<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
						<script type="text/javascript"
							src="https://cdnjs.cloudflare.com/ajax/libs/emojionearea/3.4.2/emojionearea.min.js"></script>


						<style>
							.container {
								margin: auto;
								justify-content: center;
								align-items: center;
							}

							::-webkit-scrollbar {
								width: 8px;
							}

							::-webkit-scrollbar-track {
								background-color: #d8d5f4;
								border-radius: 10px;
							}

							::-webkit-scrollbar-thumb {
								border-radius: 10px;
								background-color: #6a61bb;
							}

							#mensajes {
								height: 69vh;
								overflow-y: auto;
								width: 90vh;
								margin-bottom: 3vh;
							}

							.list-group-item {
								display: flex;
								align-items: center;
								margin-bottom: 0px;
								border: none;
								padding-bottom: 5px;
								padding-top: 5px;
								background-color: rgba(0, 0, 0, 0);
								/*color de fondo mensajes*/
							}

							.mensaje-contenedor {
								max-width: 80%;
								/* Ajusta el ancho máximo según tus preferencias */
								border-radius: 10px;
								padding: 10px;
							}

							.mensaje-enviado .mensaje-contenedor {
								background-color: #f4fee3;
								justify-content: flex-start;
							}

							.mensaje-recibido {
								justify-content: flex-end;
							}

							.mensaje-enviado {
								/*El otro usuario*/
								justify-content: flex-start;
								color: black;
							}

							.mensaje-recibido .mensaje-contenedor {
								/*usuario actual*/
								background: linear-gradient(0deg, rgba(138, 139, 238, 1) 0%,
										rgba(173, 131, 247, 1) 100%);
								color: white;
								justify-content: flex-end;
							}

							.mensaje-contenido {
								word-wrap: break-word;
							}

							.form-control:focus {
								box-shadow: 1px 2px 13px 0px rgba(34, 29, 244, 0.5);
							}

							.form-control.iinput {
								border-radius: 20px;
								width: 500px !important;
								border: none;
							}

							.bbutton {
								border-radius: 30px;
								background-color: #fee3f4;
								border: none;
								transition: background-color 0.3s;
							}

							.bbutton:disabled {
								background-color: #ccc;
								/* Color gris cuando está deshabilitado */
								cursor: not-allowed;
								/* Cambiar el cursor a "no permitido" */
							}

							.bbutton:hover:not(:disabled) {
								background-color: #F8B2E0;
								/* Color morado oscuro en hover */
							}

							.d-flex {
								justify-content: center;
							}

							.chatMensaje {
								width: fit-content;
								height: 656.500px;
								margin: auto;
								border-radius: 20px;
								padding: 10px;
								/*color fondo mensajes*/
								background: url('/resources/img/imagenHolografica3.png') no-repeat center center;
								background-size: cover;
								background-color: rgb(168, 221, 255);
								justify-content: center;
							}

							body {
								/*fondo del body*/
								background: rgb(125, 126, 218);
								color: white;
								margin: 0px;
								background-image: url('/resources/img/pixel2.png');
								/* Ruta de la imagen PNG transparente */
								background-repeat: repeat;
							}

							#txtMensaje {
								background-color: #d2edff;
							}

							.mostrarUsuarios {
								width: auto;
								margin-bottom: auto;
								border-radius: 20px;
								padding: 1.5rem;
								background: url('/resources/img/imagenHolografica3.png') no-repeat center center;
								background-size: cover;
								background-color: rgb(168, 221, 255);
								display: block;
								margin-top: 7rem;
								z-index: -2;
							}

							.alturas,
							.my-5 {
								margin-top: 4rem !important;
							}

							.juan {

								/* Cambia el color de la línea según tus preferencias */
								padding-bottom: 10px;
								/* Ajusta el espacio entre cada elemento */
								justify-content: start;
								align-items: center;
								margin-bottom: 0px;
								border: none;
								padding-bottom: 5px;
								padding-top: 5px;
								background-color: rgba(0, 0, 0, 0);
								border-bottom: 1px solid #ddf2ff;
								list-style: none;
							}

							.aaa {
								color: #664d94;
							}

							.formatted-time {
								justify-content: end;
							}

							.buton-buscar {
								border: none;
								background: none;
								cursor: pointer;
								border-radius: 0 20px 20px 0;
								background-color: #d2edff;
								height: 40px;
							}

							.buton-buscar:hover {
								background-color: #d2edff;
								outline: none;
								/* Ajusta el color de fondo en el hover según tus preferencias */
							}

							.buton-buscar.pressed {
								background-color: #d2edff;
								outline: none;
								/* Color de fondo al presionar el botón */
							}

							.buscar-input {
								border-radius: 20px 0 0 20px;
								background-color: #d2edff;
								border: none;
								padding-left: 12px;
								width: 257px;
							}

							.buscar-input:active {
								background-color: #d2edff;
								outline: none;
								/* Cambia el color de fondo cuando el input está presionado */
							}

							.buscar-input:focus {
								background-color: #d2edff;
								outline: none;
								/* Cambia el color de fondo cuando el input está en foco */
							}

							.jajas {
								display: flex;
								align-items: center;
							}

							.koko {
								width: fit-content;
								position: absolute;
								z-index: 2;

							}

							.resultados-busqueda {
								display: none;
								/* Oculta el div por defecto */
								position: absolute;
								width: 100%;
								max-height: 200px;
								/* Altura máxima para hacer que el div sea desplegable */
								overflow-y: auto;
								background-color: #d2edff;
								border-radius: 5px;
								z-index: 1000;
								color: black;
								margin-top: 18px;
								z-index: 1;

							}

							.resultados-list {
								list-style: none;
								padding-top: 30px;
							}

							#sidebar {
								position: fixed;
								top: 0;
								left: -250px;
								/* Ancho inicial de la barra lateral */
								width: 250px;
								/* Ancho de la barra lateral */
								height: 100%;
								background-color: #333;
								/* Color de fondo de la barra lateral */
								transition: left 0.3s;
								/* Transición suave de la posición izquierda */
								z-index: 1000;
								/* Z-index para estar por encima del contenido principal */
							}

							.sidebar-hidden {
								left: -250px;
							}
						</style>
					</head>

					<body>
						<div id="toggleSidebar" class="position-fixed"
							style="top: 50px; left: 0; transform: translate(0, 0); cursor: pointer;">
							<i class="bi bi-arrow-right"></i>
						</div>
						<div id="sidebar" class="sidebar-hidden">
							fdfgdg
							<ul class="list-unstyled px-2">
								<li class="active"><a href="/dashboard"
										class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-home'></i>
										Dashboard</a></li>
								<li class=""><a href="/aprender" class="text-decoration-none px-3 py-2 d-block"><i
											class='bx bx-book'></i>
										Aprender</a></li>
								<li class=""><a href="/galeria" class="text-decoration-none px-3 py-2 d-block"><i
											class='bx bx-images'></i>
										Galeria</a></li>
								<li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block"><i
											class='bx bxs-invader'></i>
										Juegos</a></li>
								<li class=""><a href="/chat" class="text-decoration-none px-3 py-2 d-block"><i
											class='bx bx-chat'></i>
										CosmoChat</a></li>
								<li class=""><a href="" class="text-decoration-none px-3 py-2 d-block"><i
											class='bx bxl-wikipedia'></i>
										WikiCosmo</a></li>
								<li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block"><i
											class='bx bx-group'></i> Foro</a>
								</li>
							</ul>
						</div>
						<div class="container ">
							<div class="row alturas">
								<div class="col-3">
									<div class="row mb-3 koko">
										<form action="/buscarUsuarioChat" method="POST" class="form-inline"
											id="searchForm">
											<div class="input-group">
												<input type="text" class="buscar-input"
													data-usuario-id="${usuarioSeleccionado.id}" id="search" name="q"
													placeholder="Buscar usuario...">

												<div class="jajas">
													<button class="buton-buscar" type="submit"><i
															class="bi bi-search"></i></button>
												</div>

											</div>
										</form>

									</div>
									<div class="row resultados-busqueda" id="resultados-busqueda"></div>


									<div class="row mostrarUsuarios">
										<ul class=" list-group">
											<c:forEach var="usuario" items="${usuarios}">
												<li class="juan align-items-start">

													<div class="d-flex justify-content-between">
														<a href="/chat/${usuario.id}"
															class="aaa text-decoration-none">${usuario.name}</a>
														<fmt:formatDate
															value="${ultimoMensajePorUsuario[usuario].createdAt}"
															pattern="HH:mm" var="formattedDate" />
														<span class="formatted-time">${formattedDate}</span>
													</div>

													<div class="ultimo-mensaje mt-2">
														<c:choose>
															<c:when test="${ultimoMensajePorUsuario[usuario] != null}">
																<c:set var="mensaje"
																	value="${ultimoMensajePorUsuario[usuario].content}" />
																<c:choose>
																	<c:when test="${fn:length(mensaje) > 23}">
																		${fn:substring(mensaje, 0, 23)}...
																	</c:when>
																	<c:otherwise>
																		${mensaje}
																	</c:otherwise>
																</c:choose>
															</c:when>
															<c:otherwise>
																No hay mensajes
															</c:otherwise>
														</c:choose>
													</div>
												</li>
											</c:forEach>
										</ul>
									</div>
								</div>
								<div
									class="chatMensaje col-md-8 d-flex align-items-center justify-content-center flex-column">
									<h1>Bienvenido a CosmoChat</h1>
									<h3>Tu espacio para conversaciones Cósmicas</h3>
									<p>Elige un chat o inicia uno nuevo en buscar usuario</p>
								</div>
							</div>
						</div>


						<script>
							// Escucha el evento de entrada en el campo de búsqueda
							document.getElementById("search").addEventListener("input", function () {
								// Obtén el término de búsqueda
								const searchTerm = this.value;

								// Realiza una solicitud AJAX al servidor para obtener los resultados
								$.post("/buscarUsuarioChat", { q: searchTerm }, function (data) {
									// Actualiza el contenido del div de resultados de búsqueda
									const resultadosBusqueda = document.getElementById("resultados-busqueda");
									resultadosBusqueda.innerHTML = data;

									// Si hay resultados, muestra el div de resultados, de lo contrario, ocúltalo
									if (searchTerm.trim() !== "") {
										resultadosBusqueda.style.display = "block";
									} else {
										resultadosBusqueda.style.display = "none";
									}
								});
							});
						</script>

						<script>
							$(document).ready(function () {
								$('#searchForm').submit(function (event) {
									event.preventDefault(); // Evita que el formulario se envíe normalmente

									var searchTerm = $('#search').val(); // Obtén el término de búsqueda

									$.post('/buscarUsuarioChat', { q: searchTerm }, function (data) {
										$('.resultados-busqueda').html(data); // Actualiza la sección de resultados con el HTML devuelto por el controlador
									});
								});
							});
						</script>
						<script>
							// Obtener referencia al div de resultados de búsqueda
							const resultadosBusqueda = document.getElementById("resultados-busqueda");

							// Escuchar el evento clic en el documento
							document.addEventListener("click", function (event) {
								// Verificar si el clic ocurrió fuera del div de resultados de búsqueda
								if (!resultadosBusqueda.contains(event.target)) {
									// Ocultar los resultados de búsqueda
									resultadosBusqueda.innerHTML = "";
								}
							});
						</script>

						<script>
							const sidebar = document.getElementById("sidebar");
							const toggleSidebarButton = document.getElementById("toggleSidebar");

							document.addEventListener("DOMContentLoaded", function () {
								// Controla el clic en la flecha para mostrar/ocultar la barra lateral
								toggleSidebarButton.addEventListener("click", function (event) {
									if (sidebar.classList.contains("sidebar-hidden")) {
										sidebar.classList.remove("sidebar-hidden");
									} else {
										sidebar.classList.add("sidebar-hidden");
									}
								});

								// Controla el clic fuera de la barra lateral para ocultarla
								document.addEventListener("click", function (event) {
									if (!sidebar.contains(event.target) && event.target !== toggleSidebarButton) {
										sidebar.classList.add("sidebar-hidden");
									}
								});
							});
						</script>
					</body>

					</html>