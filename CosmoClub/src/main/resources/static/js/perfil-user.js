/**
 * 
 */

    const input = document.getElementById('profile-image');

   
    input.addEventListener('change', function() {
       
        if (input.files.length > 0) {
           
            document.getElementById('imageUploadForm').submit();
        }
    });


var sidebarItems = document.querySelectorAll(".sidebar ul li");


sidebarItems.forEach(function(item) {
    item.addEventListener('click', function() {
       
        var activeItem = document.querySelector(".sidebar ul li.active");
        if (activeItem) {
            activeItem.classList.remove('active');
        }

       
        this.classList.add('active');
    });
});


var sidebar = document.querySelector('.sidebar');


var openBtn = document.querySelector('.open-btn');


var closeBtn = document.querySelector('.close-btn');


openBtn.addEventListener('click', function() {
    sidebar.classList.add('active');
});


closeBtn.addEventListener('click', function() {
    sidebar.classList.remove('active');
});