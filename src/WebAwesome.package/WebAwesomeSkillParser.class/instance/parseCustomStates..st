parsing
parseCustomStates: aMicTableBlock 

	aMicTableBlock rows allButFirst do: [ :row |
			| eventName desc |
			eventName := self stringOrNilForCell: row first.
			desc := self stringOrNilForCell: row second.
			customStates at: eventName put: desc ]