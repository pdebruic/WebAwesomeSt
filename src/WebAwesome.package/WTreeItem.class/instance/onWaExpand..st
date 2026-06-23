events
onWaExpand: anObject 
"'Emitted when the tree item expands.'"

self document scriptGenerator
		event:'wa-expand' do: anObject
		on: self