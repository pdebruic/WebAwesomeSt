slots
aside: slotRenderableObject 
"'  Content to be shown on the right side of the page. Typically contains a table of contents, ads, etc. This section 'sticks' to the top as the page scrolls.'"

self slots at: #'aside' put: slotRenderableObject.
slotRenderableObject slot: #'aside'