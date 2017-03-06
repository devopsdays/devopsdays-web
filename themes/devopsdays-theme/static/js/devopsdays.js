// @codekit-prepend '../../bower_components/jquery/dist/jquery.js'
// @codekit-prepend '../../bower_components/tether/dist/js/tether.js'
// @codekit-prepend '../../bower_components/bootstrap/dist/js/bootstrap.js'
// @codekit-prepend '../../bower_components/jquery-oembed-all/jquery.oembed.js'
// @codekit-prepend '../../bower_components/bootstrap-sortable/Scripts/bootstrap-sortable.js'
// @codekit-prepend '../../bower_components/moment/moment.js'
// @codekit-prepend '../../bower_components/jssocials/dist/jssocials.js'


// accordion

// $( function() {
//   $( "#accordion" ).accordion();
// } );


var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].onclick = function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
	  if (panel.style.maxHeight){
  	  panel.style.maxHeight = null;
    } else {
  	  panel.style.maxHeight = panel.scrollHeight + 'px';
    }
  }
}

// embed stuff for talks

$(function(){
   $("a.embed").oembed();
});

// google maps
(function() {
  "use strict";
    var cx = '008769174023796316711:pj3syggtkz0';
    var gcse = document.createElement('script');
    gcse.type = 'text/javascript';
    gcse.async = true;
    gcse.src = 'https://cse.google.com/cse.js?cx=' + cx;
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(gcse, s);
})();

function getMonth(d) {
  "use strict";
    var dt = new Date(d);
    var dtm = dt.getMonth();
    var month = [];
    month[0] = "January";
    month[1] = "February";
    month[2] = "March";
    month[3] = "April";
    month[4] = "May";
    month[5] = "June";
    month[6] = "July";
    month[7] = "August";
    month[8] = "September";
    month[9] = "October";
    month[10] = "November";
    month[11] = "December";
    return month[dtm];
}

// stuff to highlight current month
(function() {
  "use strict";
    var now = new Date();

    $('.left-nav-months').text(function (i, v) {

    if (getMonth(now) == v) {
      $(this).addClass('current');
    }

  });


})();
