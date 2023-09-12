<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CosmoClub</title>
    <link rel="icon" type="image/x-icon" href="img/icons/logo_negro.ico">
<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<!-- CSS Personalizado -->
<link rel="stylesheet" href="../css/post.css">
<!-- Bootstrap Icons -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&family=Lato:wght@100&family=Montserrat+Alternates&display=swap" rel="stylesheet">
</head>

<body>
	
	
	
	
	<div class="content">
		
		<div class="container w-75">
		
		<a href="/foro" style="font-size: 20px" class="volver-foro text-decoration-none rounded-pill d-inline-block mt-3 mb-3">
			<i class="bi bi-arrow-left">Volver foro</i>
		</a>
		
			<div class="row bg-white g-0 border rounded flex-md-row mb-4 shadow-sm h-md-250 position-relative">
	        	<div class="col p-4 d-flex flex-column position-static">
	        	
	        		<div class="d-flex">
						<h5 class="mb-0">
				        	<strong class="d-inline-block mb-2 me-3">
				        		<img class="img-perfil rounded-circle-border-nav rounded-circle" src="<c:url value='${post.user.user_img}'/>" alt="">
				            </strong>${post.user.name} ${post.user.last_name}
				                          
							<p class="foro-post-timeago d-inline-block">&#8226 ${post.timeAgo}</p>
				        </h5>
				    </div>
				    
			        
			        <h3 class="text-break">${post.title}</h3>
	                <p class="text-break card-text mb-auto">${post.content}</p>
	                
	                <div class="col-auto d-none d-lg-block text-center mt-4">
	                	<c:forEach var="imagen" items="${post.images}">
							<img class="bd-placeholder-img" src="/img${imagen.post_images}" alt="" width="300" height="250">
						</c:forEach>
	                </div>
	                
	                <div class="mb-1 text-body-secondary mt-1">
						<!-- CALIFICAR -->   
							<div class="mt-1">
							    <form accept-charset="UTF-8" action="/post/${post.id}/rating" method="POST" id="rating-${post.id}-form">
							        <input type="hidden" name="rating" id="rating-${post.id}" value="${userRatings[post.id] != null ? userRatings[post.id] : 0}">
							        <div class="rating">
							            <i class="bi bi-star-fill estrellas ${userRating >= 1 ? 'checked' : ''}" data-value="1" data-postid="${post.id}" ${userRating != null ? 'disabled' : ''}></i>
							            <i class="bi bi-star-fill estrellas ${userRating >= 2 ? 'checked' : ''}" data-value="2" data-postid="${post.id}" ${userRating != null ? 'disabled' : ''}></i>
							            <i class="bi bi-star-fill estrellas ${userRating >= 3 ? 'checked' : ''}" data-value="3" data-postid="${post.id}" ${userRating != null ? 'disabled' : ''}></i>
							            <i class="bi bi-star-fill estrellas ${userRating >= 4 ? 'checked' : ''}" data-value="4" data-postid="${post.id}" ${userRating != null ? 'disabled' : ''}></i>
							            <i class="bi bi-star-fill estrellas ${userRating >= 5 ? 'checked' : ''}" data-value="5" data-postid="${post.id}" ${userRating != null ? 'disabled' : ''}></i>
							        </div>
							        <input type="submit" style="display: none;">
							        
							        <c:if test="${userRating == null}">
							            <label for="rating-${post.id}" class="form-label">Calificar</label>
							        </c:if>
							        
							        <c:if test="${userRating != null}">
							            <p class="text-success font-weight-bold">¡Gracias por calificar!</p>
							        </c:if>
							    </form>
							</div> 
						<!-- CALIFICAR -->
	            		</div>
	                
	            
	                  
				</div>
	        </div>
        
		</div>	
		
		<div class="container w-50 rounded bg-white p-3 mb-3">
			<form:form action="/post/${post.id}/comment" method="post" modelAttribute="newComment">
				
				<form:textarea class="comentario-form form-control" path="comment" rows="4" cols="50" placeholder="Deja un comentario"/>
				<form:errors path="comment"/>
				
				<input type="hidden" id="post" name="post" value="${post.id}" />
				<input type="hidden" id="user" name="user" value="${user.id}" />
				<br>
				<div class="col d-flex justify-content-center ">
					<input class="btn-comentar btn btn-primary border-0 rounded-pill" type="submit" value="Comentar!">
				</div>
			</form:form>
			
			<div class="text-secondary">
				<c:choose>
					<c:when test="${numberCommentsPost == 0}">
						Sé la primera persona en comentar! <i class="bi bi-chat-dots-fill"></i>
					</c:when>
					<c:when test="${numberCommentsPost == 1}">
						1 persona ha comentado <i class="bi bi-chat-dots-fill"></i>
					</c:when>
					<c:otherwise>
						${numberCommentsPost} personas han comentado <i class="bi bi-chat-dots-fill"></i>
					</c:otherwise>
				</c:choose>
			</div>
			
		</div>
		
		<div class="container w-50 rounded bg-white p-3">
						
			<c:forEach items="${post.comments}" var="comment">
				<div>
					<strong class="d-inline-block mb-2 me-3">
			        	<img class="img-perfil rounded-circle-border-nav rounded-circle" src="<c:url value='${comment.user.user_img}'/>" alt="">
			        </strong>${comment.user.name} ${comment.user.last_name}
					
					<p>${comment.comment}</p>
					<p style="color: gray;">${comment.timeAgo}</p>
				</div>
				<hr>
			</c:forEach>
	   </div>
	   			 	
	</div>
	
	
	
	
	
	
	
	
	
<script src="../js/post.js"></script>	
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
</body>
</html>