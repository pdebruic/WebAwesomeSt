parsing
parseEvents: aMicTableBlock

	aMicTableBlock rows allButFirst do: [ :row |
			| eventName desc |
			eventName := self stringOrNilForCell: row first.
			desc := self stringOrNilForCell: row second.
			events at: eventName put: desc ]