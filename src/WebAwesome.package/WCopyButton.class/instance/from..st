attributes
from: attrValue 
"'An id that references an element in the same document from which data will be copied. If both this and  value  are present, this value will take precedence. By default, the target element's  textContent  will be copied. To copy an attribute, append the attribute name wrapped in square brackets, e.g.  from='el[value]' . To copy a property, append a dot and the property name, e.g.  from='el.value' .
type: string
default: '''"

self attributeAt: #'from' put: attrValue