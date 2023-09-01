var card = document.getElementById('card-sesion');
var flipButtonLogin = document.getElementById('flipButtonLogin');
var flipButtonRegister = document.getElementById('flipButtonRegister');

    flipButtonLogin.addEventListener('click', () => {
        card.classList.toggle('flip');
    });

    flipButtonRegister.addEventListener('click', () => {
        card.classList.toggle('flip');
    });
    
    window.addEventListener("load",()=>{
        console.log(typeof showRegisterForm);
        if (showRegisterForm != "null"){
            if (showRegisterForm === "true"){
                card.classList.toggle('flip');
            }
        }
    })
    