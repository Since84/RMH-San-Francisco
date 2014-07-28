<?php
	function boom_register_sidebars() {
		register_sidebar( array(
		    'name'         => __( 'Social Icons' ),
		    'id'           => 'social-icons',
		    'description'  => __( 'Will Display relevant social icons.' )
		) );
	}
	add_action( 'widgets_init', 'boom_register_sidebars' );