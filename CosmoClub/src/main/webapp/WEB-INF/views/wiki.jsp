<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${wiki.titulo}</title>
    <link rel="icon" type="image/x-icon" href="img/icon.ico">
	<!--CSS personalizado-->
	<link rel="stylesheet" href="/css/wiki.css">
	<!--Iconos-->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
	<!--Bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <!--Fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100&family=Montserrat+Alternates&display=swap" rel="stylesheet">
	
</head>
<body class="family-poppins">
	
	<div class="sidebar bg-info">
		<div class="img-icon-nav header-box px-3 pt-3 pb-4 d-flex flex-column align-items-center text-center">
            <h1 class="fs-4">
              <img class="icono" src="img/icon.jpeg" alt="">
              <h2 class="mb-5 text-center family-pixel text-uppercase"><a href="/wiki">WikiCosmos</a></h2>
            </h1>
        </div>
    	
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
	
	
	
	<div class="container">
		<div class="my-5 border p-2">
	        <div class="d-flex justify-content-center">
	            <form accept-charset="UTF-8" action="/buscar" method="post">
	                <label class="">Busca aqui un articulo</label>
	                <input class="search buscar" type="search"  id="inputArticulo" name="articulo" placeholder="Busca un articulo">
	                <input class="btn btn-success " type="submit" value="Buscar" />
	            </form>
	        </div>
	    </div>
		<div class="border rounded-3 p-4">
			<div class="editor">
				<h1 class="family-pixel text-uppercase">${wiki.titulo}</h1>
				${wiki.contenido}
			</div>
		</div>
		
		<ul class="tags mt-3">
			<c:forEach items="${tags}" var="tag">
			<li><a href="#" class="tag" onclick="buscarPorTag('${tag.etiqueta}')">${tag.etiqueta}</a></li>
			</c:forEach>
		</ul>
		
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
	<script src="/js/busqueda.js"></script>
</body>
</html>
