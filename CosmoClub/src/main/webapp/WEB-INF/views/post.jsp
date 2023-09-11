<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CosmoClub</title>
<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
	<div class="container rounded border">

		<a href="/foro">Volver al foro</a>
		<p>${post.user.name} ${post.user.last_name}</p>
		<h3>${post.title}</h3>
		<p>${post.content}</p>
		
		<c:forEach var="imagen" items="${post.images}">
			<img class="img-post" src="/img${imagen.post_images}" alt="" style="width: 600px; height: 600px;">
		</c:forEach>

		<p style="color: orange;">
		<c:choose>
			<c:when test="${numberCommentsPost == 0}">
				Sé la primera persona en comentar!
			</c:when>
			<c:when test="${numberCommentsPost == 1}">
				1 persona ha comentado
			</c:when>
			<c:otherwise>
				${numberCommentsPost} personas han comentado
			</c:otherwise>
		</c:choose>
		</p>
		
		
		<div class="form-container">
			<form:form action="/post/${post.id}/comment" method="post" modelAttribute="newComment">
				
				<form:textarea path="comment" rows="4" cols="50" placeholder="Deja un comentario"/>
				<form:errors path="comment"/>
				
				<input type="hidden" id="post" name="post" value="${post.id}" />
				<input type="hidden" id="user" name="user" value="${user.id}" />
				<input type="submit" value="Comentar">
			</form:form>
		</div>
		
		<div>
			
			<c:forEach items="${post.comments}" var="comment">
			        <div>
			            <p style="color: blue;">${comment.user.name} ${comment.user.last_name}</p>
			            <p>${comment.comment}</p>
						<p style="color: gray;">${comment.timeAgo}</p>
			    	</div>
				<hr>
			</c:forEach>
	        
	    </div>
		
		
	</div>
	
	
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
</body>
</html>