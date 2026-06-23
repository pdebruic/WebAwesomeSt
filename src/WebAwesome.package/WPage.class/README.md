Full documentation: https://webawesome.com/docs/components/page

<wa-page>

Stable Layout Since 3.0

Pages scaffold an entire application layout with header, navigation, sidebar, main content, aside, and footer regions. Use them to structure full pages with minimal markup and responsive behavior built in.

The page component is designed to power full webpages. It is flexible enough to handle most modern designs and includes a simple mechanism for handling desktop and mobile navigation.

Layout Anatomy
Link to This Section

This image depicts a page's anatomy, including the default positions of each section. The labels represent the named slots you can use to populate them.

Most slots are optional. Slots that have no content will not be shown, allowing you to opt-in to just the sections you actually need.

Slots

banner header subheader navigation-header navigation navigation-footer main-header main-footer aside footer

Using wa-page
Link to This Section

If you're not familiar with how slots work in HTML, you might want to learn more about slots before using this component.

A number of sections are available as part of the page component, most of which are optional. Content is populated by slotting elements into various locations.

This component does not implement any content sectioning or "semantic elements" internally (such as <main>, <header>, <footer>, etc.). Instead, we recommend that you slot in content sectioning elements wherever you feel they're appropriate.

When using <wa-page>, make sure to zero out all paddings and margins on <html> and <body>, otherwise you may see unexpected gaps. We highly recommend adding the following styles when using <wa-page>:

html,
body {
  min-height: 100%;
  padding: 0;
  margin: 0;
}


If you use native styles, this is already taken care of.

Examples
Link to This Section

Open demos in a new tab to examine their behavior in different window sizes. The previews below use simulated zooming which, depending on your browser, may not be accurate.

Documentation
Link to This Section

A sample documentation page using all available slots. The navigation menu collapses into a drawer at a custom mobile-breakpoint of 920px. It can be opened using a button with [data-toggle-nav] that appears in the subheader slot. The aside slot is also hidden below 920px.

Open demo in a new window

Media
Link to This Section

A sample media app page using header, navigation-header, main-header, and main-footer along with the default slot. The navigation menu collapses into a drawer at the default mobile-breakpoint and can be opened using a button with [data-toggle-nav] that appears in the header slot.

Open demo in a new window

Customization
Link to This Section

Sticky Sections
Link to This Section

The following sections of a page are "sticky" by default, meaning they remain in position as the user scrolls.

•	banner
•	header
•	subheader
•	menu (navigation itself is not sticky, but its parent menu is)
•	aside


This is often desirable, but you can change this behavior using the disable-sticky attribute. Use a space-delimited list of names to tell the page which sections should not be sticky.

<wa-page disable-sticky="header aside"> ... </wa-page>


Skip To Content
Link to This Section

The layout provides a "skip to content" link that's visually hidden until the user tabs into it. You don't have to do anything to configure this, unless you want to change the text displayed in the link. In that case, you can slot in your own text using the skip-to-content slot.

This example localizes the "skip to content" link for German users.

<wa-page>
  ...
  <span slot="skip-to-content">Zum Inhalt springen</span>
  ...
</wa-page>


Responsiveness
Link to This Section

A page isn't very opinionated when it comes to responsive behaviors, but there are tools in place to help make responsiveness easy.

Default Slot Styles
Link to This Section

Each slot is a flex container and specifies some flex properties so that your content is reasonably responsive by default.

The following slots specify justify-content: space-between and flex-wrap: wrap to evenly distribute child elements horizontally and allow them to wrap when space is limited.

•	header
•	subheader
•	main-header
•	main-footer
•	footer


The following slots specify flex-direction: column to arrange child elements vertically.

•	navigation-header
•	navigation (or menu)
•	navigation-footer
•	aside


And the banner slot specifies justify-content: center to horizontally center its child elements.

You can override the default display and flex properties for each slot with your own CSS.

Responsive Navigation
Link to This Section

When you use the navigation slot, your slotted content automatically collapses into a drawer on smaller screens. The breakpoint at which this occurs is 768px by default, but you can change it using the mobile-breakpoint attribute, which takes either a number or a CSS length.

<wa-page mobile-breakpoint="600"> ... </wa-page>


By default, a "hamburger" button appears at the start of the header to toggle the navigation menu on smaller screens. You can customize what this looks like by slotting your own button into the navigation-toggle slot, or place the data-toggle-nav attribute on any button on your page. This does not have to be a Web Awesome element.

The default button will not be shown when using either of these methods — if you want to use multiple navigation toggles on your page, simply add the data-toggle-nav attribute to multiple elements.

<wa-page mobile-breakpoint="600">
  ...
  <wa-button data-toggle-nav>Menu</wa-button>
  ...
</wa-page>


Alternatively, you can apply nav-state="open" and nav-state="closed" to the layout component to show and hide the navigation, respectively.

<wa-page nav-state="open"> ... </wa-page>


<wa-page> is given the attribute view="mobile" or view="desktop" when the viewport narrower or wider than the mobile-breakpoint value, respectively. You can leverage these attributes to change styles depending on the size of the viewport. This is especially useful to hide your data-toggle-nav button when the viewport is wider.

wa-page[view='desktop'] [data-toggle-nav] {
  display: none;
}


If you use native styles, this is already taken care for you, and the data-toggle-nav button is already hidden on wider screens.

Custom Widths
Link to This Section

You specify widths for some slots on your page with CSS custom properties for --menu-width, --main-width, and --aside-width.

If you specify --menu-width to apply a specific width to your navigation slot, space will still be reserved on the page even below the mobile-breakpoint. To collapse this space on smaller screens, add the following code to your styles.

wa-page[view='mobile'] {
  --menu-width: auto;
}


You can use a similar approach for --aside-width to hide the aside slot on smaller screens. Be sure to also specify display: none for the slot:

wa-page[view='mobile'] {
  --aside-width: auto;

  [slot='aside'] {
    display: none;
  }
}


Spacing
Link to This Section

A page specifies default padding within each slot and a gap between the slot's direct children. You can drop elements into any slot, and reasonable spacing is already applied for you.

You can override the default spacing for each slot with your own CSS. In this example, we're setting custom gap and padding for the footer slot.

[slot='footer'] {
  gap: var(--wa-space-xl);
  padding: var(--wa-space-xl);
}


Utility classes
Link to This Section

Native styles define a few useful defaults for <wa-page>, as well as two utility classes you can use for common responsive design tasks:

•	.wa-mobile-only hides an element on the desktop view
•	.wa-desktop-only hides an element on the mobile view


Valid slot names for this component (use exactly these — any other slot value
is silently ignored and the element falls back to the default slot):

•	(default) — The page's main content.
•	banner — The banner that gets display above the header. The banner will not be shown if no content is provided.
•	header — The header to display at the top of the page. If a banner is present, the header will appear below the banner. The header will not be shown if there is no content.
•	subheader — A subheader to display below the header. This is a good place to put things like breadcrumbs.
•	menu — The left side of the page. If you slot an element in here, you will override the default navigation slot and will be handling navigation on your own. This also will not disable the fallback behavior of the navigation button. This section "sticks" to the top as the page scrolls.
•	navigation-header — The header for a navigation area. On mobile this will be the header for <wa-drawer>.
•	navigation — The main content to display in the navigation area. This is displayed on the left side of the page, if menu is not used. This section "sticks" to the top as the page scrolls.
•	navigation-footer — The footer for a navigation area. On mobile this will be the footer for <wa-drawer>.
•	navigation-toggle — Use this slot to slot in your own button + icon for toggling the navigation drawer. By default it is a <wa-button> + a 3 bars <wa-icon>
•	navigation-toggle-icon — Use this to slot in your own icon for toggling the navigation drawer. By default it is 3 bars <wa-icon>.
•	main-header — Header to display inline above the main content.
•	main-footer — Footer to display inline below the main content.
•	aside — Content to be shown on the right side of the page. Typically contains a table of contents, ads, etc. This section "sticks" to the top as the page scrolls.
•	skip-to-content — The "skip to content" slot. You can override this If you would like to override the Skip to content button and add additional "Skip to X", they can be inserted here.
•	footer — The content to display in the footer. This is always displayed underneath the viewport so will always make the page "scrollable".















