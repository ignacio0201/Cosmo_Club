<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CosmoClub</title>
    <link rel="icon" type="image/x-icon" href="img/icon.jpeg">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="/css/gallery.css">
    <!-- AOS -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <!-- Boxicons -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <!-- Bootstrap 5.3 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <!-- Fuentes -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100&family=Montserrat+Alternates&display=swap"
        rel="stylesheet">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

</head>

<body>

    <div class="wrapper">
        <!-- Sidebar  -->
        
        <nav class="sidebar" id="sidebar">
            <div id="dismiss">
                <i class="fas fa-arrow-left"></i>
            </div>

            <div class="img-icon-nav header-box px-3 pt-3 pb-4 d-flex flex-column align-items-center text-center">
                <h1 class="fs-4">
                  <img class="logo" src="img/logo.jpeg" alt="">
                  <span class="text-white">CosmoClub</span>
                </h1>
                <button class="btn d-md-none d-block close-btn px-1 py-0 text-white"><i class="fa-solid fa-bars-staggered"></i></button>
            </div>

            
            <ul class="list-unstyled px-2">
                <li class=""><a href="/dashboard" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-home'></i> Dashboard</a></li>
                <li class=""><a href="/aprender" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-book' ></i> Aprender</a></li>
                <li class="active"><a href="/galeria" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-images' ></i> Galeria</a></li>
                <li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block"><i class='bx bxs-invader' ></i> Juegos</a></li>
                <li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-chat' ></i> Mensajes</a></li>
                <li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block"><i class='bx bxl-wikipedia' ></i> Wiki</a></li>
                <li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-group'></i> Foro</a></li>
            </ul>


        </nav>

        <!-- Page Content  -->
        <div id="content">
            <nav class="navbar navbar-expand-md navbar-light bg-body-tertiary">
                <div class="container-fluid">
                    <button type="button" id="sidebarCollapse" class="btn me-2">
                        <i class='bx bx-align-left' ></i>
                        <span></span>
                    </button>
                    <h1 class="welcome-text text-uppercase my-3">Buen dia, ${user.name} ${user.last_name}!</h1>
            
                    <!-- Botón del menú para pantallas pequeñas -->
                    <button class="btn me-2 navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <i class='bx bx-align-right'></i>
                    </button>
            
                    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                        <div class="col-md-4 col-12 d-flex align-items-center text-center">
                            <!-- Contenedor para centrar vertical y horizontalmente -->
                            <div class="d-flex flex-column align-items-center">
                                <h3 class="progress-title my-2">NIVEL</h3>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-danger progress-bar-striped active" style="width: 40%;"></div>
                                </div>
                            </div>
                        </div>
                        <!-- Example single danger button -->
                        <div class="dropdown dropstart mt-3 mt-md-0">
                            <a type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <img class="img-perfil rounded-circle me-2" src="<c:url value='${user.user_img}'/>" alt="">
                            </a>
                            <ul class="dropdown-menu text-center">
                                <li><p class="">${user.name} ${user.last_name}</p></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="/perfil">Configuración</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
            
            


            <div class="container-fluid background">

            <div class="gallery p-3">
                <a data-aos="fade-zoom-in"
                data-aos-easing="ease-in-back"
                data-aos-delay="50"
                data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga1.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
                data-aos-easing="ease-in-back"
                data-aos-delay="50"
                data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga2.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
                data-aos-easing="ease-in-back"
                data-aos-delay="50"
                data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga3.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
                data-aos-easing="ease-in-back"
                data-aos-delay="50"
                data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga4.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
                data-aos-easing="ease-in-back"
                data-aos-delay="50"
                data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga5.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
                data-aos-easing="ease-in-back"
                data-aos-delay="50"
                data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga1.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
                data-aos-easing="ease-in-back"
                data-aos-delay="50"
                data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga6.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
                data-aos-easing="ease-in-back"
                data-aos-delay="50"
                data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga12.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
                data-aos-easing="ease-in-back"
                data-aos-delay="50"
                data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga7.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga8.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga4.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga9.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga4.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga9.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga4.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga9.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga4.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga9.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga4.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga9.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga10.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga11.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga4.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga12.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga13.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga14.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga4.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga15.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/ga12.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
            </div>
    
        </div>
        
        </div>
    </div>

    <div class="overlay"></div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>

    <script src="/js/galeria.js"></script>
    <!-- AOS -->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>
        AOS.init();
    </script>

</body>

</html>
