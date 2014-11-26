<?php
	$post_id = get_the_ID();
?>

<div class="blog-post-preview">
	<div class="post-feature">
		<a class="thumbnail" href="<?php the_permalink(); ?>">
			<?php the_post_thumbnail('thumbnail'); ?>
		</a>
	</div>
	<div class="post-content">
		<a href="<?php the_permalink(); ?>">
			<?php 
				the_title( '<h3 class="post-title">', '</h3>' );
			?>
			<div class="post-meta">
				<div class="post-categories">
<?php 				the_category( ',' , $post_id ); ?>
				</div>
				<div class="post-date">
<?php 				the_date('M d, Y'); ?>
				</div>
			</div>
			<div class="post-excerpt">
<?php 			the_excerpt(); ?>
				<a class="readmore" href="<?php the_permalink();?>">Read More</a>
			</div>
		</a>
	</div>
</div>