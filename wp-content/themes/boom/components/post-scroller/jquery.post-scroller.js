(function($){
	$.widget('spark.postscroller', {
		options: {
			mobileBreak: 600,
			desktopElem: '.four-per-page',
			mobileElem: '.four-per-mobile'
		}
		,_create: function(){
			// this._setOptions();
			// if ( this.options.windowsize >= this.options.mobileBreak )
			// 	this._goFull();
			// else
			// 	this._goMobile()

			// this._initResizer();
		}
		,_goMobile: function(){
			if ( this.element.hasClass('desktopActive') )
				this.options.desktop.cycle('destroy');

			$(this.element)
				.removeClass('desktopActive')
				.addClass('mobileActive');
				
			this.options.mobile.cycle();
		}
		,_goFull: function(){
			if ( this.options.mobile.hasClass('cycle-slideshow') ) 
				this.options.mobile.cycle('destroy');

			$(this.element)
				.removeClass('mobileActive')
				.addClass('desktopActive');

				this.options.desktop.not('cycle-slideshow').cycle();
			}
		,_setOptions: function(opt){
			this.options.windowsize = $(window).width();
			this.options.desktop	= $(this.options.desktopElem);
			this.options.mobile 	= $(this.options.mobileElem);
		}
		,_initResizer: function() {
			var self = this;
			$(window).resize(function(){
				self.options.windowsize = $(window).width();


				if ( self.options.windowsize > self.options.mobileBreak && !$(self.element).hasClass('desktopActive') ){
					self._goFull();
					console.log('Switch to Full');
				}
				else if ( self.options.windowsize <= self.options.mobileBreak && !$(self.element).hasClass('mobileActive') ){
					self._goMobile();
					console.log('Switch to Mobile');					
				}

			})
		}

	});

})(jQuery);


jQuery(document).ready(function(){
	jQuery('.post-scroller').postscroller();
})