+++
Title = "Registration"
Type = "event"
Description = "Registration for devopsdays Detroit 2022"
+++

<div id="eventbrite-widget-container-336097074397"></div>

<script src="https://www.eventbrite.com/static/widgets/eb_widgets.js"></script>

<script type="text/javascript">
    var exampleCallback = function() {
        console.log('Order complete!');
    };

    window.EBWidgets.createWidget({
        // Required
        widgetType: 'checkout',
        eventId: '336097074397',
        iframeContainerId: 'eventbrite-widget-container-336097074397',

        // Optional
        iframeContainerHeight: 425,  // Widget height in pixels. Defaults to a minimum of 425px if not provided
        onOrderComplete: exampleCallback  // Method called when an order has successfully completed
    });
</script>
