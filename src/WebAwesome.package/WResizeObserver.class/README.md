Full documentation: https://webawesome.com/docs/components/resize-observer

<wa-resize-observer>

Stable Helpers Since 2.0

Resize observers watch their slotted elements for size changes and emit an event when they occur. Provides a thin, declarative interface to the browser's ResizeObserver API.

The resize observer will report changes to the dimensions of the elements it wraps through the wa-resize event. When emitted, a collection of ResizeObserverEntry objects will be attached to event.detail that contains the target element and information about its dimensions.

<div class="resize-observer-overview">
  <wa-resize-observer>
    <div>Resize this box and watch the console 👉</div>
  </wa-resize-observer>
</div>

<script>
  const container = document.querySelector('.resize-observer-overview');
  const resizeObserver = container.querySelector('wa-resize-observer');

  resizeObserver.addEventListener('wa-resize', event => {
    console.log(event.detail);
  });
</script>

<style>
  .resize-observer-overview div {
    display: flex;
    border: solid 2px var(--wa-color-surface-border);
    align-items: center;
    justify-content: center;
    text-align: center;
    padding: 4rem 2rem;
  }
</style>


Valid slot names for this component (use exactly these — any other slot value
is silently ignored and the element falls back to the default slot):

•	(default) — One or more elements to watch for resizing.







