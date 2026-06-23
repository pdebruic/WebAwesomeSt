accessing
convertCommentsToString
|commentRoot |
commentRoot:=MicRootBlock new.
 comment do:[:ea | commentRoot addChild: ea]. 
	^(Microdown asRichText: (commentRoot)) asString