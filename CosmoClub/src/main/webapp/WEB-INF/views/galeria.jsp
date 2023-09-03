<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
                <li class=""><a href="/foro" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-group'></i> Foro</a></li>
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
                                <img class="img-perfil rounded-circle me-2" src="img/profile.jpg" alt="">
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
                    <img src="img/galeria/bennu-1.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Bennu</h3>
                        <p>Esta imagen en mosaico del asteroide Bennu está compuesta por 12 imágenes PolyCam recogidas el 2 de diciembre por la nave espacial OSIRIS-REx desde una distancia de 24 km.</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
                data-aos-easing="ease-in-back"
                data-aos-delay="50"
                data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/a_silver_of_the_sun-2.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Una Plata del Sol</h3>
                        <p>La Luna se ve pasando por delante del Sol durante un eclipse solar desde Ross Lake, Northern Cascades National Park, Washington el 21 de agosto de 2017.</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
                data-aos-easing="ease-in-back"
                data-aos-delay="50"
                data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/nebula_ojo_de_gato-3.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Nebulosa Ojo de Gato</h3>
                        <p>La nebulosa Ojo de Gato es una nebulosa planetaria en la constelación del Dragón a unos 3000 años luz.​</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
                data-aos-easing="ease-in-back"
                data-aos-delay="50"
                data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/galaxia_espiral_mrk 1337-4.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Galaxia Espiral Mrk 1337</h3>
                        <p>La imagen muestra la galaxia Mrk 1337, una brillante y hermosa galaxia que nadie visitará durante mucho tiempo. Eso es porque Mrk 1337 está a 120 millones de años luz de la Tierra.</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
                data-aos-easing="ease-in-back"
                data-aos-delay="50"
                data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/estrella_earendel-5.png" alt="">
                    <div class="image-overlay">
                        <h3>Estrella Earendel</h3>
                        <p> En esta imagen, el Arco del Amanecer aparece como una raya roja justo debajo del pico de difracción en la posición de las 5 en punto.</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
                data-aos-easing="ease-in-back"
                data-aos-delay="50"
                data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/cumulo_galacito_brillante-6.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Cúmulo Galáctico Brillante</h3>
                        <p>El brillante y reluciente contenido del cúmulo globular NGC 6652 brilla en esta imagen repleta de estrellas del telescopio espacial Hubble de la NASA/ESA.</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
                data-aos-easing="ease-in-back"
                data-aos-delay="50"
                data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/galaxia_espiral_UGC_12295-7.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Galaxia Espiral UGC 12295</h3>
                        <p>En esta imagen del telescopio espacial Hubble de la NASA y la ESA, la tranquila galaxia espiral UGC 12295 toma el sol tranquilamente. Esta galaxia se encuentra a unos 192 millones de años-luz de distancia, en la constelación de Piscis, y se ve casi de frente desde la Tierra, mostrando una barra central brillante y unos brazos espirales muy apretados.</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
                data-aos-easing="ease-in-back"
                data-aos-delay="50"
                data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/interaccion_galaxias-8.jpeg" alt="">
                    <div class="image-overlay">
                        <h3>Interacción de Galaxias</h3>
                        <p>Esta nueva imagen del telescopio espacial Hubble de la NASA muestra galaxias en interacción conocidas como AM 1214-255. Estas galaxias contienen núcleos galácticos activos, o AGN.</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
                data-aos-easing="ease-in-back"
                data-aos-delay="50"
                data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/remanente_supernova_snr0519-9.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Supernova SNR 0519</h3>
                        <p>El remanente de supernova denominado SNR 0519-69.0 (abreviado SNR 0519) son los restos de la explosión de una estrella enana blanca. Tras alcanzar una masa crítica, bien por haber extraído materia de una estrella compañera o por haberse fusionado con otra enana blanca, la estrella sufrió una explosión termonuclear y se destruyó.</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/galaxia_de_la_rueda_de_carro-10.png" alt="">
                    <div class="image-overlay">
                        <h3>Galaxia de la Rueda de Carro</h3>
                        <p>Esta galaxia se formó como resultado de una colisión a gran velocidad ocurrida hace unos 400 millones de años. La Rueda de Carro está compuesta por dos anillos, uno interior brillante y otro exterior colorido. Ambos anillos se expanden hacia el exterior desde el centro de la colisión como ondas de choque.</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/nuestro_sol-11.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Nuestro Sol</h3>
                        <p>En esta imagen, que combina observaciones del Nuclear Spectroscopic Telescope Array, NuSTAR (en azul), se destacan las regiones activas y fulgurantes de nuestro Sol; en verde, los rayos X de baja energía de la nave espacial japonesa Hinode; y en amarillo y rojo, la luz ultravioleta extrema del Solar Dynamics Observatory, SDO.</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/moonikin_campos-12.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Moonikin Campos</h3>
                        <p>En esta imagen de abril de 2023, el Moonikin Campos de la NASA, un maniquí que voló en la prueba de vuelo Artemis I más allá de la Luna, disfruta de un momento de tranquilidad durante las pruebas de trineo de aceleración en la Base Wright-Patterson de la Fuerza Aérea en Ohio.</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/galaxia_andromeda-13.jpeg" alt="">
                    <div class="image-overlay">
                        <h3>Galaxia Andrómeda</h3>
                        <p>Esta imagen de la galaxia de Andrómeda, o M31, incluye datos de la misión Herschel de la ESA (Agencia Espacial Europea), complementados con datos del observatorio Planck de la ESA, ya retirado, y de dos misiones retiradas de la NASA: el Satélite Astronómico Infrarrojo (IRAS) y el Explorador del Fondo Cósmico (COBE).</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/bandas_jupiter-14.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Bandas de Júpiter</h3>
                        <p>La apariencia en bandas de Júpiter es creada por la "capa meteorológica" que forma las nubes. En esta imagen compuesta, la imagen de la izquierda muestra la energía térmica de Júpiter emitida en luz infrarroja, con bandas nubosas oscuras que aparecen como siluetas contra el resplandor térmico de Júpiter. La imagen de la derecha muestra el aspecto de Júpiter en luz visible, con las "zonas" nubosas blancas y los "cinturones" relativamente libres de nubes que aparecen como colores rojo-marrón.</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/galaxia_espiral_NGC_628-15.jpeg" alt="">
                    <div class="image-overlay">
                        <h3>Galaxia Espiral NGC 628</h3>
                        <p>La galaxia espiral NGC 628, también conocida como Messier 74, galaxia del Abanico o incluso 'la galaxia perfecta', por sus brazos enrollados, ha sido retratada por muchos telescopios, incluidos el Hubble o el Spitzer. Y aunque a penas lleva unos meses en funcionamiento, parece que el James Webb también ha apuntado sus potentes instrumentos hacia su centro.</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/nebulosa_orion_infrarrojo-16.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Nebulosa de Orión en infrarrojo</h3>
                        <p>Esta imagen de la nebulosa de Orión, obtenida a partir de datos de tres telescopios, muestra dos enormes cavernas excavadas por estrellas gigantes invisibles que pueden emitir hasta un millón de veces más luz que nuestro Sol. Toda esa radiación rompe los granos de polvo que hay allí, ayudando a crear el par de cavidades.</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/fases_lunares-17.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Fases Lunares</h3>
                        <p>Las fases lunares son los diferentes aspectos visibles de la Luna a medida que orbita alrededor de la Tierra. Estas fases son el resultado de la interacción entre la posición relativa de la Luna, la Tierra y el Sol.</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/eclipse_lunar_2019-18.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Eclipse Lunar 2019</h3>
                        <p>Fotografía tomada por Kalfukoyam Treuquil, La Araucanía, Chile. En esta fotografía se puede apreciar el Eclipse Superlunar ocurrido el 21 de enero de 2019, siendo el primero de los dos eclipses​ lunares de 2019.</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/ga4.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/ga9.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/ga10.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/ga11.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/ga4.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/ga12.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/ga13.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/ga14.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/ga4.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/ga15.jpg" alt="">
                    <div class="image-overlay">
                        <h3>Andrómeda</h3>
                        <p>Andrómeda es una galaxia</p>
                    </div>
                </a>
                <a data-aos="fade-zoom-in"
            data-aos-easing="ease-in-back"
            data-aos-delay="50"
            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1" data-description="Descripción de la imagen 1">
                    <img src="img/galeria/ga12.jpg" alt="">
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
