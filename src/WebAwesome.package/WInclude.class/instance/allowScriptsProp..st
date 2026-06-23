properties
allowScriptsProp: propValue 
"'Allows included scripts to be executed. Be sure you trust the content you are including as it will be executed as code and can result in XSS attacks.
type: boolean
default: false'"

self attributeAt: #'allowScripts' put: propValue