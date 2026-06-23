*WebAwesome
getTagOrNil

	tokens first isStringOrSymbol ifTrue: [
			| tagName |
			tagName := tokens first asSymbol.
			self class packageOrganizer packages do: [ :package |
					(tagName beginsWith: package name) ifTrue: [
							package tags do: [ :tag |
									package name , '-' , tag name = tagName ifTrue: [
											entity := tag.
											^ entity ] ] ] ] ].
	entity := nil.
	^ entity