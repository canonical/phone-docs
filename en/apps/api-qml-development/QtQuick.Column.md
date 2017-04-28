---
Title: QtQuick.Column
---

# QtQuick.Column

<span class="subtitle"></span>
<!-- $$$Column-brief -->
<p>Positions its children in a column More...</p>
<!-- @@@Column -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#add-prop">add</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#move-prop">move</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#populate-prop">populate</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#spacing-prop">spacing</a></b></b> : real</li>
</ul>
<!-- $$$Column-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Column is a type that positions its child items along a single column. It can be used as a convenient way to vertically position a series of items without using <a href="QtQuick.qtquick-positioning-anchors.md">anchors</a>.</p>
<p>Below is a Column that contains three rectangles of various sizes:</p>
<pre class="qml"><span class="type"><a href="index.html">Column</a></span> {
<span class="name">spacing</span>: <span class="number">2</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;red&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span> }
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;green&quot;</span>; <span class="name">width</span>: <span class="number">20</span>; <span class="name">height</span>: <span class="number">50</span> }
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">20</span> }
}</pre>
<p>The Column automatically positions these items in a vertical formation, like this:</p>
<p class="centerAlign"><img src="../../../media/verticalpositioner_example.png" alt="" /></p><p>If an item within a Column is not <a href="QtQuick.Item.md#visible-prop">visible</a>, or if it has a width or height of 0, the item will not be laid out and it will not be visible within the column. Also, since a Column automatically positions its children vertically, a child item within a Column should not set its <a href="QtQuick.Item.md#y-prop">y</a> position or vertically anchor itself using the <a href="QtQuick.Item.md#anchors.top-prop">top</a>, <a href="QtQuick.Item.md#anchors.bottom-prop">bottom</a>, <a href="QtQuick.Item.md#anchors.verticalCenter-prop">anchors.verticalCenter</a>, <a href="QtQuick.Item.md#anchors.fill-prop">fill</a> or <a href="QtQuick.Item.md#anchors.centerIn-prop">centerIn</a> anchors. If you need to perform these actions, consider positioning the items without the use of a Column.</p>
<p>Note that items in a Column can use the <a href="QtQuick.Positioner.md">Positioner</a> attached property to access more information about its position within the Column.</p>
<p>For more information on using Column and other related positioner-types, see <a href="QtQuick.qtquick-positioning-layouts.md">Item Positioners</a>.</p>
<h2 id="using-transitions">Using Transitions</h2>
<p>A Column animate items using specific transitions when items are added to or moved within a Column.</p>
<p>For example, the Column below sets the <a href="#move-prop">move</a> property to a specific <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a>:</p>
<pre class="qml"><span class="type"><a href="index.html">Column</a></span> {
<span class="name">spacing</span>: <span class="number">2</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;red&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span> }
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">id</span>: <span class="name">greenRect</span>; <span class="name">color</span>: <span class="string">&quot;green&quot;</span>; <span class="name">width</span>: <span class="number">20</span>; <span class="name">height</span>: <span class="number">50</span> }
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">20</span> }
<span class="name">move</span>: <span class="name">Transition</span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">duration</span>: <span class="number">1000</span> }
}
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onSpacePressed: <span class="name">greenRect</span>.<span class="name">visible</span> <span class="operator">=</span> !<span class="name">greenRect</span>.<span class="name">visible</span>
}</pre>
<p>When the Space key is pressed, the <a href="QtQuick.Item.md#visible-prop">visible</a> value of the green <a href="QtQuick.Rectangle.md">Rectangle</a> is toggled. As it appears and disappears, the blue <a href="QtQuick.Rectangle.md">Rectangle</a> moves within the Column, and the <a href="#move-prop">move</a> transition is automatically applied to the blue <a href="QtQuick.Rectangle.md">Rectangle</a>:</p>
<p class="centerAlign"><img src="../../../media/verticalpositioner_transition.gif" alt="" /></p><p><b>See also </b><a href="QtQuick.qtquick-positioning-layouts.md#row">Row</a>, <a href="QtQuick.qtquick-positioning-layouts.md#grid">Grid</a>, <a href="QtQuick.qtquick-positioning-layouts.md#flow">Flow</a>, <a href="QtQuick.Positioner.md">Positioner</a>, ColumnLayout, and <a href="QtQuick.qtquick-positioners-example.md">Qt Quick Examples - Positioners</a>.</p>
<!-- @@@Column -->
<h2>Property Documentation</h2>
<!-- $$$add -->
<table class="qmlname"><tr valign="top" id="add-prop"><td class="tblQmlPropNode"><p><span class="name">add</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to be run for items that are added to this positioner. For a positioner, this applies to:</p>
<ul>
<li>Items that are created or reparented as a child of the positioner after the positioner has been created</li>
<li>Child items that change their <a href="QtQuick.Item.md#visible-prop">Item::visible</a> property from false to true, and thus are now visible</li>
</ul>
<p>The transition can use the <a href="QtQuick.ViewTransition.md">ViewTransition</a> property to access more details about the item that is being added. See the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation for more details and examples on using these transitions.</p>
<p><b>Note: </b>This transition is not applied to the items that already part of the positioner at the time of its creation. In this case, the <a href="#populate-prop">populate</a> transition is applied instead.</p><p><b>See also </b><a href="#populate-prop">populate</a>, <a href="QtQuick.ViewTransition.md">ViewTransition</a>, and <a href="QtQuick.qtquick-positioners-example.md">Qt Quick Examples - Positioners</a>.</p>
<!-- @@@add -->
<br/>
<!-- $$$move -->
<table class="qmlname"><tr valign="top" id="move-prop"><td class="tblQmlPropNode"><p><span class="name">move</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to run for items that have moved within the positioner. For a positioner, this applies to:</p>
<ul>
<li>Child items that move when they are displaced due to the addition, removal or rearrangement of other items in the positioner</li>
<li>Child items that are repositioned due to the resizing of other items in the positioner</li>
</ul>
<p>The transition can use the <a href="QtQuick.ViewTransition.md">ViewTransition</a> property to access more details about the item that is being moved. Note, however, that for this move transition, the <a href="QtQuick.ViewTransition.md">ViewTransition</a>.targetIndexes and <a href="QtQuick.ViewTransition.md">ViewTransition</a>.targetItems lists are only set when this transition is triggered by the addition of other items in the positioner; in other cases, these lists will be empty. See the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation for more details and examples on using these transitions.</p>
<p><b>Note: </b>In Qt Quick 1, this transition was applied to all items that were part of the positioner at the time of its creation. From <a href="QtQuick.qtquick-index.md">Qt Quick 2</a> onwards, positioners apply the <a href="#populate-prop">populate</a> transition to these items instead.</p><p><b>See also </b><a href="#add-prop">add</a>, <a href="QtQuick.ViewTransition.md">ViewTransition</a>, and <a href="QtQuick.qtquick-positioners-example.md">Qt Quick Examples - Positioners</a>.</p>
<!-- @@@move -->
<br/>
<!-- $$$populate -->
<table class="qmlname"><tr valign="top" id="populate-prop"><td class="tblQmlPropNode"><p><span class="name">populate</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to be run for items that are part of this positioner at the time of its creation. The transition is run when the positioner is first created.</p>
<p>The transition can use the <a href="QtQuick.ViewTransition.md">ViewTransition</a> property to access more details about the item that is being added. See the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation for more details and examples on using these transitions.</p>
<p><b>See also </b><a href="#add-prop">add</a>, <a href="QtQuick.ViewTransition.md">ViewTransition</a>, and <a href="QtQuick.qtquick-positioners-example.md">Qt Quick Examples - Positioners</a>.</p>
<!-- @@@populate -->
<br/>
<!-- $$$spacing -->
<table class="qmlname"><tr valign="top" id="spacing-prop"><td class="tblQmlPropNode"><p><span class="name">spacing</span> : <span class="type">real</span></p></td></tr></table><p>The spacing is the amount in pixels left empty between adjacent items. The default spacing is 0.</p>
<p><b>See also </b><a href="QtQuick.Grid.md#spacing-prop">Grid::spacing</a>.</p>
<!-- @@@spacing -->
<br/>
