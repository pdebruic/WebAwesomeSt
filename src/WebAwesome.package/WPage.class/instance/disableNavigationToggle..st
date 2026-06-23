attributes
disableNavigationToggle: attrValue 
"'Determines whether or not to hide the default hamburger button. This will automatically flip to 'true' if you add an element with  data-toggle-nav  anywhere in the element light DOM. Generally this will be set for you and you don't need to do anything, unless you're using SSR, in which case you should set this manually for initial page loads.
type: boolean
default: false'"

self attributeAt: #'disable-navigation-toggle' put: attrValue