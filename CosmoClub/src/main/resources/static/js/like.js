document.addEventListener("DOMContentLoaded", function() {
    // Función para manejar clics en "Me gusta" o "No me gusta"
    const handleLikeOrDislike = async (tipo, likeButton, dislikeButton, likeCount, dislikeCount, postId, commentId) => {
    const count = tipo === "like" ? likeCount : dislikeCount;
    const button = tipo === "like" ? likeButton : dislikeButton;

    // Verificar si el usuario ya hizo clic en "Me gusta" o "No me gusta"
    const userSelection = localStorage.getItem(`userLikeSelection_${commentId}`);

    if (userSelection === tipo) {
        // El usuario está haciendo clic en el mismo botón nuevamente, quitar su selección
        localStorage.removeItem(`userLikeSelection_${commentId}`);
        button.classList.remove("post-rating-selected");
        button.classList.remove(tipo === "like" ? "liked" : "disliked");
        
        count.textContent = Math.max(0, Number(count.textContent) - 1);

        // Realizar una solicitud al servidor para eliminar la selección en la base de datos
        try {
            const response = await fetch(`/${postId}/comments/${commentId}/remove${tipo}`, {
                method: 'POST'
            });
            if (response.ok) {
                // La solicitud se completó con éxito
                const data = await response.json();
                // Actualizar el contador en el cliente si es necesario
            } else {
                // Manejar errores de la solicitud si es necesario
            }
        } catch (error) {
            console.error("Error al realizar la solicitud AJAX:", error);
        }
    } else {
        // El usuario está cambiando su selección
        if (userSelection === "like") {
            const otherButton = dislikeButton;
            const otherCount = dislikeCount;
            otherButton.classList.remove("post-rating-selected");
            otherButton.classList.remove("disliked");
            otherCount.textContent = Math.max(0, Number(otherCount.textContent) - 1);
        } else if (userSelection === "dislike") {
            const otherButton = likeButton;
            const otherCount = likeCount;
            otherButton.classList.remove("post-rating-selected");
            otherButton.classList.remove("liked");
            otherCount.textContent = Math.max(0, Number(otherCount.textContent) - 1);
        }

        // Guardar la nueva selección del usuario en localStorage
        localStorage.setItem(`userLikeSelection_${commentId}`, tipo);

        // Actualizar la apariencia del botón y el contador
        count.textContent = Number(count.textContent) + 1;
        button.classList.add("post-rating-selected");
        button.classList.add(tipo === "like" ? "liked" : "disliked");

        // Realizar una solicitud al servidor para guardar la selección en la base de datos
        try {
            const response = await fetch(`/${postId}/comments/${commentId}/${tipo}`, {
                method: 'POST'
            });
            if (response.ok) {
                // La solicitud se completó con éxito
                const data = await response.json();
                // Actualizar el contador en el cliente si es necesario
            } else {
                // Manejar errores de la solicitud si es necesario
            }
        } catch (error) {
            console.error("Error al realizar la solicitud AJAX:", error);
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
    });
});
