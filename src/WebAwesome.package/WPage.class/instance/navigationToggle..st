slots
navigationToggle: slotRenderableObject 
"'  Use this slot to slot in your own button + icon for toggling the navigation drawer. By default it is a '"

self slots at: #'navigation-toggle' put: slotRenderableObject.
slotRenderableObject slot: #'navigation-toggle'