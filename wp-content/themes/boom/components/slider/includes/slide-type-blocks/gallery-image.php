<?php
// $link = get_post_meta( get_the_ID(), 'slide_link', true );
?>

<li class='slide'>
<?php 
	$link = get_post_meta( get_the_ID(), 'slide_link', true );
	echo ( $link ) ? '<a href='.$link.'>' : '';
	
	echo wp_get_attachment_image( $image, 'full' );
	 
	echo ( $link ) ? '</a>' : '';

?>