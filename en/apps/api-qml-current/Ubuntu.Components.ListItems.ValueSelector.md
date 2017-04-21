---
Title: Ubuntu.Components.ListItems.ValueSelector
---

# Ubuntu.Components.ListItems.ValueSelector

<span class="subtitle"></span>
<!-- $$$ValueSelector-brief -->
<p>List item displaying single selected value when not expanded, where expanding it opens a listing of all the possible values for selection. More...</p>
<!-- @@@ValueSelector -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.ListItems 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ListItems.Empty.md">Empty</a></p>
</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#expanded-prop">expanded</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#fallbackIconName-prop">fallbackIconName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#fallbackIconSource-prop">fallbackIconSource</a></b></b> : url</li>
<li class="fn"><b><b><a href="#iconFrame-prop">iconFrame</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#selectedIndex-prop">selectedIndex</a></b></b> : int</li>
<li class="fn"><b><b><a href="#values-prop">values</a></b></b> : variant</li>
</ul>
<!-- $$$ValueSelector-description -->
<h2 id="details">Detailed Description</h2>
<p>****DEPRECATED! PLEASE USE ITEM SELECTOR OR FOR THE UBUNTU SHAPE VERSION THE OPTION SELECTOR.****</p>
</p>
<p>Examples:</p>
<pre class="qml">import Ubuntu.Components.ListItems 1.3 as ListItem
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">width</span>: <span class="number">250</span>
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.ValueSelector {
<span class="name">text</span>: <span class="string">&quot;Standard&quot;</span>
<span class="name">values</span>: [<span class="string">&quot;Value 1&quot;</span>, <span class="string">&quot;Value 2&quot;</span>, <span class="string">&quot;Value 3&quot;</span>, <span class="string">&quot;Value 4&quot;</span>]
}
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.ValueSelector {
<span class="name">text</span>: <span class="string">&quot;Disabled&quot;</span>
<span class="name">values</span>: [<span class="string">&quot;Value 1&quot;</span>, <span class="string">&quot;Value 2&quot;</span>, <span class="string">&quot;Value 3&quot;</span>, <span class="string">&quot;Value 4&quot;</span>]
<span class="name">enabled</span>: <span class="number">false</span>
}
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.ValueSelector {
<span class="name">text</span>: <span class="string">&quot;Expanded&quot;</span>
<span class="name">values</span>: [<span class="string">&quot;Value 1&quot;</span>, <span class="string">&quot;Value 2&quot;</span>, <span class="string">&quot;Value 3&quot;</span>, <span class="string">&quot;Value 4&quot;</span>]
<span class="name">expanded</span>: <span class="number">true</span>
}
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.ValueSelector {
<span class="name">text</span>: <span class="string">&quot;Icon&quot;</span>
<span class="name">iconName</span>: <span class="string">&quot;compose&quot;</span>
<span class="name">values</span>: [<span class="string">&quot;Value 1&quot;</span>, <span class="string">&quot;Value 2&quot;</span>, <span class="string">&quot;Value 3&quot;</span>, <span class="string">&quot;Value 4&quot;</span>]
<span class="name">selectedIndex</span>: <span class="number">2</span>
}
}</pre>
<!-- @@@ValueSelector -->
<h2>Property Documentation</h2>
<!-- $$$expanded -->
<table class="qmlname"><tr valign="top" id="expanded-prop"><td class="tblQmlPropNode"><p><span class="name">expanded</span> : <span class="type">bool</span></p></td></tr></table><p>Specifies whether the selector is 'open' or 'closed'.</p>
<!-- @@@expanded -->
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
<!-- $$$selectedIndex -->
<table class="qmlname"><tr valign="top" id="selectedIndex-prop"><td class="tblQmlPropNode"><p><span class="name">selectedIndex</span> : <span class="type">int</span></p></td></tr></table><p>The index of the currently selected element from the <a href="#values-prop">values</a> array.</p>
<!-- @@@selectedIndex -->
<br/>
<!-- $$$values -->
<table class="qmlname"><tr valign="top" id="values-prop"><td class="tblQmlPropNode"><p><span class="name">values</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-variant.html">variant</a></span></p></td></tr></table><p>The list of values that will be shown under the label text</p>
<!-- @@@values -->
<br/>
