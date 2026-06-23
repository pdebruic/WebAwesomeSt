events
onWaReposition: anObject 
"'Emitted when the popup is repositioned. This event can fire a lot, so avoid putting expensive operations in your listener or consider debouncing it.'"

self document scriptGenerator
		event:'wa-reposition' do: anObject
		on: self