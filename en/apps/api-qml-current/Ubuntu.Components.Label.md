---
Title: Ubuntu.Components.Label
---

# Ubuntu.Components.Label

<span class="subtitle"></span>
<!-- $$$Label-brief -->
<p>Extended Text item with Ubuntu styling. More...</p>
<!-- @@@Label -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Text.md">Text</a></p>
</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#textSize-prop">textSize</a></b></b> : enumeration</li>
</ul>
<!-- $$$Label-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Label is an extended Text item with Ubuntu styling. It exposes an additional property that provides adaptive resizing based on the measurement unit.</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">warmGrey</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="type"><a href="index.html">Label</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Hello world!&quot;</span>
<span class="name">textSize</span>: <span class="name">Label</span>.<span class="name">Large</span>
}
}</pre>
<!-- @@@Label -->
<h2>Property Documentation</h2>
<!-- $$$textSize -->
<table class="qmlname"><tr valign="top" id="textSize-prop"><td class="tblQmlPropNode"><p><span class="name">textSize</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds an abstract size that allows adaptive resizing based on the measurement unit (see Units). The default value is <code>Label.Medium</code>.</p>
<p><b>Note: </b>Setting this disables support for the deprecated fontSize property.</p><ul>
<li><b>Label.XxSmall</b> - extremely small font size</li>
<li><b>Label.XSmall</b> - very small font size</li>
<li><b>Label.Small</b> - small font size</li>
<li><b>Label.Medium</b> - medium font size</li>
<li><b>Label.Large</b> - large font size</li>
<li><b>Label.XLarge</b> - very large font size</li>
</ul>
<p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<!-- @@@textSize -->
<br/>
