code generation
addMethodsFrom: aWebAwesomeSkillParser

	aWebAwesomeSkillParser methods keysAndValuesDo: [
			:slotName
			:slotDescription |
			| methodSource args desc |
			desc := slotDescription first.
			args := slotDescription size = 2
				        ifTrue: [ slotDescription second ]
				        ifFalse: [ nil ].

			methodSource := String streamContents: [ :s |
					                | methodName |
					                methodName := args
						                              ifNil: [
						                              self
							                              methodNameFor: slotName
							                              withSuffix: 'Method' ]
						                              ifNotNil: [ :a |
						                              self
							                              mutatingMethodNameFor: slotName
							                              withSuffix: 'Method' ].

					                s nextPutAll: methodName.
					                args ifNotNil: [ :a | s nextPutAll: ' argsList ' ].
					                s
						                cr;
						                nextPutAll: (self commentStringFrom: { desc });
						                cr;
						                cr;
						                nextPutAll: 'self callJS: #''';
						                nextPutAll: slotName.
					                args
						                ifNil: [ s nextPutAll: '''' ]
						                ifNotNil: [ :a |
						                s nextPutAll: ''' with: argsList' ] ].
			self class compile: methodSource classified: 'methods' ]