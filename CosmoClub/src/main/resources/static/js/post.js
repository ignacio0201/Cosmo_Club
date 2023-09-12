document.addEventListener("DOMContentLoaded", function() {
    const stars = document.querySelectorAll(".estrellas");

    stars.forEach(function(star) {
        star.addEventListener("click", clickHandler);
    });

    function clickHandler(event) {
        const value = parseInt(event.target.getAttribute("data-value"));
        const postId = event.target.getAttribute("data-postid");
        const starsForPost = document.querySelectorAll(`.estrellas[data-postid="${postId}"]`);

        // Verifica si el usuario ya ha calificado este post
        const isRated = starsForPost[0].classList.contains("checked");

        if (!isRated) {
            // Actualiza el valor del input oculto específico para este post
            const ratingInput = document.getElementById(`rating-${postId}`);
            if (ratingInput) {
                ratingInput.value = value;
            }

           
            starsForPost.forEach(function(starForPost, index) {
                if (index < value) {
                    starForPost.classList.add("checked");
                } else {
                    starForPost.classList.remove("checked");
                }
            });
            
            
            starsForPost.forEach(function(starForPost) {
                starForPost.classList.add("disabled");
            });


            // Evita futuros clics en las estrellas
            starsForPost.forEach(function(starForPost) {
                starForPost.style.pointerEvents = "none";
            });

            
            const formulario = document.querySelector(`form#rating-${postId}-form`);
            if (formulario) {
                formulario.submit();
            }
        }
    }
});
