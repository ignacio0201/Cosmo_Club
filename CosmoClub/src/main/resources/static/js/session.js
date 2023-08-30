/**
 * 
 */
	$(document).ready(function() {
  const cardWrapper = $(".card-3d-wrapper");
  const loginLink = $("#loginLink");
  const registerLink = $("#registerLink");
  const cardFront = $(".card-front");
  const cardBack = $(".card-back");

  if (showRegisterForm) {
    cardBack.css("background-color", "rgba(22, 54, 89, 0.6)");
    cardFront.css("background-color", "rgba(22, 54, 89, 0.6)");
    cardWrapper.css("transform", "rotateY(180deg)");
	cardFront.fadeOut(400, function() {
    cardBack.fadeIn(400);
    cardFront.hide();
 });

  } else {
    cardFront.css("background-color", "rgba(22, 54, 89, 0.6)");
    cardBack.css("background-color", "rgba(22, 54, 89, 0.6)");
    cardWrapper.css("transform", "rotateY(0deg)");
    
    cardBack.fadeOut(400, function() {
    cardFront.fadeIn(400);
    cardBack.hide();
  });

  }

  loginLink.click(function(e) {
    e.preventDefault();
    cardFront.css("background-color", "rgba(22, 54, 89, 0.6)");
    cardBack.css("background-color", "rgba(22, 54, 89, 0.6)");
    cardWrapper.css("transform", "rotateY(0deg)");

    cardBack.fadeOut(200);
    cardFront.fadeIn(200);
  });

  registerLink.click(function(e) {
    e.preventDefault();
    cardFront.css("background-color", "rgba(22, 54, 89, 0.6)");
    cardBack.css("background-color", "rgba(22, 54, 89, 0.6)");
    cardWrapper.css("transform", "rotateY(180deg)");

    cardFront.fadeOut(200);
    cardBack.fadeIn(200);
  });
});
	
	

