---
Title: Ubuntu.Components.ListItems.Standard
---

# Ubuntu.Components.ListItems.Standard

<span class="subtitle"></span>
<!-- $$$Standard-brief -->
<p>The standard list item class. It shows a basic list item with a label (text), and optionally an icon, a progression arrow, and it can have an embedded Item (control) that can be used for including Buttons, Switches etc. inside the list item. More...</p>
<!-- @@@Standard -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.ListItems 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ListItems.Empty.md">Empty</a></p>
</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#control-prop">control</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#fallbackIconName-prop">fallbackIconName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#fallbackIconSource-prop">fallbackIconSource</a></b></b> : url</li>
<li class="fn"><b><b><a href="#iconFrame-prop">iconFrame</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#progression-prop">progression</a></b></b> : bool</li>
</ul>
<!-- $$$Standard-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><b>Note: </b><b>The component is deprecated. Use <a href="Ubuntu.Components.ListItem.md">ListItem</a> component instead.</b></p><p><a href="http://design.ubuntu.com/apps/building-blocks/list-items">See also the Design Guidelines on List Items</a>.</p>
<p>Examples:</p>
<pre class="qml">import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem
<span class="type"><a href="../sdk-14.10/QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Standard {
<span class="name">text</span>: <span class="string">&quot;Selectable standard list item&quot;</span>
<span class="name">selected</span>: <span class="number">false</span>
<span class="name">onClicked</span>: <span class="name">selected</span> <span class="operator">=</span> !<span class="name">selected</span>
}
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Standard {
<span class="name">text</span>: <span class="string">&quot;List item with icon&quot;</span>
<span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Standard {
<span class="name">text</span>: <span class="string">&quot;With a progression arrow&quot;</span>
<span class="name">progression</span>: <span class="number">true</span>
}
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Standard {
<span class="name">text</span>: <span class="string">&quot;Control&quot;</span>
<span class="name">control</span>: <span class="name">Button</span> {
<span class="name">text</span>: <span class="string">&quot;Click me&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">19</span>)
<span class="name">onClicked</span>: <span class="name">print</span>(<span class="string">&quot;Clicked&quot;</span>)
}
<span class="name">progression</span>: <span class="number">true</span>
}
}</pre>
<!-- @@@Standard -->
<h2>Property Documentation</h2>
<!-- $$$control -->
<table class="qmlname"><tr valign="top" id="control-prop"><td class="tblQmlPropNode"><p><span class="name">control</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td></tr></table><p>An optional control that is displayed inside the list item. The width of the control must be specified in order to determine the layout of the list item.</p>
<!-- @@@control -->
<br/>
<!-- $$$fallbackIconName -->
<table class="qmlname"><tr valign="top" id="fallbackIconName-prop"><td class="tblQmlPropNode"><p><span class="name">fallbackIconName</span> : <span class="type">string</span></p></td></tr></table><p>The icon shown in the list item if iconName failed to load (optional).</p>
<p>If both <a href="#fallbackIconSource-prop">fallbackIconSource</a> and fallbackIconName are defined, fallbackIconName will be ignored.</p>
<p><b>Note: </b>The complete list of icons available in Ubuntu is not published yet. For now please refer to the folders where the icon themes are installed:</p><ul>
<li>Ubuntu Touch: /usr/share/icons/suru</li>
<li>Ubuntu Desktop: /usr/share/icons/ubuntu-mono-dark</li>
</ul>
<p>These 2 separate icon themes will be merged soon.</p>
<!-- @@@fallbackIconName -->
<br/>
<!-- $$$fallbackIconSource -->
<table class="qmlname"><tr valign="top" id="fallbackIconSource-prop"><td class="tblQmlPropNode"><p><span class="name">fallbackIconSource</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td></tr></table><p>The location of the icon to show in the list item if iconSource failed to load (optional).</p>
<!-- @@@fallbackIconSource -->
<br/>
<!-- $$$iconFrame -->
<table class="qmlname"><tr valign="top" id="iconFrame-prop"><td class="tblQmlPropNode"><p><span class="name">iconFrame</span> : <span class="type">bool</span></p></td></tr></table><p>Show or hide the frame around the icon</p>
<!-- @@@iconFrame -->
<br/>
<!-- $$$progression -->
<table class="qmlname"><tr valign="top" id="progression-prop"><td class="tblQmlPropNode"><p><span class="name">progression</span> : <span class="type">bool</span></p></td></tr></table><p>Show or hide the progression symbol.</p>
<!-- @@@progression -->
<br/>
