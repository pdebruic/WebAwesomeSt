parsing
parseFile: mdFileRef

	| blockTitle blocks |
	parsed := Microdown parseFile: mdFileRef.
	title := parsed firstBodyString.
	blocks := parsed children allButFirst.
	tag := self parseTagFrom: blocks second.
	comment := OrderedCollection new.
	blocks doWithIndex: [ :node :index |
			node isHeaderBlock
				ifTrue: [
						blockTitle := node firstBodyString.
						(self interestingBlockIndexFor: blockTitle)
							ifNil: [ comment add: node ]
							ifNotNil: [ :ind |
									| interestingBlock |
									interestingBlock := blocks at: index + ind.
									self parseInterestingNode: interestingBlock for: blockTitle ] ]
				ifFalse: [ comment add: node ] ].
		