/**
 * jQEm v0.2 - Interact with the base 'em' unit.
 *   * http://davecardwell.co.uk/javascript/jquery/plugins/jquery-em/0.2/
 * 
 * Dave Cardwell <http://davecardwell.co.uk/>
 *
 * Built on the shoulders of giants:
 *   * John Resig <http://jquery.com/>
 *
 *
 * Copyright (c) 2006 Dave Cardwell, dual licensed under the MIT and GPL
 * licenses:
 *   * http://www.opensource.org/licenses/mit-license.php
 *   * http://www.gnu.org/licenses/gpl.txt
 */


/**
 * For the latest version of this plugin, and a discussion of its usage and
 * implementation, visit:
 *   * http://davecardwell.co.uk/javascript/jquery/plugins/jquery-em/
 */

new function() {
    /**
     * The following functions and attributes form the Public interface of the
     * jQEm plugin, accessed externally through the $.jqem object.  See the
     * relevant function definition later in the source for further
     * information.
     *
     * $.jqem.auto()
     * $.jqem.auto( bool )
     * $.jqem.init()
     *
     * $.jqem.bind( callback )
     * $.jqem.bind( callback )
     * $.jqem.unbind()
     * $.jqem.unbind( callback )
     *
     * $.jqem.trigger()
     * $.jqem.trigger( force )
     * $.jqem.trigger( force, args )
     *
     * $.jqem.active()
     * $.jqem.delay()
     * $.jqem.delay( milliseconds )
     * $.jqem.start()
     * $.jqem.stop()
     *
     * $.jqem.current()
     * $.jqem.previous()
     */
    var Public = {
        // Given a boolean argument, auto() will turn initialisation at
        // $(document).ready() on or off accordingly.  Without, it simply
        // returns the current status.  init() performs the necessary steps to
        // start the jQEm plugin.
            'auto': function( bool ) {
                        return bool != undefined ? Private.auto = bool
                                                 : Private.auto;
                    },
            'init': function() {
                        return Private.init();
                    },

        // Bind functions to and unbind functions from the 'emchange' event.
            'bind': function( callback ) {
                        return Private.bind( callback );
                    },
          'unbind': function( callback ) {
                        return Private.unbind( callback );
                    },

        // Manually trigger a 'emchange' event.
         'trigger': function( force, args ) {
                        return Private.trigger( force, args );
                    },

        // The current state of the updater, get or set the delay between
        // updates when polling for changes, and methods to start and stop
        // updating.
          'active': function() {
                        return Private.active;
                    },
           'delay': function( milliseconds ) {
                        return milliseconds ? Private.delay = milliseconds
                                            : Private.delay;
                    },
           'start': function() {
                        return Private.start();
                    },
            'stop': function() {
                        return Private.stop();
                    },

        // The current and previous detected values of the base 'em' unit.
         'current': function() {
                        return Private.current;
                    },
        'previous': function() {
                        return Private.previous;
                    }
    };

    // Allow external access to the 'Public' interface through the $.jqem
    // object.
    $.jqem = Public;



    /**
     * The following functions and attributes form the internal methods and
     * state of the jQEm plugin.  See the relevant function definition later
     * in the source for further information.
     *
     * Private.$em
     *
     * Private.active
     * Private.canExp
     * Private.current
     * Private.delay
     * Private.iid
     * Private.previous
     *
     * Private.auto
     * Private.init()
     *
     * Private.bind( callback )
     * Private.bind( callback )
     * Private.unbind()
     * Private.unbind( callback )
     *
     * Private.trigger()
     * Private.trigger( force )
     * Private.trigger( force, args )
     * Private.update()
     *
     * Private.start()
     * Private.stop()
     *
     */
    var Private = {
        // The element used in detecting changes to the base 'em' unit.
            '$em': $( document.createElement('i') ),

        // The current state of the jQEm plugin: whether or not it is active,
        // whether or not the user agent understands Internet Explorer's
        // setExpression method, the current value of the base 'em' unit, the
        // delay between updates when polling for changes, the setInterval ID
        // if the plugin is currently polling for changes to the $em object,
        // the previous detected value of the base 'em' unit.
         'active': false,
         'canExp': undefined,
        'current': undefined,
          'delay': 100,  // milliseconds
            'iid': undefined,
       'previous': undefined,

        // When auto is true (default), the init() function will be called at
        // $(document).ready().  init() itself performs the necessary steps to
        // start the jQEm plugin.
           'auto': true,
           'init': init,

        // Bind functions to and unbind functions from the 'emchange' event.
           'bind': bind,
         'unbind': unbind,

        // Trigger a 'emchange' event or when auto-updating use the 'update'
        // wrapper function.
        'trigger': trigger,
         'update': function() {
                       Private.trigger( false );
                       return '1em';
                   },

        // Start and stop automatic update detection.
          'start': start,
           'stop': stop
    };



    /**
     * Unless disabled before $(document).ready() is triggered, execute the
     * init() function.
     */
    $(document).ready(function() {
        if( Private.auto ) init();
    });


    /**
     * Perform the necessary initialisation to use the jQEm plugin.
     */
    function init() {
        // Private.$em is an empty <i> element that we add to the document's
        // body, using CSS styling to make it effectively invisible to the
        // user.  We can detect changes in the computed value of its '1em'
        // width and use this information to trigger a 'emchange' event.
        $('body').prepend(
            Private.$em.css({
                   'display': 'block',
                      'left': '-1em',
                  'position': 'absolute',
                'visibility': 'hidden',
                     'width': '1em'
            })
        );


        // Test to see whether or not we can use Internet Explorer's
        // setExpression() method and store the result for later use.
        Private.canExp = ( Private.$em.style != undefined
                        && Private.$em.style.setExpression != undefined );


        // Begin detecting changes in the base 'em' unit.
        Private.start();
    };



    /**
     * Bind the given callback function to be executed when a change is
     * detected in the size of the base 'em' unit.
     */
    function bind( callback ) {
        Private.$em.bind( 'emchange', callback );
    };


    /**
     * Unbind the given callback function from the 'emchange' event.  If no
     * callback is given, unbind all functions.
     */
    function unbind( callback ) {
        Private.$em.unbind( 'emchange', callback );
    };



    /**
     * Trigger the 'emchange' event globally.  If force is undefined or set to
     * false, explicitly make sure the value of the base 'em' unit has changed
     * since the last update.
     */
    function trigger( force, args ) {
        if( force == undefined ) force = false;

        if( force || Private.$em.width() != Private.current ) {
            Private.previous = Private.current;
            Private.current  = Private.$em.width();
            $.event.trigger( 'emchange', args );
        }
    };



    /**
     * Start detecting changes to the size of the base 'em' unit.
     */
    function start() {
        // Is detection already active?
        if( Private.active ) return;

        // Update the current and previous values of the base 'em' unit.
        Private.current = Private.previous = Private.$em.width();


        // Start detection.  If we can use Internet Explorer's setExpression
        // method do so for improved efficiency.  Otherwise, fall back on
        // polling the $em element for changes.
        if( Private.canExp ) {
            Private.$em.style.setExpression( 'width', '$.jqem.update();' );
        } else {
            Private.iid = window.setInterval( Private.update, Private.delay );
        }

        // Automatic updating is now active.
        Private.active = true;
    };


    /**
     * Stop detecting changes to the size of the base 'em' unit.
     */
    function stop() {
        // Is detection already stopped?
        if( !Private.active ) return;

        // Stop detection.  If we are using Internet Explorer's setExpression
        // remove them, otherwise halt the interval.
        if( Private.canExp ) {
            Private.$em.style.removeExpression('width');
        } else {
            window.removeInterval( Private.iid );
        }
    };
}();
