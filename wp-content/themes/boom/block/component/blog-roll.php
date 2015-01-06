<?php 

	$paged = ( get_query_var( 'paged' ) ) ? get_query_var( 'paged' ) : 1;

	$blogQuery = new WP_Query(
		array(
				'posts_per_page' 	=> 5,
				'paged'				=> $paged
		)
	);
	$blogQuery->query('showposts=5');
?>
<div class="page-blogroll">
	<h1 class='page-title'><?php the_title() ?></h1>
<?
	if ( $blogQuery->have_posts() ): while ( $blogQuery->have_posts() ): $blogQuery->the_post();

		Boom_Util::get_template_parts(
			array('block/content/post-preview')
		); 

	endwhile; 

?>

	<div class='blog-paging'>
		<div class='next-prev'>
<?php 
	$prevPage = $paged - 1;
	$nextPage = $paged + 1;
?>
		<a class="paging prev" href="<?php echo get_permalink( get_page_by_path( 'news' ) ); ?>/?paged=<?= $prevPage; ?>"></a>
		<a class="paging next" href="<?php echo get_permalink( get_page_by_path( 'news' ) ); ?>/?paged=<?= $nextPage; ?>"></a>
		</div>
<?php
	$big = 999999999; // need an unlikely integer

	echo paginate_links( array(
		'base' 		=> str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
		'format' 	=> '?paged=%#%',
		'current' 	=> max( 1, get_query_var('paged') ),
		'total' 	=> $blogQuery->max_num_pages,
		'prev_next'	=> false
	) );

?>
		</div>
	</div>

<?php

	endif; 

/* Blog Paging */
?>