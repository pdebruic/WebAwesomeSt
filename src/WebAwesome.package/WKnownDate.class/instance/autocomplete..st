attributes
autocomplete: attrValue 
"'Browser autofill family. When set to  bday , the three fields receive  bday-day ,  bday-month , and  bday-year  respectively. The field-agnostic directives  off  and  on  are applied to all three fields. Any other value is forwarded only to the year field.
type: string
default: '''"

self attributeAt: #'autocomplete' put: attrValue