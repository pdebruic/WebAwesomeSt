events
onWaAfterShow: anObject 
"'Emitted after the popup opens and animations complete.'"

self document scriptGenerator
		event:'wa-after-show' do: anObject
		on: self