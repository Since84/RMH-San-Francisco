<?php //Home 

	Boom_Util::get_template_parts(
		array(
//HEADER
			'block/layout/html-header' 
			,'block/layout/header'
		)
	);


//PAGE CONTENT

//GALLERY 
	$slider = get_post_meta( get_the_id(), 'gallery', true );
	if ( has_post_format( 'gallery' ) && $slider ) {
		$slider = strpos( $slider, ',' ) ? explode(',', $slider) : $slider;

?>	
		<div class="post-feature-gallery">
			<div class="sidebar-container">
<?php 		
				Boom_Util::get_template_parts(array('block/layout/page-feature-sidebar')); 
?>
			</div>
<?php
			getSlideshow($slider);
?>
		</div>
<?php
	}
//IMAGE 
	if ( has_post_format( 'image' ) && has_post_thumbnail() ) {
?>
	<div class="post-feature-image container">
		<div class="sidebar-container">
<?php 		
			Boom_Util::get_template_parts(array('block/layout/page-feature-sidebar')); 
?>
		</div>
<?php
	  	the_post_thumbnail();	
?>
	</div>
<?	} ?>

<div class="page-content container">
<?php  
	$format = 'page-sidebar';	
	if ( has_post_format('gallery' ) || has_post_format('image') )
		$format = 'page-wfeature-sidebar';
			
	Boom_Util::get_template_parts(array('block/layout/'.$format)); 
?>
	<div class="content-area">
		<h1><?php the_title(); ?></h1>
<?php 
	if( have_posts() ) :
		while( have_posts() ) :
			the_post();

		the_content(); 

		endwhile;
	endif;
?>
	</div>
</div>
<?php 
//FOOTER
	Boom_Util::get_template_parts(
		array(
			'block/layout/footer'
			,'block/layout/html-footer'
		)
	);