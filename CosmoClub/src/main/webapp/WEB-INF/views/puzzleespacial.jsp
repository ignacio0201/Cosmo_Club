<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CosmoClub</title>
    <link rel="icon" type="image/x-icon" href="/img/icons/logo_negro.ico">
    <!DOCTYPE html>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet" />
    <!-- Stylesheet -->
    <link rel="stylesheet" href="/css/juegos/puzzle.css" />
	<!-- Bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<!-- Bootstrap Icons -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>

<body>

	<a href="/juegos" style="font-size: 20px" class="volver-juegos text-decoration-none rounded-pill d-inline-block mt-3 mb-3">
		<i class="bi bi-arrow-left">Volver</i>
	</a>
		
    <div class="cover-screen">
        <p id="result"></p>
        <button id="start-button">Start Game</button>
    </div>
    <div id="moves"></div>
    <div class="slider-game">
        <div class="container"></div>
        <div class="original-image">
            <img class="imagenhola" src="/img/juegos/puzzleespacial/imagenespuzzle/10.jpg" alt="" />
        </div>
    </div>
    <!-- Script -->
    <script src="/js/juegos/puzzle.js"></script>
</body>

</html>