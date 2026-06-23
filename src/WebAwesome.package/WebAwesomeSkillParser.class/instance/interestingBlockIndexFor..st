as yet unclassified
interestingBlockIndexFor: aString
	SeenHeadings add: aString. 
	aString = 'Slots' ifTrue: [ ^ 2 ].
	(self interestingHeadings includes: aString) ifTrue: [ ^ 1 ].
	^ nil