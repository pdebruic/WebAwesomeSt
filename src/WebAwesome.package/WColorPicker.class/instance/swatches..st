attributes
swatches: attrValue 
"'One or more predefined color swatches to display as presets in the color picker. Can include any format the color picker can parse, including HEX(A), RGB(A), HSL(A), HSV(A), and CSS color names. Each color must be separated by a semicolon ( ; ). Alternatively, you can pass an array of color values or an array of  { color, label }  objects to this property using JavaScript. When using objects with labels, the label will be used for the swatch's accessible name instead of the raw color value.
type: string | string[] | WaColorPickerSwatch[]
default: '''"

self attributeAt: #'swatches' put: attrValue