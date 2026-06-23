code generation
mutatingMethodNameFor: nameFromDocs withSuffix: suffix

	^ self methodNameFor: nameFromDocs withSuffix: suffix asMutator: true