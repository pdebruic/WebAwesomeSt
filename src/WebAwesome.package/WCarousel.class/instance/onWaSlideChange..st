events
onWaSlideChange: anObject 
"'Emitted when the active slide changes.'"

self document scriptGenerator
		event:'wa-slide-change' do: anObject
		on: self