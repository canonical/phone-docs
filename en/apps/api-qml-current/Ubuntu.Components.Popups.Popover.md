---
Title: Ubuntu.Components.Popups.Popover
---

# Ubuntu.Components.Popups.Popover

<span class="subtitle"></span>
<!-- $$$Popover-brief -->
<p>A popover allows an application to present additional content without changing the view. A popover has a fixed width and automatic height, depending on is contents. It can be closed by clicking anywhere outside of the popover area. More...</p>
<!-- @@@Popover -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.Popups 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.Popups.PopupBase.md">PopupBase</a></p>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.Popups.ActionSelectionPopover.md">ActionSelectionPopover</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#autoClose-prop">autoClose</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#caller-prop">caller</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#callerMargin-prop">callerMargin</a></b></b> : real</li>
<li class="fn"><b><b><a href="#container-prop">container</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#contentHeight-prop">contentHeight</a></b></b> : real</li>
<li class="fn"><b><b><a href="#contentWidth-prop">contentWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#edgeMargins-prop">edgeMargins</a></b></b> : real</li>
<li class="fn"><b><b><a href="#foregroundStyle-prop">foregroundStyle</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#pointerTarget-prop">pointerTarget</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#style-prop">style</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#styleName-prop">styleName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#theme-prop">theme</a></b></b> : ThemeSettings</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#hide-method">hide</a></b></b>()</li>
<li class="fn"><b><b><a href="#show-method">show</a></b></b>()</li>
</ul>
<!-- $$$Popover-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="https://design.ubuntu.com/apps/design/building-blocks/dialog.md#popover">See also the Design Guidelines on Popovers</a>.</p>
<p>Example:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3 as ListItem
import Ubuntu.Components.Popups 1.3
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="name">theme</span>.<span class="name">palette</span>.<span class="name">normal</span>.<span class="name">background</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
<span class="type"><a href="QtQml.Component.md">Component</a></span> {
<span class="name">id</span>: <span class="name">popoverComponent</span>
<span class="type"><a href="index.html">Popover</a></span> {
<span class="name">id</span>: <span class="name">popover</span>
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">id</span>: <span class="name">containerLayout</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
}
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Header { <span class="name">text</span>: <span class="string">&quot;Standard list items&quot;</span> }
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Standard { <span class="name">text</span>: <span class="string">&quot;Do something&quot;</span> }
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Standard { <span class="name">text</span>: <span class="string">&quot;Do something else&quot;</span> }
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.Header { <span class="name">text</span>: <span class="string">&quot;Buttons&quot;</span> }
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.SingleControl {
<span class="name">highlightWhenPressed</span>: <span class="number">false</span>
<span class="name">control</span>: <span class="name">Button</span> {
<span class="name">text</span>: <span class="string">&quot;Do nothing&quot;</span>
<span class="type">anchors</span> {
<span class="name">fill</span>: <span class="name">parent</span>
<span class="name">margins</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
}
}
}
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span>.SingleControl {
<span class="name">highlightWhenPressed</span>: <span class="number">false</span>
<span class="name">control</span>: <span class="name">Button</span> {
<span class="name">text</span>: <span class="string">&quot;Close&quot;</span>
<span class="type">anchors</span> {
<span class="name">fill</span>: <span class="name">parent</span>
<span class="name">margins</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
}
<span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">close</span>(<span class="name">popover</span>)
}
}
}
}
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">popoverButton</span>
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;open&quot;</span>
<span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">open</span>(<span class="name">popoverComponent</span>, <span class="name">popoverButton</span>)
}
}</pre>
<!-- @@@Popover -->
<h2>Property Documentation</h2>
<!-- $$$autoClose -->
<table class="qmlname"><tr valign="top" id="autoClose-prop"><td class="tblQmlPropNode"><p><span class="name">autoClose</span> : <span class="type">bool</span></p></td></tr></table><p>The property drives the automatic closing of the Popover when user taps on the dismissArea. The default behavior is to close the Popover, therefore set to true.</p>
<p>When set to false, closing the Popover is the responsibility of the caller. Also, the mouse and touch events are not blocked from the dismissArea.</p>
<!-- @@@autoClose -->
<br/>
<!-- $$$caller -->
<table class="qmlname"><tr valign="top" id="caller-prop"><td class="tblQmlPropNode"><p><span class="name">caller</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The Item such as a <a href="Ubuntu.Components.Button.md">Button</a> that the user interacted with to open the Dialog. This property will be used for the automatic positioning of the Dialog next to the caller, if possible.</p>
<!-- @@@caller -->
<br/>
<!-- $$$callerMargin -->
<table class="qmlname"><tr valign="top" id="callerMargin-prop"><td class="tblQmlPropNode"><p><span class="name">callerMargin</span> : <span class="type">real</span></p></td></tr></table><p>The property holds the margin from the popover's caller. The property is themed.</p>
<!-- @@@callerMargin -->
<br/>
<!-- $$$container -->
<table class="qmlname"><tr valign="top" id="container-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">container</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>Content will be put inside the foreround of the Popover.</p>
<!-- @@@container -->
<br/>
<!-- $$$contentHeight -->
<table class="qmlname"><tr valign="top" id="contentHeight-prop"><td class="tblQmlPropNode"><p><span class="name">contentHeight</span> : <span class="type">real</span></p></td></tr></table><p>Use this property to override the default content height.</p>
<!-- @@@contentHeight -->
<br/>
<!-- $$$contentWidth -->
<table class="qmlname"><tr valign="top" id="contentWidth-prop"><td class="tblQmlPropNode"><p><span class="name">contentWidth</span> : <span class="type">real</span></p></td></tr></table><p>Use this property to override the default content width.</p>
<!-- @@@contentWidth -->
<br/>
<!-- $$$edgeMargins -->
<table class="qmlname"><tr valign="top" id="edgeMargins-prop"><td class="tblQmlPropNode"><p><span class="name">edgeMargins</span> : <span class="type">real</span></p></td></tr></table><p>The property holds the margins from the popover's dismissArea. The property is themed.</p>
<!-- @@@edgeMargins -->
<br/>
<!-- $$$foregroundStyle -->
<table class="qmlname"><tr valign="top" id="foregroundStyle-prop"><td class="tblQmlPropNode"><p><span class="name">foregroundStyle</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td></tr></table><p>Exposes the style property of the <a href="Ubuntu.Components.StyledItem.md">StyledItem</a> contained in the Popover. Refer to <a href="Ubuntu.Components.StyledItem.md">StyledItem</a> how to use it.</p>
<!-- @@@foregroundStyle -->
<br/>
<!-- $$$pointerTarget -->
<table class="qmlname"><tr valign="top" id="pointerTarget-prop"><td class="tblQmlPropNode"><p><span class="name">pointerTarget</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The property holds the item to which the pointer should be anchored to. This can be same as the caller or any child of the caller. By default the property is set to caller.</p>
<!-- @@@pointerTarget -->
<br/>
<!-- $$$style -->
<table class="qmlname"><tr valign="top" id="style-prop"><td class="tblQmlPropNode"><p><span class="name">style</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td></tr></table><p>The style of the foreground of the Popover. This property takes precedence over <a href="#styleName-prop">styleName</a></p>
<p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<p><b>See also </b><a href="Ubuntu.Components.StyledItem.md#style-prop">StyledItem::style</a>.</p>
<!-- @@@style -->
<br/>
<!-- $$$styleName -->
<table class="qmlname"><tr valign="top" id="styleName-prop"><td class="tblQmlPropNode"><p><span class="name">styleName</span> : <span class="type">string</span></p></td></tr></table><p>The style name of the foreground of the Popover.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<p><b>See also </b><a href="Ubuntu.Components.StyledItem.md#styleName-prop">StyledItem::styleName</a>.</p>
<!-- @@@styleName -->
<br/>
<!-- $$$theme -->
<table class="qmlname"><tr valign="top" id="theme-prop"><td class="tblQmlPropNode"><p><span class="name">theme</span> : <span class="type"><a href="Ubuntu.Components.ThemeSettings.md">ThemeSettings</a></span></p></td></tr></table><p>Configure the theme of the Popover foreground and all its subcomponents.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<p><b>See also </b><a href="Ubuntu.Components.StyledItem.md#theme-prop">StyledItem::theme</a> and <a href="Ubuntu.Components.Popups.Dialog.md#theme-prop">Dialog::theme</a>.</p>
<!-- @@@theme -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$hide -->
<table class="qmlname"><tr valign="top" id="hide-method"><td class="tblQmlFuncNode"><p><span class="name">hide</span>()</p></td></tr></table><p>Hide the popover. Only use this function if you handle memory management. Otherwise use PopupUtils.close() to do it automatically.</p>
<!-- @@@hide -->
<br/>
<!-- $$$show -->
<table class="qmlname"><tr valign="top" id="show-method"><td class="tblQmlFuncNode"><p><span class="name">show</span>()</p></td></tr></table><p>Make the popover visible. Reparent to the background area object first if needed. Only use this function if you handle memory management. Otherwise use PopupUtils.open() to do it automatically.</p>
<!-- @@@show -->
<br/>
