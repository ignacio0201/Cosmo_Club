<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/indexwiki.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
	<div class="sidebar">
    	<h2 class="mb-5 text-center"><a href="/wiki">WikiCosmos</a></h2>
	    <div class="accordion" id="accordionExample">
	        <c:forEach var="etiqueta" items="${articulosPorEtiqueta}">
	            <div class="accordion-item mb-3">
	                <h2 class="accordion-header">
	                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#${etiqueta.key.id}" aria-expanded="false" aria-controls="${etiqueta.key.id}">
	                        ${etiqueta.key.etiqueta}
	                    </button>
	                </h2>
	                <div id="${etiqueta.key.id}" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
	                    <div class="accordion-body">
	                        <ul>
	                            <c:forEach var="articulo" items="${etiqueta.value}">
	                                <li><a href="/wiki/${articulo.id}">${articulo.titulo}</a></li>
	                            </c:forEach>
	                        </ul>
	                    </div>
	                </div>
	            </div>
	        </c:forEach>
	    </div>
	</div>


	<div class="container p-5">
		<nav class="navbar navbar-expand-lg bg-body-tertiary mb-3">
		    <div class="container-fluid">
		        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
		            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
		            <span class="navbar-toggler-icon"></span>
		        </button>
		        <div class="collapse navbar-collapse" id="navbarNav">
		            <ul class="navbar-nav">
		                <li class="nav-item">
		                    <a class="nav-link active" href="/dashboard">
		                        <i class='bx bx-home'></i> Dashboard
		                    </a>
		                </li>
		                <li class="nav-item">
		                    <a class="nav-link" href="/aprender">
		                        <i class='bx bx-book'></i> Aprender
		                    </a>
		                </li>
		                <li class="nav-item">
		                    <a class="nav-link" href="/galeria">
		                        <i class='bx bx-images'></i> Galeria
		                    </a>
		                </li>
		                <li class="nav-item">
		                    <a class="nav-link" href="#">
		                        <i class='bx bxs-invader'></i> Juegos
		                    </a>
		                </li>
		                <li class="nav-item">
		                    <a class="nav-link" href="#">
		                        <i class='bx bx-chat'></i> Mensajes
		                    </a>
		                </li>
		                <li class="nav-item">
		                    <a class="nav-link" href="/wiki">
		                        <i class='bx bxl-wikipedia'></i> Wiki
		                    </a>
		                </li>
		                <li class="nav-item">
		                    <a class="nav-link" href="#">
		                        <i class='bx bx-group'></i> Foro
		                    </a>
		                </li>
		            </ul>
		        </div>
		    </div>
		</nav>
		<div class="d-flex flex-column justify-content-center">
			<div class="row bg-primary titulo">
				<div class=" p-4 d-flex flex-column align-items-center justify-content-around">
					<h2 class="">Bienvenidos a WikiCosmos</h2>
					<p> Una enciclopedia de contenido libre sobre astronomia, que todos pueden editar y agregar articulos.
					</p>
				</div>
				
			</div>
			<div class="row">
				<div class="my-4 p-4 d-flex flex-column align-items-center justify-content-center bg-primary-subtle">
					<p>
    					Actualmente hay <a href="/buscar?articulo=">${cantidadArticulos} Artículos</a> en la Wiki.
					</p>
					
					<form action="/buscar" method="post">
						<label class="">Busca aqui un articulo</label>
						<input class="search buscar" type="search" id="inputArticulo" name="articulo" placeholder="Busca un articulo">
						<input class="btn btn-success " type="submit" value="New Search" />
					</form>
					
					<form:form class="" accept-charset="UTF-8" action="/wiki" method="POST" modelAttribute="tag">
						<form:label path="etiqueta" for="etiqueta">Añade una Etiqueta</form:label>
						<form:input path="etiqueta" type="text" id="etiqueta"></form:input>
						<form:errors path="etiqueta" />
							<div class="">
						    	<button class="btn btn-primary" type="submit">Añadir Etiqueta</button>
						  </div>
					</form:form>
				</div>
				
			</div>
		</div>
		<div class="row d-flex flex-row">
		   <div class="col-7 p-3 bg-secondary articulo">
			    <h6>Ultimo artículo agregado.</h6>
			    <c:if test="${not empty ultimoArticulo}">
			        <h3>${ultimoArticulo.titulo}</h3>
			        <c:if test="${not empty ultimoArticulo.etiquetas}">
			            <p>${fn:substring(ultimoArticulo.contenido, 0, 350)}...<a href="/wiki/${ultimoArticulo.id}"> Leer más</a></p>
			        </c:if>
			        <c:if test="${empty ultimoArticulo.etiquetas}">
			            <p>${fn:substring(ultimoArticulo.contenido, 0, 350)}...</p>
			        </c:if>
			    </c:if>
			</div>
		
		    <div class="col-md-4">
		        <div class="row bg-info lista p-4">
		            <h6>Últimos 10 artículos agregados.</h6>
		            <c:if test="${not empty ultimosArticulos}">
		                <ol class="list-group list-group-numbered">
		                    <c:forEach var="articulo" items="${ultimosArticulos}">
		                        <li class="list-group-item list-group-item-action"><a href="/wiki/${articulo.id}">${articulo.titulo}</a></li>
		                    </c:forEach>
		                </ol>
		            </c:if>
		        </div>
		        <div class="row bg-light-subtle agregar mt-4">
		            <p>Para agregar un artículo haz click <a href="/nuevo">Aquí</a></p>
		        </div>
		    </div>
		</div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="/js/wiki_index.js"></script>
</body>
</html>