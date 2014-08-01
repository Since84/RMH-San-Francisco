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
<div class="post-scroller four-per-page cycle-slideshow container"
	data-cycle-slides=".cycle-slide"
	data-cycle-fx="scrollHorz"
	data-cycle-timeout="0"
	data-cycle-prev=".four-per-page .cycle-prev"
	data-cycle-next=".four-per-page .cycle-next"
>
	<span class="cycle-prev pager-button"></span>
<?php
	if( $postQuery->have_posts() ) : 
?>
	<div class="cycle-slide">
<?php
		while ( $postQuery->have_posts() ) : 
			if ( $counter != 0 && $counter%4 == 0 ){
				echo '</div><div class="cycle-slide">';
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