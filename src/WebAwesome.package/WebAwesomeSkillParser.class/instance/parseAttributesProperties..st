parsing
parseAttributesProperties: aMicTableBlock

	aMicTableBlock rows allButFirst do: [ :row |
			| type default desc |
			desc := (String streamContents: [ :s |
					         row fifth do: [ :node |
							         s
								         nextPutAll: node bodyString;
								         nextPut: $  ] ]) trimmed.
			type := self stringOrNilForCell: row third.
			default := self stringOrNilForCell: row fourth.

			(self stringOrNilForCell: row first) ifNotNil: [ :attr |
					attributes at: attr put: {
							type.
							default.
							desc } ].
			(self stringOrNilForCell: row second) ifNotNil: [ :prop |
					properties at: prop put: {
							type.
							default.
							desc } ] ]