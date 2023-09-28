<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="/css/juegos/spaceship.css">
  <title>CosmoClub</title>
    <link rel="icon" type="image/x-icon" href="/img/icons/logo_negro.ico">
</head>
<body>
	<span id="lives">Lives:<i>5</i></span>
	<span id="times"></span>
	<div class="nave" id="nave"></div>
	<audio src="../audio/laser.mp3" id="laser"></audio>
	<audio src="../audio/explosion.mp3" id="explosion"></audio>
	<script src="/js/juegos/spaceship.js"></script>
</body>
</html>