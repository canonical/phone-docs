---
Title: Ubuntu.Components.Header
---

# Ubuntu.Components.Header

<span class="subtitle"></span>
<!-- $$$Header-brief -->
<p>Header bar that can contain the title and controls for the current view. More...</p>
<!-- @@@Header -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.PageHeader.md">PageHeader</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#automaticHeight-prop">automaticHeight</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#exposed-prop">exposed</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#flickable-prop">flickable</a></b></b> : Flickable</li>
<li class="fn"><b><b><a href="#moving-prop">moving</a></b></b> : bool</li>
</ul>
<!-- $$$Header-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Header can be exposed and hidden by setting the <a href="#exposed-prop">exposed</a> property, and when a <a href="#flickable-prop">flickable</a> is set, the header will scroll together with the flickable and expose or hide when the Flickable movement ends.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
<span class="name">header</span>: <span class="name">Header</span> {
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">6</span>)
<span class="name">flickable</span>: <span class="name">scrollableContent</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="comment">// to visualize the header</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">blue</span>
}
}
<span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span> {
<span class="name">id</span>: <span class="name">scrollableContent</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">contentHeight</span>: <span class="name">height</span> <span class="operator">*</span> <span class="number">2</span>
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;Flick me&quot;</span>
}
}
}</pre>
<p>The initial y-value is 0, but scrolling the flickable or setting <a href="#exposed-prop">exposed</a> to false will change the y-value in the range from -height to 0.</p>
<!-- @@@Header -->
<h2>Property Documentation</h2>
<!-- $$$automaticHeight -->
<table class="qmlname"><tr valign="top" id="automaticHeight-prop"><td class="tblQmlPropNode"><p><span class="name">automaticHeight</span> : <span class="type">bool</span></p></td></tr></table><p>The heights of the <a href="Ubuntu.Components.Page.md">Page</a> headers in an <a href="Ubuntu.Components.AdaptivePageLayout.md">AdaptivePageLayout</a> are synchronized by the <a href="Ubuntu.Components.AdaptivePageLayout.md">AdaptivePageLayout</a> so that they all get the height of the largest implicitHeight of the visible Page headers to give a uniform look to the headers. To opt-out of this height synchronization, set automaticHeight to false. This will prevent the <a href="Ubuntu.Components.AdaptivePageLayout.md">AdaptivePageLayout</a> from taking the Header's implicitHeight into account for computing the maximum header height, and it will also not update the height of the header that has automaticHeight set to false to match the other header heights. Default value: true.</p>
<!-- @@@automaticHeight -->
<br/>
<!-- $$$exposed -->
<table class="qmlname"><tr valign="top" id="exposed-prop"><td class="tblQmlPropNode"><p><span class="name">exposed</span> : <span class="type">bool</span></p></td></tr></table><p>Exposes and hides the header by animating its y-value between -height and 0 to move it in or out of its parent Item. The value of exposed can be set directly, or it will be automatically updated when the user exposes or hides the Header by scrolling the Header's <a href="#flickable-prop">flickable</a>.</p>
<!-- @@@exposed -->
<br/>
<!-- $$$flickable -->
<table class="qmlname"><tr valign="top" id="flickable-prop"><td class="tblQmlPropNode"><p><span class="name">flickable</span> : <span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span></p></td></tr></table><p>When flickable is set, scrolling vertically in the flickable, or setting the Flickable's y-value will move the header y-position by the same amount as the flickable content movement. When scrolling the flickable, upon release, the header will animate to fully exposed or fully hidden state, depending on whether it was more or less than half exposed when the user stopped moving the flickable.</p>
<p>When flickable is null, the header can be exposed or hidden by setting the <a href="#exposed-prop">exposed</a> property. Note that <a href="#exposed-prop">exposed</a> is not automatically updated when the value of flickable changes, so if the header must be exposed when the flickable changes (or is set to null), this must be done explicitly. Example:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
<span class="type"><a href="Ubuntu.Components.AdaptivePageLayout.md">AdaptivePageLayout</a></span> {
<span class="name">id</span>: <span class="name">layout</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">primaryPage</span>: <span class="name">Page</span> {
<span class="name">id</span>: <span class="name">page</span>
<span class="type"><a href="QtQuick.Flickable.md">Flickable</a></span> {
<span class="name">id</span>: <span class="name">contentFlick</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">topMargin</span>: <span class="name">page</span>.<span class="name">header</span>.<span class="name">flickable</span> ? <span class="number">0</span> : <span class="name">page</span>.<span class="name">header</span>.<span class="name">height</span>
<span class="name">contentHeight</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">200</span>)
<span class="comment">// Scrolling here can hide the header.</span>
}
<span class="name">header</span>: <span class="name">PageHeader</span> {
<span class="name">title</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Navigation&quot;</span>)
<span class="name">flickable</span>: <span class="name">layout</span>.<span class="name">columns</span> <span class="operator">===</span> <span class="number">1</span> ? <span class="name">contentFlick</span> : <span class="number">null</span>
<span class="comment">// Show header when it gets locked in a two-column layout:</span>
<span class="name">onFlickableChanged</span>: <span class="name">exposed</span> <span class="operator">=</span> <span class="number">true</span>
}
}
}
}</pre>
<p>The topMargin of the flickable will automatically be updated by adding the height of the header to the current topMargin. When changing the flickable, the topMargin of the previous flickable is restored by subtracting the header height from it. Making the header invisible has the same effect on the topMargin as unsetting the flickable.</p>
<p>It is permitted to use a <a href="QtQuick.ListView.md">ListView</a> as the value of flickable, but this works well only if the <a href="QtQuick.ListView.md">ListView</a>.header property is not set. Alternatively, a Header component may be used for <a href="QtQuick.ListView.md">ListView</a>.header, but in that case the flickable of the Header must be null.</p>
<!-- @@@flickable -->
<br/>
<!-- $$$moving -->
<table class="qmlname"><tr valign="top" id="moving-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">moving</span> : <span class="type">bool</span></p></td></tr></table><p>Indicates whether the header is currently moving, either because contentY of the <a href="#flickable-prop">flickable</a> changes (due to user interaction or by setting it directly), or because the header is animating in or out because the value of <a href="#exposed-prop">exposed</a> was updated.</p>
<!-- @@@moving -->
<br/>
