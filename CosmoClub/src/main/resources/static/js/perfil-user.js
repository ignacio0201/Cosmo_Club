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