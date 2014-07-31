<?php
	/* 	Horizontal Post Scroller 
		4 Posts per Page
	*/
	$postArgs = array(
		'posts_per_page' 	=> 	4,
		'category_name'		=>	'whats-happening'
	);
	$postQuery = new WP_Query($postArgs);
?>
<div class="post-scroller four-per-page cycle-slideshow container">
	<span class="cycle-prev pager-button"></span>
<?php
	if( $postQuery->have_posts() ) : 
		while ( $postQuery->have_posts() ) : 
			$postQuery->the_post(); 

			Boom_Util::get_template_parts(array('block/content/post-preview'));

		endwhile;
	endif;
?>
	<span class="cycle-next pager-button"></span>
	
</div> 