<?php
	/* 	Horizontal Post Scroller 
		4 Posts per Page
	*/
	$postArgs = array(
		'posts_per_page' 	=> 	12,
		'category_name'		=>	'whats-happening'
	);
	$postQuery = new WP_Query($postArgs);
	$counter = 0
?>
<div class="post-scroller four-per-page cycle-slideshow container">
	<span class="cycle-prev pager-button"></span>
<?php
	if( $postQuery->have_posts() ) : 
?>
	<div class="cycle-slide">
<?php
		while ( $postQuery->have_posts() ) : 
			if ( $counter%5 == 0 ){
?>
	</div>
	<div class="cycle-slide">
<?php
			}
				$postQuery->the_post(); 
				Boom_Util::get_template_parts(array('block/content/post-preview'));

				$counter++;

		endwhile;
	endif;
?>
	</div>
	<span class="cycle-next pager-button"></span>
	
</div> 