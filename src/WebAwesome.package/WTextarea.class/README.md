Full documentation: https://webawesome.com/docs/components/textarea

<wa-textarea>

Stable Forms Since 2.0

Textareas collect multi-line text input from the user, with optional resizing and character counting.

<wa-textarea label="Type somethin', will ya"></wa-textarea>


This component works with standard <form> elements. Please refer to the section on form controls to learn more about form submission and client-side validation.

Examples
Link to This Section

Labels
Link to This Section

Use the label attribute to give the textarea an accessible label. For labels that contain HTML, use the label slot instead.

<wa-textarea label="Comments"></wa-textarea>


Hint
Link to This Section

Add descriptive hint to a textarea with the hint attribute. For hints that contain HTML, use the hint slot instead.

<wa-textarea label="Feedback" hint="Please tell us what you think."> </wa-textarea>


Rows
Link to This Section

Use the rows attribute to change the number of text rows that get shown.

<wa-textarea rows="2"></wa-textarea>


Placeholders
Link to This Section

Use the placeholder attribute to add a placeholder.

<wa-textarea placeholder="Type something"></wa-textarea>


Appearance
Link to This Section

Use the appearance attribute to change the textarea's visual appearance.

<wa-textarea placeholder="Type something" appearance="filled"></wa-textarea><br />
<wa-textarea placeholder="Type something" appearance="filled-outlined"></wa-textarea><br />
<wa-textarea placeholder="Type something" appearance="outlined"></wa-textarea>


Disabled
Link to This Section

Use the disabled attribute to disable a textarea.

<wa-textarea placeholder="Textarea" disabled></wa-textarea>


Value
Link to This Section

Use the value attribute to set an initial value.

<wa-textarea value="Write something awesome!"></wa-textarea>


Sizes
Link to This Section

Use the size attribute to change a textarea's size.

<wa-textarea placeholder="Extra Small" size="xs"></wa-textarea>
<br />
<wa-textarea placeholder="Small" size="s"></wa-textarea>
<br />
<wa-textarea placeholder="Medium" size="m"></wa-textarea>
<br />
<wa-textarea placeholder="Large" size="l"></wa-textarea>
<br />
<wa-textarea placeholder="Extra Large" size="xl"></wa-textarea>


Prevent Resizing
Link to This Section

By default, textareas can be resized vertically by the user. To prevent resizing, set the resize attribute to none.

<wa-textarea resize="none"></wa-textarea>


Expand with Content
Link to This Section

Textareas will automatically resize to expand to fit their content when resize is set to auto.

<wa-textarea resize="auto"></wa-textarea>


Resize horizontal
Link to This Section

Textareas can be made to resize horizontally when resize is set to "horizontal"

<wa-textarea resize="horizontal"></wa-textarea>


Resize both
Link to This Section

Textareas can be made to resize both vertically and horizontally when resize is set to "both"

<wa-textarea resize="both"></wa-textarea>


Character Count
Link to This Section

Add the with-count attribute to show a character count below the textarea. When combined with maxlength, the count shows remaining characters instead. The count is exposed to assistive technologies using a live region so screen readers can announce updates as the user types.

<wa-textarea label="Comments" hint="Share your thoughts with us" with-count></wa-textarea>
<br />
<wa-textarea label="Bio" hint="Tell us a little about yourself" with-count maxlength="100"></wa-textarea>


Valid slot names for this component (use exactly these — any other slot value
is silently ignored and the element falls back to the default slot):

•	label — The textarea's label. Alternatively, you can use the label attribute.
•	hint — Text that describes how to use the input. Alternatively, you can use the hint attribute.



















