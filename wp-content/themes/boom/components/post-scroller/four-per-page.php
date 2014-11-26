<?php
	/* 	Horizontal Post Scroller 
		4 Posts per Page
	*/
	$postArgs = array(
		'posts_per_page' 	=> 	12,
		'category_name'		=>	'whats-happening'
	);
	$postQuery = new WP_Query($postArgs);
	$counter = 0;
?>
<div class="post-scroller four-per-page container cycle-slideshow"
	data-cycle-slides=".four-post"
	data-cycle-fx="scrollHorz"
	data-cycle-timeout="0"
	data-cycle-prev=".four.cycle-prev"
	data-cycle-next=".four.cycle-next"
>
	
		<span class="four cycle-prev pager-button"></span>
<?php
	if( $postQuery->have_posts() ) : 
?>
		<div class="four-post cycle-slide">
<?php
			while ( $postQuery->have_posts() ) : 
				if ( $counter != 0 && $counter%4 == 0 ){
					echo '</div><div class="four-post cycle-slide">';
				}
					$postQuery->the_post(); 
					Boom_Util::get_template_parts(array('block/content/post-preview'));

					$counter++;

			endwhile;
?>
		</div>
<?php
	endif;
?>
		
		<span class="four cycle-next pager-button"></span>
		<span class="mobile mobile-cycle-next pager-button"></span>
</div>
<div class="container mobile-four-per-pagination">
	<button class='prev paging cycle-prev'></button>
	<button class='next paging cycle-next'></button>
</div>
<div 	class="post-scroller mobile four-per-mobile cycle-slideshow"
		data-cycle-slides=".blog-post-preview"
		data-cycle-timeout="0"
		data-cycle-fx="scrollHorz"
		data-cycle-prev=".mobile-four-per-pagination > .cycle-prev"
		data-cycle-next=".mobile-four-per-pagination > .cycle-next"
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