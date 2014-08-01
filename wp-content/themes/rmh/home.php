<?php //Home 

	Boom_Util::get_template_parts(
		array(
//HEADER
			'block/layout/html-header' 
			,'block/layout/header'

//SLIDER
			,'block/component/slider'

//CALL TO ACTION
			,'block/component/call-to-action'
		));

//WHAT'S HAPPENING
?>
<div class="content-area container">
	<div class="whats-happening">
		<h2 class="">What's Happening</h2>
<?php
		Boom_Util::get_template_parts(
			array(
				'components/post-scroller/four-per-page'
			));
?>
	</div>
	<div class="lower-content">

<? //FAMILY STORIES ?>
		<div class="family-stories">
			<h2>Family Stories</h2>
<?php
		Boom_Util::get_template_parts(
			array(
				'components/post-scroller/one-per-page'
			)
		);
?>
		</div>


<? //SOCIAL	?>
		<div class="social-block">
			<h2>Social</h2>
<?php
//FAMILY STORIES
		Boom_Util::get_template_parts(
			array(
				'block/content/facebook-social'
			)
		);
?>		
		</div>
	</div>
</div>
<?php 
//FOOTER
	Boom_Util::get_template_parts(
		array(
			'block/layout/footer'
			,'block/layout/html-footer'
		)
	);