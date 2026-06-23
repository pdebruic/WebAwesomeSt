events
onWaShow: anObject 
"'Emitted when the popup is about to open. Cancelable.'"

self document scriptGenerator
		event:'wa-show' do: anObject
		on: self