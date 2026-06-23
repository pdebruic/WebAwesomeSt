events
onWaAfterShow: anObject 
"'Emitted after the select's menu opens and all animations are complete.'"

self document scriptGenerator
		event:'wa-after-show' do: anObject
		on: self