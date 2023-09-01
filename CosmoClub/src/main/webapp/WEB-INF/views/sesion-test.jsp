<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CosmoClub</title>
    <link rel="icon" type="image/x-icon" href="img/icon.jpeg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<link rel="stylesheet" href="../css/sesion-test.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100&family=Montserrat+Alternates&display=swap"
        rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/gsap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/ScrollTrigger.min.js"></script>

</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand" href="/"> <img class="logo" src="../img/logo.jpeg" alt="Logo de la pagina" width="70px"><span class="logo-name">COSMOCLUB</span></a>
            </div>
        </nav>
    </header>
    <main class="family-poppins">
        <div class="background d-flex justify-content-center align-items-center">
            <div class="card-container">
                <div class="card" id="card-sesion">
                    <div class="card-front">
                        <form class="p-5" novalidate accept-charset="UTF-8" action="/login" method="POST">
                                        <h4 class="family-pixel text-uppercase">Iniciar Sesion</h4>
                                        <div class="form-group">
                                          <input type="email" name="email" class="form-style" placeholder="Correo Electronico" id="logemail">
                                          <i class="bi bi-envelope input-icon"></i>
                                        </div>
                                        <div class="form-group mt-4">
                                          <input type="password" name="pass" class="form-style" placeholder="Contraseña" id="logpass">
                                          <i class="bi bi-lock input-icon"></i>
                                        </div>
                                        <div class="text-center my-4">
                                            <button class="btn btn-block" type="submit">Iniciar Sesion</button>
                                        </div>
                                        <hr>
                                        <div class="text-center">
                                            <p>¿No tienes una cuenta?</p>
                                            <a href="#" class="link-button" id="flipButtonRegister">Registrate</a>
                                        </div>
                                    </form>
                    </div>
                    <div class="card-back">
                        <form:form class="p-5" accept-charset="UTF-8" action="/register" method="POST" modelAttribute="user">
                                            <h4 class="family-pixel text-uppercase">Crea una cuenta</h4>
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
        
                                            <div class="text-center my-4">
                                                <button class="btn btn-block" type="submit">Registrarse</button>
                                            </div>
                                            <hr>
                                            <div class="text-center">
                                                <p>¿Ya tienes una cuenta? </p>
                                                <a href="#" class="link-button" id="flipButtonLogin">Inicia Sesión</a>
                                            </div>
                                </form:form>
                                
                    </div>
                </div>
            </div>
        </div>
    </main>
    


    <script src="../js/sesion-test.js"></script>
    <script>
		var showRegisterForm = '<%= request.getAttribute("showRegisterForm") %>';
	</script>
</body>
</html>