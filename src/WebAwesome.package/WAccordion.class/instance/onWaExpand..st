events
onWaExpand: anObject 
"'Emitted before an item expands. Cancelable.'"

self document scriptGenerator
		event:'wa-expand' do: anObject
		on: self