events
onWaRemove: anObject 
"'Emitted when the remove button is activated.'"

self document scriptGenerator
		event:'wa-remove' do: anObject
		on: self