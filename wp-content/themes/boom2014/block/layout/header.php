<?php $header_image = get_header_image(); ?>

<header>
	<div class="container">
		<div class="site-logo">
			<a href="<?php echo home_url();?>">
<?php 	if ( ! empty( $header_image ) ) { ?>
				<img src="<?= $header_image; ?>" alt="" />
<?php } ?>
			</a>
		</div>
		<div class ="site-head-right nav-menu">
			<?php wp_nav_menu( array( 'menu' => 'header-nav') ); ?>	
		</div> 
	</div>
</header>