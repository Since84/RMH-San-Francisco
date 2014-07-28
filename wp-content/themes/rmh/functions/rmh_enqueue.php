<?php
function rmh_enqueue() {
	
	//Stylesheets
	wp_register_style( 'style', get_stylesheet_directory_uri().'/style.css', '', '', 'screen');
	wp_enqueue_style( 'style' );

	wp_register_style( 'mobile', get_stylesheet_directory_uri().'/mobile.css', '', '', 'screen');
	wp_enqueue_style( 'mobile' );

	wp_register_style( 'ie', get_stylesheet_directory_uri().'/ie.css', '', '', 'screen');
	wp_enqueue_style( 'ie' );

	//Scripts
}
add_action( 'wp_enqueue_scripts', 'rmh_enqueue' );