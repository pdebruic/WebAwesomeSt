*WebAwesome
firstBodyString

	children size = 1 ifTrue: [
		^ children first bodyString reject: [ :ea | ea isOctetCharacter not ] ].
	^ children first firstBodyString