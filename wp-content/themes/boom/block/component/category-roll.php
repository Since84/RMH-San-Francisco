<?php
	global $wp_query;
	if ( have_posts() ): 
?>
	<h1 class='page-title'><?php echo single_cat_title( '', false ); ?></h1>
<?php

		while ( have_posts() ): the_post();

		Boom_Util::get_template_parts(
			array('block/content/post-preview')
		); 

	endwhile; 

?>

	<div class='blog-paging'>
		<div class='next-prev'>
<?php 
	
	$ppl=explode('"',get_previous_posts_link()); 
	$prevPage= ( $ppl[1] ? $ppl[1] : null );
	$npl=explode('"',get_next_posts_link()); 
	$nextPage= ( $npl[1] ? $npl[1] : null );

	if ( $prevPage ){
?>
			<a class="paging prev" href="<?= $prevPage; ?>"></a>
<?	} 
	if ( $nextPage ){
?>
			<a class="paging next" href="<?= $nextPage; ?>"></a>
<?
	}
?>
		</div>
<?php
	$big = 999999999; // need an unlikely integer


	echo paginate_links( array(
		'base' 		=> str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
		'format' 	=> '?paged=%#%',
		'current' 	=> max( 1, get_query_var('paged') ),
		'total' 	=> $wp_query->max_num_pages,
		'prev_next'	=> false
	) );

?>
	</div>
	</div>

<?php

	endif; 

/* Blog Paging */
