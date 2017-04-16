---
Title: Ubuntu.Components.ListItems.Base
---

# Ubuntu.Components.ListItems.Base

<span class="subtitle"></span>
<!-- $$$Base-brief -->
<p>Parent class of various list item classes that can have an icon and a progression symbol. More...</p>
<!-- @@@Base -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.ListItems 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ListItems.Empty.md">Empty</a></p>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ListItems.MultiValue.md">MultiValue</a>, <a href="Ubuntu.Components.ListItems.SingleValue.md">SingleValue</a>, and <a href="Ubuntu.Components.ListItems.Subtitled.md">Subtitled</a>.</p>
</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#fallbackIconName-prop">fallbackIconName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#fallbackIconSource-prop">fallbackIconSource</a></b></b> : url</li>
<li class="fn"><b><b><a href="#iconFrame-prop">iconFrame</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#progression-prop">progression</a></b></b> : bool</li>
</ul>
<!-- $$$Base-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><b>Note: </b><b>The component is deprecated. Use <a href="Ubuntu.Components.ListItem.md">ListItem</a> component instead.</b></p><p>Examples: See subclasses</p>
<!-- @@@Base -->
<h2>Property Documentation</h2>
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
