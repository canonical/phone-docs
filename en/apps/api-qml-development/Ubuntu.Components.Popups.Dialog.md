---
Title: Ubuntu.Components.Popups.Dialog
---

# Ubuntu.Components.Popups.Dialog

<span class="subtitle"></span>
<!-- $$$Dialog-brief -->
<p>The Dialog caters for cases in which the application requires the user to determine between optional actions. The Dialog will interrupt the user flow and lock the view for further interaction before the user has selected a desired action. It can only be closed by selecting an optional action confirming or cancelling the operation. More...</p>
<!-- @@@Dialog -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.Popups 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.Popups.PopupBase.md">PopupBase</a></p>
</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#callerMargin-prop">callerMargin</a></b></b> : real</li>
<li class="fn"><b><b><a href="#contentHeight-prop">contentHeight</a></b></b> : real</li>
<li class="fn"><b><b><a href="#contentWidth-prop">contentWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#contents-prop">contents</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#edgeMargins-prop">edgeMargins</a></b></b> : real</li>
<li class="fn"><b><b><a href="#modal-prop">modal</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#style-prop">style</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#styleName-prop">styleName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#text-prop">text</a></b></b> : string</li>
<li class="fn"><b><b><a href="#theme-prop">theme</a></b></b> : ThemeSettings</li>
<li class="fn"><b><b><a href="#title-prop">title</a></b></b> : string</li>
</ul>
<!-- $$$Dialog-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="../design/building-blocks/dialog.md">See also the Design Guidelines on Dialogs</a>.</p>
<p>Example:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">80</span>)
<span class="type"><a href="QtQml.Component.md">Component</a></span> {
<span class="name">id</span>: <span class="name">dialog</span>
<span class="type"><a href="index.html">Dialog</a></span> {
<span class="name">id</span>: <span class="name">dialogue</span>
<span class="name">title</span>: <span class="string">&quot;Save file&quot;</span>
<span class="name">text</span>: <span class="string">&quot;Are you sure that you want to save this file?&quot;</span>
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;cancel&quot;</span>
<span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">close</span>(<span class="name">dialogue</span>)
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;overwrite previous version&quot;</span>
<span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">orange</span>
<span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">close</span>(<span class="name">dialogue</span>)
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;save a copy&quot;</span>
<span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">orange</span>
<span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">close</span>(<span class="name">dialogue</span>)
}
}
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">id</span>: <span class="name">saveButton</span>
<span class="name">text</span>: <span class="string">&quot;save&quot;</span>
<span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">open</span>(<span class="name">dialog</span>)
}
}</pre>
<!-- @@@Dialog -->
<h2>Property Documentation</h2>
<!-- $$$callerMargin -->
<table class="qmlname"><tr valign="top" id="callerMargin-prop"><td class="tblQmlPropNode"><p><span class="name">callerMargin</span> : <span class="type">real</span></p></td></tr></table><p>The property holds the margin from the dialog's caller. The property is themed.</p>
<!-- @@@callerMargin -->
<br/>
<!-- $$$contentHeight -->
<table class="qmlname"><tr valign="top" id="contentHeight-prop"><td class="tblQmlPropNode"><p><span class="name">contentHeight</span> : <span class="type">real</span></p></td></tr></table><p>Specifies the height of the dialog content.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<!-- @@@contentHeight -->
<br/>
<!-- $$$contentWidth -->
<table class="qmlname"><tr valign="top" id="contentWidth-prop"><td class="tblQmlPropNode"><p><span class="name">contentWidth</span> : <span class="type">real</span></p></td></tr></table><p>Specifies the width of the dialog content.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<!-- @@@contentWidth -->
<br/>
<!-- $$$contents -->
<table class="qmlname"><tr valign="top" id="contents-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">contents</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>Content will be put inside a column in the foreround of the Dialog.</p>
<!-- @@@contents -->
<br/>
<!-- $$$edgeMargins -->
<table class="qmlname"><tr valign="top" id="edgeMargins-prop"><td class="tblQmlPropNode"><p><span class="name">edgeMargins</span> : <span class="type">real</span></p></td></tr></table><p>The property holds the margins from the dialog's dismissArea. The property is themed.</p>
<!-- @@@edgeMargins -->
<br/>
<!-- $$$modal -->
<table class="qmlname"><tr valign="top" id="modal-prop"><td class="tblQmlPropNode"><p><span class="name">modal</span> : <span class="type">bool</span></p></td></tr></table><p>The property controls whether the dialog is modal or not. Modal dialogs block event propagation to items under dismissArea, when non-modal ones let these events passed to these items. In addition, non-modal dialogs do not dim the dismissArea.</p>
<p>The default value is true.</p>
<!-- @@@modal -->
<br/>
<!-- $$$style -->
<table class="qmlname"><tr valign="top" id="style-prop"><td class="tblQmlPropNode"><p><span class="name">style</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td></tr></table><p>The style of the foreground of the Dialog. This property takes precedence over <a href="#styleName-prop">styleName</a></p>
<p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<p><b>See also </b><a href="Ubuntu.Components.StyledItem.md#style-prop">StyledItem::style</a>.</p>
<!-- @@@style -->
<br/>
<!-- $$$styleName -->
<table class="qmlname"><tr valign="top" id="styleName-prop"><td class="tblQmlPropNode"><p><span class="name">styleName</span> : <span class="type">string</span></p></td></tr></table><p>The style name of the foreground of the Dialog.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<p><b>See also </b><a href="Ubuntu.Components.StyledItem.md#styleName-prop">StyledItem::styleName</a>.</p>
<!-- @@@styleName -->
<br/>
<!-- $$$text -->
<table class="qmlname"><tr valign="top" id="text-prop"><td class="tblQmlPropNode"><p><span class="name">text</span> : <span class="type">string</span></p></td></tr></table><p>The question to the user.</p>
<!-- @@@text -->
<br/>
<!-- $$$theme -->
<table class="qmlname"><tr valign="top" id="theme-prop"><td class="tblQmlPropNode"><p><span class="name">theme</span> : <span class="type"><a href="Ubuntu.Components.ThemeSettings.md">ThemeSettings</a></span></p></td></tr></table><p>Configure the theme of the Dialog foreground and all its subcomponents. Example:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="comment">// make sure the main theme is Ambiance</span>
<span class="name">theme</span>.name: <span class="string">&quot;Ubuntu.Components.Themes.Ambiance&quot;</span>
<span class="type"><a href="QtQml.Component.md">Component</a></span> {
<span class="name">id</span>: <span class="name">dialogComponent</span>
<span class="type"><a href="index.html">Dialog</a></span> {
<span class="name">id</span>: <span class="name">dialog</span>
<span class="name">title</span>: <span class="string">&quot;Input dialog&quot;</span>
<span class="comment">// the dialog and its children will use SuruDark</span>
<span class="name">theme</span>: <span class="name">ThemeSettings</span> {
<span class="name">name</span>: <span class="string">&quot;Ubuntu.Components.Themes.SuruDark&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.TextField.md">TextField</a></span> {
<span class="name">placeholderText</span>: <span class="string">&quot;enter text&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Close&quot;</span>
<span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">close</span>(<span class="name">dialog</span>)
}
}
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Open dialog&quot;</span>
<span class="name">onClicked</span>: <span class="name">PopupUtils</span>.<span class="name">open</span>(<span class="name">dialogComponent</span>)
}
}</pre>
<p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<p><b>See also </b><a href="Ubuntu.Components.StyledItem.md#theme-prop">StyledItem::theme</a>.</p>
<!-- @@@theme -->
<br/>
<!-- $$$title -->
<table class="qmlname"><tr valign="top" id="title-prop"><td class="tblQmlPropNode"><p><span class="name">title</span> : <span class="type">string</span></p></td></tr></table><p>The title of the question to ask the user.</p>
<!-- @@@title -->
<br/>
