<?php
	function addMetaBoxes() { 
		add_meta_box('post_format_meta_box', 'Post Format Meta', 'formatMetaBox', 'post');
		add_meta_box('post_format_meta_box', 'Post Format Meta', 'formatMetaBox', 'page');
	}

	function formatMetaBox() {
		global $post;
		$images = get_post_meta( $post->ID, 'slider_images', true );
?>
		<label for="slider_images">Slider Images ( IDs from [gallery] shortcode )	</label>
		<br>
		<input type="text" name="slider_images" id="slider_images" value="<?php echo $images; ?>"/>
<?php	
	}

	function saveFormatMeta($post_id){
		if(isset($_POST['slider_images']))
					update_post_meta($post_id, 'slider_images', $_POST['slider_images']);
	}

	add_action('save_post', 'saveFormatMeta');
	add_action('add_meta_boxes', 'addMetaBoxes');