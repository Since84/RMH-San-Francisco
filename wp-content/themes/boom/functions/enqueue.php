<?php 
//Global Scripts and Stylesheets should be held here

function boom_enqueue() {
	
	//Stylesheets
	wp_register_style( 'style', get_template_directory_uri().'/style.css', '', '', 'screen');
	wp_enqueue_style( 'style' );

	// wp_register_style( 'mobilecss', get_template_directory_uri().'/mobile.css', '', '', 'screen');
	wp_enqueue_style( 'mobilecss' );

	wp_register_style( 'ie', get_template_directory_uri().'/ie.css', '', '', 'screen');
	wp_enqueue_style( 'ie' );


	//Scripts
	wp_register_script( 'jqueryui', get_template_directory_uri().'/external/jquery-ui/js/jquery-ui-1.10.3.custom.min.js', array('jquery') );
	wp_enqueue_script( 'jqueryui' );


	wp_register_script( 'imagesloaded', get_template_directory_uri().'/external/imagesloaded-master/imagesloaded.pkgd.min.js', array('jquery') );
	wp_enqueue_script( 'imagesloaded' );

	wp_register_script( 'cycle2', get_template_directory_uri().'/external/cycle2/jquery.cycle2.min.js', array('jquery') );
	wp_enqueue_script('cycle2');	


	wp_register_script( 'post-scroller', get_template_directory_uri().'/components/post-scroller/jquery.post-scroller.js', array('jquery') );
	wp_enqueue_script('post-scroller');	

}
add_action( 'wp_enqueue_scripts', 'boom_enqueue' );