<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- referencia a Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <!-- referencia a fuente de texto Montserrat desde Google fonts -->
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
    <style>
        body {
            font-family: 'Montserrat';
        }

        .accordion {
            --bs-accordion-btn-padding-y: 4rem;
            box-shadow: none;
        }

        .accordion-button {
            flex-direction: column;
            align-content: center;
            flex-wrap: wrap;
            padding-bottom: 10px;
            padding-top: 20px;
            box-shadow: none;
            font-weight: bold;
        }

        .accordion-button::after {
            margin-left: 0px;
            margin-top: 20px;
            box-shadow: none;
        }

        *,
        ::after,
        ::before {
            border-radius: 15px;
            box-shadow: none;
        }

        [type=button]:not(:disabled),
        [type=reset]:not(:disabled),
        [type=submit]:not(:disabled),
        button:not(:disabled) {
            border-radius: 15px;
            box-shadow: none;
        }

        :root,
        [data-bs-theme=light] {
            --bs-border-radius: 1rem;
            box-shadow: none;
        }

        .accordion-item {
            border: none;
        }

        .border-top {
            border-top: none !important;
        }

        .accordion-body {
            padding-bottom: 40px;
        }

        a {
            outline: none;
            text-decoration: none;
        }
    </style>
</head>

<body>
    <div class="container text-center w-50">
        <div class="row mb-4  pt-4 pb-4" style="border-radius: 15px;">
            <h1>Sistema Solar</h1>
            <img src="" alt="">
        </div>

        <div class="accordion" id="accordionExample">
            <div class="accordion-item border-top mb-5" style="background-color: #F8D265;">
                <h2 class="accordion-header">
                    <button class="accordion-button collapsed" style="background-color: #F8D265;color: white;" type="button"
                        data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false"
                        aria-controls="collapseOne">
                        <img src="/img/ilustracionesplanetas/elsol.png" height="90" width="90"/>
                        <h3>Unidad 1: El Sol</h3>
                    </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <div>Esta unidad se centra en el Sol, la estrella que ilumina nuestro sistema solar.
                            Exploraremos su formación, estructura interna, actividad, influencia en la Tierra
                            y su papel en la energía solar. También discutiremos cómo se compara con otras estrellas
                            y su importancia histórica y cultural.</div>
                        <a href="/unidad" style="color: red;">Ir a la unidad 1</a>
                    </div>
                </div>
            </div>

            <div class="accordion-item border-top mb-5" style="background-color: #fdcae1;">
                <h2 class="accordion-header">
                    <button class="accordion-button collapsed" style="background-color: #fdcae1; color: white;"
                        type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false"
                        aria-controls="collapseTwo">
                        <img src="/img/ilustracionesplanetas/mercurio.png" height="90" width="90" />
                        <h3>Unidad 2: Mercurio</h3>
                    </button>
                </h2>
                <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <div>Mercurio es el planeta más cercano al Sol y uno de los mundos más extremos del sistema
                            solar.
                            Es conocido por sus temperaturas extremadamente altas durante el día y bajas durante la
                            noche
                            debido a su falta de atmósfera significativa. Además, Mercurio es un planeta rocoso con un
                            núcleo
                            metálico grande y es objeto de estudio para comprender la evolución de los planetas
                            terrestres.</div>

                        <a href="#">Ir a la unidad 2</a>
                    </div>
                </div>
            </div>

            <div class="accordion-item border-top mb-5" style="background-color: #FFCBA4">
                <h2 class="accordion-header">
                    <button class="accordion-button collapsed" style="background-color: #FFCBA4; color: white;"
                        type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false"
                        aria-controls="collapseThree">
                        <img src="/img/ilustracionesplanetas/venus.png" height="90" width="90" />
                        <h3>Unidad 3: Venus</h3>
                    </button>
                </h2>
                <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <div>Venus es a menudo llamado el "gemelo de la Tierra" debido a su tamaño y composición
                            similares,
                            pero es un mundo inhóspito con temperaturas abrasadoras y una densa atmósfera de dióxido de
                            carbono.
                            Su superficie está marcada por volcanes y una presión atmosférica inmensa. Venus es un
                            objeto de
                            interés para estudiar los efectos del efecto invernadero y las condiciones extremas.</div>

                        <a href="#">Ir a la unidad 3</a>
                    </div>
                </div>
            </div>

            <div class="accordion-item border-top mb-5" style="background-color: #A4F894;">
                <h2 class="accordion-header">
                    <button class="accordion-button collapsed" style="background-color: #A4F894; color: white;"
                        type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false"
                        aria-controls="collapseFour">
                        <img src="/img/ilustracionesplanetas/tierra.png" height="90" width="90" />
                        <h3>Unidad 4: Tierra</h3>
                    </button>
                </h2>
                <div id="collapseFour" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <div>Nuestra casa, la Tierra, es el único planeta conocido que alberga vida. Es un mundo diverso
                            y dinámico con océanos, montañas, vida abundante y una atmósfera que permite la existencia
                            de agua líquida. Su estudio es fundamental para entender la biología, la geología y la
                            climatología.</div>

                        <a href="#">Ir a la unidad 4</a>
                    </div>
                </div>
            </div>

            <div class="accordion-item border-top mb-5" style="background-color: #ff9e8e;">
                <h2 class="accordion-header">
                    <button class="accordion-button collapsed" style="background-color: #ff9e8e; color: white;"
                        type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false"
                        aria-controls="collapseFive">
                        <img src="/img/ilustracionesplanetas/marte.png" height="90" width="90" />
                        <h3>Unidad 5: Marte</h3>
                    </button>
                </h2>
                <div id="collapseFive" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <div>Marte, el "Planeta Rojo", es un objetivo importante en la búsqueda de vida fuera de la
                            Tierra.
                            Tiene montañas, cañones profundos y la posible existencia de agua congelada. Las misiones
                            espaciales han descubierto evidencia de agua en el pasado, lo que lo convierte en un
                            candidato
                            intrigante para la habitabilidad.</div>

                        <a href="#">Ir a la unidad 5</a>
                    </div>
                </div>
            </div>

            <div class="accordion-item border-top mb-5" style="background-color: #FFE5B4;">
                <h2 class="accordion-header">
                    <button class="accordion-button collapsed" style="background-color: #FFE5B4; color: white;"
                        type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false"
                        aria-controls="collapseSix">
                        <img src="/img/ilustracionesplanetas/jupiter.png" height="90" width="90" />
                        <h3>Unidad 6: Jupiter</h3>
                    </button>
                </h2>
                <div id="collapseSix" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <div>Júpiter es el gigante gaseoso del sistema solar y uno de los objetos más masivos después
                            del Sol.
                            Tiene una atmósfera turbulenta con bandas de nubes y una Gran Mancha Roja. Su estudio es
                            importante
                            para comprender la formación de planetas y sistemas planetarios.</div>

                        <a href="#">Ir a la unidad 6</a>
                    </div>
                </div>
            </div>

            <div class="accordion-item border-top mb-5" style="background-color: #8af98e;">
                <h2 class="accordion-header">
                    <button class="accordion-button collapsed" style="background-color: #8af98e; color: white;"
                        type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false"
                        aria-controls="collapseSeven">
                        <img src="/img/ilustracionesplanetas/saturno.png" height="90" width="90" />
                        <h3>Unidad 7: Saturno</h3>
                    </button>
                </h2>
                <div id="collapseSeven" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <div>Saturno es famoso por sus impresionantes anillos, compuestos principalmente de pequeñas
                            partículas de hielo y roca. Es otro gigante gaseoso con una atmósfera única y numerosas
                            lunas, incluida la luna Titán, con características similares a la Tierra.</div>

                        <a href="#">Ir a la unidad 7</a>
                    </div>
                </div>
            </div>

            <div class="accordion-item border-top mb-5" style="background-color: #AFEEEE;">
                <h2 class="accordion-header">
                    <button class="accordion-button collapsed" style="background-color: #AFEEEE; color: white;"
                        type="button" data-bs-toggle="collapse" data-bs-target="#collapseEight" aria-expanded="false"
                        aria-controls="collapseEight">
                        <img src="/img/ilustracionesplanetas/urano.png" height="90" width="90" />
                        <h3>Unidad 8: Urano</h3>
                    </button>
                </h2>
                <div id="collapseEight" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <div>Urano es un planeta gigante de hielo inclinado de lado, lo que le da un giro inusual.
                            Tiene una atmósfera fría de hidrógeno y helio y un anillo delgado. El estudio de Urano
                            proporciona información sobre la formación y evolución de los planetas del sistema solar
                            exterior.</div>

                        <a href="#">Ir a la unidad 8</a>
                    </div>
                </div>
            </div>

            <div class="accordion-item border-top mb-5" style="background-color: #b0c2f2;">
                <h2 class="accordion-header">
                    <button class="accordion-button collapsed" style="background-color: #b0c2f2; color: white;"
                        type="button" data-bs-toggle="collapse" data-bs-target="#collapseNine" aria-expanded="false"
                        aria-controls="collapseNine">
                        <img src="/img/ilustracionesplanetas/neptuno.png" height="90" width="90" />
                        <h3>Unidad 9: Neptuno</h3>
                    </button>
                </h2>
                <div id="collapseNine" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <div>Neptuno es el planeta más distante y uno de los gigantes de hielo. Tiene una atmósfera
                            turbulenta y características únicas, como la Gran Mancha Oscura. Su estudio nos ayuda a
                            comprender la diversidad de planetas en el sistema solar.</div>

                        <a href="#">Ir a la unidad 9</a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>

</html>