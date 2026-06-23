slots
divider: slotRenderableObject 
"'  The divider. Useful for slotting in a custom icon that renders as a handle.'"

self slots at: #'divider' put: slotRenderableObject.
slotRenderableObject slot: #'divider'