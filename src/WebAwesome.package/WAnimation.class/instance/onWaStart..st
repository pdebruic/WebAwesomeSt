events
onWaStart: anObject 
"'Emitted when the animation starts or restarts.'"

self document scriptGenerator
		event:'wa-start' do: anObject
		on: self