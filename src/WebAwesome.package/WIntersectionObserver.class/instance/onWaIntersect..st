events
onWaIntersect: anObject 
"'Fired when a tracked element begins or ceases intersecting.'"

self document scriptGenerator
		event:'wa-intersect' do: anObject
		on: self