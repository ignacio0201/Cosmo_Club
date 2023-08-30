<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<link rel="stylesheet" href="../css/session.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/gsap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/ScrollTrigger.min.js"></script>

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top">
		<div class="container-fluid">
			<a class="navbar-brand" href="/"> <img class="logo"
				src="../img/logo.jpeg" alt="Logo de la pagina" width="70px"><span class="logo-name">COSMOSCLUB</span>
			</a>
		</div>
	</nav>
	<section id="seccion-1" class="hero d-flex align-items-center">
		<div class="section">
			<div class="container">
				<div class="row full-height justify-content-center">
					<div class="col-12 text-center align-self-center">
						<div class="section pt-sm-2 text-center">
							<div class="card-3d-wrap mx-auto">
								<div class="card-3d-wrapper">
									<div class="card-front" >
										<div class="center-wrap">
											<div class="section">
												<h4 class="mb-4">Iniciar Sesion</h4>
												<form class="" novalidate accept-charset="UTF-8" action="/login" method="POST">
													<div class="form-group">
													  <input type="email" name="email" class="form-style" placeholder="Correo Electronico" id="logemail">
													  <i class="bi bi-envelope input-icon"></i>
													</div>
													<div class="form-group mt-4">
													  <input type="password" name="pass" class="form-style" placeholder="Contraseña" id="logpass">
													  <i class="bi bi-lock input-icon"></i>
													</div>
													<button class="btn mt-4" type="submit">Iniciar Sesion</button>
													<p>¿No tienes una cuenta? <a href="#" class="link-button" id="registerLink" data-replace="Registrate"><span>Registrate</span></a></p>
												</form>
											</div>
										</div>
									</div>
									<div class="card-back" >
										<div class="center-wrap">
												<form:form class="section text-center" accept-charset="UTF-8" action="/register" method="POST" modelAttribute="user">
													<h4 class="mt-5">Registrarse</h4>
													<div class="form-group">
														<form:label path="name" for="name"></form:label>
														<form:input path="name" type="text" name="name" class="form-style" placeholder="Nombre" id="name"></form:input>
														<form:errors path="name" />
													</div>
													<div class="form-group">
														<form:label path="last_name" for="last_name" ></form:label>
														<form:input path="last_name" type="text" name="last_name" class="form-style" placeholder="Apellido" id="last_name"></form:input>
														<form:errors path="last_name" />
													</div>
													<div class="form-group">
														<form:label path="email" for="email" ></form:label>
														<form:input path="email" type="email" name="email" class="form-style" placeholder="Correo Electronico" id="email"></form:input>
														<form:errors path="email" />
													</div>
													<div class="form-group">
														<form:label path="password" for="password"></form:label>
														<form:input type="password" path="password" name="password" class="form-style" placeholder="Contraseña" id="password"></form:input>
														<form:errors path="password" />
													</div>
													<div class="form-group">
														<form:label path="passwordConfirmation" for="passwordConfirmation"></form:label>
														<form:input type="password" path="passwordConfirmation" name="passwordConfirmation" class="form-style" placeholder="Confirmar contraseña" id="passwordConfirmation"></form:input>
														<form:errors path="passwordConfirmation" />
													</div>
													<button class="btn mt-3 mb-3 link" type="submit">Registrarse</button>
											<p>¿Ya tienes una cuenta? <a href="#" class="link-button" id="loginLink" data-replace="Inicia Sesi�n"><span>Inicia Sesion</span></a></p>
											</form:form>
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

    <script src="../js/session.js"></script>
	<script>
		var showRegisterForm = '<%= request.getAttribute("showRegisterForm") %>';
	</script>
</body>
</html>