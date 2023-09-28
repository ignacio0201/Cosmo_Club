document.addEventListener('DOMContentLoaded', () => {
    let nave = document.querySelector('.nave');
    let body = document.querySelector('body');
    let laser = document.getElementById('laser');
    let explosion = document.getElementById('explosion');
    let live = document.querySelector('i');
    let times = document.getElementById('times');
    let lives = 5;
    let second = 30;
    let puntos = 0;

    // Función para actualizar el temporizador
    function updateTimer() {
        times.textContent = second;
        if (second === 0) {
            puntos += 300;
            // Enviar los puntos al servidor
            enviarPuntosAlServidor(puntos);
            alert('You Win! Points: ' + puntos);
            // Redirigir al menú principal después de ganar (reemplaza 'menu.jsp' con la ruta adecuada)
            window.location.href = 'http://localhost:8080/juegos'; // Cambia 'menu.jsp' a la URL de tu página JSP
        }
        second--;
    }

    // Iniciar el temporizador
    updateTimer();
    setInterval(updateTimer, 1000);

    document.addEventListener('mousemove', (e) => {
        nave.style.left = (e.clientX - 40) + 'px';
    });

    // Generar disparo
    document.addEventListener('click', () => {
        let bala = document.createElement('div');
        bala.classList.add('bala');
        bala.style.bottom = 70 + 'px';
        bala.style.left = (nave.getBoundingClientRect().left + 40) + 'px';
        body.append(bala);
        laser.play();
    });

    // Movimiento de disparo
    function moverBalas() {
        let balas = document.querySelectorAll('.bala');
        balas.forEach(bala => {
            let top = parseFloat(bala.style.bottom);
            bala.style.bottom = (top + 10) + 'px';

            if (top >= window.innerHeight) {
                bala.remove();
            }

            // Detectar colisiones
            let enemigos = document.querySelectorAll('.enemigo');
            enemigos.forEach(enemigo => {
                let balaRect = bala.getBoundingClientRect();
                let enemigoRect = enemigo.getBoundingClientRect();

                if (
                    balaRect.bottom >= enemigoRect.top &&
                    balaRect.top <= enemigoRect.bottom &&
                    balaRect.right >= enemigoRect.left &&
                    balaRect.left <= enemigoRect.right
                ) {
                    enemigo.style.backgroundImage = 'url("img/explosion.png")';
                    explosion.play();
                    setTimeout(() => {
                        enemigo.remove();
                        explosion.pause();
                        explosion.currentTime = 0;
                    }, 50);
                    // Incrementar los puntos cuando se destruye un enemigo
                    puntos += 10;
                }
            });
        });
    }

    // Movimiento de meteoritos
    function moverMeteoritos() {
        let enemigos = document.querySelectorAll('.enemigo');
        enemigos.forEach(element => {
            let top = parseFloat(element.style.top);
            element.style.top = (top + 5) + 'px'; // Ajusta la velocidad cambiando el valor de 5 a lo que desees

            if (top > window.innerHeight) {
                lives--;
                live.textContent = lives;
                if (lives === -1) {
                    alert('Game Over');
                    location.reload();
                }
                element.remove();
            }
        });
    }

    // Generar meteoritos
    function generarMeteoritos() {
        let aparecer = 0;
        setInterval(() => {
            aparecer++;
            if (aparecer % 10 === 0) {
                let enemigo = document.createElement('div');
                enemigo.classList.add('enemigo');
                body.append(enemigo);
                enemigo.style.left = (Math.random() * (window.innerWidth - 100)) + 'px';
                enemigo.style.top = '0px'; // Inicia en la parte superior
            }
        }, 100); // Cambiado a 1000 para que aparezcan con menos frecuencia
    }

    // Llamar a las funciones de movimiento y generación
    setInterval(moverBalas, 20);
    setInterval(moverMeteoritos, 15);
    generarMeteoritos();

    // Función para enviar los puntos al servidor
    function enviarPuntosAlServidor(puntos) {
        fetch('/api/users/addPoints', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ puntos: puntos }), // Envía los puntos al servidor
        })
        .then(response => response.json())
        .then(data => {
            console.log('Puntos guardados en el servidor:', data);
        })
        .catch(error => {
            console.error('Error al guardar puntos:', error);
        });
    }
});