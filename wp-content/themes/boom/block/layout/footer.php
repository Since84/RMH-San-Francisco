	
	<footer class="container">
		<ul class="footer-main">
			<li class="footer-sitemap">
				<ul>
					<li>
						<h4>Who We Are</h4>
						<?php wp_nav_menu( array( 'menu' => 'who-we-are') ); ?>	
					</li>
					<li>
						<h4>What We Do</h4>
						<?php wp_nav_menu( array( 'menu' => 'what-we-do') ); ?>	
					</li>
					<li>
						<h4>How You Can Help</h4>
						<?php wp_nav_menu( array( 'menu' => 'how-you-can-help') ); ?>	
					</li>
					<li>
						<h4>Events and Community</h4>
						<?php wp_nav_menu( array( 'menu' => 'events-and-community') ); ?>	
					</li>
				</ul>
			</li>
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
	</footer>