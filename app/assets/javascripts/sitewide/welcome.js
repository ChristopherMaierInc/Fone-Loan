var randomSlide = Math.floor(Math.random() * $('#carousel-example-generic .carousel-inner li').size());

jQuery(document).ready(function($) {
$('#carousel-example-generic').carousel(randomSlide);
$('#carousel-example-generic').carousel('next');
});
