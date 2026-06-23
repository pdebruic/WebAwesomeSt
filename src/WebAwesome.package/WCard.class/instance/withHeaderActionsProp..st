properties
withHeaderActionsProp: propValue 
"'Only required for SSR. Set to  true  if you're slotting in a  header-actions  element so the server-rendered markup includes the media before the component hydrates on the client.
type: boolean
default: false'"

self attributeAt: #'withHeaderActions' put: propValue