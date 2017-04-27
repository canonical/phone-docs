---
Title: Ubuntu.Components.StateSaver
---

# Ubuntu.Components.StateSaver

<span class="subtitle"></span>
<!-- $$$StateSaver-brief -->
<p>Attached properties to save component property states. More...</p>
<!-- @@@StateSaver -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#properties-prop">properties</a></b></b> : string</li>
</ul>
<!-- $$$StateSaver-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">StateSaver</a> attached object provides the ability to save component property values that can be restored after an inproper application close. The properties subject of serialization must be given in the <a href="#properties-prop">properties</a> as a string, separated with commas. The serialization will happen automatically on component's completion time, as well as when the application is deactivated. Automatic serialization of a component can be turned off by simply setting false to <a href="#enabled-prop">enabled</a> property.</p>
<p><b>Note: </b>The application name must be set correctly to the package name so that state saving can work (e.g&#x2e; com.ubuntu.calendar) through <a href="Ubuntu.Components.MainView.md#applicationName-prop">MainView::applicationName</a>.</p><p>States saved are discarded when the application is closed properly. The state loading is ignored (but not discarded) when the application is launched through <a href="Ubuntu.Components.UriHandler.md">UriHandler</a>.</p>
<p>Example:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="Ubuntu.Components.TextField.md">TextField</a></span> {
<span class="name">id</span>: <span class="name">input</span>
<span class="name">StateSaver</span>.properties: <span class="string">&quot;text&quot;</span>
<span class="name">StateSaver</span>.enabled: <span class="name">input</span>.<span class="name">enabled</span>
}</pre>
<p>In this example the state saver is synchronized with the attachee's one.</p>
<p>Group properties can also be serialized by specifying the path to their individual properties.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">color</span>: <span class="string">&quot;gray&quot;</span>
<span class="type">border</span> {
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
}
<span class="name">StateSaver</span>.properties: <span class="string">&quot;color, border.color, border.width&quot;</span>
}</pre>
<p><a href="index.html">StateSaver</a> computes a unique identifier for the attachee using the component's and all its parents' <i>id</i>. Therefore attachee component as well as all its parents must have a valid ID set.</p>
<p>The following example will give error for the <i>input</i>, as the root component has no id specified:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="comment">//[...]</span>
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">parent</span>
<span class="comment">//[...]</span>
<span class="type"><a href="Ubuntu.Components.TextField.md">TextField</a></span> {
<span class="name">id</span>: <span class="name">input</span>
<span class="name">StateSaver</span>.properties: <span class="string">&quot;text&quot;</span>
}
}
}</pre>
<p>but the following example will successfully save the text field content</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">root</span>
<span class="comment">//[...]</span>
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">parent</span>
<span class="comment">//[...]</span>
<span class="type"><a href="Ubuntu.Components.TextField.md">TextField</a></span> {
<span class="name">id</span>: <span class="name">input</span>
<span class="name">StateSaver</span>.properties: <span class="string">&quot;text&quot;</span>
}
}
}</pre>
<p>When used with Repeater, each created item from the Repeater's delegate will be saved separately. Note that due to the way Repeater works, Repeaters do not need to have id specified.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">root</span>
<span class="comment">// [...]</span>
<span class="type"><a href="QtQuick.Repeater.md">Repeater</a></span> {
<span class="name">model</span>: <span class="number">10</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="name">StateSaver</span>.properties: <span class="string">&quot;width, height&quot;</span>
}
}
<span class="comment">// [...]</span>
}</pre>
<p>It can be used in the same way in <a href="QtQuick.ListView.md">ListView</a> or <a href="QtQuick.qtquick-draganddrop-example.md#gridview">GridView</a>, except that both <a href="QtQuick.ListView.md">ListView</a> and <a href="QtQuick.qtquick-draganddrop-example.md#gridview">GridView</a> must have an id set.</p>
<p>The <a href="index.html">StateSaver</a> can save all <a href="QtQml.qtqml-typesystem-basictypes.md">QML base types</a>, Objects, list of objects or variants containing any of these cannot be saved.</p>
<!-- @@@StateSaver -->
<h2>Property Documentation</h2>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>The property drives the automatic state saving. When disabled, state saving will not happen on properties.</p>
<p>The default value is true.</p>
<!-- @@@enabled -->
<br/>
<!-- $$$properties -->
<table class="qmlname"><tr valign="top" id="properties-prop"><td class="tblQmlPropNode"><p><span class="name">properties</span> : <span class="type">string</span></p></td></tr></table><p>List of properties to be serialized, separated with commas. Properties must be writable and can only be <a href="QtQml.qtqml-typesystem-basictypes.md">QML base types</a>.</p>
<p>A custom single line input which saves the text, placeholderText, font and color would look as follows:</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Components.TextField.md">TextField</a></span> {
<span class="name">id</span>: <span class="name">input</span>
<span class="name">StateSaver</span>.properties: <span class="string">&quot;text, placeholderText, font, color&quot;</span>
}</pre>
<!-- @@@properties -->
<br/>
