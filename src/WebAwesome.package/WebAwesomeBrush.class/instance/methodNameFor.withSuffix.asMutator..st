code generation
methodNameFor: nameFromDocs withSuffix: suffix asMutator: makeMutator

	| camelCaseName preConflictCheckName |
	camelCaseName := String streamContents: [ :s |
			                 | capitalizeNext |
			                 capitalizeNext := false.
			                 nameFromDocs do: [ :char |
					                 char isLetter
						                 ifTrue: [
								                 s nextPut: (capitalizeNext
										                  ifTrue: [ char asUppercase ]
										                  ifFalse: [ char ]).
								                 capitalizeNext := false ]
						                 ifFalse: [ capitalizeNext := true ] ] ].


	camelCaseName first isUppercase ifTrue: [
		camelCaseName := camelCaseName firstLetterLowercase ].
	preConflictCheckName := makeMutator
		                        ifTrue: [ camelCaseName , ':' ]
		                        ifFalse: [ camelCaseName ].
	(self class includesSelector: preConflictCheckName asSymbol) ifTrue: [
			makeMutator
				ifTrue: [ ^ preConflictCheckName allButLast , suffix , ':' ]
				ifFalse: [ ^ preConflictCheckName , suffix ] ].

	^ preConflictCheckName