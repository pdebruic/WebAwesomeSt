attributes
view: attrValue 
"'The view is a reflection of the 'mobileBreakpoint', when the page is larger than the  mobile-breakpoint  (768px by default), it is considered to be a 'desktop' view. The view is merely a way to distinguish when to show/hide the navigation. You can use additional media queries to make other adjustments to content as necessary. The default is 'desktop' because the 'mobile navigation drawer' isn't accessible via SSR due to drawer requiring JS.
type: 'mobile' | 'desktop'
default: 'desktop''"

self attributeAt: #'view' put: attrValue