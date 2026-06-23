attributes
getSymbol: attrValue 
"'A function that customizes the symbol to be rendered. The first and only argument is the rating's current value. The function should return a string containing trusted HTML of the symbol to render at the specified value. Works well with  <wa-icon>  elements.
type: (value: number, isSelected: boolean) => string'"

self attributeAt: #'getSymbol' put: attrValue