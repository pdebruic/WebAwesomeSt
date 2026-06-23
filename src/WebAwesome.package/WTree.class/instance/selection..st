attributes
selection: attrValue 
"'The selection behavior of the tree. Single selection allows only one node to be selected at a time. Multiple displays checkboxes and allows more than one node to be selected. Leaf allows only leaf nodes to be selected. Leaf-multiple allows multiple leaf nodes to be selected while parent nodes only expand and collapse.
type: 'single' | 'multiple' | 'leaf' | 'leaf-multiple'
default: 'single''"

self attributeAt: #'selection' put: attrValue