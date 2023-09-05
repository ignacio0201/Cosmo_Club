<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <!-- Fuentes -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100&family=Montserrat+Alternates&display=swap"
            rel="stylesheet">

        <!-- Font Awesome JS -->
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
            integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ"
            crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"
            integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY"
            crossorigin="anonymous"></script>

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
                    <button class="btn d-md-none d-block close-btn px-1 py-0 text-white"><i
                            class="fa-solid fa-bars-staggered"></i></button>
                </div>


                <ul class="list-unstyled px-2">
                    <li class=""><a href="/dashboard" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-home'></i> Dashboard</a></li>
                    <li class=""><a href="/aprender" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-book'></i> Aprender</a></li>
                    <li class="active"><a href="/galeria" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-images'></i> Galeria</a></li>
                    <li class=""><a href="#" class="text-decoration-none px-3 py-2 d-block"><i class='bx bxs-invader'></i> Juegos</a></li>
                    <li class=""><a href="/chat" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-chat' ></i> CosmoChat</a></li>
                    <li class=""><a href="/wiki" class="text-decoration-none px-3 py-2 d-block"><i class='bx bxl-wikipedia' ></i> WikiCosmo</a></li>
                    <li class=""><a href="/foro" class="text-decoration-none px-3 py-2 d-block"><i class='bx bx-group'></i> Foro</a></li>
                </ul>


            </nav>

            <!-- Page Content  -->
            <div id="content">
                <nav class="navbar navbar-expand-md navbar-light bg-body-tertiary">
                    <div class="container-fluid">
                        <button type="button" id="sidebarCollapse" class="btn me-2">
                            <i class='bx bx-align-left'></i>
                            <span></span>
                        </button>
                        <h1 class="welcome-text text-uppercase my-3">Buen dia, ${user.name} ${user.last_name}!</h1>

                        <!-- Botón del menú para pantallas pequeñas -->
                        <button class="btn me-2 navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <i class='bx bx-align-right'></i>
                        </button>

                        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                            <div class="col-md-4 col-12 d-flex align-items-center text-center">
                                <!-- Contenedor para centrar vertical y horizontalmente -->
                                <div class="d-flex flex-column align-items-center">
                                    <h3 class="progress-title my-2">NIVEL</h3>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-danger progress-bar-striped active"
                                            style="width: 40%;"></div>
                                    </div>
                                </div>
                            </div>
                            <!-- Example single danger button -->
                            <div class="dropdown dropstart mt-3 mt-md-0">
                                <a type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <img class="img-perfil rounded-circle me-2" src="img/profile.jpg" alt="">
                                </a>
                                <ul class="dropdown-menu text-center">
                                    <li>
                                        <p class="">${user.name} ${user.last_name}</p>
                                    </li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="/perfil">Configuración</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>




                <div class="container-fluid background">

                    <div class="gallery p-3">
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/bennu-1.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Bennu</h3>
                                <p>Esta imagen en mosaico del asteroide Bennu está compuesta por 12 imágenes PolyCam
                                    recogidas el 2 de diciembre por la nave espacial OSIRIS-REx desde una distancia de
                                    24 km.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/a_silver_of_the_sun-2.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Una Plata del Sol</h3>
                                <p>La Luna se ve pasando por delante del Sol durante un eclipse solar desde Ross Lake,
                                    Northern Cascades National Park, Washington el 21 de agosto de 2017.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/nebula_ojo_de_gato-3.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Nebulosa Ojo de Gato</h3>
                                <p>La nebulosa Ojo de Gato es una nebulosa planetaria en la constelación del Dragón a
                                    unos 3000 años luz.​</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/galaxia_espiral_mrk 1337-4.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Galaxia Espiral Mrk 1337</h3>
                                <p>La imagen muestra la galaxia Mrk 1337, una brillante y hermosa galaxia que nadie
                                    visitará durante mucho tiempo. Eso es porque Mrk 1337 está a 120 millones de años
                                    luz de la Tierra.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/estrella_earendel-5.png" alt="">
                            <div class="image-overlay">
                                <h3>Estrella Earendel</h3>
                                <p> En esta imagen, el Arco del Amanecer aparece como una raya roja justo debajo del
                                    pico de difracción en la posición de las 5 en punto.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/cumulo_galacito_brillante-6.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Cúmulo Galáctico Brillante</h3>
                                <p>El brillante y reluciente contenido del cúmulo globular NGC 6652 brilla en esta
                                    imagen repleta de estrellas del telescopio espacial Hubble de la NASA/ESA.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/galaxia_espiral_UGC_12295-7.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Galaxia Espiral UGC 12295</h3>
                                <p>En esta imagen del telescopio espacial Hubble de la NASA y la ESA, la tranquila
                                    galaxia espiral UGC 12295 toma el sol tranquilamente. Esta galaxia se encuentra a
                                    unos 192 millones de años-luz de distancia, en la constelación de Piscis, y se ve
                                    casi de frente desde la Tierra, mostrando una barra central brillante y unos brazos
                                    espirales muy apretados.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/interaccion_galaxias-8.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Interacción de Galaxias</h3>
                                <p>Esta nueva imagen del telescopio espacial Hubble de la NASA muestra galaxias en
                                    interacción conocidas como AM 1214-255. Estas galaxias contienen núcleos galácticos
                                    activos, o AGN.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/remanente_supernova_snr0519-9.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Supernova SNR 0519</h3>
                                <p>El remanente de supernova denominado SNR 0519-69.0 (abreviado SNR 0519) son los
                                    restos de la explosión de una estrella enana blanca. Tras alcanzar una masa crítica,
                                    bien por haber extraído materia de una estrella compañera o por haberse fusionado
                                    con otra enana blanca, la estrella sufrió una explosión termonuclear y se destruyó.
                                </p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/galaxia_de_la_rueda_de_carro-10.png" alt="">
                            <div class="image-overlay">
                                <h3>Galaxia de la Rueda de Carro</h3>
                                <p>Esta galaxia se formó como resultado de una colisión a gran velocidad ocurrida hace
                                    unos 400 millones de años. La Rueda de Carro está compuesta por dos anillos, uno
                                    interior brillante y otro exterior colorido. Ambos anillos se expanden hacia el
                                    exterior desde el centro de la colisión como ondas de choque.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/nuestro_sol-11.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Nuestro Sol</h3>
                                <p>En esta imagen, que combina observaciones del Nuclear Spectroscopic Telescope Array,
                                    NuSTAR (en azul), se destacan las regiones activas y fulgurantes de nuestro Sol; en
                                    verde, los rayos X de baja energía de la nave espacial japonesa Hinode; y en
                                    amarillo y rojo, la luz ultravioleta extrema del Solar Dynamics Observatory, SDO.
                                </p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/moonikin_campos-12.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Moonikin Campos</h3>
                                <p>En esta imagen de abril de 2023, el Moonikin Campos de la NASA, un maniquí que voló
                                    en la prueba de vuelo Artemis I más allá de la Luna, disfruta de un momento de
                                    tranquilidad durante las pruebas de trineo de aceleración en la Base
                                    Wright-Patterson de la Fuerza Aérea en Ohio.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/galaxia_andromeda-13.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Galaxia Andrómeda</h3>
                                <p>Galaxia de Andrómeda, o M31, incluye datos de la misión Herschel de la ESA (Agencia
                                    Espacial Europea), complementados con datos del observatorio Planck de la ESA, ya
                                    retirado, y de dos misiones retiradas de la NASA.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/bandas_jupiter-14.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Bandas de Júpiter</h3>
                                <p>La apariencia en bandas de Júpiter es creada por la "capa meteorológica" que forma
                                    las nubes. En esta imagen compuesta, la imagen de la izquierda muestra la energía
                                    térmica de Júpiter emitida en luz infrarroja, con bandas nubosas oscuras que
                                    aparecen como siluetas contra el resplandor térmico de Júpiter. La imagen de la
                                    derecha muestra el aspecto de Júpiter en luz visible, con las "zonas" nubosas
                                    blancas y los "cinturones" relativamente libres de nubes que aparecen como colores
                                    rojo-marrón.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/galaxia_espiral_NGC_628-15.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Galaxia Espiral NGC 628</h3>
                                <p>NGC 628, también conocida como Messier 74, galaxia del Abanico, por sus brazos
                                    enrollados, ha sido retratada por muchos telescopios, incluidos el Hubble o el
                                    Spitzer. Y aunque a penas lleva unos meses en funcionamiento, parece que el Webb
                                    también ha apuntado sus potentes instrumentos hacia su centro.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/nebulosa_orion_infrarrojo-16.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Nebulosa de Orión en infrarrojo</h3>
                                <p>Esta imagen de la nebulosa de Orión, obtenida a partir de datos de tres telescopios,
                                    muestra dos enormes cavernas excavadas por estrellas gigantes invisibles que pueden
                                    emitir hasta un millón de veces más luz que nuestro Sol. Toda esa radiación rompe
                                    los granos de polvo que hay allí, ayudando a crear el par de cavidades.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/fases_lunares-17.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Fases Lunares</h3>
                                <p>Las fases lunares son los diferentes aspectos visibles de la Luna a medida que orbita
                                    alrededor de la Tierra. Estas fases son el resultado de la interacción entre la
                                    posición relativa de la Luna, la Tierra y el Sol.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/eclipse_lunar_2019-18.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Eclipse Lunar 2019</h3>
                                <p>Fotografía tomada por Kalfukoyam Treuquil, La Araucanía, Chile. En esta fotografía se
                                    puede apreciar el Eclipse Superlunar ocurrido el 21 de enero de 2019, siendo el
                                    primero de los dos eclipses​ lunares de 2019.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/mercurio-19.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Mercurio</h3>
                                <p>Junto con Venus, la Tierra y Marte, Mercurio es uno de los planetas rocosos. Tiene
                                    una superficie sólida que está cubierta de cráteres. Tiene una atmósfera delgada y
                                    no tiene ninguna luna.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/agujero_negro-20.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Agujero Negro</h3>
                                <p>Este concepto artístico ilustra un agujero negro supermasivo con millones o miles de
                                    millones de veces la masa de nuestro sol. Los agujeros negros supermasivos son
                                    objetos enormemente densos situados en el corazón de las galaxias.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/cometa_C2018_Y1_Iwamoto-21.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Cometa C/2018 Y1 Iwamoto</h3>
                                <p>El cometa según las imágenes obtenidas en múltiples exposiciones de luz infrarroja
                                    por el telescopio espacial NEOWISE. Las imágenes infrarrojas fueron tomadas el 25 de
                                    febrero de 2019, cuando el cometa estaba a unos 90 millones de kilómetros, de la
                                    Tierra.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/klotho_lina-22.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Klotho y Lina</h3>
                                <p>No son naves Klingon. Los conjuntos de puntos más brillantes, que aparecen como
                                    cadenas de puntos naranjas, pertenecen a los asteroides Klotho y Lina. Ambos orbitan
                                    en el cinturón principal de asteroides entre Marte y Júpiter, aunque también pueden
                                    verse asteroides más pequeños y distantes atravesando la imagen.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/venus-23.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Venus</h3>
                                <p>Aunque Venus no es el planeta más cercano al Sol, es el más caliente. Tiene una
                                    atmósfera densa, llena de dióxido de carbono, que provoca el efecto invernadero, y
                                    de nubes compuestas de ácido sulfúrico. Los gases atrapan el calor y mantienen a
                                    Venus bien calentito.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/la_nebulosa_del_aguila-24.jpg" alt="">
                            <div class="image-overlay">
                                <h3>La nebulosa del Águila</h3>
                                <p>Esta gran región de formación estelar se encuentra a unos 5.700 años luz de la Tierra
                                    y es famosa por albergar los "Pilares de la Creación", una región de la que tomaron
                                    imágenes los telescopios espaciales Hubble y James Webb de la NASA. Los datos de
                                    WISE revelan toda la estructura de la nebulosa que rodea los pilares, que pueden
                                    verse como un tenue elemento amarillo verdoso dentro del círculo blanco.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/galaxia_arp148-25.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Galaxia Arp 148</h3>
                                <p>Esta imagen muestra la galaxia Arp 148, captada por los telescopios Spitzer y Hubble
                                    de la NASA. Dentro del círculo blanco hay datos de Spitzer especialmente procesados,
                                    que revelan la luz infrarroja de una supernova oculta por el polvo.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/nebulosa_anillo_azul-26.jpg" alt="">
                            <div class="image-overlay">
                                <h3>La nebulosa del Anillo Azul</h3>
                                <p>La nebulosa del Anillo Azul fue descubierta en 2004 por la misión Galaxy Evolution
                                    Explorer (GALEX) de la NASA. Los astrónomos creen que la nebulosa se creó por la
                                    fusión de dos estrellas.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/nebulosa_tarantula-27.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Nebulosa Tarántula</h3>
                                <p>Esta imagen del telescopio espacial Spitzer de la NASA muestra la nebulosa de la
                                    Tarántula en dos longitudes de onda de luz infrarroja, cada una representada por un
                                    color diferente.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/nube_molecular_de_perseo-28.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Nube molecular de Perseo</h3>
                                <p>La Nube Molecular de Perseo, un conjunto de gas y polvo de más de 500 años luz de
                                    diámetro, alberga abundantes estrellas jóvenes.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/tierra-29.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Tierra</h3>
                                <p>Nuestro hogar, el planeta Tierra, es un planeta terrestre y rocoso. Tiene una
                                    superficie sólida y activa, con montañas, valles, cañones, llanuras y mucho más. La
                                    Tierra es especial porque es un planeta océano, ya que el agua cubre el 70% de su
                                    superficie.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/exoplanetas_hotjupiter-30.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Exoplanetas "Hot Jupiter"</h3>
                                <p>Esta imagen muestra una impresión artística de los 10 exoplanetas "Hot Jupiter"
                                    estudiados con los telescopios espaciales Hubble y Spitzer. De arriba a abajo, estos
                                    planetas son WASP-12b, WASP-6b, WASP-31b, WASP-39b, HD 189733b, HAT-P-12b, WASP-17b,
                                    WASP-19b, HAT-P-1b y HD 209458b.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/marte-31.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Marte</h3>
                                <p>Marte es un planeta desértico y frío. Es la mitad del tamaño de la Tierra, y también
                                    recibe el nombre de "planeta rojo". Es rojo por el hierro oxidado que tiene en el
                                    suelo.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/jupiter-32.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Júpiter</h3>
                                <p>Júpiter es el planeta más grande de nuestro sistema solar. Es parecido a una
                                    estrella, pero nunca llegó a ser lo suficientemente masiva como para empezar a
                                    arder. Está cubierto de rayas de nubes arremolinadas. Tiene fuertes tormentas como
                                    la Gran Mancha Roja, que hace cientos de años que dura.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/saturno-33.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Saturno</h3>
                                <p>Saturno no es el único planeta que tiene anillos, pero definitivamente tiene los más
                                    bellos. Los anillos que vemos están compuestos por grupos de pequeños aros que
                                    rodean a Saturno. Están hechos de pedazos de hielo y roca. Como Júpiter, Saturno es
                                    una pelota de hidrógeno y helio, en gran parte.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/urano-34.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Urano</h3>
                                <p>Urano está compuesto de agua, metano y amoniaco sobre un pequeño centro rocoso. Su
                                    atmósfera está hecha de hidrógeno y helio, como Júpiter y Saturno, pero además
                                    contiene metano. El metano es lo que le da a Urano el color azul.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/neptuno-35.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Neptuno</h3>
                                <p>Neptuno es oscuro, frío y muy ventoso. Es el último de los planetas de nuestro
                                    sistema solar. Está más de 30 veces más lejos del Sol que la Tierra. Neptuno es muy
                                    parecido a Urano. Está compuesto de una espesa mezcla de agua, amoniaco y metano
                                    sobre un centro sólido del tamaño de la Tierra. Su atmósfera se compone de
                                    hidrógeno, helio y metano. El metano le da a Neptuno el mismo color azul de Urano.
                                    Neptuno tiene seis anillos que no se ven fácilmente.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/luna-36.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Luna</h3>
                                <p>La Luna es el único satélite natural de la Tierra. Con un diámetro ecuatorial de
                                    3474,8 km, es el quinto satélite más grande del sistema solar, mientras que en
                                    cuanto al tamaño proporcional respecto a su planeta es el satélite más grande: un
                                    cuarto del diámetro de la Tierra y 1/81 de su masa.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/agujero_negro_con_chorro-37.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Agujero negro con chorro</h3>
                                <p>Este concepto artístico muestra un agujero negro con un disco de acreción -una
                                    estructura plana de material que orbita alrededor del agujero negro- y un chorro de
                                    gas caliente, llamado plasma.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/nebulosa_del_cangrejo-38.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Nebulosa del Cangrejo</h3>
                                <p>En el verano del año 1054 d.C., los astrónomos chinos vieron una nueva "estrella
                                    invitada", que parecía seis veces más brillante que Venus. Tan brillante que pudo
                                    verse durante el día durante varios meses.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/supernova_x-ray-39.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Supernova SN 2014C (X-ray)</h3>
                                <p>Esta imagen del Observatorio de Rayos X Chandra de la NASA muestra la galaxia espiral
                                    NGC 7331, en el centro, en una imagen de rayos X de tres colores. Los colores rojo,
                                    verde y azul se utilizan para los rayos X de baja, media y alta energía,
                                    respectivamente. En esta galaxia se ha detectado una supernova inusual llamada SN
                                    2014C, indicada por el recuadro de la figura 1.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/sonrisa_universo-40.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Sonríe y el universo sonreirá contigo</h3>
                                <p>Un cúmulo de galaxias de aspecto optimista parece sonreírnos en una imagen recién
                                    publicada del telescopio espacial Hubble de la NASA/ESA. El cúmulo -denominado SDSS
                                    J1038+4849- parece tener dos ojos y una nariz como parte de una cara feliz. Esos
                                    ojos son en realidad galaxias muy brillantes, y las líneas de la sonrisa son, en
                                    realidad, arcos causados por un efecto conocido como lente gravitatoria fuerte.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/bolas_amarillas_via_lactea-41.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Bolas amarillas</h3>
                                <p>Los voluntarios del Proyecto Vía Láctea, basado en Internet, llamaron la atención de
                                    los investigadores sobre los rasgos de formación estelar apodados "bolas amarillas",
                                    que más tarde demostraron que son una fase de la formación de estrellas masivas.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/galaxias_NGC2207_e_IC2163-42.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Galaxias NGC 2207 e IC 2163</h3>
                                <p>NGC 2207 e IC 2163, situadas a unos 130 millones de años-luz de la Tierra, en la
                                    constelación de Canis Major.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/galaxias_NGC3226_NGC3227-43.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Galaxias NGC 3226 y NGC 3227</h3>
                                <p>Las dos galaxias que se ven aquí, NGC 3226 en la parte superior y NGC 3227 en la
                                    inferior, están inundadas por los restos de una tercera galaxia, canibalizada por la
                                    gravedad de las galaxias supervivientes.</p>
                            </div>
                        </a>
                        <a data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="50"
                            data-aos-offset="0" href="#" class="img-gallery" data-title="Título de la imagen 1"
                            data-description="Descripción de la imagen 1">
                            <img src="img/galeria/galaxia_NGC1291-44.jpg" alt="">
                            <div class="image-overlay">
                                <h3>Galaxia NGC 1291</h3>
                                <p>Esta imagen del telescopio espacial Spitzer de la NASA, tomada en luz infrarroja,
                                    muestra dónde tiene lugar la acción en la galaxia NGC 1291. El anillo exterior, de
                                    color rojo en esta imagen, está lleno de estrellas nuevas que se están encendiendo y
                                    calentando polvo que brilla con luz infrarroja.</p>
                            </div>
                        </a>
                    </div>

                </div>

            </div>
        </div>

        <div class="overlay"></div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.min.js"
            integrity="sha384-Rx+T1VzGupg4BHQYs2gCW9It+akI2MM/mndMCy36UVfodzcJcF0GGLxZIzObiEfa"
            crossorigin="anonymous"></script>

        <script src="/js/galeria.js"></script>
        <!-- AOS -->
        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        <script>
            AOS.init();
        </script>

    </body>

    </html>