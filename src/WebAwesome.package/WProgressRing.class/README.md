Full documentation: https://webawesome.com/docs/components/progress-ring

<wa-progress-ring>

Stable Feedback Since 2.0

Progress rings show how far along a determinate operation is using a circular indicator. Use them as a compact alternative to progress bars when horizontal space is limited.

<wa-progress-ring value="25"></wa-progress-ring>


Examples
Link to This Section

Size
Link to This Section

Use the --size custom property to set the diameter of the progress ring.

<wa-progress-ring value="50" style="--size: 200px;"></wa-progress-ring>


Track and Indicator Width
Link to This Section

Use the --track-width and --indicator-width custom properties to set the width of the progress ring's track and indicator.

<wa-progress-ring value="50" style="--track-width: 6px; --indicator-width: 12px;"></wa-progress-ring>


Colors
Link to This Section

To change the color, use the --track-color and --indicator-color custom properties.

<wa-progress-ring
  value="50"
  style="
    --track-color: pink;
    --indicator-color: deeppink;
  "
>
</wa-progress-ring>


Labels
Link to This Section

Use the default slot to show a label inside the progress ring.

<wa-progress-ring value="50" class="progress-ring-values" style="margin-bottom: .5rem;">50%</wa-progress-ring>

<br />

<wa-button appearance="filled" circle><wa-icon name="minus" variant="solid" label="Decrease"></wa-icon></wa-button>
<wa-button appearance="filled" circle><wa-icon name="plus" variant="solid" label="Increase"></wa-icon></wa-button>

<script>
  const progressRing = document.querySelector('.progress-ring-values');
  const subtractButton = progressRing.nextElementSibling.nextElementSibling;
  const addButton = subtractButton.nextElementSibling;

  addButton.addEventListener('click', () => {
    const value = Math.min(100, progressRing.value + 10);
    progressRing.value = value;
    progressRing.textContent = `${value}%`;
  });

  subtractButton.addEventListener('click', () => {
    const value = Math.max(0, progressRing.value - 10);
    progressRing.value = value;
    progressRing.textContent = `${value}%`;
  });
</script>


Valid slot names for this component (use exactly these — any other slot value
is silently ignored and the element falls back to the default slot):

•	(default) — A label to show inside the ring.











