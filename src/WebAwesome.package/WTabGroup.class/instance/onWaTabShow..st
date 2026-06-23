events
onWaTabShow: anObject 
"'Emitted when a tab is shown.'"

self document scriptGenerator
		event:'wa-tab-show' do: anObject
		on: self