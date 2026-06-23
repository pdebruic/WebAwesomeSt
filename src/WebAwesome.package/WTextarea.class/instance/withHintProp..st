properties
withHintProp: propValue 
"'Only required for SSR. Set to  true  if you're slotting in a  hint  element so the server-rendered markup includes the hint before the component hydrates on the client.
type: boolean
default: false'"

self attributeAt: #'withHint' put: propValue