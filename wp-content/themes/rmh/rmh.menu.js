(function($){
	$(document).ready(function(){

		$('.mobile.menu-button').sidr({
			side: 'left',
			source: '#menu-header-nav'
		});

        $('.sidr-class-menu-item-has-children')
            .on('click', function(){
              // $('.sidr-class-menu-item-has-children.open').removeClass('open');
              $(this).toggleClass('open');
            })

	})
})(jQuery);