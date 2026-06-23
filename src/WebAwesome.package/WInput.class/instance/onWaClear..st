events
onWaClear: anObject 
"'Emitted when the clear button is activated.'"

self document scriptGenerator
		event:'wa-clear' do: anObject
		on: self