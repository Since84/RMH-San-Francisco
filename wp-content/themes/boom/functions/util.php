<?php

	/**
	 * Boom_Util
	 *
	 * Boom Util Class v.1
	 *
	 * @package 	WordPress
	 * @subpackage 	Boom
	 *
	 * We've included a number of helper functions that we use in every theme we produce.
	 * The main one that is used in Starkers is Boom_Util::add_slug_to_body_class(), this will add the page or post slug to the body class
	 *
	 */
	 
	 class Boom_Util {

    	/**
    	 * Print a pre formatted array to the browser - very useful for debugging
    	 *
    	 * @param 	array
    	 * @return 	void
    	 * @author 	Keir Whitaker
    	 **/
    	public static function print_a( $a ) {
    		print( '<pre>' );
    		print_r( $a );
    		print( '</pre>' );
    	}

    	/**
    	 * Simple wrapper for native get_template_part()
    	 * Allows you to pass in an array of parts and output them in your theme
    	 * e.g. <?php get_template_parts(array('part-1', 'part-2')); ?>
    	 *
    	 * @param 	array 
    	 * @return 	void
    	 * @author 	Keir Whitaker
    	 **/
    	public static function get_template_parts( $parts = array() ) {
    		foreach( $parts as $part ) {
    			get_template_part( $part );
    		};
    	}

    	/**
    	 * Pass in a path and get back the page ID
    	 * e.g. Boom_Util::get_page_id_from_path('about/terms-and-conditions');
    	 *
    	 * @param 	string 
    	 * @return 	integer
    	 * @author 	Keir Whitaker
    	 **/
    	public static function get_page_id_from_path( $path ) {
    		$page = get_page_by_path( $path );
    		if( $page ) {
    			return $page->ID;
    		} else {
    			return null;
    		};
    	}

    	/**
    	 * Append page slugs to the body class
    	 * NB: Requires init via add_filter('body_class', 'add_slug_to_body_class');
    	 *
    	 * @param 	array 
    	 * @return 	array
    	 * @author 	Keir Whitaker
    	 */
    	public static function add_slug_to_body_class( $classes ) {
    		global $post;
	   
    		if( is_page() ) {
    			$classes[] = sanitize_html_class( $post->post_name );
    		} elseif(is_singular()) {
    			$classes[] = sanitize_html_class( $post->post_name );
    		};

    		return $classes;
    	}
	
    	/**
    	 * Get the category id from a category name
    	 *
    	 * @param 	string 
    	 * @return 	string
    	 * @author 	Keir Whitaker
    	 */
    	public static function get_category_id( $cat_name ){
    		$term = get_term_by( 'name', $cat_name, 'category' );
    		return $term->term_id;
    	}

        public static function paging_nav() {
            // Don't print empty markup if there's only one page.
            if ( $GLOBALS['wp_query']->max_num_pages < 2 ) {
                return;
            }

            $paged        = get_query_var( 'paged' ) ? intval( get_query_var( 'paged' ) ) : 1;
            $pagenum_link = html_entity_decode( get_pagenum_link() );
            $query_args   = array();
            $url_parts    = explode( '?', $pagenum_link );

            if ( isset( $url_parts[1] ) ) {
                wp_parse_str( $url_parts[1], $query_args );
            }

            $pagenum_link = remove_query_arg( array_keys( $query_args ), $pagenum_link );
            $pagenum_link = trailingslashit( $pagenum_link ) . '%_%';

            $format  = $GLOBALS['wp_rewrite']->using_index_permalinks() && ! strpos( $pagenum_link, 'index.php' ) ? 'index.php/' : '';
            $format .= $GLOBALS['wp_rewrite']->using_permalinks() ? user_trailingslashit( 'page/%#%', 'paged' ) : '?paged=%#%';

            // Set up paginated links.
            $links = paginate_links( array(
                'base'     => $pagenum_link,
                'format'   => $format,
                'total'    => $GLOBALS['wp_query']->max_num_pages,
                'current'  => $paged,
                'mid_size' => 1,
                'add_args' => array_map( 'urlencode', $query_args ),
                'prev_text' => __( '&larr; Previous', 'boom' ),
                'next_text' => __( 'Next &rarr;', 'boom' ),
            ) );

            if ( $links ) :

            ?>
            <nav class="navigation paging-navigation" role="navigation">
                <h1 class="screen-reader-text"><?php _e( 'Posts navigation', 'boom' ); ?></h1>
                <div class="pagination loop-pagination">
                    <?php echo $links; ?>
                </div><!-- .pagination -->
            </nav><!-- .navigation -->
            <?php
            endif;
        }
	
    }
