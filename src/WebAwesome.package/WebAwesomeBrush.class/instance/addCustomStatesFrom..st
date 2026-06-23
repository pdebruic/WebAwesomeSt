code generation
addCustomStatesFrom: aWebAwesomeSkillParser 
"I don't think we should have these. They are set by the webawesome JS so you can target them with CSS"
	"aWebAwesomeSkillParser customStates  keysAndValuesDo: [
			:slotName
			:slotDescription |
			| methodSource methodName |
			methodName:= (self methodNameFor: slotName withSuffix: 'State').
			methodSource := String streamContents: [ :s |
					                s
						                nextPutAll:methodName ;
					                cr;
						nextPutAll:(self commentStringFrom: {slotDescription });
						
						                nextPutAll: 'self customStates add: #''';
						                nextPutAll: slotName ;
						                nextPutAll: '''' ].
			self class compile: methodSource  classified:'custom-states']"