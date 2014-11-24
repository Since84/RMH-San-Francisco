<?php
	/* 	Horizontal Post Scroller 
		4 Posts per Page
	*/
	$postArgs = array(
		'posts_per_page' 	=> 	5,
		'category_name'		=>	'family-stories'
	);
	$postQuery = new WP_Query($postArgs);
?>
<div class="container slider-pagination">
	<button class='prev paging cycle-prev'></button>
	<button class='next paging cycle-next'></button>
</div>
<div 	class="post-scroller one-per-page cycle-slideshow container" 
		data-cycle-slides=".blog-post-preview"
		data-cycle-fx="scrollHorz"
		data-cycle-timeout="0"
		data-cycle-prev=".family-stories .paging.prev"
		data-cycle-next=".family-stories .paging.next"
>
<?php
	if( $postQuery->have_posts() ) : 
		while ( $postQuery->have_posts() ) : 
			$postQuery->the_post(); 

			Boom_Util::get_template_parts(array('block/content/post-preview'));

		endwhile;
	endif;
?>
	
</div> 