$(document).ready(function() {
    $("h1:contains('&'), h2:contains('&'), h3:contains('&'), h4:contains('&')", document.body)
        .contents()
        .each(
            function() {
                if( this.nodeType == 3 ) {
                    $(this)
                        .replaceWith( this
                            .nodeValue
                            .replace( /&/g, "<span class='amp'>&</span>" )
                        );
                }
            }
        );
});