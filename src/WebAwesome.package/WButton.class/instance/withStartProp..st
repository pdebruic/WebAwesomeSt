properties
withStartProp: propValue 
"'Only required for SSR. Set to  true  if you're slotting in a  start  element so the server-rendered markup includes the start slot before the component hydrates on the client.
type: boolean
default: false'"

self attributeAt: #'withStart' put: propValue