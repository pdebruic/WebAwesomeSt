as yet unclassified
stringOrNilForCell: tableCell

	tableCell isEmpty
		ifTrue: [ ^ nil ]
		ifFalse: [ ^ tableCell first firstBodyString ]