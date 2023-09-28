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


// Agregar un controlador de clic al botón de cierre
closeBtn.addEventListener('click', function() {
    sidebar.classList.remove('active');
});

//Apis
var req = new XMLHttpRequest();
var url = "https://api.nasa.gov/planetary/apod?api_key=";
var api_key = "Un8eEHfrthS8GwYLQFgqo9CpNgLcnVEAUZC7P8zg";

req.open("GET", url + api_key);
req.send();


req.addEventListener("load", function(){
    if (req.status == 200 && req.readyState == 4) {
        var response = JSON.parse(req.responseText);
        
        // Mostrar el título
        document.getElementById("title").textContent = response.title;
        
        // Mostrar la fecha
        document.getElementById("date").textContent = response.date;
        
        // Mostrar la imagen
        document.getElementById("pic").src = response.hdurl;
    }
})







