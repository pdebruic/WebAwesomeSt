Full documentation: https://webawesome.com/docs/components/badge

<wa-badge>

Stable Feedback Since 2.0

Badges draw attention to adjacent content by displaying a status, count, or label. Use them to highlight notifications, categorize items, or flag new activity.

<wa-badge>Badge</wa-badge>


Examples
Link to This Section

Variants
Link to This Section

Set the variant attribute to change the badge's variant.

<wa-badge variant="brand">Brand</wa-badge>
<wa-badge variant="success">Success</wa-badge>
<wa-badge variant="neutral">Neutral</wa-badge>
<wa-badge variant="warning">Warning</wa-badge>
<wa-badge variant="danger">Danger</wa-badge>


Appearance
Link to This Section

Use the appearance attribute to change the badge's visual appearance.

<div style="margin-block-end: 1rem;">
  <wa-badge appearance="accent" variant="neutral">Accent</wa-badge>
  <wa-badge appearance="filled-outlined" variant="neutral">Filled-Outlined</wa-badge>
  <wa-badge appearance="filled" variant="neutral">Filled</wa-badge>
  <wa-badge appearance="outlined" variant="neutral">Outlined</wa-badge>
</div>
<div style="margin-block-end: 1rem;">
  <wa-badge appearance="accent" variant="brand">Accent</wa-badge>
  <wa-badge appearance="filled-outlined" variant="brand">Filled-Outlined</wa-badge>
  <wa-badge appearance="filled" variant="brand">Filled</wa-badge>
  <wa-badge appearance="outlined" variant="brand">Outlined</wa-badge>
</div>
<div style="margin-block-end: 1rem;">
  <wa-badge appearance="accent" variant="success">Accent</wa-badge>
  <wa-badge appearance="filled-outlined" variant="success">Filled-Outlined</wa-badge>
  <wa-badge appearance="filled" variant="success">Filled</wa-badge>
  <wa-badge appearance="outlined" variant="success">Outlined</wa-badge>
</div>
<div style="margin-block-end: 1rem;">
  <wa-badge appearance="accent" variant="warning">Accent</wa-badge>
  <wa-badge appearance="filled-outlined" variant="warning">Filled-Outlined</wa-badge>
  <wa-badge appearance="filled" variant="warning">Filled</wa-badge>
  <wa-badge appearance="outlined" variant="warning">Outlined</wa-badge>
</div>
<div>
  <wa-badge appearance="accent" variant="danger">Accent</wa-badge>
  <wa-badge appearance="filled-outlined" variant="danger">Filled-Outlined</wa-badge>
  <wa-badge appearance="filled" variant="danger">Filled</wa-badge>
  <wa-badge appearance="outlined" variant="danger">Outlined</wa-badge>
</div>


Size
Link to This Section

Badges are sized relative to the current font size. You can set font-size on any badge (or an ancestor element) to change it.

<wa-badge variant="brand" style="font-size: var(--wa-font-size-xs);">Brand</wa-badge>
<wa-badge variant="brand" style="font-size: var(--wa-font-size-s);">Brand</wa-badge>
<wa-badge variant="brand" style="font-size: var(--wa-font-size-m);">Brand</wa-badge>
<wa-badge variant="brand" style="font-size: var(--wa-font-size-l);">Brand</wa-badge>
<wa-badge variant="brand" style="font-size: var(--wa-font-size-xl);">Brand</wa-badge>


Pill Badges
Link to This Section

Use the pill attribute to give badges rounded edges.

<wa-badge variant="brand" pill>Brand</wa-badge>
<wa-badge variant="success" pill>Success</wa-badge>
<wa-badge variant="neutral" pill>Neutral</wa-badge>
<wa-badge variant="warning" pill>Warning</wa-badge>
<wa-badge variant="danger" pill>Danger</wa-badge>


Drawing Attention
Link to This Section

Use the attention attribute to draw attention to the badge with a subtle animation. Supported effects are bounce, pulse and none.

<div class="badge-attention">
  <wa-badge variant="brand" attention="pulse" pill>1</wa-badge>
  <wa-badge variant="success" attention="pulse" pill>1</wa-badge>
  <wa-badge variant="neutral" attention="pulse" pill>1</wa-badge>
  <wa-badge variant="warning" attention="pulse" pill>1</wa-badge>
  <wa-badge variant="danger" attention="pulse" pill>1</wa-badge>
</div>

<div class="badge-attention">
  <wa-badge variant="brand" attention="bounce" pill>1</wa-badge>
  <wa-badge variant="success" attention="bounce" pill>1</wa-badge>
  <wa-badge variant="neutral" attention="bounce" pill>1</wa-badge>
  <wa-badge variant="warning" attention="bounce" pill>1</wa-badge>
  <wa-badge variant="danger" attention="bounce" pill>1</wa-badge>
</div>

<style>
  .badge-attention {
    margin-block-end: var(--wa-space-m);

    wa-badge:not(:last-of-type) {
      margin-right: 1rem;
    }
  }
</style>


Start & End Decorations
Link to This Section

Use the start and end slots to add presentational elements like <wa-icon> alongside the badge's label.

<wa-badge>
  <wa-icon slot="start" name="seedling"></wa-icon>
  Start
</wa-badge>
<wa-badge>
  <wa-icon slot="end" name="tree"></wa-icon>
  End
</wa-badge>
<wa-badge>
  <wa-icon slot="start" name="cow"></wa-icon>
  <wa-icon slot="end" name="meteor"></wa-icon>
  Both
</wa-badge>


With Buttons
Link to This Section

One of the most common use cases for badges is attaching them to buttons. To make this easier, badges will be automatically positioned at the top-right when they're a child of a button.

<wa-button appearance="filled">
  Requests
  <wa-badge pill>30</wa-badge>
</wa-button>

<wa-button appearance="filled" style="margin-inline-start: 1rem;">
  Warnings
  <wa-badge variant="warning" pill>8</wa-badge>
</wa-button>

<wa-button appearance="filled" style="margin-inline-start: 1rem;">
  Errors
  <wa-badge variant="danger" pill>6</wa-badge>
</wa-button>


Valid slot names for this component (use exactly these — any other slot value
is silently ignored and the element falls back to the default slot):

•	(default) — The badge's content.
•	start — An element, such as <wa-icon>, placed before the label.
•	end — An element, such as <wa-icon>, placed after the label.











