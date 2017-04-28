---
Title: Ubuntu.Components.Popups.PopupBase
---

# Ubuntu.Components.Popups.PopupBase

<span class="subtitle"></span>
<!-- $$$PopupBase-brief -->
<p>The base class for all dialogs, sheets and popovers. Do not use directly. More...</p>
<!-- @@@PopupBase -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.Popups 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.OrientationHelper.md">OrientationHelper</a></p>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.Popups.Dialog.md">Dialog</a>, <a href="Ubuntu.Components.Popups.Popover.md">Popover</a>, and <a href="Ubuntu.Components.Popups.SheetBase/">SheetBase</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#dismissArea-prop">dismissArea</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#grabDismissAreaEvents-prop">grabDismissAreaEvents</a></b></b> : bool</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#hide-method">hide</a></b></b>()</li>
<li class="fn"><b><b><a href="#show-method">show</a></b></b>()</li>
</ul>
<!-- $$$PopupBase-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Examples: See subclasses.</p>
<!-- @@@PopupBase -->
<h2>Property Documentation</h2>
<!-- $$$dismissArea -->
<table class="qmlname"><tr valign="top" id="dismissArea-prop"><td class="tblQmlPropNode"><p><span class="name">dismissArea</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The property holds the area used to dismiss the popups, the area from where mouse and touch events will be grabbed. By default this area is the Popup itself.</p>
<!-- @@@dismissArea -->
<br/>
<!-- $$$grabDismissAreaEvents -->
<table class="qmlname"><tr valign="top" id="grabDismissAreaEvents-prop"><td class="tblQmlPropNode"><p><span class="name">grabDismissAreaEvents</span> : <span class="type">bool</span></p></td></tr></table><p>The property specifies whether to forward or not the mouse and touch events happening outside of the popover. By default all events are grabbed.</p>
<!-- @@@grabDismissAreaEvents -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$hide -->
<table class="qmlname"><tr valign="top" id="hide-method"><td class="tblQmlFuncNode"><p><span class="name">hide</span>()</p></td></tr></table><p>Hide the popup. Only use this function if you handle memory management. Otherwise use PopupUtils.close() to do it automatically.</p>
<!-- @@@hide -->
<br/>
<!-- $$$show -->
<table class="qmlname"><tr valign="top" id="show-method"><td class="tblQmlFuncNode"><p><span class="name">show</span>()</p></td></tr></table><p>Make the popup visible. Reparent to the background area object first if needed. Only use this function if you handle memory management. Otherwise use PopupUtils.open() to do it automatically.</p>
<!-- @@@show -->
<br/>
