---
Title: QtQuick.Row
---

# QtQuick.Row

<span class="subtitle"></span>
<!-- $$$Row-brief -->
<p>Positions its children in a row More...</p>
<!-- @@@Row -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#add-prop">add</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#effectiveLayoutDirection-prop">effectiveLayoutDirection</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#layoutDirection-prop">layoutDirection</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#move-prop">move</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#populate-prop">populate</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#spacing-prop">spacing</a></b></b> : real</li>
</ul>
<!-- $$$Row-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Row is a type that positions its child items along a single row. It can be used as a convenient way to horizontally position a series of items without using <a href="QtQuick.qtquick-positioning-anchors.md">anchors</a>.</p>
<p>Below is a Row that contains three rectangles of various sizes:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="index.html">Row</a></span> {
<span class="name">spacing</span>: <span class="number">2</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;red&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span> }
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;green&quot;</span>; <span class="name">width</span>: <span class="number">20</span>; <span class="name">height</span>: <span class="number">50</span> }
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> { <span class="name">color</span>: <span class="string">&quot;blue&quot;</span>; <span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">20</span> }
}</pre>
<p>The Row automatically positions these items in a horizontal formation, like this:</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/e0699b54-4236-420f-b477-63498cba8775-../QtQuick.Row/images/horizontalpositioner_example.png" alt="" /></p><p>If an item within a Row is not <a href="QtQuick.Item.md#visible-prop">visible</a>, or if it has a width or height of 0, the item will not be laid out and it will not be visible within the row. Also, since a Row automatically positions its children horizontally, a child item within a Row should not set its <a href="QtQuick.Item.md#x-prop">x</a> position or horizontally anchor itself using the <a href="QtQuick.Item.md#anchors.left-prop">left</a>, <a href="QtQuick.Item.md#anchors.right-prop">right</a>, <a href="QtQuick.Item.md#anchors.horizontalCenter-prop">anchors.horizontalCenter</a>, <a href="QtQuick.Item.md#anchors.fill-prop">fill</a> or <a href="QtQuick.Item.md#anchors.centerIn-prop">centerIn</a> anchors. If you need to perform these actions, consider positioning the items without the use of a Row.</p>
<p>Note that items in a Row can use the <a href="QtQuick.Positioner.md">Positioner</a> attached property to access more information about its position within the Row.</p>
<p>For more information on using Row and other related positioner-types, see <a href="QtQuick.qtquick-positioning-layouts.md">Item Positioners</a>.</p>
<p><b>See also </b><a href="QtQuick.qtquick-positioning-layouts.md#column">Column</a>, <a href="QtQuick.qtquick-positioning-layouts.md#grid">Grid</a>, <a href="QtQuick.qtquick-positioning-layouts.md#flow">Flow</a>, <a href="QtQuick.Positioner.md">Positioner</a>, RowLayout, and <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.positioners/">Qt Quick Examples - Positioners</a>.</p>
<!-- @@@Row -->
<h2>Property Documentation</h2>
<!-- $$$add -->
<table class="qmlname"><tr valign="top" id="add-prop"><td class="tblQmlPropNode"><p><span class="name">add</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to be run for items that are added to this positioner. For a positioner, this applies to:</p>
<ul>
<li>Items that are created or reparented as a child of the positioner after the positioner has been created</li>
<li>Child items that change their <a href="QtQuick.Item.md#visible-prop">Item::visible</a> property from false to true, and thus are now visible</li>
</ul>
<p>The transition can use the <a href="QtQuick.ViewTransition.md">ViewTransition</a> property to access more details about the item that is being added. See the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation for more details and examples on using these transitions.</p>
<p><b>Note: </b>This transition is not applied to the items that already part of the positioner at the time of its creation. In this case, the <a href="#populate-prop">populate</a> transition is applied instead.</p><p><b>See also </b><a href="#populate-prop">populate</a>, <a href="QtQuick.ViewTransition.md">ViewTransition</a>, and <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.positioners/">Qt Quick Examples - Positioners</a>.</p>
<!-- @@@add -->
<br/>
<!-- $$$effectiveLayoutDirection -->
<table class="qmlname"><tr valign="top" id="effectiveLayoutDirection-prop"><td class="tblQmlPropNode"><p><span class="name">effectiveLayoutDirection</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the effective layout direction of the row.</p>
<p>When using the attached property <a href="QtQuick.LayoutMirroring.md#enabled-prop">LayoutMirroring::enabled</a> for locale layouts, the visual layout direction of the row positioner will be mirrored. However, the property <a href="#layoutDirection-prop">layoutDirection</a> will remain unchanged.</p>
<p><b>See also </b><a href="#layoutDirection-prop">Row::layoutDirection</a> and <a href="QtQuick.LayoutMirroring.md">LayoutMirroring</a>.</p>
<!-- @@@effectiveLayoutDirection -->
<br/>
<!-- $$$layoutDirection -->
<table class="qmlname"><tr valign="top" id="layoutDirection-prop"><td class="tblQmlPropNode"><p><span class="name">layoutDirection</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the layoutDirection of the row.</p>
<p>Possible values:</p>
<ul>
<li>Qt.LeftToRight (default) - Items are laid out from left to right. If the width of the row is explicitly set, the left anchor remains to the left of the row.</li>
<li>Qt.RightToLeft - Items are laid out from right to left. If the width of the row is explicitly set, the right anchor remains to the right of the row.</li>
</ul>
<p><b>See also </b><a href="QtQuick.Grid.md#layoutDirection-prop">Grid::layoutDirection</a>, <a href="QtQuick.Flow.md#layoutDirection-prop">Flow::layoutDirection</a>, and <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.righttoleft/">Qt Quick Examples - Right to Left</a>.</p>
<!-- @@@layoutDirection -->
<br/>
<!-- $$$move -->
<table class="qmlname"><tr valign="top" id="move-prop"><td class="tblQmlPropNode"><p><span class="name">move</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to run for items that have moved within the positioner. For a positioner, this applies to:</p>
<ul>
<li>Child items that move when they are displaced due to the addition, removal or rearrangement of other items in the positioner</li>
<li>Child items that are repositioned due to the resizing of other items in the positioner</li>
</ul>
<p>The transition can use the <a href="QtQuick.ViewTransition.md">ViewTransition</a> property to access more details about the item that is being moved. Note, however, that for this move transition, the <a href="QtQuick.ViewTransition.md">ViewTransition</a>.targetIndexes and <a href="QtQuick.ViewTransition.md">ViewTransition</a>.targetItems lists are only set when this transition is triggered by the addition of other items in the positioner; in other cases, these lists will be empty. See the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation for more details and examples on using these transitions.</p>
<p><b>Note: </b>In Qt Quick 1, this transition was applied to all items that were part of the positioner at the time of its creation. From <a href="QtQuick.qtquick-index.md">QtQuick 2</a> onwards, positioners apply the <a href="#populate-prop">populate</a> transition to these items instead.</p><p><b>See also </b><a href="#add-prop">add</a>, <a href="QtQuick.ViewTransition.md">ViewTransition</a>, and <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.positioners/">Qt Quick Examples - Positioners</a>.</p>
<!-- @@@move -->
<br/>
<!-- $$$populate -->
<table class="qmlname"><tr valign="top" id="populate-prop"><td class="tblQmlPropNode"><p><span class="name">populate</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to be run for items that are part of this positioner at the time of its creation. The transition is run when the positioner is first created.</p>
<p>The transition can use the <a href="QtQuick.ViewTransition.md">ViewTransition</a> property to access more details about the item that is being added. See the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation for more details and examples on using these transitions.</p>
<p><b>See also </b><a href="#add-prop">add</a>, <a href="QtQuick.ViewTransition.md">ViewTransition</a>, and <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.positioners/">Qt Quick Examples - Positioners</a>.</p>
<!-- @@@populate -->
<br/>
<!-- $$$spacing -->
<table class="qmlname"><tr valign="top" id="spacing-prop"><td class="tblQmlPropNode"><p><span class="name">spacing</span> : <span class="type">real</span></p></td></tr></table><p>The spacing is the amount in pixels left empty between adjacent items. The default spacing is 0.</p>
<p><b>See also </b><a href="QtQuick.Grid.md#spacing-prop">Grid::spacing</a>.</p>
<!-- @@@spacing -->
<br/>
