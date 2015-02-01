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

		var elem = $(".mobile-search");
		var mobileSearch = $("<div class='mobile-search'></div>");
		$('form[role="search"]').clone().appendTo(mobileSearch);
		mobileSearch
		.appendTo("header");

		$(".mobile.search-button").click(function(){
			mobileSearch.toggleClass('open');
		});

	})
})(jQuery);