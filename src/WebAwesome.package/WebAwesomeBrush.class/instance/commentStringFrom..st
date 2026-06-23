code generation
commentStringFrom: aCollection

	| rawString |
	rawString := aCollection size = 1
		             ifTrue: [
				             String streamContents: [ :s |
						             s
							             nextPut: $";
							             nextPutAll: aCollection first asString;
							             nextPut: $" ] ]
		             ifFalse: [
				             String streamContents: [ :s |
						             s
							             nextPut: $";
							             nextPutAll: aCollection last.
						             aCollection first ifNotNil: [ :type |
								             s
									             nextPutAll: String cr;
									             nextPutAll: 'type: ';
									             nextPutAll: type ].
						             aCollection second ifNotNil: [ :def |
								             s
									             nextPutAll: String cr;
									             nextPutAll: 'default: ';
									             nextPutAll: aCollection second ].
						             s nextPut: $" ] ].

	^ String streamContents: [ :s |
			  s nextPut: $".
			  rawString do: [ :ea |
					  s nextPut: (ea = $"
							   ifTrue: [ $' ]
							   ifFalse: [ ea ]) ].
			  s nextPut: $" ]