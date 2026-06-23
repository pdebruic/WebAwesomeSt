slots
parseSlots: aMicUnorderedListBlock 
	aMicUnorderedListBlock children do:[:slot | |slotName slotComment | 
		slotName:=slot firstBodyString .
		slotComment :=slot children second firstBodyString .
		slots at:  slotName asSymbol put: slotComment ]