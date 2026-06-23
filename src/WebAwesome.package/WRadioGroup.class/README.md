Full documentation: https://webawesome.com/docs/components/radio-group

<wa-radio-group>

Stable Forms Since 2.0

Radio groups wrap a set of radios so they function as a single form control with one shared value. They handle keyboard navigation, labeling, and validation for the group as a whole.

<wa-radio-group label="Select an option" name="a" value="1">
  <wa-radio value="1">Option 1</wa-radio>
  <wa-radio value="2">Option 2</wa-radio>
  <wa-radio value="3">Option 3</wa-radio>
</wa-radio-group>


Examples
Link to This Section

Checked
Link to This Section

Use the value attribute on the radio group to set the checked radio.

<wa-radio-group label="Select an option" name="a" value="2">
  <wa-radio value="1">Option 1</wa-radio>
  <wa-radio value="2">Option 2</wa-radio>
  <wa-radio value="3">Option 3</wa-radio>
</wa-radio-group>


To target checked radios with CSS, use the :state(checked) selector.

Hint
Link to This Section

Add descriptive hint to a radio group with the hint attribute. For hints that contain HTML, use the hint slot instead.

<wa-radio-group label="Select an option" hint="Choose the most appropriate option." name="a" value="1">
  <wa-radio value="1">Option 1</wa-radio>
  <wa-radio value="2">Option 2</wa-radio>
  <wa-radio value="3">Option 3</wa-radio>
</wa-radio-group>


Radio Buttons
Link to This Section

Set the appearance attribute to button on all radios to render a radio button group.

<wa-radio-group
  label="Horizontal options"
  hint="Select an option that makes you proud."
  orientation="horizontal"
  name="a"
  value="1"
>
  <wa-radio appearance="button" value="1">Option 1</wa-radio>
  <wa-radio appearance="button" value="2">Option 2</wa-radio>
  <wa-radio appearance="button" value="3">Option 3</wa-radio>
</wa-radio-group>

<br />

<wa-radio-group
  label="Vertical options"
  hint="Select an option that makes you proud."
  orientation="vertical"
  name="a"
  value="1"
  style="max-width: 300px;"
>
  <wa-radio appearance="button" value="1">Option 1</wa-radio>
  <wa-radio appearance="button" value="2">Option 2</wa-radio>
  <wa-radio appearance="button" value="3">Option 3</wa-radio>
</wa-radio-group>


Disabling
Link to This Section

To disable the entire radio group, add the disabled attribute to the radio group.

<wa-radio-group label="Select an option" disabled>
  <wa-radio value="1">Option 1</wa-radio>
  <wa-radio value="2" disabled>Option 2</wa-radio>
  <wa-radio value="3">Option 3</wa-radio>
</wa-radio-group>


To disable individual options, add the disabled attribute to the respective options.

<wa-radio-group label="Select an option">
  <wa-radio value="1">Option 1</wa-radio>
  <wa-radio value="2" disabled>Option 2</wa-radio>
  <wa-radio value="3">Option 3</wa-radio>
</wa-radio-group>


Orientation
Link to This Section

The default orientation for radio items is vertical. Set the orientation to horizontal to items on the same row.

<wa-radio-group
  label="Select an option"
  hint="Choose the most appropriate option."
  orientation="horizontal"
  name="a"
  value="1"
>
  <wa-radio value="1">Option 1</wa-radio>
  <wa-radio value="2">Option 2</wa-radio>
  <wa-radio value="3">Option 3</wa-radio>
</wa-radio-group>


Sizing Options
Link to This Section

The size of radios will be determined by the Radio Group's size attribute.

<wa-radio-group label="Extra small options" size="xs" value="1">
  <wa-radio value="1">Option 1</wa-radio>
  <wa-radio value="2">Option 2</wa-radio>
  <wa-radio value="3">Option 3</wa-radio>
</wa-radio-group>
<br />
<wa-radio-group label="Small options" size="s" value="1">
  <wa-radio value="1">Option 1</wa-radio>
  <wa-radio value="2">Option 2</wa-radio>
  <wa-radio value="3">Option 3</wa-radio>
</wa-radio-group>
<br />
<wa-radio-group label="Medium options" size="m" value="2">
  <wa-radio value="1">Option 1</wa-radio>
  <wa-radio value="2">Option 2</wa-radio>
  <wa-radio value="3">Option 3</wa-radio>
</wa-radio-group>
<br />
<wa-radio-group label="Large options" size="l" value="3">
  <wa-radio value="1">Option 1</wa-radio>
  <wa-radio value="2">Option 2</wa-radio>
  <wa-radio value="3">Option 3</wa-radio>
</wa-radio-group>
<br />
<wa-radio-group label="Extra large options" size="xl" value="3">
  <wa-radio value="1">Option 1</wa-radio>
  <wa-radio value="2">Option 2</wa-radio>
  <wa-radio value="3">Option 3</wa-radio>
</wa-radio-group>


If you need to have radios of varying sizes, place the size attribute on individual radio items instead.

<wa-radio-group label="Mixed options" value="medium">
  <wa-radio value="1" size="xs">Extra Small</wa-radio>
  <wa-radio value="2" size="s">Small</wa-radio>
  <wa-radio value="3" size="m">Medium</wa-radio>
  <wa-radio value="4" size="l">Large</wa-radio>
  <wa-radio value="5" size="xl">Extra Large</wa-radio>
</wa-radio-group>


Validation
Link to This Section

Setting the required attribute to make selecting an option mandatory. If a value has not been selected, it will prevent the form from submitting and display an error message.

<form class="validation">
  <wa-radio-group label="Select an option" name="a" required>
    <wa-radio value="1">Option 1</wa-radio>
    <wa-radio value="2">Option 2</wa-radio>
    <wa-radio value="3">Option 3</wa-radio>
  </wa-radio-group>
  <br />
  <wa-button appearance="filled" type="submit" variant="neutral">Submit</wa-button>
</form>

<script>
  const form = document.querySelector('.validation');

  // Handle form submit
  form.addEventListener('submit', event => {
    event.preventDefault();
    alert('All fields are valid!');
  });
</script>


Custom Validity
Link to This Section

Use the setCustomValidity() method to set a custom validation message. This will prevent the form from submitting and make the browser display the error message you provide. To clear the error, call this function with an empty string.

<form class="custom-validity">
  <wa-radio-group label="Select an option" name="a" value="1">
    <wa-radio value="1">Not me</wa-radio>
    <wa-radio value="2">Me neither</wa-radio>
    <wa-radio value="3">Choose me</wa-radio>
  </wa-radio-group>
  <br />
  <wa-button appearance="filled" type="submit" variant="neutral">Submit</wa-button>
</form>

<script>
  const form = document.querySelector('.custom-validity');
  const radioGroup = form.querySelector('wa-radio-group');
  const errorMessage = 'You must choose the last option';

  // Set initial validity as soon as the element is defined
  customElements.whenDefined('wa-radio-group').then(() => {
    radioGroup.setCustomValidity(errorMessage);
  });

  // Update validity when a selection is made
  form.addEventListener('change', () => {
    const isValid = radioGroup.value === '3';
    radioGroup.setCustomValidity(isValid ? '' : errorMessage);
  });

  // Handle form submit
  form.addEventListener('submit', event => {
    event.preventDefault();
    alert('All fields are valid!');
  });
</script>


Valid slot names for this component (use exactly these — any other slot value
is silently ignored and the element falls back to the default slot):

•	(default) — The default slot where <wa-radio> elements are placed.
•	label — The radio group's label. Required for proper accessibility. Alternatively, you can use the label attribute.
•	hint — Text that describes how to use the radio group. Alternatively, you can use the hint attribute.















