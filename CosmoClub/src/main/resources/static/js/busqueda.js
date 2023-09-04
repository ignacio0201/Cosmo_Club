/**
 * 
 */
function buscarPorTag(tag) {
        // Obtener el formulario y el campo de búsqueda
        var form = document.querySelector("form[action='/buscar']");
        var inputArticulo = form.querySelector("input[name='articulo']");

        // Establecer el valor del campo de búsqueda con el tag y enviar el formulario
        inputArticulo.value = tag;
        form.submit();
    }