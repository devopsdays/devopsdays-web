$(document).ready(function() {
	  $('span.pullquote').each(function(index) {
		var $parentParagraph = $(this).parent('p');
		$parentParagraph.css('position', 'relative');
		$(this).clone().addClass('pulledquote').prependTo($parentParagraph);
	});
});