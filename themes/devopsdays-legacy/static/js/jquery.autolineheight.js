/* jquery.autolineheight 
 *
 * Version 1.0.0 by Oliver Boermans <http://www.ollicle.com/eg/jquery/autolineheight/>
 *
 * Extends jQuery <http://jquery.com>
 * 
 * Requires jQEm <http://davecardwell.co.uk/javascript/jquery/plugins/jquery-em/>
 *
 */
(function($) {
	$.fn.autolineheight = function(options) {
		// Default settings
		var settings = {
			minWidth: 15,
			minLineHeight: 1.4,
			ratio: .02
		};
		if(options) {
			$.extend(settings, options);
		}
		// Calculate and assign new line-height
		function adjustlineheight(container){
			var emWidth = parseInt($(container).width())/$.jqem.current();
			// Enforce minimum line-height
			if (emWidth <= settings.minWidth) emWidth = settings.minWidth;
			var newLineHeight = settings.minLineHeight+((emWidth-settings.minWidth)*settings.ratio);
			$(container).css('line-height',newLineHeight);
		}
		this.each(function(){
				var container = this;
				adjustlineheight(container);
				// Re-adjust when window width is changed
				$(window).bind('resize', function(){
					adjustlineheight(container);
				});
				// Re-adjust when font size changes
				$.jqem.bind(function() {
					adjustlineheight(container);
				});
			});
		return this;
	};
})(jQuery);