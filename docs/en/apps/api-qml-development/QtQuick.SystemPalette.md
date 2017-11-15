---
Title: QtQuick.SystemPalette
---

# QtQuick.SystemPalette

<span class="subtitle"></span>
<!-- $$$SystemPalette-brief -->
<p>Provides access to the Qt palettes More...</p>
<!-- @@@SystemPalette -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#alternateBase-prop">alternateBase</a></b></b> : color</li>
<li class="fn"><b><b><a href="#base-prop">base</a></b></b> : color</li>
<li class="fn"><b><b><a href="#button-prop">button</a></b></b> : color</li>
<li class="fn"><b><b><a href="#buttonText-prop">buttonText</a></b></b> : color</li>
<li class="fn"><b><b><a href="#colorGroup-prop">colorGroup</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#dark-prop">dark</a></b></b> : color</li>
<li class="fn"><b><b><a href="#highlight-prop">highlight</a></b></b> : color</li>
<li class="fn"><b><b><a href="#highlightedText-prop">highlightedText</a></b></b> : color</li>
<li class="fn"><b><b><a href="#light-prop">light</a></b></b> : color</li>
<li class="fn"><b><b><a href="#mid-prop">mid</a></b></b> : color</li>
<li class="fn"><b><b><a href="#midlight-prop">midlight</a></b></b> : color</li>
<li class="fn"><b><b><a href="#shadow-prop">shadow</a></b></b> : color</li>
<li class="fn"><b><b><a href="#text-prop">text</a></b></b> : color</li>
<li class="fn"><b><b><a href="#window-prop">window</a></b></b> : color</li>
<li class="fn"><b><b><a href="#windowText-prop">windowText</a></b></b> : color</li>
</ul>
<!-- $$$SystemPalette-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">SystemPalette</a> type provides access to the Qt application palettes. This provides information about the standard colors used for application windows, buttons and other features. These colors are grouped into three <i>color groups</i>: <code>Active</code>, <code>Inactive</code>, and <code>Disabled</code>. See the QPalette documentation for details about color groups and the properties provided by <a href="index.html">SystemPalette</a>.</p>
<p>This can be used to color items in a way that provides a more native look and feel.</p>
<p>The following example creates a palette from the <code>Active</code> color group and uses this to color the window and text items appropriately:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="type"><a href="index.html">SystemPalette</a></span> { <span class="name">id</span>: <span class="name">myPalette</span>; <span class="name">colorGroup</span>: <span class="name">SystemPalette</span>.<span class="name">Active</span> }
<span class="name">width</span>: <span class="number">640</span>; <span class="name">height</span>: <span class="number">480</span>
<span class="name">color</span>: <span class="name">myPalette</span>.<span class="name">window</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Hello!&quot;</span>; <span class="name">color</span>: <span class="name">myPalette</span>.<span class="name">windowText</span>
}
}</pre>
<p><b>See also </b>QPalette.</p>
<!-- @@@SystemPalette -->
<h2>Property Documentation</h2>
<!-- $$$alternateBase -->
<table class="qmlname"><tr valign="top" id="alternateBase-prop"><td class="tblQmlPropNode"><p><span class="name">alternateBase</span> : <span class="type">color</span></p></td></tr></table><p>The alternate base color of the current color group.</p>
<p><b>See also </b>QPalette::ColorRole.</p>
<!-- @@@alternateBase -->
<br/>
<!-- $$$base -->
<table class="qmlname"><tr valign="top" id="base-prop"><td class="tblQmlPropNode"><p><span class="name">base</span> : <span class="type">color</span></p></td></tr></table><p>The base color of the current color group.</p>
<p><b>See also </b>QPalette::ColorRole.</p>
<!-- @@@base -->
<br/>
<!-- $$$button -->
<table class="qmlname"><tr valign="top" id="button-prop"><td class="tblQmlPropNode"><p><span class="name">button</span> : <span class="type">color</span></p></td></tr></table><p>The button color of the current color group.</p>
<p><b>See also </b>QPalette::ColorRole.</p>
<!-- @@@button -->
<br/>
<!-- $$$buttonText -->
<table class="qmlname"><tr valign="top" id="buttonText-prop"><td class="tblQmlPropNode"><p><span class="name">buttonText</span> : <span class="type">color</span></p></td></tr></table><p>The button text foreground color of the current color group.</p>
<p><b>See also </b>QPalette::ColorRole.</p>
<!-- @@@buttonText -->
<br/>
<!-- $$$colorGroup -->
<table class="qmlname"><tr valign="top" id="colorGroup-prop"><td class="tblQmlPropNode"><p><span class="name">colorGroup</span> : <span class="type">enumeration</span></p></td></tr></table><p>The color group of the palette. This can be one of:</p>
<ul>
<li><a href="index.html">SystemPalette</a>.Active (default)</li>
<li><a href="index.html">SystemPalette</a>.Inactive</li>
<li><a href="index.html">SystemPalette</a>.Disabled</li>
</ul>
<p><b>See also </b>QPalette::ColorGroup.</p>
<!-- @@@colorGroup -->
<br/>
<!-- $$$dark -->
<table class="qmlname"><tr valign="top" id="dark-prop"><td class="tblQmlPropNode"><p><span class="name">dark</span> : <span class="type">color</span></p></td></tr></table><p>The dark color of the current color group.</p>
<p><b>See also </b>QPalette::ColorRole.</p>
<!-- @@@dark -->
<br/>
<!-- $$$highlight -->
<table class="qmlname"><tr valign="top" id="highlight-prop"><td class="tblQmlPropNode"><p><span class="name">highlight</span> : <span class="type">color</span></p></td></tr></table><p>The highlight color of the current color group.</p>
<p><b>See also </b>QPalette::ColorRole.</p>
<!-- @@@highlight -->
<br/>
<!-- $$$highlightedText -->
<table class="qmlname"><tr valign="top" id="highlightedText-prop"><td class="tblQmlPropNode"><p><span class="name">highlightedText</span> : <span class="type">color</span></p></td></tr></table><p>The highlighted text color of the current color group.</p>
<p><b>See also </b>QPalette::ColorRole.</p>
<!-- @@@highlightedText -->
<br/>
<!-- $$$light -->
<table class="qmlname"><tr valign="top" id="light-prop"><td class="tblQmlPropNode"><p><span class="name">light</span> : <span class="type">color</span></p></td></tr></table><p>The light color of the current color group.</p>
<p><b>See also </b>QPalette::ColorRole.</p>
<!-- @@@light -->
<br/>
<!-- $$$mid -->
<table class="qmlname"><tr valign="top" id="mid-prop"><td class="tblQmlPropNode"><p><span class="name">mid</span> : <span class="type">color</span></p></td></tr></table><p>The mid color of the current color group.</p>
<p><b>See also </b>QPalette::ColorRole.</p>
<!-- @@@mid -->
<br/>
<!-- $$$midlight -->
<table class="qmlname"><tr valign="top" id="midlight-prop"><td class="tblQmlPropNode"><p><span class="name">midlight</span> : <span class="type">color</span></p></td></tr></table><p>The midlight color of the current color group.</p>
<p><b>See also </b>QPalette::ColorRole.</p>
<!-- @@@midlight -->
<br/>
<!-- $$$shadow -->
<table class="qmlname"><tr valign="top" id="shadow-prop"><td class="tblQmlPropNode"><p><span class="name">shadow</span> : <span class="type">color</span></p></td></tr></table><p>The shadow color of the current color group.</p>
<p><b>See also </b>QPalette::ColorRole.</p>
<!-- @@@shadow -->
<br/>
<!-- $$$text -->
<table class="qmlname"><tr valign="top" id="text-prop"><td class="tblQmlPropNode"><p><span class="name">text</span> : <span class="type">color</span></p></td></tr></table><p>The text color of the current color group.</p>
<p><b>See also </b>QPalette::ColorRole.</p>
<!-- @@@text -->
<br/>
<!-- $$$window -->
<table class="qmlname"><tr valign="top" id="window-prop"><td class="tblQmlPropNode"><p><span class="name">window</span> : <span class="type">color</span></p></td></tr></table><p>The window (general background) color of the current color group.</p>
<p><b>See also </b>QPalette::ColorRole.</p>
<!-- @@@window -->
<br/>
<!-- $$$windowText -->
<table class="qmlname"><tr valign="top" id="windowText-prop"><td class="tblQmlPropNode"><p><span class="name">windowText</span> : <span class="type">color</span></p></td></tr></table><p>The window text (general foreground) color of the current color group.</p>
<p><b>See also </b>QPalette::ColorRole.</p>
<!-- @@@windowText -->
<br/>
