as yet unclassified
parseTagFrom: aMicParagraphBlock 
|str | 
str:=aMicParagraphBlock firstBodyString.
	^str copyFrom: 2 to: str size -1. 