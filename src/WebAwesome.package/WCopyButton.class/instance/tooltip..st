attributes
tooltip: attrValue 
"'Controls the built-in tooltip.  full  (default) shows the tooltip on hover and focus and during copy feedback.  copy  keeps the tooltip silent on hover/focus and only shows it briefly to confirm a successful or failed copy.  none  disables the tooltip entirely. Applies to both the default and custom triggers.
type: 'full' | 'copy' | 'none'
default: 'full''"

self attributeAt: #'tooltip' put: attrValue