<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CosmoClub</title>
    <link rel="icon" type="image/x-icon" href="img/icon.jpeg">
    <script src="https://kit.fontawesome.com/9e0d9f4598.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../css/aprender.css">
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
                <li class=""><a href="/dashboard" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-home'></i> Dashboard</a></li>
                <li class="active"><a href="/aprender" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-book' ></i> Aprender</a></li>
                <li class=""><a href="/galeria" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-images' ></i> Galeria</a></li>
                <li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block"><i class='bx bxs-invader' ></i> Juegos</a></li>
                <li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-chat' ></i> Mensajes</a></li>
                <li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block"><i class='bx bxl-wikipedia' ></i> Wiki</a></li>
                <li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-group'></i> Foro</a></li>
            </ul>
        </div>
        <div class="content">
            <!--NavBar-->
            <nav class="navbar navbar-expand-md bg-body-tertiary">
                <div class="container-fluid">
                  <h1>BUEN DIA, CATALINA DIAZ!</h1>
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
            <div class="content p-4">

              <section class="row">
                <h3>TODOS LOS CURSOS</h3>
                  <div id="carouselExample" class="carousel slide p-5 ps-0 pe-0 pt-0 rounded-5 col-sm-12" data-bs-ride="carousel">
                
                    <div class="carousel-inner rounded-5">

                        <div class="carousel-item active rounded-5 col-sm-12 ">
                            <div class="d-flex justify-content-evenly rounded-5">

                                <div class="card col-md-4 col-sm-12 rounded-5 me-3 border-0" style="width: 21rem;">
                                    <img src="img/galaxia.png" class="card-img-top rounded-5 rounded-bottom-0 img-mycourses1" alt="img_curso">
                                    <div class="card-body d-flex flex-column align-items-center">
                                      <h5 class="card-title text-center">Galaxias</h5>
                                      <p class="card-text mb-0 text-justify">Aquí aprenderás sobre las Galaxias. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                      <a href="#" class="btn btn-primary w-50 border-0 rounded-pill ">INSCRIBIRME</a>
                                  </div>
                                </div>

                                <div class="card col-md-4 col-sm-12 rounded-5 me-3 border-0" style="width: 21rem;">
                                    <img src="img/sistema-solar.jpeg" class="card-img-top rounded-5 rounded-bottom-0 img-mycourses1" alt="img_curso">
                                    <div class="card-body d-flex flex-column align-items-center">
                                      <h5 class="card-title text-center">Sistema Solar</h5>
                                      <p class="card-text mb-0 text-justify">Aquí aprenderás sobre el sistema solar. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                      <a href="#" class="btn btn-primary w-50 border-0 rounded-pill ">INSCRIBIRME</a>
                                  </div>
                                </div>

                                <div class="card col-md-4 col-sm-12 rounded-5 me-3 border-0" style="width: 21rem;">
                                  <img src="img/nebulosas.sp.jpg" class="card-img-top rounded-5 rounded-bottom-0 img-mycourses1" alt="img_curso">
                                  <div class="card-body d-flex flex-column align-items-center">
                                    <h5 class="card-title text-center">Nebulosas</h5>
                                    <p class="card-text mb-0 text-justify">Aquí aprenderás sobre las Nebulosas. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                    <a href="#" class="btn btn-primary w-50 border-0 rounded-pill ">INSCRIBIRME</a>
                                </div>
                              </div>
                              
                            </div>
                            
                            
                        </div>
                        <div class="carousel-item">
                            <div class="d-flex justify-content-evenly rounded-5 col-sm-12 ">
                              <div class="card col-md-4 col-sm-12 rounded-5 me-3 border-0" style="width: 21rem;">
                                <img src="img/agujeros-negros.jpg" class="card-img-top rounded-5 rounded-bottom-0 img-mycourses1" alt="img_curso">
                                <div class="card-body d-flex flex-column align-items-center">
                                  <h5 class="card-title text-center">Agujeros Negros</h5>
                                  <p class="card-text mb-0 text-justify">Aquí aprenderás sobre los agujeros negros. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                  <a href="#" class="btn btn-primary w-50 border-0 rounded-pill ">INSCRIBIRME</a>
                              </div>
                            </div>
                            <div class="card col-md-4 col-sm-12 rounded-5 me-3 border-0" style="width: 21rem;">
                              <img src="img/planetas.png" class="card-img-top rounded-5 rounded-bottom-0 img-mycourses1" alt="img_curso">
                              <div class="card-body d-flex flex-column align-items-center">
                                <h5 class="card-title text-center">Exo Planetas</h5>
                                <p class="card-text mb-0 text-justify">Aquí aprenderás sobre los exo planetas. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                <a href="#" class="btn btn-primary w-50 border-0 rounded-pill ">INSCRIBIRME</a>
                            </div>
                            </div>
                            <div class="card col-md-4 col-sm-12 rounded-5 me-3 border-0" style="width: 21rem;">
                              <img src="img/sol.png" class="card-img-top rounded-5 rounded-bottom-0 img-mycourses1" alt="img_curso">
                              <div class="card-body d-flex flex-column align-items-center">
                                <h5 class="card-title text-center">Sol</h5>
                                <p class="card-text mb-0 text-justify">Aquí aprenderás sobre los soles. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                <a href="#" class="btn btn-primary w-50 border-0 rounded-pill ">INSCRIBIRME</a>
                            </div>
                            </div>
                          </div>
                      </div>
                  </div>
                   
                    <button class="carousel-control-next ps-5" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>	
                  </div>
              </section>
              
                <div class="row rounded-4 my-courses p-2 d-flex flex-wrap">
                  <div class ="d-flex flex-column justify-content-start title-1 mt-4">
                    <h3 class="">Mis Cursos</h3>
                  </div>
                  
                  <div class="col-md-3 col-sm-6">
                    <div class="card shadow-sm card-mycourses">
                      <img class="bd-placeholder-img card-img-top img-mycourses2" width="100%" src="img/agujeros-negros.jpg" alt="">
                      <div class="card-body">
                        <p class="text-center">Agujeros Negros</p>
                        <div class="progress w-100" role="progressbar" aria-label="Basic example" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
                          <div class="progress-bar bg-success progress-bar-lg" style="width: 10%"></div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="col-md-3 col-sm-6">
                    <div class="card shadow-sm card-mycourses">
                      <img class="bd-placeholder-img card-img-top img-mycourses2" width="100%" src="img/sistema-solar.jpeg" alt="">
                      <div class="card-body">
                        <p class="text-center">Sistema Solar</p>
                        <div class="progress w-100" role="progressbar" aria-label="Basic example" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
                          <div class="progress-bar bg-success progress-bar-lg" style="width: 10%"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <div class="col-md-3 col-sm-6">
                    <div class="card shadow-sm card-mycourses">
                      <img class="bd-placeholder-img card-img-top img-mycourses2" width="100%" src="img/galaxia.png" alt="">                      
                      <div class="card-body">
                        <p class="text-center">Galaxias</p>                        
                        <div class="progress w-100" role="progressbar" aria-label="Basic example" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
                          <div class="progress-bar bg-success progress-bar-lg" style="width: 50%"></div>
                        </div>
                      </div>
                    </div>
                  </div>
          
                  <div class="col-md-3 col-sm-6">
                    <div class="card shadow-sm card-mycourses">
                      <img class="bd-placeholder-img card-img-top img-mycourses2" width="100%" src="img/nebulosas.sp.jpg" alt="">                      
                      <div class="card-body">
                        <p class="text-center">Nebulosas</p>
                        <div class="progress w-100" role="progressbar" aria-label="Basic example" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
                          <div class="progress-bar bg-success progress-bar-lg" style="width: 80%"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  
                </div>
                
              </section>

            </div>

        </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js" integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa" crossorigin="anonymous"></script>

    <script src="../js/aprender.js"></script>
</body>
</html>