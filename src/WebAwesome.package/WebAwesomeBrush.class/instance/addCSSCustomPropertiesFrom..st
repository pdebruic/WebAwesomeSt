code generation
addCSSCustomPropertiesFrom: aWebAwesomeSkillParser 
"I don't think there's a reason to have these. They should be used in the external css file."
	"	aWebAwesomeSkillParser cssCustomProperties keysAndValuesDo: [
			:eventName
			:eventDescription |
			| methodSource |
			methodSource := String streamContents: [ :s |
					                s
						                nextPutAll:
							                (self mutatingMethodNameFor: eventName withSuffix: 'CustomCSS');
						                nextPutAll: ' cssString ';
						                 cr;
						nextPutAll:(self commentStringFrom: {eventDescription });
						 cr;
						 cr;
						                nextPutAll: 'self cssParts at: #''';
						                nextPutAll: eventName ;
						                nextPutAll: ''' put: cssCustomProperties' ].
			self class compile: methodSource classified:'css-custom-properties']"