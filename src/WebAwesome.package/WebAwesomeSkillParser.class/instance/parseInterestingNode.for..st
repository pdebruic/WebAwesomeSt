slots
parseInterestingNode: aMicBlock for: blockTitle

	blockTitle = 'Slots' ifTrue: [ ^self parseSlots: aMicBlock ].
	blockTitle = 'Attributes & Properties' ifTrue:[^self parseAttributesProperties: aMicBlock]. 
	blockTitle = 'Methods' ifTrue: [ ^self parseMethods: aMicBlock ].
	blockTitle = 'Events' ifTrue: [ ^self parseEvents: aMicBlock ].
	blockTitle = 'Custom States' ifTrue: [ ^self parseCustomStates: aMicBlock ].
	blockTitle = 'CSS Parts' ifTrue: [ ^self parseCSSParts: aMicBlock ].
	blockTitle = 'CSS Custom Properties' ifTrue: [ ^self parseCSSCustomProperties: aMicBlock ].
	1 halt