---
Title: QtQuick.AnchorChanges
---

# QtQuick.AnchorChanges

<span class="subtitle"></span>
<!-- $$$AnchorChanges-brief -->
<p>Specifies how to change the anchors of an item in a state More...</p>
<!-- @@@AnchorChanges -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#anchors-prop">anchors</a></b></b><ul>
<li class="fn"><b><b><a href="#anchors.left-prop">anchors.left</a></b></b> : AnchorLine</li>
<li class="fn"><b><b><a href="#anchors.right-prop">anchors.right</a></b></b> : AnchorLine</li>
<li class="fn"><b><b><a href="#anchors.horizontalCenter-prop">anchors.horizontalCenter</a></b></b> : AnchorLine</li>
<li class="fn"><b><b><a href="#anchors.top-prop">anchors.top</a></b></b> : AnchorLine</li>
<li class="fn"><b><b><a href="#anchors.bottom-prop">anchors.bottom</a></b></b> : AnchorLine</li>
<li class="fn"><b><b><a href="#anchors.verticalCenter-prop">anchors.verticalCenter</a></b></b> : AnchorLine</li>
<li class="fn"><b><b><a href="#anchors.baseline-prop">anchors.baseline</a></b></b> : AnchorLine</li>
</ul>
</li>
<li class="fn"><b><b><a href="#target-prop">target</a></b></b> : Item</li>
</ul>
<!-- $$$AnchorChanges-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">AnchorChanges</a> type is used to modify the anchors of an item in a <a href="QtQuick.State.md">State</a>.</p>
<p><a href="index.html">AnchorChanges</a> cannot be used to modify the margins on an item. For this, use <a href="QtQuick.PropertyChanges.md">PropertyChanges</a> intead.</p>
<p>In the following example we change the top and bottom anchors of an item using <a href="index.html">AnchorChanges</a>, and the top and bottom anchor margins using <a href="QtQuick.PropertyChanges.md">PropertyChanges</a>:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">window</span>
<span class="name">width</span>: <span class="number">120</span>; <span class="name">height</span>: <span class="number">120</span>
<span class="name">color</span>: <span class="string">&quot;black&quot;</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">id</span>: <span class="name">myRect</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span> }
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;reanchored&quot;</span>
<span class="type"><a href="index.html">AnchorChanges</a></span> {
<span class="name">target</span>: <span class="name">myRect</span>
<span class="name">anchors</span>.top: <span class="name">window</span>.<span class="name">top</span>
<span class="name">anchors</span>.bottom: <span class="name">window</span>.<span class="name">bottom</span>
}
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> {
<span class="name">target</span>: <span class="name">myRect</span>
<span class="name">anchors</span>.topMargin: <span class="number">10</span>
<span class="name">anchors</span>.bottomMargin: <span class="number">10</span>
}
}
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">onClicked</span>: <span class="name">window</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">&quot;reanchored&quot;</span> }
}</pre>
<p class="centerAlign"><img src="../../../../media/anchorchanges.png" alt="" /></p><p><a href="index.html">AnchorChanges</a> can be animated using <a href="QtQuick.AnchorAnimation.md">AnchorAnimation</a>.</p>
<pre class="qml"><span class="comment">//animate our anchor changes</span>
<span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
<span class="type"><a href="QtQuick.AnchorAnimation.md">AnchorAnimation</a></span> {}
}</pre>
<p>Changes to anchor margins can be animated using <a href="QtQuick.NumberAnimation.md">NumberAnimation</a>.</p>
<p>For more information on anchors see <a href="QtQuick.qtquick-positioning-anchors.md#anchor-layout">Anchor Layouts</a>.</p>
<!-- @@@AnchorChanges -->
<h2>Property Documentation</h2>
<!-- $$$anchors -->
<table class="qmlname"><tr valign="top" id="anchors-prop"><th class="centerAlign"><p><b>anchors group</b></p></th></tr><tr valign="top" id="anchors.left-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.left</span> : <span class="type">AnchorLine</span></p></td></tr><tr valign="top" id="anchors.right-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.right</span> : <span class="type">AnchorLine</span></p></td></tr><tr valign="top" id="anchors.horizontalCenter-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.horizontalCenter</span> : <span class="type">AnchorLine</span></p></td></tr><tr valign="top" id="anchors.top-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.top</span> : <span class="type">AnchorLine</span></p></td></tr><tr valign="top" id="anchors.bottom-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.bottom</span> : <span class="type">AnchorLine</span></p></td></tr><tr valign="top" id="anchors.verticalCenter-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.verticalCenter</span> : <span class="type">AnchorLine</span></p></td></tr><tr valign="top" id="anchors.baseline-prop"><td class="tblQmlPropNode"><p><span class="name">anchors.baseline</span> : <span class="type">AnchorLine</span></p></td></tr></table><p>These properties change the respective anchors of the item.</p>
<p>To reset an anchor you can assign <code>undefined</code>:</p>
<pre class="qml"><span class="type"><a href="index.html">AnchorChanges</a></span> {
<span class="name">target</span>: <span class="name">myItem</span>
<span class="name">anchors</span>.left: <span class="name">undefined</span>          <span class="comment">//remove myItem's left anchor</span>
<span class="name">anchors</span>.right: <span class="name">otherItem</span>.<span class="name">right</span>
}</pre>
<!-- @@@anchors -->
<br/>
<!-- $$$target -->
<table class="qmlname"><tr valign="top" id="target-prop"><td class="tblQmlPropNode"><p><span class="name">target</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>This property holds the <a href="QtQuick.Item.md">Item</a> for which the anchor changes will be applied.</p>
<!-- @@@target -->
<br/>
