slots
separator: slotRenderableObject 
"'  The separator to use for the breadcrumb item. This will only change the separator for this item. If you want to change it for all items in the group, set the separator on '"

self slots at: #'separator' put: slotRenderableObject.
slotRenderableObject slot: #'separator'