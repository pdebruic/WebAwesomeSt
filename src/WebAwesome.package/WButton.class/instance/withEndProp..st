properties
withEndProp: propValue 
"'Only required for SSR. Set to  true  if you're slotting in an  end  element so the server-rendered markup includes the end slot before the component hydrates on the client.
type: boolean
default: false'"

self attributeAt: #'withEnd' put: propValue