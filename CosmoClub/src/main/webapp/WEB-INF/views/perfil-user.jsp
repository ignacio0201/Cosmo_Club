<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/perfil-user.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>
    <div class="container">
	    <div class="contenido p-5 d-flex flex-row justify-content-between">
	        <div class="perfil rounded-5 border border-secondary-subtle p-3 d-flex flex-column">
			    <header class="text-center d-flex justify-content-between align-items-center">
			        <h2 class="mx-auto mb-0">Mi Perfil</h2>
			        <a href="/perfil/${user.id}"><i class="bi bi-pencil"></i></a>
			    </header>
				  <form method="post" action="/perfil" enctype="multipart/form-data" id="imageUploadForm">
				    <div class="profile-img d-flex justify-content-center mt-3">
				        <label for="profile-image" class="img-perfil rounded-circle me-2" style="cursor: pointer;">
				            <img src="<c:url value='${user.user_img}' />" class="rounded-circle" alt="Profile Image">
				            <input id="profile-image" type="file" name="profileImage" style="display: none;" accept="image/*">
				        </label>
				    </div>
				</form>
			    
			    <div class="d-flex flex-column mt-3">
			    	<div class="row">
			    		<p class="nombre mb-0 ms-3"><i class="bi bi-person me-5"></i>${user.name} ${user.last_name}</p>
			    	</div>
			    	
			    	<div class="row">
			    		<p class="email ms-4 mb-0"><i class="bi bi-envelope-fill me-5 "></i>${user.email}</p>
			    	</div>
			    	<div class="row">
			    		
			    		<c:choose>
				            <c:when test="${empty user.pais}">
				                <p class="pais ms-4"><i class="bi bi-globe me-5"></i>No se ha seleccionado un país.</p>
				            </c:when>
				            <c:otherwise>
				                <p class="pais ms-4"><i class="bi bi-globe me-5"></i> País: ${user.pais}</p>
				            </c:otherwise>
				        </c:choose>
			    	</div>
			    </div>
			    <div class="d-flex flex-column align-items-center">
			    	<header class="text center">
			    		<h5>Sobre mí</h5>
			    	</header>
			    	<div class="row descripcion">
			    	 <c:choose>
			            <c:when test="${empty user.descripcion}">
			                <p>No hay descripción disponible.</p>
			            </c:when>
			            <c:otherwise>
			                <p>${user.descripcion}</p>
			            </c:otherwise>
			        </c:choose>
			    	</div>
			    </div>
			</div>
	
	        <div class="d-flex flex-column justify-content-between ">
	            <div class="actividad rounded-5 border border-secondary-subtle p-4">
	            	<header class="text-center">
	            		<h2>Mi actividad</h2>
	            		<div class="dropdown custom-dropdown">
						    <a class="btn btn-secondary dropdown-toggle bg-transparent text-body border-0" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
						        Ultimo mes
						    </a>
						    <ul class="dropdown-menu">
						        <li><a class="dropdown-item" href="#">Ultimo año</a></li>
						        <li><a class="dropdown-item" href="#">Desde el inicio</a></li>
						    </ul>
						</div>
	            	</header>
	            	<div class="d-flex justify-content-center mt-3">
		            	<ul class="">
						  <li class="mb-2">Has subido 2 post al foro.</li>
						  <li class="mb-2">Has jugado 4 horas.</li>
						  <li class="mb-2">Completaste 1 curso.</li>
						  <li class="mb-2">Has comentado 4 post del foro.</li>
						  <li class="mb-2">Añadiste una pagina al Wikicosmo.</li>
						</ul>
					</div>
	            </div>
	
	            <div class="nivel rounded-5 border border-secondary-subtle p-4 px-5">
	            	<header class="text-center">
	            		<h2>Nivel 10</h2>
	            	</header>
	            	 <div class="d-flex flex-column align-items-center">
                            <h3 class="progress-title">NIVEL</h3>
                            <div class="progress">
                                <div class="progress-bar progress-bar-danger progress-bar-striped active" style="width:40%;"></div>
                            </div>
                    </div>
                    <footer class="text-center">
                    	<p>Necesitas realizar 2 actividades más para subir al nivel 11</p>
                    </footer>
	            </div>
	        </div>
	    </div>
	</div>
	<script src="./js/perfil-user.js"></script>
</body>
</html>