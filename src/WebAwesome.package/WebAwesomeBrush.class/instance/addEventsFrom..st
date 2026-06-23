code generation
addEventsFrom: aWebAwesomeSkillParser

	aWebAwesomeSkillParser events keysAndValuesDo: [
			:eventName
			:eventDescription |
			| methodSource |
			methodSource := String streamContents: [ :s |
					                s
						                nextPutAll:
							                (self onEventMethodNameFor: eventName);
						                nextPutAll: ' anObject ';
						                cr;
						                nextPutAll:
							                (self commentStringFrom: { eventDescription });
						                cr;
						                cr;
						                nextPutAll: 'self document scriptGenerator
		event:''';
						                nextPutAll: eventName;
						                nextPutAll: ''' do: anObject
		on: self' ].
			self class compile: methodSource classified: 'events' ]