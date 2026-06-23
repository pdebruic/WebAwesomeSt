Full documentation: https://webawesome.com/docs/components/spinner

<wa-spinner>

Stable Feedback Since 2.0

Spinners indicate that an operation is in progress when the duration is unknown. Use them for loading states where a determinate progress bar isn't practical.

<wa-spinner></wa-spinner>


Examples
Link to This Section

Size
Link to This Section

Spinners are sized based on the current font size. To change their size, set the font-size property on the spinner itself or on a parent element as shown below.

<wa-spinner></wa-spinner>
<wa-spinner style="font-size: 2rem;"></wa-spinner>
<wa-spinner style="font-size: 3rem;"></wa-spinner>


Track Width
Link to This Section

The width of the spinner's track can be changed by setting the --track-width custom property.

<wa-spinner style="font-size: 50px; --track-width: 10px;"></wa-spinner>


Color
Link to This Section

The spinner's colors can be changed by setting the --indicator-color and --track-color custom properties.

<wa-spinner style="font-size: 3rem; --indicator-color: deeppink; --track-color: pink;"></wa-spinner>











