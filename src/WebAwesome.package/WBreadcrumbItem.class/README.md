Full documentation: https://webawesome.com/docs/components/breadcrumb-item

<wa-breadcrumb-item>

Stable Navigation Since 2.0

Breadcrumb items represent individual links inside a breadcrumb, typically one per level of the site hierarchy.

This component must be used as a child of <wa-breadcrumb>. Please see the Breadcrumb docs to see examples of this component in action.

Valid slot names for this component (use exactly these — any other slot value
is silently ignored and the element falls back to the default slot):

•	(default) — The breadcrumb item's label.
•	start — An element, such as <wa-icon>, placed before the label.
•	end — An element, such as <wa-icon>, placed after the label.
•	separator — The separator to use for the breadcrumb item. This will only change the separator for this item. If you want to change it for all items in the group, set the separator on <wa-breadcrumb> instead.







