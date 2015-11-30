$(function() {
  var lineHeight = parseInt($('body').css('line-height'));
  function balanceHeight(el) {
      var h = $(el).outerHeight();
      var delta = h % lineHeight;
      if (delta != 0)
      {
        /* For images and objects, we want to align the bottom w/ the baseline, so we
         * pad the top of the element. For other elements (text elements that have a
         * scrollbar), we pad the bottom, to keep the text within on the same baseline */
        var paddingDirection = ($(el).is('img') || $(el).is('object')) ?
                                              'padding-top' : 'padding-bottom';

        /* Adjust padding, because margin can get collapsed and cause uneven spacing */
          var currentPadding = parseInt($(el).css(paddingDirection));
          $(el).css(paddingDirection, currentPadding + lineHeight - delta);
      }
  }

  /* Depending on your content, you may want to modify which elements you want to adjust,
   * by modifying the selector used below. By default, we grab all img, pre, and object
   * elements. */
  $('img, pre, object').each(function() {
      /* Only works if we're manipulating block objects */
      if ($(this).css('display') == 'inline')
      {
          $(this).css('display', 'block');
      }

      /* Images need to load before you get their height */
      if ($(this).is('img'))
      {
          $(this).load(function(){ balanceHeight(this); });
      }
      else
      {
          balanceHeight(this);
      }
  });
});