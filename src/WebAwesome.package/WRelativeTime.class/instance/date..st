attributes
date: attrValue 
"'The date from which to calculate time from. If not set, the current date and time will be used. When passing a string, it's strongly recommended to use the ISO 8601 format to ensure timezones are handled correctly. To convert a date to this format in JavaScript, use  date.toISOString() .
type: Date | string
default: new Date()'"

self attributeAt: #'date' put: attrValue