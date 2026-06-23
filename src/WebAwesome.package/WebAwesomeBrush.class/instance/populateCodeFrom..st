code generation
populateCodeFrom: parsedWebAwesomeComponent
	self setTagFrom: parsedWebAwesomeComponent .
	self addWebComponentSlotCodeFrom: parsedWebAwesomeComponent.
	self addAttributesAndPropertiesFrom: parsedWebAwesomeComponent.
	self addEventsFrom: parsedWebAwesomeComponent.
	self addMethodsFrom: parsedWebAwesomeComponent .
	self addCSSPartsFrom: parsedWebAwesomeComponent .
	self addCSSCustomPropertiesFrom: parsedWebAwesomeComponent .
	self addCustomStatesFrom: parsedWebAwesomeComponent .