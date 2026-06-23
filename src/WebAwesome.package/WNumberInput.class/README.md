Full documentation: https://webawesome.com/docs/components/number-input

<wa-number-input>

Stable Forms Since 3.2

Number inputs let users enter and edit numeric values, with optional stepper buttons for incrementing and decrementing. Use them for quantities, measurements, and other numeric form fields.

<wa-number-input label="Quantity" value="1" style="max-width: 260px;"></wa-number-input>


This component works with standard <form> elements. Please refer to the section on form controls to learn more about form submission and client-side validation.

Examples
Link to This Section

Labels
Link to This Section

Use the label attribute to give the input an accessible label. For labels that contain HTML, use the label slot instead.

<wa-number-input label="How many items?" style="max-width: 260px;"></wa-number-input>


Hint
Link to This Section

Add descriptive hint to an input with the hint attribute. For hints that contain HTML, use the hint slot instead.

<wa-number-input
  label="Order quantity"
  hint="Enter the number of items you'd like to order"
  style="max-width: 260px;"
></wa-number-input>


Placeholders
Link to This Section

Use the placeholder attribute to add a placeholder.

<wa-number-input placeholder="Enter a number" style="max-width: 260px;"></wa-number-input>


Setting Min, Max, and Step
Link to This Section

Use the min and max attributes to set a minimum and maximum value. Use the step attribute to change the granularity the value must adhere to when using the stepper buttons or arrow keys.

<wa-number-input
  label="Donation amount"
  hint="Amount in dollars (10-100, increments of 5)"
  min="10"
  max="100"
  step="5"
  value="25"
  style="max-width: 260px;"
></wa-number-input>


Appearance
Link to This Section

Use the appearance attribute to change the input's visual appearance.

<wa-number-input label="Outlined" appearance="outlined" value="42" style="max-width: 260px;"></wa-number-input>
<br />
<wa-number-input label="Filled" appearance="filled" value="42" style="max-width: 260px;"></wa-number-input>
<br />
<wa-number-input
  label="Filled Outlined"
  appearance="filled-outlined"
  value="42"
  style="max-width: 260px;"
></wa-number-input>


Disabled
Link to This Section

Use the disabled attribute to disable an input.

<wa-number-input label="Disabled" value="100" disabled style="max-width: 260px;"></wa-number-input>


Readonly
Link to This Section

Use the readonly attribute to make the input readonly. The value can still be selected and copied, but it cannot be changed.

<wa-number-input label="Readonly" value="42" readonly style="max-width: 260px;"></wa-number-input>


Sizes
Link to This Section

Use the size attribute to change an input's size.

<wa-number-input label="Extra Small" size="xs" value="5" style="max-width: 260px;"></wa-number-input>
<br />
<wa-number-input label="Small" size="s" value="10" style="max-width: 260px;"></wa-number-input>
<br />
<wa-number-input label="Medium" size="m" value="20" style="max-width: 260px;"></wa-number-input>
<br />
<wa-number-input label="Large" size="l" value="30" style="max-width: 260px;"></wa-number-input>
<br />
<wa-number-input label="Extra Large" size="xl" value="40" style="max-width: 260px;"></wa-number-input>


Pill
Link to This Section

Use the pill attribute to give inputs rounded edges.

<wa-number-input label="Extra Small Pill" size="xs" pill value="5" style="max-width: 260px;"></wa-number-input>
<br />
<wa-number-input label="Small Pill" size="s" pill value="10" style="max-width: 260px;"></wa-number-input>
<br />
<wa-number-input label="Medium Pill" size="m" pill value="20" style="max-width: 260px;"></wa-number-input>
<br />
<wa-number-input label="Large Pill" size="l" pill value="30" style="max-width: 260px;"></wa-number-input>
<br />
<wa-number-input label="Extra Large Pill" size="xl" pill value="40" style="max-width: 260px;"></wa-number-input>


Without Steppers
Link to This Section

Add the without-steppers attribute to remove the increment/decrement buttons. Users can still modify the value using the keyboard.

<wa-number-input label="No steppers" value="50" without-steppers style="max-width: 260px;"></wa-number-input>


When steppers are hidden, users can still use the arrow keys to increment and decrement the value.

Start & End Decorations
Link to This Section

Use the start and end slots to add presentational elements like <wa-icon> within the input.

<wa-number-input label="Price" value="100" style="max-width: 260px;">
  <wa-icon slot="start" name="dollar-sign" family="utility" variant="semibold"></wa-icon>
</wa-number-input>

<br />

<wa-number-input label="Weight (kg)" value="75" style="max-width: 260px;">
  <wa-icon slot="end" name="bag-shopping" family="utility" variant="semibold"></wa-icon>
</wa-number-input>


Custom Stepper Icons
Link to This Section

Use the increment-icon and decrement-icon slots to customize the stepper button icons.

<wa-number-input label="Custom icons" value="5" style="max-width: 260px;">
  <wa-icon slot="increment-icon" name="plus" family="notdog-duo" variant="solid"></wa-icon>
  <wa-icon slot="decrement-icon" name="minus" family="notdog-duo" variant="solid"></wa-icon>
</wa-number-input>


Customizing Label Position
Link to This Section

Use CSS parts to customize the way form controls are drawn. This example uses CSS grid to position the label to the left of the control, but the possible orientations are nearly endless. The same technique works for inputs, textareas, radio groups, and similar form controls.

<div class="label-on-left">
  <wa-number-input label="Quantity" hint="How many do you need?" value="1"></wa-number-input>
  <wa-number-input label="Price" hint="Cost per unit" value="25"></wa-number-input>
</div>

<style>
  .label-on-left {
    display: grid;
    grid-template-columns: auto minmax(0, 1fr);
    gap: var(--wa-space-l);
    align-items: center;

    wa-number-input {
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


Form Validation
Link to This Section

Use the required attribute to make the field required. Combine with min and max for range validation.

<form class="number-input-validation">
  <wa-number-input
    name="quantity"
    label="Quantity"
    hint="Enter a value between 1 and 10"
    min="1"
    max="10"
    required
    style="max-width: 260px;"
  ></wa-number-input>
  <br />
  <wa-number-input
    name="price"
    label="Price"
    hint="Must be a multiple of 0.25"
    min="0"
    step="0.25"
    required
    style="max-width: 260px;"
  ></wa-number-input>
  <br />
  <wa-button appearance="filled" type="submit" variant="neutral">Submit</wa-button>
  <wa-button appearance="filled" type="reset" variant="neutral">Reset</wa-button>
</form>

<script type="module">
  const form = document.querySelector('.number-input-validation');

  form.addEventListener('submit', event => {
    event.preventDefault();

    // Log data to the console for the demo
    console.log(...new FormData(form));
  });
</script>


Valid slot names for this component (use exactly these — any other slot value
is silently ignored and the element falls back to the default slot):

•	label — The input's label. Alternatively, you can use the label attribute.
•	start — An element, such as <wa-icon>, placed at the start of the input control.
•	end — An element, such as <wa-icon>, placed at the end of the input control (before steppers).
•	increment-icon — An icon to use in lieu of the default increment icon.
•	decrement-icon — An icon to use in lieu of the default decrement icon.
•	hint — Text that describes how to use the input. Alternatively, you can use the hint attribute.



















