code generation
addWebComponentSlotCodeFrom: aWebAwesomeSkillParser

	aWebAwesomeSkillParser slots keysAndValuesDo: [
			:slotName
			:slotDescription |
			slotName = '(default)' ifFalse: [
					| methodSource |
					methodSource := String streamContents: [ :s |
							                s
								                nextPutAll:
									                (self
										                 mutatingMethodNameFor: slotName
										                 withSuffix: 'Slot');
								                nextPutAll: ' slotRenderableObject ';
								                cr;
								                nextPutAll:
									                (self commentStringFrom: { slotDescription });
								                cr;
								                cr;
								                nextPutAll: 'self slots at: #''';
								                nextPutAll: slotName;
								                nextPutAll: ''' put: slotRenderableObject.';
								                cr;
								                nextPutAll: 'slotRenderableObject slot: #''';
								                nextPutAll: slotName;
								                nextPutAll: '''' ].
					self class compile: methodSource classified: 'slots' ] ]