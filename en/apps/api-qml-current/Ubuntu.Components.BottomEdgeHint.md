---
Title: Ubuntu.Components.BottomEdgeHint
---

# Ubuntu.Components.BottomEdgeHint

<span class="subtitle"></span>
<!-- $$$BottomEdgeHint-brief -->
<p>The BottomEdgeHint shows the availability of extra features available from the bottom edge of the application. More...</p>
<!-- @@@BottomEdgeHint -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ActionItem.md">ActionItem</a></p>
</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#deactivateTimeout-prop">deactivateTimeout</a></b></b> : int</li>
<li class="fn"><b><b><a href="#flickable-prop">flickable</a></b></b> : Flickable</li>
<li class="fn"><b><b><a href="#iconName-prop">iconName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#iconSource-prop">iconSource</a></b></b> : url</li>
<li class="fn"><b><b><a href="#status-prop">status</a></b></b> : Status</li>
<li class="fn"><b><b><a href="#swipeArea-prop">swipeArea</a></b></b> : SwipeArea</li>
<li class="fn"><b><b><a href="#text-prop">text</a></b></b> : string</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn">void <b><b><a href="#clicked-signal">clicked</a></b></b>()</li>
</ul>
<!-- $$$BottomEdgeHint-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>It displays a label and/or an icon at the bottom of the component it is attached to.</p>
<p>When used with a mouse it acts like a button. The typical action associated with clicking on it should be revealing the extra features provided by the bottom edge.</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="index.html">BottomEdgeHint</a></span> {
<span class="name">id</span>: <span class="name">bottomEdgeHint</span>
<span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Favorites&quot;</span>)
<span class="name">onClicked</span>: <span class="name">revealBottomEdge</span>()
}</pre>
<p>The component is styled through <b>BottomEdgeHintStyle</b>.</p>
<!-- @@@BottomEdgeHint -->
<h2>Property Documentation</h2>
<!-- $$$deactivateTimeout -->
<table class="qmlname"><tr valign="top" id="deactivateTimeout-prop"><td class="tblQmlPropNode"><p><span class="name">deactivateTimeout</span> : <span class="type">int</span></p></td></tr></table><p>The property specifies the timeout interval in milliseconds the <a href="#status-prop">status</a> is set to <i>Inactive</i> after a gesture based activation. Gesture based activation is only possible when mouse is not attached to the device. Defaults to 800 milliseconds.</p>
<!-- @@@deactivateTimeout -->
<br/>
<!-- $$$flickable -->
<table class="qmlname"><tr valign="top" id="flickable-prop"><td class="tblQmlPropNode"><p><span class="name">flickable</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Flickable.md">Flickable</a></span></p></td></tr></table><p>The property holds the flickable, which when flicked hides the hint. <i>Hidden</i> state is reached when this property is set to a Flickable which is flicking or moving. It is recommended to set the property when the hint is placed above a flickable content. Defaults to null.</p>
<!-- @@@flickable -->
<br/>
<!-- $$$iconName -->
<table class="qmlname"><tr valign="top" id="iconName-prop"><td class="tblQmlPropNode"><p><span class="name">iconName</span> : <span class="type">string</span></p></td></tr></table><p>The icon associated with the <a href="index.html">BottomEdgeHint</a> in the icon theme.</p>
<p>If both <a href="#iconSource-prop">iconSource</a> and iconName are defined, iconName will be ignored.</p>
<!-- @@@iconName -->
<br/>
<!-- $$$iconSource -->
<table class="qmlname"><tr valign="top" id="iconSource-prop"><td class="tblQmlPropNode"><p><span class="name">iconSource</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td></tr></table><p>The icon displayed by the <a href="index.html">BottomEdgeHint</a>.</p>
<p>This is the URL of any image file. If both iconSource and <a href="#iconName-prop">iconName</a> are defined, <a href="#iconName-prop">iconName</a> will be ignored.</p>
<!-- @@@iconSource -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">Status</span></p></td></tr></table><p>The property represents the status of the hint. The property is writable so it can be set to any of the following values programatically:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Status</th><th >Description</th></tr></thead>
<tr valign="top"><td >Hidden</td><td >The hint is not shown. Equivalent with setting <i>visible</i> to <code>false</code>, however visuals may do animations when altering this property. It can only be set if the current status is not <i>Locked</i>.</td></tr>
<tr valign="top"><td >Inactive</td><td >The hint is shown and inactive. Styles can represent this state with different visuals. When inactive, <a href="#clicked-signal">clicked</a> signal cannot be emitted.</td></tr>
<tr valign="top"><td >Active</td><td >The hint is shown and active, meaning <a href="#clicked-signal">clicked</a> signal is emitted when clicked with mouse.</td></tr>
<tr valign="top"><td >Locked</td><td >Similar to <i>Active</i> the hint is shown and active, but no automatic transition to any other state is allowed. This is relevant for style implementations.</td></tr>
</table>
<p><b>Note: </b><i>Locked</i> status value is set automatically when the system detects a mouse attached. In this case any change into other state value than <i>Locked</i> is rejected. Defaults to</p><ul>
<li>Inactive if no mouse is attached or</li>
<li>Locked if there is a mouse detected.</li>
</ul>
<!-- @@@status -->
<br/>
<!-- $$$swipeArea -->
<table class="qmlname"><tr valign="top" id="swipeArea-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">swipeArea</span> : <span class="type">SwipeArea</span></p></td></tr></table><p>The property specifies the SwipeArea attached to the component driving its behavior.</p>
<!-- @@@swipeArea -->
<br/>
<!-- $$$text -->
<table class="qmlname"><tr valign="top" id="text-prop"><td class="tblQmlPropNode"><p><span class="name">text</span> : <span class="type">string</span></p></td></tr></table><p>The label displayed by the <a href="index.html">BottomEdgeHint</a>.</p>
<!-- @@@text -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$clicked -->
<table class="qmlname"><tr valign="top" id="clicked-signal"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">clicked</span>()</p></td></tr></table><p>This handler is called when there is a mouse click on the <a href="index.html">BottomEdgeHint</a> and the <a href="index.html">BottomEdgeHint</a> is not disabled.</p>
<!-- @@@clicked -->
<br/>
