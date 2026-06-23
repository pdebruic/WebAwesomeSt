Full documentation: https://webawesome.com/docs/components/animated-image

<wa-animated-image>

Stable Media Since 2.0

Animated images display GIFs and WEBPs with controls to play and pause them on demand. Use them when you want motion but need to give users control over when it plays.

<wa-animated-image
  src="https://shoelace.style/assets/images/walk.gif"
  alt="Animation of untied shoes walking on pavement"
></wa-animated-image>


This component uses <canvas> to draw freeze frames, so images are subject to cross-origin restrictions.

Examples
Link to This Section

WEBP Images
Link to This Section

Both GIF and WEBP images are supported.

<wa-animated-image
  src="https://shoelace.style/assets/images/tie.webp"
  alt="Animation of a shoe being tied"
></wa-animated-image>


Setting a Width and Height
Link to This Section

To set a custom size, apply a width and/or height to the host element.

<wa-animated-image
  src="https://shoelace.style/assets/images/walk.gif"
  alt="Animation of untied shoes walking on pavement"
  style="width: 150px; height: 200px;"
>
</wa-animated-image>


Customizing the Control Box
Link to This Section

You can change the appearance and location of the control box by targeting the control-box part in your styles.

<wa-animated-image
  src="https://shoelace.style/assets/images/walk.gif"
  alt="Animation of untied shoes walking on pavement"
  class="animated-image-custom-control-box"
></wa-animated-image>

<style>
  .animated-image-custom-control-box::part(control-box) {
    top: auto;
    right: auto;
    bottom: 1rem;
    left: 1rem;
    background-color: deeppink;
    border: none;
    color: pink;
  }
</style>


Valid slot names for this component (use exactly these — any other slot value
is silently ignored and the element falls back to the default slot):

•	play-icon — Optional play icon to use instead of the default. Works best with <wa-icon>.
•	pause-icon — Optional pause icon to use instead of the default. Works best with <wa-icon>.















