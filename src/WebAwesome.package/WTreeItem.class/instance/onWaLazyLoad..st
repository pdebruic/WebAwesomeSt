events
onWaLazyLoad: anObject 
"'Emitted when a lazy item is selected. Use this event to asynchronously load data and append items to the tree before expanding. After appending new items, remove the '"

self document scriptGenerator
		event:'wa-lazy-load' do: anObject
		on: self