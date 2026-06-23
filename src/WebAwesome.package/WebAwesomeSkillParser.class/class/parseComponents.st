as yet unclassified
parseComponents 

	| longPath fileNamesToCheck |
	longPath := self webawesomeSkillsPath.
	fileNamesToCheck := OrderedCollection new.
	#( 'components' "'utilities' 'tokens'" ) do: [ :ea |
			fileNamesToCheck addAll:
				((longPath , ea) asFileReference allChildrenMatching: '*.md') ].
	fileNamesToCheck do: [ :filePath |
			(self parseFile: filePath asFileReference) makeComponentClass ]