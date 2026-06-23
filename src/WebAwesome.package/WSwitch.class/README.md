Full documentation: https://webawesome.com/docs/components/switch

<wa-switch>

Stable Forms Since 2.0

Switches toggle a single setting on or off and apply the change immediately, without requiring a form submission.

<wa-switch>Switch</wa-switch>


This component works with standard <form> elements. Please refer to the section on form controls to learn more about form submission and client-side validation.

Examples
Link to This Section

Checked
Link to This Section

Use the checked attribute to activate the switch.

<wa-switch checked>Checked</wa-switch>


The checked attribute is the initial value and does not reflect changes, consistent with native checkboxes. To toggle the checked state with JavaScript, use the checked property instead. To target checked switches with CSS, use the :state(checked) selector.

Disabled
Link to This Section

Use the disabled attribute to disable the switch.

<wa-switch disabled>Disabled</wa-switch>


Sizes
Link to This Section

Use the size attribute to change a switch's size.

<wa-switch size="xs">Extra Small</wa-switch>
<br />
<wa-switch size="s">Small</wa-switch>
<br />
<wa-switch size="m">Medium</wa-switch>
<br />
<wa-switch size="l">Large</wa-switch>
<br />
<wa-switch size="xl">Extra Large</wa-switch>


Hint
Link to This Section

Add descriptive hint to a switch with the hint attribute. For hints that contain HTML, use the hint slot instead.

<wa-switch hint="What should the user know about the switch?">Label</wa-switch>


Custom Styles
Link to This Section

Use the available custom properties to change how the switch is styled.

<wa-switch style="--width: 80px; --height: 40px; --thumb-size: 36px;">Really big</wa-switch>


Valid slot names for this component (use exactly these — any other slot value
is silently ignored and the element falls back to the default slot):

•	(default) — The switch's label.
•	hint — Text that describes how to use the switch. Alternatively, you can use the hint attribute.



















