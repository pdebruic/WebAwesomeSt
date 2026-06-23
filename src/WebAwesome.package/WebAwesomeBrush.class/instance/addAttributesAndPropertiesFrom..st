code generation
addAttributesAndPropertiesFrom: aWebAwesomeSkillParser

	aWebAwesomeSkillParser attributes keysAndValuesDo: [
			:attrName
			:commentContents |
			| methodSource |
			methodSource := String streamContents: [ :s |
					                s
						                nextPutAll:
							                (self
								                 mutatingMethodNameFor: attrName
								                 withSuffix: 'Attr');
						                nextPutAll: ' attrValue ';
						                cr;
						                nextPutAll:
							                (self commentStringFrom: commentContents);
						                cr;
						                cr;
						                nextPutAll: 'self attributeAt: #''';
						                nextPutAll: attrName;
						                nextPutAll: ''' put: attrValue' ].
			self class compile: methodSource classified: 'attributes' ].
	aWebAwesomeSkillParser properties keysAndValuesDo: [
			:attrName
			:commentContents |
			| methodSource |
			methodSource := String streamContents: [ :s |
					                s
						                nextPutAll:
							                (self
								                 mutatingMethodNameFor: attrName
								                 withSuffix: 'Prop');
						                nextPutAll: ' propValue ';
						                cr;
						                nextPutAll:
							                (self commentStringFrom: commentContents);
						                cr;
						                cr;
						                nextPutAll: 'self attributeAt: #''';
						                nextPutAll: attrName;
						                nextPutAll: ''' put: propValue' ].
			self class compile: methodSource classified: 'properties' ]