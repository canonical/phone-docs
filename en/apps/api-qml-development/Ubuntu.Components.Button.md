---
Title: Ubuntu.Components.Button
---

# Ubuntu.Components.Button

<span class="subtitle"></span>
<!-- $$$Button-brief -->
<p>Standard Ubuntu button. More...</p>
<!-- @@@Button -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.AbstractButton.md">AbstractButton</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#color-prop">color</a></b></b> : color</li>
<li class="fn"><b><b><a href="#font-prop">font</a></b></b> : font</li>
<li class="fn"><b><b><a href="#gradient-prop">gradient</a></b></b> : Gradient</li>
<li class="fn"><b><b><a href="#iconPosition-prop">iconPosition</a></b></b> : string</li>
<li class="fn"><b><b><a href="#strokeColor-prop">strokeColor</a></b></b> : color</li>
</ul>
<!-- $$$Button-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Examples:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="index.html">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Send&quot;</span>
<span class="name">onClicked</span>: <span class="name">print</span>(<span class="string">&quot;clicked text-only Button&quot;</span>)
}
<span class="type"><a href="index.html">Button</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
<span class="name">gradient</span>: <span class="name">UbuntuColors</span>.<span class="name">greyGradient</span>
<span class="name">onClicked</span>: <span class="name">print</span>(<span class="string">&quot;clicked icon-only Button&quot;</span>)
}
<span class="type"><a href="index.html">Button</a></span> {
<span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
<span class="name">text</span>: <span class="string">&quot;Icon on left&quot;</span>
<span class="name">iconPosition</span>: <span class="string">&quot;left&quot;</span>
<span class="name">onClicked</span>: <span class="name">print</span>(<span class="string">&quot;clicked text and icon Button&quot;</span>)
}
}</pre>
<p>An <a href="Ubuntu.Components.Action.md">Action</a> can be used to specify <b>clicked</b>, iconSource and text. Example:</p>
<pre class="qml"> <span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span> {
<span class="name">id</span>: <span class="name">action1</span>
<span class="name">text</span>: <span class="string">&quot;Click me&quot;</span>
<span class="name">onTriggered</span>: <span class="name">print</span>(<span class="string">&quot;action!&quot;</span>)
<span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
}
<span class="type"><a href="index.html">Button</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">action</span>: <span class="name">action1</span>
<span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">warmGrey</span>
}
}</pre>
<!-- @@@Button -->
<h2>Property Documentation</h2>
<!-- $$$color -->
<table class="qmlname"><tr valign="top" id="color-prop"><td class="tblQmlPropNode"><p><span class="name">color</span> : <span class="type">color</span></p></td></tr></table><p>The background color of the button.</p>
<p><b>See also </b><a href="#gradient-prop">gradient</a>.</p>
<!-- @@@color -->
<br/>
<!-- $$$font -->
<table class="qmlname"><tr valign="top" id="font-prop"><td class="tblQmlPropNode"><p><span class="name">font</span> : <span class="type"><a href="#font-prop">font</a></span></p></td></tr></table><p>The font used for the button's text.</p>
<!-- @@@font -->
<br/>
<!-- $$$gradient -->
<table class="qmlname"><tr valign="top" id="gradient-prop"><td class="tblQmlPropNode"><p><span class="name">gradient</span> : <span class="type"><a href="QtQuick.Gradient.md">Gradient</a></span></p></td></tr></table><p>The gradient used to fill the background of the button.</p>
<p>Standard Ubuntu gradients are defined in <a href="Ubuntu.Components.UbuntuColors.md">UbuntuColors</a>.</p>
<p>If both a gradient and a color are specified, the gradient will be used.</p>
<p><b>See also </b><a href="#color-prop">color</a>.</p>
<!-- @@@gradient -->
<br/>
<!-- $$$iconPosition -->
<table class="qmlname"><tr valign="top" id="iconPosition-prop"><td class="tblQmlPropNode"><p><span class="name">iconPosition</span> : <span class="type">string</span></p></td></tr></table><p>The position of the icon relative to the text. Options are &quot;left&quot; and &quot;right&quot;. The default value is &quot;left&quot;.</p>
<p>If only text or only an icon is defined, this property is ignored and the text or icon is centered horizontally and vertically in the button.</p>
<p>Currently this is a string value. We are waiting for support for enums: https://bugreports.qt-project.org/browse/QTBUG-14861</p>
<!-- @@@iconPosition -->
<br/>
<!-- $$$strokeColor -->
<table class="qmlname"><tr valign="top" id="strokeColor-prop"><td class="tblQmlPropNode"><p><span class="name">strokeColor</span> : <span class="type">color</span></p></td></tr></table><p>If set to a color, the button has a stroke border instead of a filled shape.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.1.</p>
<!-- @@@strokeColor -->
<br/>
