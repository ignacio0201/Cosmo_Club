<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<link rel="stylesheet" href="/css/indexNuevo.css">
<script src="https://cdn.tiny.cloud/1/abqofabodtwf6p02er7zn301oyvlee6odycuav5afapccbg5/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script>
	tinymce
			.init({
				selector : '#mytextarea',
				toolbar : 'undo redo | styles forecolor | bold italic | alignleft aligncenter alignright alignjustify | outdent indent | image',
				plugins : 'image',
				statusbar : false
			});
</script>

<title>WikiCosmos</title>
</head>
<body>

	<div class="container">
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

	
	
	<div class="container w-75 mt-5">
	
		<div class="row">
			<div class="col ml-5">
				<form style="" accept-charset="UTF-8" method="post" action="/nuevo" onsubmit="prepareFormData()">
					
					<!--  <label for="etiquetas ">Título: </label> -->
					<input class="form-control mb-3" type="text" id="titulo" name="titulo" placeholder="Titulo">
					
					<div class="mb-3 rounded-pill" id="etiquetas-seleccionadas"></div>
					
						<input class="rounded" type="hidden" name="etiquetas" id="etiquetasInput">
					
						<!--  <label for="etiquetas ">Elige un tag: </label> -->
							<select class="form-control mb-3" name="etiquetas" id="etiquetas" onchange="agregarEtiqueta()">
							    <option value="">Selecciona una etiqueta</option>
							    <c:forEach items="${tags}" var="tag">
							        <option value="${tag.id}">${tag.etiqueta}</option>
							    </c:forEach>
							</select>
							
					<textarea style="" id="mytextarea" name="newWiki"><hr>Crear una nueva Wiki</textarea>
					
					<div class="row">
						<div class="col mt-3">
							<button class="rounded-pill" type="submit" style="margin-left: 40%;">Guardar</button>
						</div>
					</div>
					
				</form>
			</div>
		</div>
	</div>	
	
	</div>

	
<script src="/js/etiquetas.js"></script>
</body>
</html>
