events
onWaLoad: anObject 
"'Emitted when the included file is loaded.'"

self document scriptGenerator
		event:'wa-load' do: anObject
		on: self