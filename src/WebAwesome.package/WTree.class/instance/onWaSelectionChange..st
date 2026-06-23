events
onWaSelectionChange: anObject 
"'Emitted when a tree item is selected or deselected.'"

self document scriptGenerator
		event:'wa-selection-change' do: anObject
		on: self