---
Title: Ubuntu.Components.Icon
---

# Ubuntu.Components.Icon

<span class="subtitle"></span>
<!-- $$$Icon-brief -->
<p>The Icon component displays an icon from the icon theme. More...</p>
<!-- @@@Icon -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="../sdk-14.10/QtQuick.Item.md">Item</a></p>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ProgressionSlot.md">ProgressionSlot</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#asynchronous-prop">asynchronous</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#color-prop">color</a></b></b> : color</li>
<li class="fn"><b><b><a href="#keyColor-prop">keyColor</a></b></b> : color</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#source-prop">source</a></b></b> : url</li>
</ul>
<!-- $$$Icon-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The icon theme contains a set of standard icons referred to by their name. Using icons whenever possible enhances consistency accross applications. Each icon has a name and can have different visual representations depending on the size requested.</p>
<p>Icons can also be colorized. Setting the <a href="#color-prop">color</a> property will make all pixels with the <a href="#keyColor-prop">keyColor</a> (by default #808080) colored.</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="index.html">Icon</a></span> {
<span class="name">width</span>: <span class="number">64</span>
<span class="name">height</span>: <span class="number">64</span>
<span class="name">name</span>: <span class="string">&quot;search&quot;</span>
}</pre>
<p>Example of colorization:</p>
<pre class="qml"><span class="type"><a href="index.html">Icon</a></span> {
<span class="name">width</span>: <span class="number">64</span>
<span class="name">height</span>: <span class="number">64</span>
<span class="name">name</span>: <span class="string">&quot;search&quot;</span>
<span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">warmGrey</span>
}</pre>
<p>Icon themes are created following the <a href="http://standards.freedesktop.org/icon-theme-spec/icon-theme-spec-latest.html">Freedesktop Icon Theme Specification</a>.</p>
<!-- @@@Icon -->
<h2>Property Documentation</h2>
<!-- $$$asynchronous -->
<table class="qmlname"><tr valign="top" id="asynchronous-prop"><td class="tblQmlPropNode"><p><span class="name">asynchronous</span> : <span class="type">bool</span></p></td></tr></table><p>The property drives the image loading of the icon. Defaults to false.</p>
<!-- @@@asynchronous -->
<br/>
<!-- $$$color -->
<table class="qmlname"><tr valign="top" id="color-prop"><td class="tblQmlPropNode"><p><span class="name">color</span> : <span class="type">color</span></p></td></tr></table><p>The color that all pixels that originally are of color <a href="#keyColor-prop">keyColor</a> should take.</p>
<!-- @@@color -->
<br/>
<!-- $$$keyColor -->
<table class="qmlname"><tr valign="top" id="keyColor-prop"><td class="tblQmlPropNode"><p><span class="name">keyColor</span> : <span class="type">color</span></p></td></tr></table><p>The color of the pixels that should be colorized. By default it is set to #808080.</p>
<!-- @@@keyColor -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>The name of the icon to display.</p>
<p>If both name and source are set, name will be ignored.</p>
<p><b>Note: </b>The complete list of icons available in Ubuntu is not published yet. For now please refer to the folders where the icon themes are installed:</p><ul>
<li>Ubuntu Touch: /usr/share/icons/suru</li>
<li>Ubuntu Desktop: /usr/share/icons/ubuntu-mono-dark</li>
</ul>
<p>These 2 separate icon themes will be merged soon.</p>
<!-- @@@name -->
<br/>
<!-- $$$source -->
<table class="qmlname"><tr valign="top" id="source-prop"><td class="tblQmlPropNode"><p><span class="name">source</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td></tr></table><p>The source url of the icon to display. It has precedence over name.</p>
<p>If both name and source are set, name will be ignored.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.1.</p>
<!-- @@@source -->
<br/>
