events
onWaCollapse: anObject 
"'Emitted before an item collapses. Cancelable.'"

self document scriptGenerator
		event:'wa-collapse' do: anObject
		on: self