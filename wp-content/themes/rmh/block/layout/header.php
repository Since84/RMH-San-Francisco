<?php $header_image = get_header_image(); ?>
<header>
	<div class="container">
		<div class="mobile menu-button"></div>
		<div class="site-logo">
			<a href="<?php echo home_url();?>">
<?php 	if ( ! empty( $header_image ) ) { ?>
				<img class="logo" src="<?= $header_image; ?>" alt="" />
<?php } ?>
			</a>
		</div>
		<div class ="site-head-right">
			<?php get_search_form(); ?>
			<ul class="social-links">
			<?php dynamic_sidebar('Social Icons');?>
			</ul>	
		</div> 
		<div class="mobile search-button"></div>
	</div>
	<div class="main-menu container">
		<?php wp_nav_menu( array( 'menu' => 'header-nav') ); ?>	
	</div>
</header>

