<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- referencia a fuente de texto Montserrat desde Google fonts -->
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <title>CosmoClub</title>
    <link rel="icon" type="image/x-icon" href="img/icons/logo_negro.ico">
    <!-- referencia a Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Montserrat';
        }

        .fondo {
            background-color: black;
        }

        .imgEsquina {
            position: absolute;
            left: -50%;
            top: -70%;
            width: 109rem;
            z-index: -1;
        }

        .uno {
            color: white;
            font-size: 10rem;
            height: 0px;
            padding-top: 14rem;
        }

        .sol {
            margin-top: 8rem;
            height: 0px;
        }

        .corona {
            width: 17rem;
            position: absolute;
            z-index: 2;
            left: 20%;
            top: 230%;
        }

        .zona_convectiva {
            width: 17rem;
            position: absolute;
            z-index: 2;
            left: 62%;
            top: 230%;
        }

        .cromosfera {
            width: 17rem;
            position: absolute;
            z-index: 2;
            left: 62%;
            top: 250%;
        }

        .nucleo {
            width: 17rem;
            position: absolute;
            z-index: 2;
            left: 1%;
            top: 240%;
        }

        .fotosfera {
            width: 17rem;
            position: absolute;
            z-index: 1;
            left: 20%;
            top: 245%;
        }

        .zona_radiactiva {
            width: 17rem;
            position: absolute;
            z-index: 2;
            left: 81%;
            top: 240%;
        }

        .accordion-item {
            background-color: black;
            color: white;
        }

        .accordion-item:last-of-type .accordion-button.collapsed {
            background-color: transparent;
            color: white;
        }

        .accordion-button::after {
            background-image: url("data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 16 16' fill='white'><path fill-rule='evenodd' d='M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z'/></svg>");
        }

        .accordion-up {
            flex-direction: column-reverse;
        }

        .juan figure {
            position: relative;
            cursor: pointer;
            overflow: hidden;
            border-radius: 6px;
            box-shadow: 0px 15px 25px rgba(0, 0, 0, 0.50);
        }

        .juan figure img {
            width: 100%;
            height: 34rem;
            transition: all 400ms ease-out;
            will-change: transform;
        }

        .juan figure .capa {
            position: absolute;
            top: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 103, 123, 0.7);
            transition: all 400ms ease-out;
            opacity: 0;
            visibility: hidden;
            text-align: center;
        }

        .juan figure:hover>.capa {
            opacity: 1;
            visibility: visible;
        }

        .juan figure:hover>.capa h3 {
            margin-top: 70px;
            margin-bottom: 15px;
        }

        .juan figure:hover>img {
            transform: scale(1.3);
        }

        .juan figure .capa h3 {
            color: #fff;
            font-weight: 400;
            margin-bottom: 120px;
            transition: all 400ms ease-out;
            margin-top: 30px;

        }

        .juan figure .capa p {
            color: #fff;
            line-height: 1.5;
            width: 95%;
            margin: auto;
            font-size: 22px;
        }

        .lolo {
            color: white;
            padding-top: 20px;
            padding-bottom: 10px !important;
        }

        .lins {
            text-decoration: none;
        }

        html {
            scroll-behavior: smooth;
        }

        .imagen-espejo {
            transform: scaleX(-1);
            width: auto;
            z-index: -1;
            height: 100%;
            position: absolute;
            left: -2%;
        }

        .info-container {
            text-align: center;
            max-width: 50%;
            margin-left: auto;
            padding: 0 15px;
        }

        .electro {
            height: 30%;
            width: inherit;
        }

        .butonde {
            position: absolute;
            left: 85%;
            top: 238rem;
            width: fit-content;
        }

        .butonde button {
            background-color: transparent;    
            color: #fff;                   
            /* Elimina el borde */
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .butonde button:hover {
            color: black;
            background-color: white;            
            box-shadow: -1px -1px 66px 15px rgba(255,255,255,0.75);
        }
        .butondes {
            position: absolute;
            left: 0%;
            top: 200rem;
            width: fit-content;
        }

        .butondes button {
            background-color: transparent;    
            color: #fff;                   
            /* Elimina el borde */
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .butondes button:hover {
            color: black;
            background-color: white;            
            box-shadow: -1px -1px 66px 15px rgba(255,255,255,0.75);
        }
    </style>
</head>

<body class="fondo">
    <div>
        <img class="imgEsquina" src="/img/unidad-sol/sol.png" alt="el sol">
    </div>
    <div class="container">
        <div class="row vh-100">
            <div class="row text-center" style="color:gray;">
                <h1 class="uno fw-bold">El Sol</h1>
                <h2 class="sol">¿Que es el Sol?</h2>
                <h3>El Sol es una estrella, es decir, un cuerpo celeste que brilla con luz propia,
                    compuesto de hidrógeno y helio a enormes temperaturas en estado de plasma.
                    Es la estrella mas cercana a La Tierra y de la que depende toda la vida en ella.
                    Concentrada en el Sol encontramos el 99,85% de toda la masa del Sistema Solar</h3>
            </div>
            <a href="#como_se_origino" class="scroll-down d-flex justify-content-center align-items-center lins">
                <i class="fas fa-chevron-down" style="color: white;"></i>
            </a>
        </div>

        <div id="como_se_origino" class=" row vh-100 text-light justify-content-around align-items-center fs-4">
            <div class="col-5 border border-white rounded-4 p-4 juan">
                <a href="#">
                    <figure>
                        <img src="https://apod.nasa.gov/apod/image/2202/Chamaeleon_RobertEder.jpg">
                        <div class="capa">
                            <h2 class="fw-bold pb-4 lolo">¿COMO SE ORIGINO?</h2>
                            <p>El Sol se formó, como todas las estrellas, a partir del gas y otros materiales
                                que formaban parte de una gran nube molecular.
                                Esa nube colapsó por sus propias fuerzas gravitacionales hace 4600 millones de años.
                                De esa misma nube proviene todo el Sistema Solar.
                                Eventualmente, la masa gaseosa se hizo tan densa que dio lugar a reacciones nucleares
                                que
                                “encendieron” el núcleo de la estrella. Este es el proceso más común de formación de
                                estos astros
                                celestes.</p>
                        </div>
                    </figure>
                </a>
            </div>
            <div class="col-5 border border-white rounded-4 p-4 juan">
                <a href="#">
                    <figure>
                        <img
                            src="http://www.ideam.gov.co/documents/21021/104106664/GENERALIDADES+DEL+SOL+Fig+1.png/9cf8a831-7c51-497c-8723-7bef3dc29d94?t=1593198745572">
                        <div class="capa">
                            <h2 class="fw-bold pb-4 lolo">¿DE QUE ESTA COMPUESTO?</h2>
                            <p>El Sol es una inmensa bola de plasma, casi totalmente redonda, compuesta principalmente
                                por hidrógeno (74,9%) y helio (23,8%). Además, contiene una porción ínfima en
                                comparación
                                (2%) de elementos como oxígeno, carbono, neón y hierro.
                                El hidrógeno es el material combustible del Sol, y a medida que se consume se va
                                convirtiendo en helio, dejando una capa de “cenizas de helio”. Esta capa se incrementará
                                a medida que la estrella termine su ciclo principal de vida.</p>
                        </div>
                    </figure>
                </a>
            </div>
            <a href="#estructura" class="scroll-down d-flex justify-content-center align-items-center lins">
                <i class="fas fa-chevron-down" style="color: white;"></i>
            </a>
        </div>
        <div id="estructura" class=" row vh-100 text-light align-items-center text-center">
            <div class="accordion" id="accordionExample">
                <div class="fotosfera flex-column-reverse">
                    <div class="accordion accordion-up flex-column-reverse rounded-pill" id="accordionExample">
                        <div class="accordion-item flex-column-reverse rounded-5">
                            <h2 class="accordion-header rounded-pill ">
                                <button class="accordion-button collapsed rounded-pill" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false"
                                    aria-controls="collapseTwo">
                                    FOTOSFERA
                                </button>
                            </h2>
                            <div id="collapseTwo" class="accordion-collapse collapse"
                                data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    Esta es la zona donde se emite la luz visible del Sol. Se la percibe como
                                    gránulos brillantes sobre una superficie más oscura, a pesar de ser una capa
                                    transparente de unos 100 a 200 km de profundidad, considerada la superficie del
                                    Sol. Allí aparecen también las manchas solares, debidas a sustancias producidas
                                    en la propia estrella.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="cromosfera">
                    <div class="accordion rounded-pill" id="accordionExample">
                        <div class="accordion-item rounded-5">
                            <h2 class="accordion-header rounded-pill ">
                                <button class="accordion-button collapsed rounded-pill" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false"
                                    aria-controls="collapseOne">
                                    CROMOSFERA
                                </button>
                            </h2>
                            <div id="collapseOne" class="accordion-collapse collapse"
                                data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    Se llama así a la capa externa de la propia fotósfera, mucho más translúcida todavía
                                    y difícil de apreciar, pues está opacada por el brillo de la capa anterior. Posee
                                    un tamaño de alrededor de 10.000 km y vista durante un eclipse, posee un tono rojizo
                                    exterior.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="corona">
                    <div class="accordion rounded-pill" id="accordionExample">
                        <div class="accordion-item rounded-5">
                            <h2 class="accordion-header rounded-pill ">
                                <button class="accordion-button collapsed rounded-pill" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#collapsetree" aria-expanded="false"
                                    aria-controls="collapsetree">
                                    CORONA
                                </button>
                            </h2>
                            <div id="collapsetree" class="accordion-collapse collapse"
                                data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    Se conoce así a las capas más tenues de la atmósfera externa del Sol, en las que
                                    la temperatura aumenta considerablemente respecto a las capas interiores.
                                    Esto es un misterio de la naturaleza solar. Sin embargo, en ella se dan bajas
                                    densidades de materia junto a intensos campos magnéticos, atravesados por energía
                                    y materia a elevadísimas velocidades, así como por numerosos rayos X.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="nucleo">
                    <div class="accordion rounded-pill" id="accordionExample">
                        <div class="accordion-item rounded-5">
                            <h2 class="accordion-header rounded-pill ">
                                <button class="accordion-button collapsed rounded-pill" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#collapsecuatro" aria-expanded="false"
                                    aria-controls="collapsecuatro">
                                    NUCLEO
                                </button>
                            </h2>
                            <div id="collapsecuatro" class="accordion-collapse collapse"
                                data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    La región más interna del Sol, que ocupa una quinta parte del total de la estrella:
                                    unos 139.000 kilómetros de su radio total. Es allí en donde tiene lugar la
                                    gigantesca
                                    explosión atómica del hidrógeno fusionándose; pero es tal la gravedad que hay en el
                                    núcleo
                                    solar, que a la energía producida de esta forma le toma alrededor de un millón de
                                    años
                                    emerger hacia la superficie.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="zona_convectiva">
                    <div class="accordion rounded-pill" id="accordionExample">
                        <div class="accordion-item rounded-5">
                            <h2 class="accordion-header rounded-pill ">
                                <button class="accordion-button collapsed rounded-pill" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false"
                                    aria-controls="collapseFive">
                                    ZONA CONVECTIVA
                                </button>
                            </h2>
                            <div id="collapseFive" class="accordion-collapse collapse"
                                data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    Se trata de una región donde los gases dejan de estar ionizados, haciendo más
                                    difícil
                                    que la energía (en forma de fotones) escape hacia afuera del Sol. Esto ocasiona que
                                    la energía pueda escapar solamente por convección calórica, mucho más lentamente.
                                    Así, el fluido solar se calienta de manera desigual, originando dilataciones,
                                    pérdidas de densidad y corrientes ascendentes o descendentes, como una marea
                                    interior
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="zona_radiactiva flex-column-reverse">
                    <div class="accordion accordion-up flex-column-reverse rounded-pill" id="accordionExample">
                        <div class="accordion-item flex-column-reverse rounded-5">
                            <h2 class="accordion-header rounded-pill ">
                                <button class="accordion-button collapsed rounded-pill" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false"
                                    aria-controls="collapseSix">
                                    ZONA RADIACTIVA
                                </button>
                            </h2>
                            <div id="collapseSix" class="accordion-collapse collapse"
                                data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    Esta es la zona donde se emite la luz visible del Sol. Se la percibe como
                                    gránulos brillantes sobre una superficie más oscura, a pesar de ser una capa
                                    transparente de unos 100 a 200 km de profundidad, considerada la superficie del
                                    Sol. Allí aparecen también las manchas solares, debidas a sustancias producidas
                                    en la propia estrella.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div>
                <h1 class="fw-bold pb-4 mb-4">ESTRUCTURA DEL SOL</h1>
            </div>

            <div><img src="/img/unidad-sol/solgif.gif" alt=""></div>
            <a href="#info" class="scroll-down d-flex justify-content-center align-items-center lins">
                <i class="fas fa-chevron-down" style="color: white;"></i>
            </a>
        </div>
        <div id="info" class=" row vh-100 justify-content-around text-light align-items-center text-center">
            <img class="imagen-espejo" src="https://media0.giphy.com/media/3o7TKHzhNbSSRl7OGk/giphy.gif" alt="">
            <div class="info-container">
                <h1>El fin del sol</h1>
                <p>Durante sus primeros 50 millones de años, el Sol se contrajo hasta llegar a su tamaño actual.
                    La energía liberada por el gas calentaba el interior y, cuando el centro estuvo suficientemente
                    caliente, la contracción se paró y la combustión nuclear del hidrógeno en helio comenzó en el
                    centro. El Sol ha estado en esta etapa dedurante unos 4.500 millones de años y tiene hidrógeno
                    en su núcleo como para durar otros 4.500 millones de años. Cuando se gaste este combustible,
                    se irán pandiendo las capas exteriores hasta el tamaño actual de la órbita de la Tierra, es
                    decir, el Sol se convertirá en una gigante roja, algo más fría que hoy pero 10.000 veces más
                    brillante a causa de su enorme tamaño. Además, debido a la pérdida de masa del sol la Tierra,
                    según se cree, se moverá en espiral hacia afuera, como consecuencia de la pérdida de masa del
                    Sol. El Sol seguirá siendo una gigante roja, con reacciones nucleares de combustión de helio
                    en el centro, durante sólo 500 millones de años y después se encogerá hasta ser una enana
                    blanca, aproximadamente del tamaño de la Tierra, y se enfriará poco a poco durante varios
                    millones de años.</p>
                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Solar_Life_Cycle_spa.svg/710px-Solar_Life_Cycle_spa.svg.png"
                    alt="">
                <a href="#hola" class="scroll-down d-flex justify-content-center align-items-center lins">
                    <i class="fas fa-chevron-down" style="color: white;"></i>
                </a>
            </div>
        </div>
        <div id="hola" class=" row vh-100 justify-content-around text-light align-items-center text-center">
            <div class="rounded-pill butondes">
                <a href="/curso">
                    <button class="rounded-pill border-white" style="padding: 10px;"> << Regresar a Unidades </button>
                </a>
            </div>
            <div class="col-7 border border-white rounded-4 p-4">
                <h1>RADICACIÓN SOLAR</h1>
                <p>la radiación solar es la energía emitida por el Sol, que se propaga en todas las direcciones
                    a través del espacio mediante ondas electromagnéticas. Esa energía es el motor que determina
                    la dinámica de los procesos atmosféricos y el clima. La energía procedente del Sol es radiación
                    electromagnética proporcionada por las reacciones del hidrogeno en el núcleo del Sol por fusión
                    nuclear y emitida por la superficie solar.

                    El Sol emite energía en forma de radiación de onda corta. Después de pasar por la atmósfera,
                    donde sufre un proceso de debilitamiento por la difusión, reflexión en las nubes y de absorción
                    por las moléculas de gases (como el ozono y el vapor de agua) y por partículas en suspensión,
                    la radiación solar alcanza la superficie terrestre oceánica y continental que la refleja o la
                    absorbe. La cantidad de radiación absorbida por la superficie es devuelta en dirección al espacio
                    exterior en forma de radiación de onda larga, con lo cual se transmite calor a la atmósfera.</p>
                <img class="electro"
                    src="http://www.ideam.gov.co/documents/21021/94919759/RADIACION+SOLARFIG+1.PNG/5a2ca48e-8460-41a1-bd5b-f951cdb6f772?t=1572461536029"
                    alt="">
            </div>
            <div class="rounded-pill butonde">
                <a href="mercurio.html">
                    <button class="rounded-pill border-white" style="padding: 10px;">Mercurio >></button>
                </a>
            </div>
        </div>

    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>

</html>