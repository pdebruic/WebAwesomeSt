events
onWaAfterShow: anObject 
"'Emitted after the dialog opens and all animations are complete.'"

self document scriptGenerator
		event:'wa-after-show' do: anObject
		on: self