slots
mainHeader: slotRenderableObject 
"'  Header to display inline above the main content.'"

self slots at: #'main-header' put: slotRenderableObject.
slotRenderableObject slot: #'main-header'