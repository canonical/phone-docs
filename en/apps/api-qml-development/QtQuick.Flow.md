---
Title: QtQuick.Flow
---

# QtQuick.Flow

<span class="subtitle"></span>
<!-- $$$Flow-brief -->
<p>Positions its children side by side, wrapping as necessary More...</p>
<!-- @@@Flow -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#add-prop">add</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#effectiveLayoutDirection-prop">effectiveLayoutDirection</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#flow-prop">flow</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#layoutDirection-prop">layoutDirection</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#move-prop">move</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#populate-prop">populate</a></b></b> : Transition</li>
<li class="fn"><b><b><a href="#spacing-prop">spacing</a></b></b> : real</li>
</ul>
<!-- $$$Flow-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Flow item positions its child items like words on a page, wrapping them to create rows or columns of items.</p>
<p>Below is a Flow that contains various <a href="QtQuick.qtquick-releasenotes.md#text">Text</a> items:</p>
<pre class="qml">    <span class="type"><a href="index.html">Flow</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">anchors</span>.margins: <span class="number">4</span>
<span class="name">spacing</span>: <span class="number">10</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Text&quot;</span>; <span class="name">font</span>.pixelSize: <span class="number">40</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;items&quot;</span>; <span class="name">font</span>.pixelSize: <span class="number">40</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;flowing&quot;</span>; <span class="name">font</span>.pixelSize: <span class="number">40</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;inside&quot;</span>; <span class="name">font</span>.pixelSize: <span class="number">40</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;a&quot;</span>; <span class="name">font</span>.pixelSize: <span class="number">40</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Flow&quot;</span>; <span class="name">font</span>.pixelSize: <span class="number">40</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;item&quot;</span>; <span class="name">font</span>.pixelSize: <span class="number">40</span> }
}</pre>
<p>The Flow item automatically positions the child <a href="QtQuick.qtquick-releasenotes.md#text">Text</a> items side by side, wrapping as necessary:</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/63024109-72a2-4232-8d40-b24b8d82b1d3-../QtQuick.Flow/images/qml-flow-snippet.png" alt="" /></p><p>If an item within a Flow is not <a href="QtQuick.Item.md#visible-prop">visible</a>, or if it has a width or height of 0, the item will not be laid out and it will not be visible within the Flow. Also, since a Flow automatically positions its children, a child item within a Flow should not set its <a href="QtQuick.Item.md#x-prop">x</a> or <a href="QtQuick.Item.md#y-prop">y</a> positions or anchor itself with any of the <a href="QtQuick.Item.md#anchors-prop">anchor</a> properties.</p>
<p>For more information on using Flow and other related positioner-types, see <a href="QtQuick.qtquick-positioning-layouts.md">Item Positioners</a>.</p>
<p><b>See also </b><a href="QtQuick.qtquick-positioning-layouts.md#column">Column</a>, <a href="QtQuick.qtquick-positioning-layouts.md#row">Row</a>, <a href="QtQuick.qtquick-positioning-layouts.md#grid">Grid</a>, <a href="QtQuick.Positioner.md">Positioner</a>, and <a href="QtQuick.positioners/">Qt Quick Examples - Positioners</a>.</p>
<!-- @@@Flow -->
<h2>Property Documentation</h2>
<!-- $$$add -->
<table class="qmlname"><tr valign="top" id="add-prop"><td class="tblQmlPropNode"><p><span class="name">add</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to be run for items that are added to this positioner. For a positioner, this applies to:</p>
<ul>
<li>Items that are created or reparented as a child of the positioner after the positioner has been created</li>
<li>Child items that change their <a href="QtQuick.Item.md#visible-prop">Item::visible</a> property from false to true, and thus are now visible</li>
</ul>
<p>The transition can use the <a href="QtQuick.ViewTransition.md">ViewTransition</a> property to access more details about the item that is being added. See the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation for more details and examples on using these transitions.</p>
<p><b>Note: </b>This transition is not applied to the items that already part of the positioner at the time of its creation. In this case, the <a href="#populate-prop">populate</a> transition is applied instead.</p><p><b>See also </b><a href="#populate-prop">populate</a>, <a href="QtQuick.ViewTransition.md">ViewTransition</a>, and <a href="QtQuick.positioners/">Qt Quick Examples - Positioners</a>.</p>
<!-- @@@add -->
<br/>
<!-- $$$effectiveLayoutDirection -->
<table class="qmlname"><tr valign="top" id="effectiveLayoutDirection-prop"><td class="tblQmlPropNode"><p><span class="name">effectiveLayoutDirection</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the effective layout direction of the flow.</p>
<p>When using the attached property <a href="QtQuick.LayoutMirroring.md#enabled-prop">LayoutMirroring::enabled</a> for locale layouts, the visual layout direction of the grid positioner will be mirrored. However, the property <a href="#layoutDirection-prop">layoutDirection</a> will remain unchanged.</p>
<p><b>See also </b><a href="#layoutDirection-prop">Flow::layoutDirection</a> and <a href="QtQuick.LayoutMirroring.md">LayoutMirroring</a>.</p>
<!-- @@@effectiveLayoutDirection -->
<br/>
<!-- $$$flow -->
<table class="qmlname"><tr valign="top" id="flow-prop"><td class="tblQmlPropNode"><p><span class="name">flow</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the flow of the layout.</p>
<p>Possible values are:</p>
<ul>
<li>Flow.LeftToRight (default) - Items are positioned next to to each other according to the <a href="#layoutDirection-prop">layoutDirection</a> until the width of the Flow is exceeded, then wrapped to the next line.</li>
<li>Flow.TopToBottom - Items are positioned next to each other from top to bottom until the height of the Flow is exceeded, then wrapped to the next column.</li>
</ul>
<!-- @@@flow -->
<br/>
<!-- $$$layoutDirection -->
<table class="qmlname"><tr valign="top" id="layoutDirection-prop"><td class="tblQmlPropNode"><p><span class="name">layoutDirection</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the layout direction of the layout.</p>
<p>Possible values are:</p>
<ul>
<li>Qt.LeftToRight (default) - Items are positioned from the top to bottom, and left to right. The flow direction is dependent on the <a href="#flow-prop">Flow::flow</a> property.</li>
<li>Qt.RightToLeft - Items are positioned from the top to bottom, and right to left. The flow direction is dependent on the <a href="#flow-prop">Flow::flow</a> property.</li>
</ul>
<p><b>See also </b><a href="QtQuick.Grid.md#layoutDirection-prop">Grid::layoutDirection</a>, <a href="QtQuick.Row.md#layoutDirection-prop">Row::layoutDirection</a>, and <a href="QtQuick.righttoleft/">Qt Quick Examples - Right to Left</a>.</p>
<!-- @@@layoutDirection -->
<br/>
<!-- $$$move -->
<table class="qmlname"><tr valign="top" id="move-prop"><td class="tblQmlPropNode"><p><span class="name">move</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to run for items that have moved within the positioner. For a positioner, this applies to:</p>
<ul>
<li>Child items that move when they are displaced due to the addition, removal or rearrangement of other items in the positioner</li>
<li>Child items that are repositioned due to the resizing of other items in the positioner</li>
</ul>
<p>The transition can use the <a href="QtQuick.ViewTransition.md">ViewTransition</a> property to access more details about the item that is being moved. Note, however, that for this move transition, the <a href="QtQuick.ViewTransition.md">ViewTransition</a>.targetIndexes and <a href="QtQuick.ViewTransition.md">ViewTransition</a>.targetItems lists are only set when this transition is triggered by the addition of other items in the positioner; in other cases, these lists will be empty. See the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation for more details and examples on using these transitions.</p>
<p><b>Note: </b>In Qt Quick 1, this transition was applied to all items that were part of the positioner at the time of its creation. From <a href="QtQuick.qtquick-index.md">QtQuick 2</a> onwards, positioners apply the <a href="#populate-prop">populate</a> transition to these items instead.</p><p><b>See also </b><a href="#add-prop">add</a>, <a href="QtQuick.ViewTransition.md">ViewTransition</a>, and <a href="QtQuick.positioners/">Qt Quick Examples - Positioners</a>.</p>
<!-- @@@move -->
<br/>
<!-- $$$populate -->
<table class="qmlname"><tr valign="top" id="populate-prop"><td class="tblQmlPropNode"><p><span class="name">populate</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td></tr></table><p>This property holds the transition to be run for items that are part of this positioner at the time of its creation. The transition is run when the positioner is first created.</p>
<p>The transition can use the <a href="QtQuick.ViewTransition.md">ViewTransition</a> property to access more details about the item that is being added. See the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation for more details and examples on using these transitions.</p>
<p><b>See also </b><a href="#add-prop">add</a>, <a href="QtQuick.ViewTransition.md">ViewTransition</a>, and <a href="QtQuick.positioners/">Qt Quick Examples - Positioners</a>.</p>
<!-- @@@populate -->
<br/>
<!-- $$$spacing -->
<table class="qmlname"><tr valign="top" id="spacing-prop"><td class="tblQmlPropNode"><p><span class="name">spacing</span> : <span class="type">real</span></p></td></tr></table><p>spacing is the amount in pixels left empty between each adjacent item, and defaults to 0.</p>
<p><b>See also </b><a href="QtQuick.Grid.md#spacing-prop">Grid::spacing</a>.</p>
<!-- @@@spacing -->
<br/>
