properties
hoverBridgeProp: propValue 
"'When a gap exists between the anchor and the popup element, this option will add a 'hover bridge' that fills the gap using an invisible element. This makes listening for events such as  mouseenter  and  mouseleave  more sane because the pointer never technically leaves the element. The hover bridge will only be drawn when the popover is active.
type: boolean
default: false'"

self attributeAt: #'hoverBridge' put: propValue