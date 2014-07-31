<?php 

require_once(get_template_directory().'/components/slider/includes/custom-content.php');
require_once(get_template_directory().'/components/slider/includes/functions.php');


function boom_slider_enqueue() {
	
	//Stylesheets
	wp_register_style( 'slider-style', get_template_directory_uri().'/components/slider/css/style.css', '', '', 'screen');
	wp_enqueue_style( 'slider-style' );

	wp_register_script( 'slider-script', get_template_directory_uri().'/components/slider/js/script.js', array('jquery', 'jqueryui', 'imagesloaded'));
	wp_enqueue_script( 'slider-script' );


	//Scripts
}
add_action( 'wp_enqueue_scripts', 'boom_slider_enqueue' );
?>