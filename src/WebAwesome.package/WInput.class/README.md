Full documentation: https://webawesome.com/docs/components/input

<wa-input>

Stable Forms Since 2.0

Inputs collect single-line data from the user, such as text, numbers, email addresses, and passwords. They support labels, hints, validation, and prefix or suffix slots.

<wa-input></wa-input>


This component works with standard <form> elements. Please refer to the section on form controls to learn more about form submission and client-side validation.

Examples
Link to This Section

Labels
Link to This Section

Use the label attribute to give the input an accessible label. For labels that contain HTML, use the label slot instead.

<wa-input label="What is your name?"></wa-input>


Hint
Link to This Section

Add descriptive hint to an input with the hint attribute. For hints that contain HTML, use the hint slot instead.

<wa-input label="Nickname" hint="What would you like people to call you?"></wa-input>


Placeholders
Link to This Section

Use the placeholder attribute to add a placeholder.

<wa-input placeholder="Type something"></wa-input>


Clearable
Link to This Section

Add the with-clear attribute to add a clear button when the input has content.

<wa-input placeholder="Clearable" with-clear></wa-input>


Toggle Password
Link to This Section

Add the password-toggle attribute to add a toggle button that will show the password when activated.

<wa-input type="password" placeholder="Password Toggle" password-toggle></wa-input>


Appearance
Link to This Section

Use the appearance attribute to change the input's visual appearance.

<wa-input placeholder="Type something" appearance="filled"></wa-input><br />
<wa-input placeholder="Type something" appearance="filled-outlined"></wa-input><br />
<wa-input placeholder="Type something" appearance="outlined"></wa-input>


Disabled
Link to This Section

Use the disabled attribute to disable an input.

<wa-input placeholder="Disabled" disabled></wa-input>


Sizes
Link to This Section

Use the size attribute to change an input's size.

<wa-input placeholder="Extra Small" size="xs"></wa-input>
<br />
<wa-input placeholder="Small" size="s"></wa-input>
<br />
<wa-input placeholder="Medium" size="m"></wa-input>
<br />
<wa-input placeholder="Large" size="l"></wa-input>
<br />
<wa-input placeholder="Extra Large" size="xl"></wa-input>


Pill
Link to This Section

Use the pill attribute to give inputs rounded edges.

<wa-input placeholder="Extra Small" size="xs" pill></wa-input>
<br />
<wa-input placeholder="Small" size="s" pill></wa-input>
<br />
<wa-input placeholder="Medium" size="m" pill></wa-input>
<br />
<wa-input placeholder="Large" size="l" pill></wa-input>
<br />
<wa-input placeholder="Extra Large" size="xl" pill></wa-input>


Input Types
Link to This Section

The type attribute controls the type of input the browser renders.

<wa-input type="email" placeholder="Email"></wa-input>
<br />
<wa-input type="number" placeholder="Number"></wa-input>
<br />
<wa-input type="date" placeholder="Date"></wa-input>


Start & End Decorations
Link to This Section

Use the start and end slots to add presentational elements like <wa-icon> within the input.

<wa-input placeholder="Small" size="s">
  <wa-icon name="house" slot="start"></wa-icon>
  <wa-icon name="comment" slot="end"></wa-icon>
</wa-input>
<br />
<wa-input placeholder="Medium" size="m">
  <wa-icon name="house" slot="start"></wa-icon>
  <wa-icon name="comment" slot="end"></wa-icon>
</wa-input>
<br />
<wa-input placeholder="Large" size="l">
  <wa-icon name="house" slot="start"></wa-icon>
  <wa-icon name="comment" slot="end"></wa-icon>
</wa-input>


Customizing Label Position
Link to This Section

Use CSS parts to customize the way form controls are drawn. This example uses CSS grid to position the label to the left of the control, but the possible orientations are nearly endless. The same technique works for inputs, textareas, radio groups, and similar form controls.

<div class="label-on-left">
  <wa-input label="Name" hint="Enter your name"></wa-input>
  <wa-input label="Email" type="email" hint="Enter your email"></wa-input>
  <wa-textarea label="Bio" hint="Tell us something about yourself"></wa-textarea>
</div>

<style>
  .label-on-left {
    display: grid;
    grid-template-columns: auto 1fr;
    gap: var(--wa-space-l);
    align-items: center;

    wa-input,
    wa-textarea {
      grid-column: 1 / -1;
      grid-row-end: span 2;
      display: grid;
      grid-template-columns: subgrid;
      gap: 0 var(--wa-space-l);
      align-items: center;
    }

    ::part(label) {
      text-align: right;
    }

    ::part(hint) {
      grid-column: 2;
    }
  }
</style>


Valid slot names for this component (use exactly these — any other slot value
is silently ignored and the element falls back to the default slot):

•	label — The input's label. Alternatively, you can use the label attribute.
•	start — An element, such as <wa-icon>, placed at the start of the input control.
•	end — An element, such as <wa-icon>, placed at the end of the input control.
•	clear-icon — An icon to use in lieu of the default clear icon.
•	show-password-icon — An icon to use in lieu of the default show password icon.
•	hide-password-icon — An icon to use in lieu of the default hide password icon.
•	hint — Text that describes how to use the input. Alternatively, you can use the hint attribute.



















