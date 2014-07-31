<?php
	function boom_register_sidebars() {
		register_sidebar( array(
		    'name'         => __( 'Social Icons' ),
		    'id'           => 'social-icons',
		    'description'  => __( 'Will Display relevant social icons.' )
		) );

		register_sidebar( array(
		    'name'         => __( 'Action Buttons' ),
		    'id'           => 'action-buttons',
		    'description'  => __( 'Will Display Call to Action Buttons.' )
		) );

	}
	add_action( 'widgets_init', 'boom_register_sidebars' );