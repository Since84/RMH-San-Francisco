<?php 
//Global Scripts and Stylesheets should be held here

function boom_enqueue() {
	
	//Stylesheets
	wp_register_style( 'style', get_template_directory_uri().'/style.css', '', '', 'screen');
	wp_enqueue_style( 'style' );

	wp_register_style( 'mobilecss', get_template_directory_uri().'/mobile.css', '', '', 'screen');
	wp_enqueue_style( 'mobilecss' );

	wp_register_style( 'ie', get_template_directory_uri().'/ie.css', '', '', 'screen');
	wp_enqueue_style( 'ie' );

	//Scripts
}
add_action( 'wp_enqueue_scripts', 'boom_enqueue' );