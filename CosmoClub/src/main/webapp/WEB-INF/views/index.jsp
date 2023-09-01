<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CosmoClub</title>
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="img/icon.jpeg">
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <!-- Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <!-- CSS -->
    <link rel="stylesheet" href="../css/index.css">
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100&family=Montserrat+Alternates&display=swap"
        rel="stylesheet">
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container-fluid">
            <!-- Logo -->
            <a class="navbar-brand" href="/">
                <img class="logo" src="../img/logo.jpeg" alt="Logo de la pagina">
                <span class="logo-name">COSMOCLUB</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon dark-toggler"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto d-flex justify-content-end align-items-center nav-underline">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#inicio">INICIO</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#quienes-somos">QUIENES SOMOS</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#aprender">APRENDER</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#galería">GALERÍA</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#foro">FORO</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/sesion">ACCEDER</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Seccion 1 hero -->
    <section id="inicio" class="hero align-items-stretch ">
        <div class="hero-principal ">
            <h1 class="title-hero">
                <span class="fixed-text text-uppercase">EXPLORA</span>
            </h1>
            <div>
                <h1 class="title-hero"><span class="phrase"></span></h1>
            </div>
            <h4 class="subtitle-hero ">EL UNIVERSO A TU ALCANCE</h4>
            <div class="row buttons-box">
                <div class="col">
                    <a href="/sesion">
                        <button class="btn-hero-iniciar">INICIAR SESIÓN</button>
                    </a>
                    <a href="/sesion">
                        <button class="btn-hero-registro">REGISTRO</button>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- Seccion 2 -->
    <section id="quienes-somos" class="seccion-2">
        <h2 class="seccion-2-title">Quienes Somos</h2>
        <p>Somos apasionados por el cosmos y la astronomía. Nuestra página web está dedicada a compartir el asombroso
            mundo del universo con personas de todas las edades y niveles de conocimiento.
            Exploramos y compartimos descubrimientos científicos, eventos celestes, imágenes sorprendentes del espacio
            profundo y mucho más. Nuestro objetivo es inspirar la curiosidad y el entendimiento del cosmos.
            ¡Bienvenidos a nuestra comunidad astronómica en línea!</p>
    </section>

    <!-- Seccion 3 -->
    <section id="aprender" class="seccion-3">
        <div class="row ">
            <div class="col-5 info-seccion-3">
                <h2 class="seccion-3-title">Aprender</h2>
                <p>Aquí encontrarás un rincón dedicado al fascinante mundo del cosmos, diseñado para satisfacer tu curiosidad y enriquecer tu comprensión sobre los misterios del universo. Nuestro objetivo es proporcionarte contenido educativo y entretenido que abarca desde conceptos básicos hasta descubrimientos astronómicos avanzados.</p>
            </div>
        </div>
    </section>

    <!-- Seccion 4 -->
    <section id="galería" class="seccion-4">
        <div class="container-fluid">
            <div class="row">
                <!-- Columna del carrusel -->
                <div class="col-md-7 mt-5">
                    <div id="carrusel-galeria" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
                        <div class="carousel-indicators">
                            <button type="button" data-bs-target="#carrusel-galeria" data-bs-slide-to="0" class="active"
                                aria-current="true" aria-label="Slide 1"></button>
                            <button type="button" data-bs-target="#carrusel-galeria" data-bs-slide-to="1"
                                aria-label="Slide 2"></button>
                            <button type="button" data-bs-target="#carrusel-galeria" data-bs-slide-to="2"
                                aria-label="Slide 3"></button>
                        </div>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="../img/nebulosa_ojo_de_gato.jpeg" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Nebulosa Ojo de Gato</h5>
                                    <p>Fotografía tomada por el telescopio espacial Hubble.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="../img/galaxia_andromeda.jpeg" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Galaxia Andrómeda</h5>
                                    <p>Fotografía tomada por el telescopio espacial Hubble.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="../img/via_lactea_parque_conguillio.jpg" class="d-block w-100" alt="...">
                                <div class="carousel-caption d-none d-md-block">
                                    <h5>Via Lactea</h5>
                                    <p>Fotografía tomada desde el Parque Conguillio, Chile.</p>
                                </div>
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carrusel-galeria"
                            data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carrusel-galeria"
                            data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>

                <!-- Columna de la información -->
                <div class="col-md-5 info-seccion-4">
                    <h2 class="seccion-4-title">Galería</h2>
                    <p>La sección "Galería" te invita a sumergirte en la belleza y el asombro del espacio exterior a
                        través de imágenes y fotografías impresionantes. Desde nebulosas coloridas hasta panoramas
                        planetarios, nuestra galería captura la majestuosidad del universo en todo su esplendor. Explora
                        las maravillas celestiales capturadas por telescopios y sondas espaciales, y admira la
                        grandiosidad de los eventos astronómicos que ocurren a millones de años luz de distancia.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Seccion 5 -->
    <section id="foro" class="seccion-5">
        <h2 class="seccion-5-title">Foro</h2>
    </section>

    <footer>
        <p class="p-5">Todos los derechos reservados CosmosClub &copy</p>
    </footer>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>

    <script src="../js/index.js"></script>

</body>
</html>