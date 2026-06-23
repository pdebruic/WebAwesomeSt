Full documentation: https://webawesome.com/docs/components/slider

<wa-slider>

Stable Forms Since 2.0

Sliders let users choose a numeric value within a defined range by dragging a thumb along a track.

<wa-slider
  label="Number of users"
  hint="Limit six per team"
  name="value"
  value="3"
  min="0"
  max="6"
  with-markers
  with-tooltip
>
  <span slot="reference">Less</span>
  <span slot="reference">More</span>
</wa-slider>


This component works with standard <form> elements. Please refer to the section on form controls to learn more about form submission and client-side validation.

Examples
Link to This Section

Labels
Link to This Section

Use the label attribute to give the slider an accessible label. For labels that contain HTML, use the label slot instead.

<wa-slider label="Volume" min="0" max="100"></wa-slider>


Hint
Link to This Section

Add descriptive hint to a slider with the hint attribute. For hints that contain HTML, use the hint slot instead.

<wa-slider label="Volume" hint="Controls the volume of the current song." min="0" max="100" value="50"></wa-slider>


Showing tooltips
Link to This Section

Use the with-tooltip attribute to display a tooltip with the current value when the slider is focused or being dragged.

<wa-slider label="Quality" name="quality" min="0" max="100" value="50" with-tooltip></wa-slider>


Setting min, max, and step
Link to This Section

Use the min and max attributes to define the slider's range, and the step attribute to control the increment between values.

<wa-slider label="Between zero and one" min="0" max="1" step="0.1" value="0.5" with-tooltip></wa-slider>


Showing markers
Link to This Section

Use the with-markers attribute to display visual indicators at each step increment. This works best with sliders that have a smaller range of values.

<wa-slider label="Size" name="size" min="0" max="8" value="4" with-markers></wa-slider>


Adding references
Link to This Section

Use the reference slot to add contextual labels below the slider. References are automatically spaced using space-between, making them easy to align with the start, center, and end positions.

<wa-slider
  label="Speed"
  name="speed"
  min="1"
  max="5"
  value="3"
  with-markers
  hint="Controls the speed of the thing you're currently doing."
>
  <span slot="reference">Slow</span>
  <span slot="reference">Medium</span>
  <span slot="reference">Fast</span>
</wa-slider>


If you want to show a reference next to a specific marker, you can add position: absolute to it and set the left, right, top, or bottom property to a percentage that corresponds to the marker's position.

Formatting the value
Link to This Section

Customize how values are displayed in tooltips and announced to screen readers using the valueFormatter property. Set it to a function that accepts a number and returns a formatted string. The Intl.NumberFormat API is particularly useful for this.

<!-- Percent -->
<wa-slider
  id="slider__percent"
  label="Percentage"
  name="percentage"
  value="0.5"
  min="0"
  max="1"
  step=".01"
  with-tooltip
></wa-slider
><br />

<script>
  const slider = document.getElementById('slider__percent');
  const formatter = new Intl.NumberFormat('en-US', { style: 'percent' });

  customElements.whenDefined('wa-slider').then(() => {
    slider.valueFormatter = value => formatter.format(value);
  });
</script>

<!-- Duration -->
<wa-slider id="slider__duration" label="Duration" name="duration" value="12" min="0" max="24" with-tooltip></wa-slider
><br />

<script>
  const slider = document.getElementById('slider__duration');
  const formatter = new Intl.NumberFormat('en-US', { style: 'unit', unit: 'hour', unitDisplay: 'long' });

  customElements.whenDefined('wa-slider').then(() => {
    slider.valueFormatter = value => formatter.format(value);
  });
</script>

<!-- Currency -->
<wa-slider id="slider__currency" label="Currency" name="currency" min="0" max="100" value="50" with-tooltip></wa-slider>

<script>
  const slider = document.getElementById('slider__currency');
  const formatter = new Intl.NumberFormat('en-US', {
    style: 'currency',
    currency: 'USD',
    currencyDisplay: 'symbol',
    maximumFractionDigits: 0,
  });

  customElements.whenDefined('wa-slider').then(() => {
    slider.valueFormatter = value => formatter.format(value);
  });
</script>


Range selection
Link to This Section

Use the range attribute to enable dual-thumb selection for choosing a range of values. Set the initial thumb positions with the min-value and max-value attributes.

<wa-slider
  label="Price Range"
  hint="Select minimum and maximum price"
  name="price"
  range
  min="0"
  max="100"
  min-value="20"
  max-value="80"
  with-tooltip
  id="slider__range"
>
  <span slot="reference">$0</span>
  <span slot="reference">$50</span>
  <span slot="reference">$100</span>
</wa-slider>

<script>
  const slider = document.getElementById('slider__range');
  const formatter = new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD', maximumFractionDigits: 0 });

  customElements.whenDefined('wa-slider').then(() => {
    slider.valueFormatter = value => formatter.format(value);
  });
</script>


For range sliders, the minValue and maxValue properties represent the current positions of the thumbs. When the form is submitted, both values will be included as separate entries with the same name.

const slider = document.querySelector('wa-slider[range]');

// Get the current values
console.log(`Min value: ${slider.minValue}, Max value: ${slider.maxValue}`);

// Set the values programmatically
slider.minValue = 30;
slider.maxValue = 70;


Vertical Sliders
Link to This Section

Set the orientation attribute to vertical to create a vertical slider. Vertical sliders automatically center themselves and fill the available vertical space.

<div style="display: flex; gap: 1rem;">
  <wa-slider orientation="vertical" label="Volume" name="volume" value="65" style="width: 80px"></wa-slider>

  <wa-slider orientation="vertical" label="Bass" name="bass" value="50" style="width: 80px"></wa-slider>

  <wa-slider orientation="vertical" label="Treble" name="treble" value="40" style="width: 80px"></wa-slider>
</div>


Range sliders can also be vertical.

<div style="height: 300px; display: flex; align-items: center; gap: 2rem;">
  <wa-slider
    label="Temperature Range"
    orientation="vertical"
    range
    min="0"
    max="100"
    min-value="30"
    max-value="70"
    with-tooltip
    tooltip-placement="right"
    id="slider__vertical-range"
  >
  </wa-slider>
</div>

<script>
  const slider = document.getElementById('slider__vertical-range');
  slider.valueFormatter = value => {
    return new Intl.NumberFormat('en', {
      style: 'unit',
      unit: 'fahrenheit',
      unitDisplay: 'short',
      minimumFractionDigits: 0,
      maximumFractionDigits: 1,
    }).format(value);
  };
</script>


Size
Link to This Section

Control the slider's size using the size attribute. Valid options include xs, s, m, l, and xl.

<wa-slider size="xs" value="50" label="Extra Small"></wa-slider><br />
<wa-slider size="s" value="50" label="Small"></wa-slider><br />
<wa-slider size="m" value="50" label="Medium"></wa-slider><br />
<wa-slider size="l" value="50" label="Large"></wa-slider><br />
<wa-slider size="xl" value="50" label="Extra Large"></wa-slider>


Indicator Offset
Link to This Section

By default, the filled indicator extends from the minimum value to the current position. Use the indicator-offset attribute to change the starting point of this visual indicator.

<wa-slider
  label="User Friendliness"
  hint="Did you find our product easy to use?"
  name="value"
  value="0"
  min="-5"
  max="5"
  indicator-offset="0"
  with-markers
  with-tooltip
>
  <span slot="reference">Easy</span>
  <span slot="reference">Moderate</span>
  <span slot="reference">Difficult</span>
</wa-slider>


Disabled
Link to This Section

Use the disabled attribute to disable a slider.

<wa-slider label="Disabled" value="50" disabled></wa-slider>


Valid slot names for this component (use exactly these — any other slot value
is silently ignored and the element falls back to the default slot):

•	label — The slider label. Alternatively, you can use the label attribute.
•	hint — Text that describes how to use the input. Alternatively, you can use the hint attribute. instead.
•	reference — One or more reference labels to show visually below the slider.























