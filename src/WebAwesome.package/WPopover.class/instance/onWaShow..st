events
onWaShow: anObject 
"'Emitted when the popover begins to show. Canceling this event will stop the popover from showing.'"

self document scriptGenerator
		event:'wa-show' do: anObject
		on: self