Full documentation: https://webawesome.com/docs/components/checkbox

<wa-checkbox>

Stable Forms Since 2.0

Checkboxes let users toggle an option on or off, or select multiple items from a list. They also support an indeterminate state for partial selections in groups.

<wa-checkbox>Checkbox</wa-checkbox>


This component works with standard <form> elements. Please refer to the section on form controls to learn more about form submission and client-side validation.

Examples
Link to This Section

Checked
Link to This Section

Use the checked attribute to activate the checkbox.

<wa-checkbox checked>Checked</wa-checkbox>


The checked attribute is the initial value and does not reflect changes, consistent with native checkboxes. To toggle the checked state with JavaScript, use the checked property instead. To target checked checkboxes with CSS, use the :state(checked) selector.

Indeterminate
Link to This Section

Use the indeterminate attribute to make the checkbox indeterminate.

<wa-checkbox indeterminate>Indeterminate</wa-checkbox>


Disabled
Link to This Section

Use the disabled attribute to disable the checkbox.

<wa-checkbox disabled>Disabled</wa-checkbox>


Sizes
Link to This Section

Use the size attribute to change a checkbox's size.

<wa-checkbox size="xs">Extra Small</wa-checkbox>
<br />
<wa-checkbox size="s">Small</wa-checkbox>
<br />
<wa-checkbox size="m">Medium</wa-checkbox>
<br />
<wa-checkbox size="l">Large</wa-checkbox>
<br />
<wa-checkbox size="xl">Extra Large</wa-checkbox>


Hint
Link to This Section

Add descriptive hint to a switch with the hint attribute. For hints that contain HTML, use the hint slot instead.

<wa-checkbox hint="What should the user know about the checkbox?">Label</wa-checkbox>


Custom Validity
Link to This Section

Use the setCustomValidity() method to set a custom validation message. This will prevent the form from submitting and make the browser display the error message you provide. To clear the error, call this function with an empty string.

<form class="custom-validity">
  <wa-checkbox>Check me</wa-checkbox>
  <br />
  <wa-button appearance="filled" type="submit" variant="neutral" style="margin-top: 1rem;">Submit</wa-button>
</form>
<script>
  const form = document.querySelector('.custom-validity');
  const checkbox = form.querySelector('wa-checkbox');
  const errorMessage = `Don't forget to check me!`;

  // Set initial validity as soon as the element is defined
  customElements.whenDefined('wa-checkbox').then(async () => {
    await checkbox.updateComplete;
    checkbox.setCustomValidity(errorMessage);
  });

  // Update validity on change
  checkbox.addEventListener('change', () => {
    checkbox.setCustomValidity(checkbox.checked ? '' : errorMessage);
  });

  // Handle submit
  customElements.whenDefined('wa-checkbox').then(() => {
    form.addEventListener('submit', event => {
      event.preventDefault();
      alert('All fields are valid!');
    });
  });
</script>


Valid slot names for this component (use exactly these — any other slot value
is silently ignored and the element falls back to the default slot):

•	(default) — The checkbox's label.
•	hint — Text that describes how to use the checkbox. Alternatively, you can use the hint attribute.























