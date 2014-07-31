<?php //Slider Block 

function getSlideshow($post_type=null){
global $post;
/* Featured Content Area */
$fArgs = array(
		"post_type" 		=> ( $post_type ? $post_type : 'dynamite-slide' ) ,
		"posts_per_page"	=>	'-1'
	);

$slides = new WP_Query( $fArgs );
?>
<div class='featured-content dynamite-slide'>
	<div class='dynamite-slider'>
		<div class="container dynamite-slide-pager">
			<button class='prev paging'></button>
			<button class='next paging'></button>
		</div>
		<div class='dynamite-slide-window'>
			<ul class="dynamite-slide-container">
<?php
				if ( $slides->have_posts() ) : while ( $slides->have_posts() ) : $slides->the_post();
				// Get Slide Type 
				$slide_type = get_post_meta($post->ID, 'slide_type', true);
				getSlide($slide_type);
?>
<?php
				endwhile; endif;
?>
			</ul>
		</div>
		
	</div>
</div> 

<?php
}

function getSlide($slide_type){
	$dir = get_template_directory().'/components/slider/includes/slide-type-blocks/' . $slide_type. '.php';
	include($dir);
}
?>