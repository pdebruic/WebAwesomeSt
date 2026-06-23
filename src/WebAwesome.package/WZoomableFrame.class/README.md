Full documentation: https://webawesome.com/docs/components/zoomable-frame

<wa-zoomable-frame>

Stable Media Since 3.0

Zoomable frames embed iframe content with built-in controls for zooming, panning, and managing interaction.

<wa-zoomable-frame src="/examples/themes/showcase" zoom="0.5"> </wa-zoomable-frame>


Examples
Link to This Section

Loading external content
Link to This Section

Use the src attribute to embed external websites or resources. The URL must be accessible, and cross-origin restrictions may apply due to the Same-Origin Policy, potentially limiting access to the iframe's content.

<wa-zoomable-frame src="https://example.com/"> </wa-zoomable-frame>


The zoomable frame fills 100% width by default with a 16:9 aspect ratio. Customize this using the aspect-ratio CSS property.

<wa-zoomable-frame src="https://example.com/" style="aspect-ratio: 4/3;"> </wa-zoomable-frame>


Use the srcdoc attribute or property to display custom HTML content directly within the iframe, perfect for rendering inline content without external resources.

<wa-zoomable-frame srcdoc="<html><body><h1>Hello, World!</h1><p>This is inline content.</p></body></html>">
</wa-zoomable-frame>


When both src and srcdoc are specified, srcdoc takes precedence.

Controlling zoom behavior
Link to This Section

Set the zoom attribute to control the frame's zoom level. Use 1 for 100%, 2 for 200%, 0.5 for 50%, and so on.

Define specific zoom increments with the zoom-levels attribute using space-separated percentages and decimal values like zoom-levels="0.25 0.5 75% 100%".

<wa-zoomable-frame src="/examples/themes/showcase" zoom="0.5" zoom-levels="50% 0.75 100%"> </wa-zoomable-frame>


Hiding zoom controls
Link to This Section

Add the without-controls attribute to hide the zoom control interface from the frame.

<wa-zoomable-frame src="/examples/themes/showcase" without-controls zoom="0.5"> </wa-zoomable-frame>


Preventing user interaction
Link to This Section

Apply the without-interaction attribute to make the frame non-interactive. Note that this prevents keyboard navigation into the frame, which may impact accessibility for some users.

<wa-zoomable-frame src="/examples/themes/showcase" zoom="0.5" without-interaction> </wa-zoomable-frame>


Enabling theme sync
Link to This Section

By default, the frame does not sync theme classes into the iframe. Add the with-theme-sync attribute to mirror the host page's light/dark mode and theme selector classes (such as wa-theme-*, wa-brand-*, and wa-palette-*) into the iframe document. This is useful when the iframe renders Web Awesome styles that should match the host page's theme.

<wa-zoomable-frame src="/examples/themes/showcase" zoom="0.5" with-theme-sync> </wa-zoomable-frame>


Valid slot names for this component (use exactly these — any other slot value
is silently ignored and the element falls back to the default slot):

•	zoom-in-icon — The slot that contains the zoom in icon.
•	zoom-out-icon — The slot that contains the zoom out icon.















