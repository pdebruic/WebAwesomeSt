events
onWaAfterCollapse: anObject 
"'Emitted after the tree item collapses and all animations are complete.'"

self document scriptGenerator
		event:'wa-after-collapse' do: anObject
		on: self