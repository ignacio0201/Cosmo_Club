/**
 * 
 */

    const input = document.getElementById('profile-image');

    // Agrega un evento de cambio al input
    input.addEventListener('change', function() {
        // Verifica si se ha seleccionado una imagen
        if (input.files.length > 0) {
            // Envía automáticamente el formulario cuando se elija una imagen
            document.getElementById('imageUploadForm').submit();
        }
    });

// Obtener una lista de elementos <li> dentro del elemento con la clase 'sidebar'
var sidebarItems = document.querySelectorAll(".sidebar ul li");

// Agregar un controlador de clic a cada elemento de la lista
sidebarItems.forEach(function(item) {
    item.addEventListener('click', function() {
        // Eliminar la clase 'active' de cualquier elemento <li> que la tenga
        var activeItem = document.querySelector(".sidebar ul li.active");
        if (activeItem) {
            activeItem.classList.remove('active');
        }

        // Agregar la clase 'active' al elemento <li> actual
        this.classList.add('active');
    });
});

// Obtener el elemento con la clase 'sidebar'
var sidebar = document.querySelector('.sidebar');

// Obtener el elemento con la clase 'open-btn'
var openBtn = document.querySelector('.open-btn');

// Obtener el elemento con la clase 'close-btn'
var closeBtn = document.querySelector('.close-btn');

// Agregar un controlador de clic al botón de apertura
openBtn.addEventListener('click', function() {
    sidebar.classList.add('active');
});

// Agregar un controlador de clic al botón de cierre
closeBtn.addEventListener('click', function() {
    sidebar.classList.remove('active');
});