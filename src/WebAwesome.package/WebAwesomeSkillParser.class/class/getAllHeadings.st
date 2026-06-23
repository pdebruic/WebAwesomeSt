as yet unclassified
getAllHeadings

	| longPath fileNamesToCheck |
	longPath := '/Users/paul/src/webawesome/static/package/dist/skills/webawesome/references/'.
	fileNamesToCheck := OrderedCollection new.
	#( 'components' 'utilities' 'tokens' ) do: [ :ea |
			fileNamesToCheck addAll:
				((longPath , ea) asFileReference allChildrenMatching: '*.md') ].
	fileNamesToCheck do: [ :filePath |
			(Microdown parseFile: filePath asFileReference) children do: [ :ea |
				ea isHeaderBlock ifTrue: [ SeenHeadings add: ea firstBodyString ] ] ]