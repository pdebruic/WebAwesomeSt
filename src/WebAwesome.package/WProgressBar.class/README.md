Full documentation: https://webawesome.com/docs/components/progress-bar

<wa-progress-bar>

Stable Feedback Since 2.0

Progress bars show how far along an ongoing operation is as a horizontal fill. Use them for file uploads, multi-step flows, or any task with measurable progress.

<wa-progress-bar value="40"></wa-progress-bar>


Examples
Link to This Section

Labels
Link to This Section

Use the label attribute to label the progress bar and tell assistive devices how to announce it.

<wa-progress-bar value="50" label="Upload progress"></wa-progress-bar>


Custom Height
Link to This Section

Use the --track-height custom property to set the progress bar's height.

<wa-progress-bar value="50" style="--track-height: 6px;"></wa-progress-bar>


Showing Values
Link to This Section

Use the default slot to show a value.

<div class="wa-stack">
  <wa-progress-bar value="50" id="progress-bar-demo">50%</wa-progress-bar>

  <div>
    <wa-button pill appearance="filled">
      <wa-icon name="minus" label="Decrease"></wa-icon>
    </wa-button>
    <wa-button pill appearance="filled">
      <wa-icon name="plus" label="Increase"></wa-icon>
    </wa-button>
  </div>
</div>

<script>
  const progressBar = document.querySelector('#progress-bar-demo');
  const subtractButton = document.querySelector('wa-button:has(wa-icon[name="minus"])');
  const addButton = document.querySelector('wa-button:has(wa-icon[name="plus"])');

  addButton.addEventListener('click', () => {
    const value = Math.min(100, progressBar.value + 10);
    progressBar.value = value;
    progressBar.textContent = `${value}%`;
  });

  subtractButton.addEventListener('click', () => {
    const value = Math.max(0, progressBar.value - 10);
    progressBar.value = value;
    progressBar.textContent = `${value}%`;
  });
</script>


Indeterminate
Link to This Section

The indeterminate attribute can be used to inform the user that the operation is pending, but its status cannot currently be determined. In this state, value is ignored and the label, if present, will not be shown.

<wa-progress-bar indeterminate></wa-progress-bar>


Valid slot names for this component (use exactly these — any other slot value
is silently ignored and the element falls back to the default slot):

•	(default) — A label to show inside the progress indicator.











