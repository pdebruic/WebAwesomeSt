attributes
flipFallbackPlacements: attrValue 
"'If the preferred placement doesn't fit, popup will be tested in these fallback placements until one fits. Must be a string of any number of placements separated by a space, e.g. 'top bottom left'. If no placement fits, the flip fallback strategy will be used instead.
type: string
default: '''"

self attributeAt: #'flip-fallback-placements' put: attrValue