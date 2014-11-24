	
	<footer>
		<div class="container">
			<ul class="footer-main">
				<ul class="footer-sitemap">
				<?php dynamic_sidebar('footer sitemap'); ?>
				</ul>
				<li class="corporate">
					<span class="copyright">2014 McDonald's Corporation All Rights Reserved</span>
					<?php wp_nav_menu( array( 'menu' => 'corporate-menu' ) ); ?>
					<p class="trademark">
						The following trademarks used herein are owned by McDonald's Corporation and its affiliates:McDonald's, Ronald McDonald House Charities,
	Ronald McDonald House Charities Logo, RMHC, Ronald McDonald House, Ronald McDonald Family Room, and Ronald McDonald Care Mobile.
					</p>
				</li>
			</ul>
			<div class="footer-sidebar">
				<?php dynamic_sidebar('footer sidebar' ); ?>
			</div>
		</div>
	</footer>