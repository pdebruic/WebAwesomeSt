actions
addMethodsToWAHTMLCanvas

	| methodName plainTagSource withSource className |
	className := self waClassName.
	methodName := 'wa', self titleAsClassName.
	plainTagSource := String streamContents: [ :s |
			                  s
				                  nextPutAll: methodName;
				                  nextPutAll: String cr;
				                  nextPutAll: '^ self brush: ';
				                  nextPutAll: className;
				                  nextPutAll: ' new' ].
	WAHtmlCanvas compile: plainTagSource classified: '*WebAwesome'.
	withSource := String streamContents: [ :s |
			              s
				              nextPutAll: methodName;
				              nextPutAll: ': anObject';
				              nextPutAll: String cr;
				              nextPutAll: '^ self ';
				              nextPutAll: methodName;
				              nextPutAll: String cr;
				              nextPutAll: 'with: anObject;
	yourself' ].

	WAHtmlCanvas compile: withSource classified: '*WebAwesome'