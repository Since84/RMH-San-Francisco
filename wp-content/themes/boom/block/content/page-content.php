<?php //Home 

	Boom_Util::get_template_parts(
		array(
//HEADER
			'block/layout/html-header' 
			,'block/layout/header'
		)
	);
//PAGE CONTENT
?>
<div class="content-area page-content container">
<?php Boom_Util::get_template_parts(array('block/layout/page-sidebar')); ?>
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
<?php 
//FOOTER
	Boom_Util::get_template_parts(
		array(
			'block/layout/footer'
			,'block/layout/html-footer'
		)
	);