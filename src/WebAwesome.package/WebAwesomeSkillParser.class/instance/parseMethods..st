parsing
parseMethods: aMicTableBlock

	aMicTableBlock rows allButFirst do: [ :row |
			| methodName desc args |
			methodName := self stringOrNilForCell: row first.
			desc := self stringOrNilForCell: row second.
			(self stringOrNilForCell: row third)
				ifNil: [ args := nil ]
				ifNotNil: [ :arguments |
						args := (arguments substrings: ',') collect: [ :argStr |
								        | argName argValues tokens |
								        tokens := argStr substrings: ':'.
								        argName := tokens first.
								        argValues := tokens size >1 ifTrue:[tokens second substrings: '|'] ifFalse:[nil].
								        argName -> argValues ] ].

			methods at: methodName put: {
					desc.
					args } ]