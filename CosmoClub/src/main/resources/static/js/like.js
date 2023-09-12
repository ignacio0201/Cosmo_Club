document.addEventListener("DOMContentLoaded", function() {
    // Función para manejar clics en "Me gusta" o "No me gusta"
    const handleLikeOrDislike = async (tipo, likeButton, dislikeButton, likeCount, dislikeCount, postId, commentId) => {
        const count = tipo === "like" ? likeCount : dislikeCount;
        const button = tipo === "like" ? likeButton : dislikeButton;
        const otherButton = tipo === "like" ? dislikeButton : likeButton;

        // Verificar si el usuario ya hizo clic en este botón
        const userSelection = localStorage.getItem(`userLikeSelection_${commentId}`);

        if (userSelection === tipo) {
            // El usuario está haciendo clic en el mismo botón nuevamente, quitar su selección
            localStorage.removeItem(`userLikeSelection_${commentId}`);
            count.textContent = Number(count.textContent) - 1;
            button.classList.remove("post-rating-selected");
            button.classList.remove(tipo === "like" ? "liked" : "disliked");

            // Realizar una solicitud al servidor para eliminar el voto anterior
            const response = await fetch(`/${postId}/comments/${commentId}/${tipo}`, {
                method: 'POST'
            });

            if (!response.ok) {
                // Manejar errores de la solicitud si es necesario
                console.error("Error al eliminar el voto anterior:", response.status);
            }
        } else {
            // El usuario está cambiando su selección

            // Verificar si el usuario ya ha dado like o dislike al comentario
            const userLikeSelection = localStorage.getItem(`userLikeSelection_${commentId}`);

            if (userLikeSelection === "like" || userLikeSelection === "dislike") {
                // No permitir al usuario cambiar su selección si ya ha votado
                return;
            }

            // Guardar la nueva selección del usuario en localStorage
            localStorage.setItem(`userLikeSelection_${commentId}`, tipo);

            // Actualizar la apariencia de los botones
            count.textContent = Number(count.textContent) + 1;
            button.classList.add("post-rating-selected");
            button.classList.add(tipo === "like" ? "liked" : "disliked");
            otherButton.classList.remove("post-rating-selected");
            otherButton.classList.remove(tipo === "like" ? "disliked" : "liked");

            // Realizar una solicitud al servidor para guardar la selección en la base de datos
            const response = await fetch(`/${postId}/comments/${commentId}/${tipo}`, {
                method: 'POST'
            });

            if (!response.ok) {
                // Manejar errores de la solicitud si es necesario
                console.error("Error al guardar la selección:", response.status);
            }
        }
    };

    // Obtener todos los contenedores de calificación de comentarios y configurar los botones
    document.querySelectorAll(".post-ratings-container").forEach(container => {
        const postId = container.getAttribute("data-post-id");
        const commentId = container.getAttribute("data-comment-id");
        const likeButton = container.querySelector(".post-rating:first-child .post-rating-button");
        const dislikeButton = container.querySelector(".post-rating:last-child .post-rating-button");
        const likeCount = container.querySelector(".post-rating:first-child .post-rating-count");
        const dislikeCount = container.querySelector(".post-rating:last-child .post-rating-count");

        // Verificar y aplicar la selección almacenada en localStorage
        const userSelection = localStorage.getItem(`userLikeSelection_${commentId}`);
        if (userSelection === "like") {
            likeButton.classList.add("post-rating-selected");
            likeButton.classList.add("liked");
        } else if (userSelection === "dislike") {
            dislikeButton.classList.add("post-rating-selected");
            dislikeButton.classList.add("disliked");
        }

        // Configurar eventos de clic para los botones de "Me gusta" y "No me gusta"
        likeButton.addEventListener("click", () => {
            handleLikeOrDislike("like", likeButton, dislikeButton, likeCount, dislikeCount, postId, commentId);
        });

        dislikeButton.addEventListener("click", () => {
            handleLikeOrDislike("dislike", likeButton, dislikeButton, likeCount, dislikeCount, postId, commentId);
        });

        // Verificar si el usuario ya ha dado like o dislike y deshabilitar el botón contrario
        if (userSelection === "like") {
            dislikeButton.disabled = true;
        } else if (userSelection === "dislike") {
            likeButton.disabled = true;
        }
    });
});
