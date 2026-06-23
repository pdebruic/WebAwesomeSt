*WebAwesome
firstLetterLowercase

	^ self class streamContents: [ :s |
			  s nextPut: self first asLowercase.
			  s nextPutAll: (self copyFrom: 2 to: self size) ]