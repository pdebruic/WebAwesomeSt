parsing
parseFile: mdFilePath
	^self new parseFile: mdFilePath asFileReference ; yourself 
	