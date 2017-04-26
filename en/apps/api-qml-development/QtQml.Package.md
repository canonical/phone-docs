---
Title: QtQml.Package
---

# QtQml.Package

<span class="subtitle"></span>
<!-- $$$Package-brief -->
<p>Specifies a collection of named items More...</p>
<!-- @@@Package -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick .</td></tr></table><ul>
</ul>
<h2 id="attached-properties">Attached Properties</h2>
<ul>
<li class="fn"><b><b><a href="#name-attached-prop">name</a></b></b> : string</li>
</ul>
<!-- $$$Package-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Package class is used in conjunction with <a href="QtQml.VisualDataModel.md">VisualDataModel</a> to enable delegates with a shared context to be provided to multiple views.</p>
<p>Any item within a Package may be assigned a name via the <a href="#name-attached-prop">Package.name</a> attached property.</p>
<p>The example below creates a Package containing two named items; <i>list</i> and <i>grid</i>. The third item in the package (the Rectangle) is parented to whichever delegate it should appear in. This allows an item to move between views.</p>
<pre class="qml"><span class="type"><a href="index.html">Package</a></span> {
<span class="type">Text</span> { <span class="name">id</span>: <span class="name">listDelegate</span>; <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="number">25</span>; <span class="name">text</span>: <span class="string">'Empty'</span>; <span class="name">Package</span>.name: <span class="string">'list'</span> }
<span class="type">Text</span> { <span class="name">id</span>: <span class="name">gridDelegate</span>; <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>; <span class="name">height</span>: <span class="number">50</span>; <span class="name">text</span>: <span class="string">'Empty'</span>; <span class="name">Package</span>.name: <span class="string">'grid'</span> }
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">wrapper</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="number">25</span>
<span class="name">color</span>: <span class="string">'lightsteelblue'</span>
<span class="type">Text</span> { <span class="name">text</span>: <span class="name">display</span>; <span class="name">anchors</span>.centerIn: <span class="name">parent</span> }
<span class="name">state</span>: <span class="name">root</span>.<span class="name">upTo</span> <span class="operator">&gt;</span> <span class="name">index</span> ? <span class="string">'inGrid'</span> : <span class="string">'inList'</span>
<span class="name">states</span>: [
<span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">'inList'</span>
<span class="type">ParentChange</span> { <span class="name">target</span>: <span class="name">wrapper</span>; <span class="name">parent</span>: <span class="name">listDelegate</span> }
},
<span class="type"><a href="QtQml.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">'inGrid'</span>
<span class="type">ParentChange</span> {
<span class="name">target</span>: <span class="name">wrapper</span>; <span class="name">parent</span>: <span class="name">gridDelegate</span>
<span class="name">x</span>: <span class="number">0</span>; <span class="name">y</span>: <span class="number">0</span>; <span class="name">width</span>: <span class="name">gridDelegate</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">gridDelegate</span>.<span class="name">height</span>
}
}
]
<span class="name">transitions</span>: [
<span class="type">Transition</span> {
<span class="type">ParentAnimation</span> {
<span class="type">NumberAnimation</span> { <span class="name">properties</span>: <span class="string">'x,y,width,height'</span>; <span class="name">duration</span>: <span class="number">300</span> }
}
}
]
}
}</pre>
<p>These named items are used as the delegates by the two views who reference the special VisualDataModel::parts property to select a model which provides the chosen delegate.</p>
<pre class="qml"><span class="type"><a href="QtQml.DelegateModel.md">DelegateModel</a></span> {
<span class="name">id</span>: <span class="name">visualModel</span>
<span class="name">delegate</span>: <span class="name">Delegate</span> {}
<span class="name">model</span>: <span class="name">myModel</span>
}
<span class="type">ListView</span> {
<span class="name">id</span>: <span class="name">lv</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span><span class="operator">/</span><span class="number">2</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">model</span>: <span class="name">visualModel</span>.<span class="name">parts</span>.<span class="name">list</span>
}
<span class="type">GridView</span> {
<span class="name">y</span>: <span class="name">parent</span>.<span class="name">height</span><span class="operator">/</span><span class="number">2</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span><span class="operator">/</span><span class="number">2</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">cellWidth</span>: <span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
<span class="name">cellHeight</span>: <span class="number">50</span>
<span class="name">model</span>: <span class="name">visualModel</span>.<span class="name">parts</span>.<span class="name">grid</span>
}</pre>
<p><b>See also </b>Qt Quick Examples - Views, Qt Quick Demo - Photo Viewer, and <a href="QtQml.qtqml-index.md">Qt QML</a>.</p>
<!-- @@@Package -->
<h2>Attached Property Documentation</h2>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-attached-prop"><td class="tblQmlPropNode"><p><span class="name">Package.name</span> : <span class="type">string</span></p></td></tr></table><p>This attached property holds the name of an item within a Package.</p>
<!-- @@@name -->
<br/>
