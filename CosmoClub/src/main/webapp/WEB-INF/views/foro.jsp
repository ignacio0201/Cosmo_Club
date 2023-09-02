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
	<div class="container border rounded">

		<div class="form-container">
			<form:form action="/crear-post" method="post" modelAttribute="newPost">
				<h1>Create a new post</h1>
				<hr>
				
				<input type="file"/>
				
					
				<form:input path="title" type ="text" placeholder="Título del post..." />
				<form:errors path="title"/>
				
				<form:textarea path="content" rows="4" cols="50" placeholder="Contenido..."/>
				<form:errors path="content"/>
				
				<input type="hidden" id="user" name="user" value="${user.id}" />
				<input type="submit" value="Create">
			</form:form>
		</div>
		
		<hr>
		
		<div>
			
			<c:forEach items="${allPosts}" var="post">
					
			        <div>
			        	<a href="/post/${post.id}">
			            	<p>${post.user.name} ${post.user.last_name}</p>
			            	<h3>${post.title}</h3>
			            	<p>${post.content}</p>
			        	</a>
			    	</div>
				<hr>
			</c:forEach>
	        
	    </div>
	</div>
	


	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>
</body>

</html>