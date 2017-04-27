---
Title: Ubuntu.Components.CheckBox
---

# Ubuntu.Components.CheckBox

<span class="subtitle"></span>
<!-- $$$CheckBox-brief -->
<p>CheckBox is a component with two states, checked or unchecked. It can be used to set boolean options. The behavior is the same as Switch, the only difference is the graphical style. More...</p>
<!-- @@@CheckBox -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.AbstractButton.md">AbstractButton</a></p>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.Switch.md">Switch</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#checked-prop">checked</a></b></b> : bool</li>
</ul>
<!-- $$$CheckBox-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="https://design.ubuntu.com/apps/design/building-blocks/selection.md">See also the Design Guidelines on selection</a>.</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="index.html">CheckBox</a></span> {
<span class="name">checked</span>: <span class="number">true</span>
}
}</pre>
<!-- @@@CheckBox -->
<h2>Property Documentation</h2>
<!-- $$$checked -->
<table class="qmlname"><tr valign="top" id="checked-prop"><td class="tblQmlPropNode"><p><span class="name">checked</span> : <span class="type">bool</span></p></td></tr></table><p>Specifies whether the checkbox is checked or not. By default the property is set to false.</p>
<!-- @@@checked -->
<br/>
