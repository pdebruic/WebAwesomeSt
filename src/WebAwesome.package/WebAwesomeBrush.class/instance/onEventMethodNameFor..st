code generation
onEventMethodNameFor: eventName


	^ 'on' , (self mutatingMethodNameFor: eventName withSuffix: 'Event')
		  capitalized