<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CosmoClub</title>
    <link rel="icon" type="image/x-icon" href="img/icon.jpeg">
    <script src="https://kit.fontawesome.com/9e0d9f4598.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../css/dashboard.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100&family=Montserrat+Alternates&display=swap"
        rel="stylesheet">
</head>
<body>
    <div class="main-container d-flex">
        <div class="sidebar" id="side_nav">
            <div class="img-icon-nav header-box px-3 pt-3 pb-4 d-flex flex-column align-items-center text-center">
                <h1 class="fs-4">
                  <img class="icono" src="img/logo.jpeg" alt="">
                  <span class="text-white">CosmoClub</span>
                </h1>
                <button class="btn d-md-none d-block close-btn px-1 py-0 text-white"><i class="fa-solid fa-bars-staggered"></i></button>
            </div>

            <ul class="list-unstyled px-2">
                <li class="active"><a href="/dashboard" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-home'></i> Dashboard</a></li>
                <li class=""><a href="/aprender" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-book' ></i> Aprender</a></li>
                <li class=""><a href="/galeria" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-images' ></i> Galeria</a></li>
                <li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block"><i class='bx bxs-invader' ></i> Juegos</a></li>
                <li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-chat' ></i> Mensajes</a></li>
                <li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block"><i class='bx bxl-wikipedia' ></i> Wiki</a></li>
                <li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-group'></i> Foro</a></li>
            </ul>
        </div>
        <div class="content container-fluid">
            <!--NavBar-->
            <nav class="navbar navbar-expand-md bg-body-tertiary">
                <div class="container-fluid">
                  <h1 class="welcome-text text-uppercase">Buen dia, ${user.name} ${user.last_name}!</h1>
                  <div class="d-flex justify-content-between d-md-none d-block">
                    <button class="btn px-1 py-0 open-btn me-2"><i class="fa-solid fa-bars-staggered"></i></button>
                    <a class="navbar-brand fs-4" href="#"><span class="bg-dark rounded px-2 py-0 text-white"><img class="icono-navbar" src="img/logo.jpeg" alt=""></span></a>
                  </div>
                  <button class="navbar-toggler p-0 border-0" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa-solid fa-bars-staggered"></i>
                  </button>
                  <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                    <div class="col-md-4 d-flex align-items-center text-center">
                        <!-- Contenedor para centrar vertical y horizontalmente -->
                        <div class="d-flex flex-column align-items-center">
                            <h3 class="progress-title">NIVEL</h3>
                            <div class="progress">
                                <div class="progress-bar progress-bar-danger progress-bar-striped active" style="width:40%;"></div>
                            </div>
                        </div>
                    </div>
                    <!-- Example single danger button -->
                    <div class="dropdown dropstart">
                      <a type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <img class="img-perfil rounded-circle me-2" src="img/profile.jpg" alt="">
                      </a>
                      <ul class="dropdown-menu">
                        <li><p class="text-center">${user.name} ${user.last_name}</p></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="/perfil">Configuración</a></li>
                      </ul>
                    </div>
                  </div>
                
                </div>
            </nav>
            <!--NavBar-->
            <div class="row">

                <div class="col-sm-8 col-12 p-3">
                    <!--Carrusel con los cursos--> 
                    <div class="cursos mb-3 p-3 bg-light border rounded-3"> 
                        <h3>MIS CURSOS</h3>
                        <div class="container">
                          <span id="rateMe1"></span>
                        </div>
                        
                        
                        <div id="carouselExample" class="carousel slide">
                          <div class="carousel-inner">
                            <div class="carousel-item active">
                              <a href="https://www.youtube.com/"><img src="img/sistema-solar.jpeg" class="d-block w-100 img-cursos" alt="..."></a>                      
                              <div class="carousel-caption d-none d-md-block">
                                <h4>Sistema solar</h4>
                              </div>
                            </div>
                            <div class="carousel-item">
                              <a href="https://www.youtube.com/"><img src="img/planetas.png" class="d-block w-100 img-cursos" alt="..."></a>                      
                              <div class="carousel-caption d-none d-md-block">
                                <h4>Exo Planetas</h4>
                              </div>
                            </div>
                            <div class="carousel-item">
                              <a href="https://www.youtube.com/"><img src="img/sol.png" class="d-block w-100 img-cursos" alt="..."></a>
                              <div class="carousel-caption d-none d-md-block">
                                <h4>Estrellas</h4>
                              </div>
                            </div>
                            <div class="carousel-item">
                              <a href="https://www.youtube.com/"><img src="img/galaxia.png" class="d-block w-100 img-cursos" alt="..."></a>
                              <div class="carousel-caption d-none d-md-block">
                                <h4>Galaxias</h4>
                              </div>
                            </div>
                          </div>
                          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                          </button>
                          <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                          </button>
                        </div>

                    </div>
                    <!--Carrusel con los cursos--> 
                    <!--Parte del foro-->
                    <div class="foro p-3 bg-light border rounded-3 overflow-y-scroll">
                        
                          <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                            <div class="col p-4 d-flex flex-column position-static">
                              <h3 class="mb-0"><strong class="d-inline-block mb-2 me-3 text-primary-emphasis"><img class="img-perfil rounded-circle" src="https://pps.whatsapp.net/v/t61.24694-24/368499855_1266445330725277_104771332505258502_n.jpg?ccb=11-4&oh=01_AdTNJsS4SrKXSQgxm3Z1KZ7groMF934fVBIyUcHLWazPmw&oe=64F93BFA&_nc_cat=111" alt=""></strong>Ignacio Miranda</h3>
                              <div class="mb-1 text-body-secondary">X personas han comentado</div>
                              <p class="card-text mb-auto">¿Alguien sabe que tipo de estrella es esta? segun sus caracteristicas creo que puede ser una gigante roja.</p>
                              <a href="#" class="icon-link gap-1 icon-link-hover stretched-link">
                                Continuar leyendo...
                              </a>
                            </div>
                            <div class="col-auto d-none d-lg-block">
                              <img class="bd-placeholder-img" width="200" height="250"  src="https://www.republica.com/wp-content/uploads/2017/12/estrella-gigante-roja.jpg" alt="">
                            </div>
                          </div>

                          <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                            <div class="col p-4 d-flex flex-column position-static">
                              <h3 class="mb-0"><strong class="d-inline-block mb-2 me-3 text-primary-emphasis"><img class="img-perfil rounded-circle" src="https://pps.whatsapp.net/v/t61.24694-24/328147270_687920663092225_4671165301290676944_n.jpg?ccb=11-4&oh=01_AdSjD_mJNlLVhcDq8Uv4fFEhw6QkPyAWUgMv6NWIaewgxA&oe=64F281D2&_nc_cat=100" alt=""></strong>Sebastian Gonzalez</h3>
                              <div class="mb-1 text-body-secondary">X personas han comentado</div>
                              <p class="card-text mb-auto">Estas cosas que se ven aqui, son estrellas o galaxias? Alguien ayudeme por favor!!!!1</p>
                              <a href="#" class="icon-link gap-1 icon-link-hover stretched-link">
                                Continuar leyendo...
                                <svg class="bi"><use xlink:href="#chevron-right"></use></svg>
                              </a>
                            </div>
                            <div class="col-auto d-none d-lg-block">
                              <img class="bd-placeholder-img" width="200" height="250"  src="https://apod.nasa.gov/apod/image/2308/M31Perseid_Pedrero_3232.jpg" alt="">
                            </div>
                          </div>
      
                          <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                            <div class="col p-4 d-flex flex-column position-static">
                              <h3 class="mb-0">
                                <strong class="d-inline-block mb-2 me-3 text-primary-emphasis">
                                  <img class="img-perfil rounded-circle" src="https://pps.whatsapp.net/v/t61.24694-24/344720804_926019668667378_3450403035177647938_n.jpg?ccb=11-4&oh=01_AdQWCmjaAHaoZ2UD62cq6BToHl6A7bmteEmE8FPVvDYCYg&oe=64F3CE71&_nc_cat=101" alt="">
                                </strong>Kalfukoyam Treuquil
                              </h3>
                              <div class="mb-1 text-body-secondary">X personas han comentado</div>
                              <p class="card-text mb-auto">Las fotos de la nasa son falsas despierten, los reptilianos controlan todo lo que nos rodea.</p>
                              <a href="#" class="icon-link gap-1 icon-link-hover stretched-link">
                                Continuar leyendo...
                                <svg class="bi"><use xlink:href="#chevron-right"></use></svg>
                              </a>
                            </div>
                            <div class="col-auto d-none d-lg-block">
                              <img class="bd-placeholder-img" width="200" height="250"  src="https://www.canal26.com/media/image/2023/04/17/539327.jpg" alt="">
                            </div>
                          </div>
      
                          <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                            <div class="col p-4 d-flex flex-column position-static">
                              <h3 class="mb-0"><strong class="d-inline-block mb-2 me-3 text-primary-emphasis"><img class="img-perfil rounded-circle" src="https://pps.whatsapp.net/v/t61.24694-24/350792996_6600753049975418_8295724012510613437_n.jpg?ccb=11-4&oh=01_AdSJ6alPeNez71lmlmN76_p0X5W5F6wpXcA0NOv3vel0HQ&oe=64F157D6&_nc_cat=108" alt=""></strong>Catalina Diaz</h3>
                              <div class="mb-1 text-body-secondary">X personas han comentado</div>
                              <p class="card-text mb-auto">¿Los astronautas habrán ido a la luna de verdad? Pregunta seria</p>
                              <a href="#" class="icon-link gap-1 icon-link-hover stretched-link">
                                Continuar leyendo...
                                <svg class="bi"><use xlink:href="#chevron-right"></use></svg>
                              </a>
                            </div>
                            <div class="col-auto d-none d-lg-block">
                              <img class="bd-placeholder-img" width="200" height="250"  src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Bruce_McCandless_II_during_EVA_in_1984.jpg/800px-Bruce_McCandless_II_during_EVA_in_1984.jpg" alt="">
                            </div>
                          </div>
                    </div>
                    <!--Parte del foro-->
                </div>

                <div class="col-sm-4 col-12 p-3">
                    <!--Foto del día-->
                    <div class="p-2 bg-light border rounded-3 text-center">
                        <h2>Astronomy Picture Of The Day</h2>
                        <div class="img-fluid">
                        <img id="pic" src="" alt="NASA Picture Of The Day" />
                        </div>
                        <h3 id="title"></h3>
                        
                    </div>
                    <!--Foto del día-->

                    <!--Conectados-->
                    <div class="p-3 mt-3 bg-light border rounded-3 overflow-y-scroll">
                      <div class="bg-light border rounded-3 p-3">
                        <h3>Usuarios conectados</h3>
                        <c:forEach var="user" items="${connectedUsers}">
                          <div class="p-2">
                            <div class="rounded-circle-border">
                                <img class="img-perfil rounded-circle" alt="" src="img/profile.jpg">
                            </div>
                            <div class="d-inline-block align-middle ms-2">
                                <p class="d-inline">${user.name} ${user.last_name}</p>
                                <ul style="color: green; list-style-type: none; padding-left: 0; margin: 0;">
                                    <li>Online</li>
                                </ul>
                            </div>
                            <hr class="opacity-80">
                        </div>
                        
                        
                       </c:forEach>
                      </div>
                    </div>
                    <!--Conectados-->
                </div>
            </div>

        </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>

    <script src="../js/dashboard.js"></script>
</body>
</html>