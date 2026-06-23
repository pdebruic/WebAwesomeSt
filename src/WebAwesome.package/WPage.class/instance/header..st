slots
header: slotRenderableObject 
"'  The header to display at the top of the page. If a banner is present, the header will appear below the banner. The header will not be shown if there is no content.'"

self slots at: #'header' put: slotRenderableObject.
slotRenderableObject slot: #'header'