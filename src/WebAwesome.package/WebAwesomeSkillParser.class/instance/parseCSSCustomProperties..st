parsing
parseCSSCustomProperties: aMicTableBlock 
		aMicTableBlock rows allButFirst do: [ :row |
			| eventName default desc |
			eventName := self stringOrNilForCell: row first.
						default := self stringOrNilForCell: row second.
			desc := self stringOrNilForCell: row third.
			cssCustomProperties at: eventName put: {default. desc }]