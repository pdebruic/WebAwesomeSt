actions
makeComponentClass

	| newClass |
	Smalltalk at: self waClassName ifPresent:[:cls | cls  removeFromSystem].
	newClass := (WebAwesomeBrush << self waClassName ) package:'WebAwesome'; install. 
	newClass new populateCodeFrom: self.
	newClass comment: self convertCommentsToString.
	self addMethodsToWAHTMLCanvas