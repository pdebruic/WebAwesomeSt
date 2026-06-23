code generation
addCSSPartsFrom: aWebAwesomeSkillParser

	aWebAwesomeSkillParser cssParts keysAndValuesDo: [
			:eventName
			:eventDescription |
			| methodSource |
			methodSource := String streamContents: [ :s |
					                s
						                nextPutAll:
							                (self
								                 mutatingMethodNameFor: eventName
								                 withSuffix: 'CSS');
						                nextPutAll: ' cssString ';
						                cr;
						                nextPutAll:
							                (self commentStringFrom: { eventDescription });
						                cr;
						                cr;
						                nextPutAll: 'self style: ''::part(';
						                nextPutAll: eventName;
						                nextPutAll: ') {'',cssString,''}''' ].
			self class compile: methodSource classified: 'css-parts' ]