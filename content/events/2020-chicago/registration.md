+++
Title = "Registration"
Type = "event"
Description = "Registration for devopsdays Chicago 2020"
+++

<div id="eventbrite-widget-container-111086444546"></div>

<script src="https://www.eventbrite.com/static/widgets/eb_widgets.js"></script>

<script type="text/javascript">
    var exampleCallback = function() {
        console.log('Order complete!');
    };

    window.EBWidgets.createWidget({
        // Required
        widgetType: 'checkout',
        eventId: '111086444546',
        iframeContainerId: 'eventbrite-widget-container-111086444546',

        // Optional
        iframeContainerHeight: 425,  // Widget height in pixels. Defaults to a minimum of 425px if not provided
        onOrderComplete: exampleCallback  // Method called when an order has successfully completed
    });
</script>

*Registration form not displaying? You can also register directly at [event.devopsdayschi.org](https://event.devopsdayschi.org)*