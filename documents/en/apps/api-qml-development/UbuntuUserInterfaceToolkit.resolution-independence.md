---
Title: UbuntuUserInterfaceToolkit.resolution-independence
---

# UbuntuUserInterfaceToolkit.resolution-independence

<span class="subtitle"></span>
<!-- $$$resolution-independence.html-description -->
<p>The objective of resolution independence is to make it easy for graphical user interfaces in Ubuntu to scale to all the form factors that Ubuntu targets: phones, tablets, laptops and desktops. The approach taken combines simplicity for the designers and developers with visual fidelity, quality and usability.</p>
<h0 id="measurement-units">Measurement Units</h0>
<p>A new measurement unit is defined called the grid unit, abbreviated <b><i>gu</i></b>. 1 grid unit translates to a given number of pixels depending on the type of screen that the user interface is displayed on. For example, on a laptop computer 1 grid unit will typically translate to 8 pixels. The number of pixels per grid unit is chosen in order to preserve the perceived visual size of UI elements and therefore depends on the density of the display and the distance the user is to the screen. We also ensure that 1 grid unit is always an integer number of pixel.</p>
<p>Examples:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Device</th><th >Conversion</th></tr></thead>
<tr valign="top"><td >Most laptops</td><td >1 gu = 8 px</td></tr>
<tr valign="top"><td >Retina laptops</td><td >1 gu = 16 px</td></tr>
<tr valign="top"><td >Phone with 4 inch screen at HD resolution (around 720x1,280 pixels)</td><td >1 gu = 18 px</td></tr>
<tr valign="top"><td >Tablet with 10 inch screen at HD resolution (around 720x1,280 pixels)</td><td >1 gu = 10 px</td></tr>
</table>
<p>The grid unit defines a visual rhythm in Ubuntu and should be used for all measurements. Sizes of elements, spacing, margins, etc. should all use multiples of 1 gu.</p>
<p>It is available from QML as a method of the global object <b>units</b>, instance of <a href="Ubuntu.Components.Units.md">Units</a>.</p>
<p>Example Usage:</p>
<pre class="cpp">import Ubuntu<span class="operator">.</span>Components <span class="number">1.2</span>
Item {
width: units<span class="operator">.</span>gu(<span class="number">2</span>)
height: units<span class="operator">.</span>gu(<span class="number">5</span>)
}</pre>
<p>Exceptionally, in order to accommodate for the rare cases where measurements of less than 1 gu are needed another unit is available: the density independent pixel, abbreviated <b><i>dp</i></b>. 1 dp typically translates to 1 pixel on laptops and low density mobile phones and tablets.</p>
<p>Example Usage:</p>
<pre class="cpp">import Ubuntu<span class="operator">.</span>Components <span class="number">1.2</span>
Rectangle {
height: units<span class="operator">.</span>dp(<span class="number">1</span>)
}</pre>
<h0 id="bitmaps">Bitmaps</h0>
<p>Vector graphics, fonts and programmatically drawn elements will usually scale well to the different devices. On the other hand, bitmaps will typically require a bit more care.</p>
<p>The size of a bitmap needs to be adequate to render well on a given device. The toolkit allows to design multiple versions of a bitmap and choose the appropriate one dynamically depending on the device the application is being run on. In order to know for what target device a given version of a bitmap was produced, we define a file naming convention based on the number of pixel per grid unit of the device.</p>
<p>Example:</p>
<p>If the target device the bitmap is produced for has 10 pixels per grid unit, then the file name of the bitmap should be suffixed with @10: <i>my_bitmap.png</i> should be renamed to <i>my_bitmap@10.png</i>.</p>
<p>In order to support the highest possible resolution devices on the market, we recommend to always design bitmaps for a device that would have 30 pixels per grid unit (@30 suffix). The system will perform a high quality downscaling of the bitmap when needed on lower resolution screens.</p>
<p>Example:</p>
<p>If the destination size of the bitmap is 10 gu * 10 gu and the developer targets a device that has 18 pixels per grid unit (1 gu = 18 px), the bitmap should still be created as if 1 gu = 30 px which results in a 300 px * 300 px bitmap. When testing on the device the bitmap will be downscaled by a factor of 30 / 18 = 1.66667.</p>
<h0 id="fonts">Fonts</h0>
<p>It is critical for the font sizes to be consistent across Ubuntu and to have a rhythm defining them. Instead of setting the font size in pixels or points, it is imperative to define the font size in terms of literals:</p>
<table class="generic">
<tr valign="top"><td ><b>x-large</b></td></tr>
<tr valign="top"><td ><b>large</b></td></tr>
<tr valign="top"><td ><b>medium</b></td></tr>
<tr valign="top"><td ><b>small</b></td></tr>
<tr valign="top"><td ><b>x-small</b></td></tr>
</table>
<p>Example Usage:</p>
<pre class="cpp">import Ubuntu<span class="operator">.</span>Components <span class="number">1.2</span>
Label {
fontSize: <span class="string">&quot;small&quot;</span>
}</pre>
<p>For reference when designing, these sizes correspond to the following pixel measurements:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Font Size</th><th >Desktop</th><th >Smart Phone with 4&quot; HD screen</th><th >Tablet with 10&quot; HD screen</th></tr></thead>
<tr valign="top"><td ><b><i>x-large</i></b></td><td >34 px</td><td >76 px</td><td >42 px</td></tr>
<tr valign="top"><td ><b><i>large</i></b></td><td >20 px</td><td >45 px</td><td >25 px</td></tr>
<tr valign="top"><td ><b><i>medium</i></b></td><td >14 px</td><td >31 px</td><td >18 px</td></tr>
<tr valign="top"><td ><b><i>small</i></b></td><td >12 px</td><td >27 px</td><td >15 px</td></tr>
<tr valign="top"><td ><b><i>x-small</i></b></td><td >10 px</td><td >22 px</td><td >12 px</td></tr>
</table>
<!-- @@@resolution-independence.html -->
<p class="naviNextPrevious footerNavi">
<li><a class="nextPage" href="UbuntuUserInterfaceToolkit.overview-ubuntu-sdk.md">Ubuntu User Interface Toolkit</a></li>
</p>
