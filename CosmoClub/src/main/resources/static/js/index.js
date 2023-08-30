// SCROLL COLOR
window.addEventListener("scroll", () => {
    const navbar = document.querySelector(".navbar");
    if (window.scrollY > 0) {
      navbar.classList.add("sticky");
    } else {
      navbar.classList.remove("sticky");
    }
  });

// NAV BAR ANIMACION
  document.addEventListener("DOMContentLoaded", function() {
    const sections = document.querySelectorAll("section");
    const navLinks = document.querySelectorAll(".navbar-nav .nav-link");

    function highlightNavLink(index) {
        navLinks.forEach(link => link.classList.remove("active"));
        navLinks[index].classList.add("active");
    }

    function determineActiveSection() {
        const scrollPosition = window.scrollY;

        sections.forEach((section, index) => {
            const topOffset = section.offsetTop - 50; 
            const bottomOffset = topOffset + section.offsetHeight;

            if (scrollPosition >= topOffset && scrollPosition < bottomOffset) {
                highlightNavLink(index);
            }
        });
    }

    window.addEventListener("scroll", determineActiveSection);
    determineActiveSection(); 
});

// ANIMACION TITULO EXPLORA
document.addEventListener("DOMContentLoaded", function() {
  const phrases = [
      "PLANETAS",
      "ESTRELLAS",
      "GALAXIAS",
      "EL COSMOS"
  ];

  const title = document.querySelector(".phrase");
  let currentPhraseIndex = 0;
  let animationTimeout;

  function updatePhrase() {
      title.style.opacity = 0;

      animationTimeout = setTimeout(function() {
          if (phrases[currentPhraseIndex] === "EL COSMOS") {
              title.style.animation = 'fadeInPhraseLong 7s ease-in-out forwards'; // Aplica la animación especial
              title.textContent = phrases[currentPhraseIndex];
              title.style.opacity = 1;

              setTimeout(function() {
                  title.style.animation = ''; // Limpia la animación
                  title.style.opacity = 0;
                  currentPhraseIndex = (currentPhraseIndex + 1) % phrases.length;
                  updatePhrase(); // Inicia el proceso para la siguiente frase
              }, 7000);
          } else {
              title.textContent = phrases[currentPhraseIndex];
              title.style.animation = 'fadeInPhrase 2s ease-in-out forwards';
              title.style.opacity = 1;

              animationTimeout = setTimeout(function() {
                  title.style.animation = ''; // Limpia la animación
                  title.style.opacity = 0;
                  currentPhraseIndex = (currentPhraseIndex + 1) % phrases.length;
                  updatePhrase(); // Inicia el proceso para la siguiente frase
              }, 2000); // Espera 2 segundos antes de cambiar a la siguiente frase
          }
      }, 1000); // Espera 1 segundo antes de mostrar la nueva frase con animación
  }

  updatePhrase(); // Inicia el ciclo para mostrar las frases

  window.addEventListener("beforeunload", function() {
      clearTimeout(animationTimeout);
  });
});
