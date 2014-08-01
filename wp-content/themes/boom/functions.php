<?php /* Functions */ 

	require_once('functions/enqueue.php');
	require_once('functions/util.php');
	require_once('functions/header-image.php');
	require_once('functions/sidebars.php');


	require_once('components/slider/slider.php');

	add_theme_support( 'post-thumbnails' ); 


	add_action( 'init', 'cd_add_editor_styles' );
	/**
	 * Apply theme's stylesheet to the visual editor.
	 *
	 * @uses add_editor_style() Links a stylesheet to visual editor
	 * @uses get_stylesheet_uri() Returns URI of theme stylesheet
	 */
	function cd_add_editor_styles() {
	 
	    add_editor_style( get_stylesheet_uri() );
	 
	}