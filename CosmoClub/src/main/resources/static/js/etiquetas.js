/**
 * 
 */

 var etiquetasSeleccionadas = [];

function agregarEtiqueta() {
    var etiquetaSeleccionada = document.getElementById('etiquetas');
    var etiquetaId = etiquetaSeleccionada.value;
    var etiquetaNombre = etiquetaSeleccionada.options[etiquetaSeleccionada.selectedIndex].text;

    if (etiquetaId !== '') {
        var etiquetaExistente = etiquetasSeleccionadas.some(function(etiqueta) {
            return etiqueta.id === etiquetaId;
        });

        if (!etiquetaExistente) {
            etiquetasSeleccionadas.push({ id: etiquetaId, nombre: etiquetaNombre });

            // Actualiza la lista de etiquetas seleccionadas en el HTML
            actualizarEtiquetas();

            // Restablece el valor del selector de etiquetas
            etiquetaSeleccionada.value = '';
        }
    }
}

function eliminarEtiqueta(index) {
    etiquetasSeleccionadas.splice(index, 1);

    // Actualiza la lista de etiquetas seleccionadas en el HTML
    actualizarEtiquetas();
}

function actualizarEtiquetas() {
    var etiquetasHtml = '';

    etiquetasSeleccionadas.forEach(function (etiqueta, index) {
        etiquetasHtml += '<span class="etiqueta-seleccionada">' + etiqueta.nombre + '<button onclick="eliminarEtiqueta(' + index + ')">Eliminar</button></span>';
    });

    document.getElementById('etiquetas-seleccionadas').innerHTML = etiquetasHtml;

    // Actualiza el valor del campo de entrada oculto con las IDs de las etiquetas seleccionadas
    var etiquetasInput = document.getElementById('etiquetasInput');
    etiquetasInput.value = etiquetasSeleccionadas.map(function(etiqueta) {
        return etiqueta.id;
    });
}