<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="es">
<head>
<link rel="stylesheet" href="/css/wiki.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>${wiki.titulo}</title>
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
	                                <li><a href="/${articulo.id}">${articulo.titulo}</a></li>
	                            </c:forEach>
	                        </ul>
	                    </div>
	                </div>
	            </div>
	        </c:forEach>
	    </div>
	</div>
	
	
	
	<div id="content">
		<div class="row my-5">
	        <div class="col-12 d-flex justify-content-center">
	            <form accept-charset="UTF-8" action="/buscar" method="post">
	                <label class="">Busca aqui un articulo</label>
	                <input class="search buscar" type="search"  id="inputArticulo" name="articulo" placeholder="Busca un articulo">
	                <input class="btn btn-success " type="submit" value="Buscar" />
	            </form>
	        </div>
	    </div>
		<div id="editor">
			<h1>${wiki.titulo}</h1>
			${wiki.contenido}
		</div>
		
		<ul class="tags">
			<c:forEach items="${tags}" var="tag">
			<li><a href="#" class="tag" onclick="buscarPorTag('${tag.etiqueta}')">${tag.etiqueta}</a></li>
			</c:forEach>
		</ul>
		
	</div>
<script src="/js/busqueda.js"></script>
</body>
</html>
