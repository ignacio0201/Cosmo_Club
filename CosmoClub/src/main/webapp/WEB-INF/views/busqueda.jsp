<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/busqueda.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>

<body>
	<div class="sidebar">
		<h2 class="mb-5 text-center">
			<a href="/wiki">WikiCosmos</a>
		</h2>
		<div class="accordion" id="accordionExample">
			<c:forEach var="etiqueta" items="${articulosPorEtiqueta}">
				<div class="accordion-item mb-3">
					<h2 class="accordion-header">
						<button class="accordion-button" type="button"
							data-bs-toggle="collapse" data-bs-target="#${etiqueta.key.id}"
							aria-expanded="false" aria-controls="${etiqueta.key.id}">
							${etiqueta.key.etiqueta}</button>
					</h2>
					<div id="${etiqueta.key.id}" class="accordion-collapse collapse"
						data-bs-parent="#accordionExample">
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
		<div class="row my-5">
			<div class="col-12 d-flex justify-content-center">
				<form accept-charset="UTF-8" action="/buscar" method="post">
					<label class="">Busca aqui un articulo</label> <input
						class="search buscar" type="search" id="inputArticulo"
						name="articulo" placeholder="Busca un articulo"> <input
						class="btn btn-success " type="submit" value="Buscar" />
				</form>
			</div>
		</div>
		<div class="contenedor">
			<c:choose>
				<c:when test="${not empty mensajeNoEncontrado}">
					<p>${mensajeNoEncontrado}</p>
				</c:when>
				<c:otherwise>
					<c:forEach items="${articulosEncontrados.content}" var="articulo">
						<div class="articulo mb-5">
							<h3>
								<a href="/wiki/${articulo.id}">${articulo.titulo}</a>
							</h3>
							<p>${fn:substring(articulo.contenido, 0, 250)}...</p>
							<ul class="tags">
								<c:forEach items="${articulo.etiquetas}" var="etiqueta"
									varStatus="innerLoop">
									<li><a href="#" class="tag"
										onclick="buscarPorTag('${etiqueta.etiqueta}')">${etiqueta.etiqueta}</a>
									</li>
									<c:if test="${not innerLoop.last}">,</c:if>
								</c:forEach>
							</ul>
						</div>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</div>

		<c:if test="${articulosEncontrados.totalPages > 0}">
			<nav aria-label="Page navigation">
				<ul class="pagination d-flex justify-content-center">
					<c:if test="${articulosEncontrados.hasPrevious()}">
						<li class="page-item"><a class="page-link"
							href="?page=${articulosEncontrados.number - 1}&articulo=${param.articulo}"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								<span class="sr-only">Anterior</span>
						</a></li>
					</c:if>

					<c:forEach begin="0" end="${articulosEncontrados.totalPages - 1}"
						var="index">
						<li class="page-item"><a class="page-link"
							href="?page=${index}&articulo=${param.articulo}">${index + 1}</a>
						</li>
					</c:forEach>

					<c:if test="${articulosEncontrados.hasNext()}">
						<li class="page-item"><a class="page-link"
							href="?page=${articulosEncontrados.number + 1}&articulo=${param.articulo}"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
								class="sr-only">Siguiente</span>
						</a></li>
					</c:if>
				</ul>
			</nav>
		</c:if>

	</div>
	<script src="/js/busqueda.js"></script>
</body>

</html>