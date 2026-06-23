parsing
parseCSSParts: aMicTableBlock 
	 

	aMicTableBlock rows allButFirst do: [ :row |
			| eventName desc |
			eventName := self stringOrNilForCell: row first.
			desc := self stringOrNilForCell: row second.
			cssParts at: eventName put: desc ]