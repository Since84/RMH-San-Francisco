<?php
	// Post Format Support
	add_theme_support( 'post-formats', array( 'image', 'gallery' ) );

	// add post-formats
	add_post_type_support( 'page', 'post-formats' );
	add_post_type_support( 'post', 'post-formats' );