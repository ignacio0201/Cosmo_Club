<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="../css/perfil-user.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>
	 <div class="container">
		
	    <div class="contenido p-5 d-flex flex-row justify-content-between">
	        <div class="perfil rounded-5 border border-secondary-subtle p-3 d-flex flex-column ">
			    <header class="text-center d-flex justify-content-between align-items-center">
			        <h2 class="mx-auto mb-0">Editar Perfil</h2>
			     
			    </header>
			  <form:form class="" accept-charset="UTF-8" action="/perfil/${user.id}/edit" method="POST" modelAttribute="user">
				    <div class="d-flex flex-column mt-3">
				    	
				    	<div class="row">
				    		<form:label path="name" class=""><i class="bi bi-person "></i>Nombre:</form:label>
							<form:input type="text" path="name" class=""/>
							<form:errors path="name" />
				    	</div>
				    	
				    	<div class="row">
				    		
				    		<form:label path="last_name" class=""><i class="bi bi-person "></i>Apellido:</form:label>
							<form:input type="text" path="last_name" class=""/>
							<form:errors path="last_name" />
				    	</div>
				    	<div class="row">
				    		
				    		<form:label path="email" class=""><i class="bi bi-envelope-fill"></i>Correo Electronico:</form:label>
							<form:input type="email" path="email" class=""/>
							<form:errors path="email" />
				    	</div>
				    	<div class="row">
				    		 <form:label path="pais" for="pais" class=""><i class="bi bi-globe"></i>Paises</form:label>
					        <form:select path="pais" class="form-select">
					            <c:forEach items="${paises}" var="paises">                    
				                      <option value="${paises}">${paises}</option>             
					            </c:forEach>
					        </form:select>
				    	</div>
				    </div>
				    <div class="d-flex flex-column align-items-center">
				    	<header class="text center">
				    		<h5><i class="bi bi-pencil-square"></i>Agrega una descripcion</h5>
				    		
				    	</header>
				    	 <form:label path="descripcion" for="" class=""></form:label>
				    	 <form:textarea path="descripcion" rows="4" cols="50"></form:textarea>
				    	 <form:errors path="descripcion" />
				    </div>
				    <footer>
				    	<input type="submit" class="btn btn-primary" value="Editar Perfil" />
				    </footer>
			   </form:form>
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
	            		<h2>Cambiar Contraseña</h2>
	            	</header>
	            	<form method="post" action="/perfil/${user.id}/editpwd">
				        <div class="form-group">
				            <label for="contrasenaActual">Contraseña Actual</label>
				            <input type="password" class="form-control" id="contrasenaActual" name="contrasenaActual" required>
				        </div>
				        <div class="form-group">
				            <label for="nuevaContrasena">Nueva Contraseña</label>
				            <input type="password" class="form-control" id="nuevaContrasena" name="nuevaContrasena" required>
				        </div>
				        <div class="form-group">
				            <label for="confirmarContrasena">Confirmar Nueva Contraseña</label>
				            <input type="password" class="form-control" id="confirmarContrasena" name="confirmarContrasena" required>
				        </div>
				        <button type="submit" class="btn btn-light text-dark">Cambiar Contraseña</button>
				    </form>
				     <c:if test="${not empty error}">
				        <div class="alert alert-danger mt-3">
				            ${error}
				        </div>
				    </c:if>
	            </div>
	        </div>
	    </div>
	</div>
</body>
</html>