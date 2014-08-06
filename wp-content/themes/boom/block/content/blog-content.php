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
<div class="content-area blog-content container">
<?php 	
		Boom_Util::get_template_parts(
			array('block/layout/page-sidebar', 'block/component/blog-roll')
		); 
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