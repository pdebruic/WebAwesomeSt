methods
callJS: methodName with: jsArgs

	| jsStream |
	jsStream := JSStream new
		            nextPutAll: methodName;
		            yourself.
	jsArgs isEmptyOrNil ifFalse: [ jsStream arguments: jsArgs ].
	^ self script: jsStream