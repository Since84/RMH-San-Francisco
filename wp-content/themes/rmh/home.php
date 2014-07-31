<?php //Home 

	Boom_Util::get_template_parts(
		array(
			'block/layout/html-header', 'block/layout/header', 
			'block/component/slider', 'block/component/call-to-action', 'components/post-scroller/four-per-page', 
			'block/layout/html-footer', 'block/layout/footer'
		));