/* js del sidebar */
document.addEventListener("DOMContentLoaded", function () {
            var sidebar = document.getElementById("sidebar");
            var dismiss = document.getElementById("dismiss");

            if (sidebar && dismiss) {
                sidebarCollapse.addEventListener("click", function () {
                    sidebar.classList.add("active");
                });

                dismiss.addEventListener("click", function () {
                    sidebar.classList.remove("active");
                });

                overlay.addEventListener("click", function () {
                    sidebar.classList.remove("active");
                });
            }
        });
        
/* js de la galeria */

// Agrega un evento de clic a cada imagen en la galería
const images = document.querySelectorAll('.img-gallery');
images.forEach(image => {
    image.addEventListener('click', openImage);
});

// Almacena la posición del scroll
let previousScrollPosition = 0;

function openImage(event) {
    // Obtiene la posición actual del scroll
    previousScrollPosition = window.scrollY;

    // Obtiene el elemento <img> dentro del contenedor de la imagen
    const imgElement = event.currentTarget.querySelector('img');

    // Obtiene la URL de la imagen desde el atributo "src"
    const imageUrl = imgElement.src;

    // Crea un nuevo elemento de imagen en tamaño completo
    const modalImage = new Image();
    modalImage.onload = function() {
        // Crea un botón para cerrar la imagen con ícono de Font Awesome
        const closeButton = document.createElement('button');
        closeButton.innerHTML = '<i class="fas fa-times"></i>';
        closeButton.classList.add('close-button');
        closeButton.addEventListener('click', closeImage);

        // Crea un div para el fondo oscuro, la imagen en grande y el botón "X"
        const modalOverlay = document.createElement('div');
        modalOverlay.classList.add('modal-overlay');
        modalOverlay.appendChild(modalImage);
        modalOverlay.appendChild(closeButton);

        // Agrega el div al documento
        document.body.appendChild(modalOverlay);
    };
    modalImage.src = imageUrl;
}

// Cerrar la imagen en grande
function closeImage() {
    const modalOverlay = document.querySelector('.modal-overlay');
    document.body.removeChild(modalOverlay);

    // Restaura la posición del scroll
    document.body.style.overflow = 'auto';
    window.scrollTo(0, previousScrollPosition);
}