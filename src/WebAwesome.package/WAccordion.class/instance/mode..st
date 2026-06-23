attributes
mode: attrValue 
"'Controls how items can be expanded.  multiple  (the default) allows any number of items to be open at once.  single  allows only one item to be open at a time; opening a new item collapses the previously open one, and clicking an open item does not collapse it.  single-collapsible  is the same as  single  except that clicking the open item collapses it, so zero open items is a valid state.
type: 'single' | 'single-collapsible' | 'multiple'
default: 'multiple''"

self attributeAt: #'mode' put: attrValue