---
Title: Ubuntu.Components.SlotsLayout
---

# Ubuntu.Components.SlotsLayout

<span class="subtitle"></span>
<!-- $$$SlotsLayout-brief -->
<p>The SlotsLayout component provides an easy way to layout a list of user-interface elements horizontally following Ubuntu design standards. We call the elements which we want to layout &quot;slots&quot;. <b>Slots</b> is just another name for SlotsLayout's <b>visual children</b>. More...</p>
<!-- @@@SlotsLayout -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#mainSlot-prop">mainSlot</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#padding-prop">padding</a></b></b><ul>
<li class="fn"><b><b><a href="#padding.top-prop">padding.top</a></b></b> : real</li>
<li class="fn"><b><b><a href="#padding.bottom-prop">padding.bottom</a></b></b> : real</li>
<li class="fn"><b><b><a href="#padding.leading-prop">padding.leading</a></b></b> : real</li>
<li class="fn"><b><b><a href="#padding.trailing-prop">padding.trailing</a></b></b> : real</li>
</ul>
</li>
</ul>
<h2 id="attached-properties">Attached Properties</h2>
<ul>
<li class="fn"><b><b><a href="#overrideVerticalPositioning-attached-prop">overrideVerticalPositioning</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#padding-attached-prop">padding</a></b></b> : QtObject</li>
<li class="fn"><b><b><a href="#position-attached-prop">position</a></b></b> : enumeration</li>
</ul>
<!-- $$$SlotsLayout-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">SlotsLayout</a> will layout its children according to Ubuntu's visual design rules, providing automatic spacing and positioning (both horizontal and vertical, unless <a href="#overrideVerticalPositioning-attached-prop">overrideVerticalPositioning</a> is set) for each of them.</p>
<p><b>If you're building list items,</b> we recommend to use <a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a>, as it is designed to accomodate up to 3 labels that follow our UI standards.</p>
<p>There are three conceptual types of slots:</p>
<ul>
<li>The <b>leading slots</b>, which are the ones positioned at the beginning of the layout (i.e&#x2e; they are the leftmost elements in left-to-right locales).</li>
<li>The <b>trailing slots</b>, which are positioned after <a href="#mainSlot-prop">mainSlot</a>, if any, or after the leading slots otherwise.</li>
<li>The <b>main slot</b>, which drives the positioning of the vertical dimension of each slot as described in section <a href="#automatic-vertical-positioning-of-slots">Automatic vertical positioning of slots</a>. This slot sits between leading and trailing slots, and can be set using the property <a href="#mainSlot-prop">mainSlot</a>.</li>
</ul>
<p>In order to comply with Ubuntu design standards, this component hosts a maximum of 1 leading and 2 trailing slots. The layout algorithm will ignore any additional item.</p>
<p><a href="index.html">SlotsLayout</a> also provides a series of properties which are attached to each slot. However not all properties are valid in all the circumstances. These properties allow an easy tweaking of slot's positioning within the layout. <a href="#position-attached-prop">SlotsLayout::position</a> can be used to set whether a slot should be a leading or trailing one. <a href="#padding-attached-prop">SlotsLayout::padding</a> can be used to tweak the padding around a slot. <a href="#overrideVerticalPositioning-attached-prop">SlotsLayout::overrideVerticalPositioning</a> allows to disable the automatic positioning of the vertical coordinate of a slot as described in <a href="#automatic-vertical-positioning-of-slots">Automatic vertical positioning of slots</a>, in case a custom behaviour is needed.</p>
<p>The following example shows a very simple <a href="index.html">SlotsLayout</a> with an <a href="Ubuntu.Components.Icon.md">Icon</a> as leading slot, and a <a href="Ubuntu.Components.CheckBox.md">CheckBox</a> as trailing slot. There is no need to specify any size or margin, everything is handled automatically by the layout component.</p>
<pre class="qml"><span class="type"><a href="index.html">SlotsLayout</a></span> {
<span class="name">mainSlot</span>: <span class="name">Label</span> {
<span class="name">text</span>: <span class="string">&quot;Hello developers!&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.CheckBox.md">CheckBox</a></span> { <span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Trailing</span> }
<span class="type"><a href="Ubuntu.Components.Icon.md">Icon</a></span> {
<span class="name">name</span>: <span class="string">&quot;message&quot;</span>
<span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Leading</span>;
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
}
}</pre>
<p>The positioning of each slot should only be tweaked using its attached properties. Just like when using <a href="http://doc.qt.io/qt-5/qtquick-qmlmodule.html">QtQuick</a>'s Row, a child item within the layout should not set its <b>x</b> or <b>anchors</b> affecting the horizontal positioning (left, right, horizontalCenter, centerIn, fill). If you need to perform these actions, consider positioning the items without the use of a <a href="index.html">SlotsLayout</a>.</p>
<p>The vertical <b>anchors</b> of a slot can be modified, <b>provided that</b> <a href="#overrideVerticalPositioning-attached-prop">SlotsLayout::overrideVerticalPositioning</a> for that slot is set. More about this in the <a href="#advanced-layout-tweaks">Advanced layout tweaks</a> section.</p>
<h2 id="resizing-the-layout">Resizing the layout</h2>
<p><a href="index.html">SlotsLayout</a>'s <b>implicit width</b> is by default set to the width of the parent (usually a <a href="Ubuntu.Components.ListItem.md">ListItem</a>). Changing the width of the layout is possible but should not be needed in most of the usecases: keeping the width in sync with the width of its parent allows the user interface to be scalable across devices with varying resolution and form factors.</p>
<p>The <b>implicit height</b> is not fixed either. In order not to clip any of the slots, the <a href="index.html">SlotsLayout</a> adapts to accomodate its highest slot with padding and the padding around the layout.</p>
<p>Because of the above, it is recommended to have items wrapping the layout bind to <a href="index.html">SlotsLayout</a>'s <b>height</b> (adding <a href="Ubuntu.Components.ListItem.md">ListItem</a> <b>divider</b>'s height if needed), not the opposite. It is not recommended, for instance, to use anchors.fill to force <a href="index.html">SlotsLayout</a> to fill another Item, because that item might not have enough space to accomdate all the slots, and therefore the slots will be clipped.</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span> {
<span class="comment">//CORRECT</span>
<span class="name">height</span>: <span class="name">layout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
<span class="type"><a href="index.html">SlotsLayout</a></span> {
<span class="name">id</span>: <span class="name">layout</span>
<span class="comment">//WRONG</span>
<span class="comment">//anchors.fill: parent</span>
<span class="name">mainSlot</span>: <span class="name">Label</span> {
<span class="name">text</span>: <span class="string">&quot;Hello developers!&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.CheckBox.md">CheckBox</a></span> { <span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Trailing</span> }
}
}</pre>
<p>Manually resizing <a href="index.html">SlotsLayout</a> (or <a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a>) is usually not needed and we recommend to avoid it, as the component will already take care of doing the job for you. The following example shows what a standard <a href="index.html">SlotsLayout</a> should look like:</p>
<pre class="qml"><span class="type"><a href="index.html">SlotsLayout</a></span> {
<span class="name">mainSlot</span>: <span class="name">Label</span> {
<span class="name">text</span>: <span class="string">&quot;Hello developers!&quot;</span>
}
<span class="comment">//just an example of something inside SlotsLayout</span>
<span class="type"><a href="Ubuntu.Components.CheckBox.md">CheckBox</a></span> { <span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Trailing</span> }
}</pre>
<h2 id="automatic-vertical-positioning-of-slots">Automatic vertical positioning of slots</h2>
<p>In order to provide a visually pleasing and consistent layout across the whole platform, <a href="index.html">SlotsLayout</a> automatically handles the vertical positioning of its slots so that they comply with the following rules:</p>
<ul>
<li>if there's any slot which is taller or as tall as <a href="#mainSlot-prop">mainSlot</a> or if no <a href="#mainSlot-prop">mainSlot</a> is defined, all slots will be <b>vertically centered</b> within the layout (still taking <a href="#padding.top-prop">SlotsLayout::padding.top</a> and <a href="#padding.bottom-prop">SlotsLayout::padding.bottom</a> into account).<p class="centerAlign"><img src="https://assets.ubuntu.com/v1/d6f6cdc0-SlotsLayout_centerVertically.png" alt="" /></p></li>
<li><b>Otherwise</b>, all the slots (including <a href="#mainSlot-prop">mainSlot</a>) will be <b>aligned to the top</b> of the layout with a padding of <a href="#padding.top-prop">SlotsLayout::padding.top</a> plus the top padding of the slot, defined in its attached properties.<p class="centerAlign"><img src="https://assets.ubuntu.com/v1/0b62902d-SlotsLayout_alignToTop.png" alt="" /></p></li>
</ul>
<p>Even though it is <b>not recommended</b>, it is still possible to override this behaviour on a slot-by-slot basis by setting <a href="#overrideVerticalPositioning-attached-prop">SlotsLayout::overrideVerticalPositioning</a> to true. This is described in <a href="#advanced-layout-tweaks">Advanced layout tweaks</a>.</p>
<h2 id="input-handling">Input handling</h2>
<p>The purpose of <a href="index.html">SlotsLayout</a> is to position its slots following the rules defined in <a href="#automatic-vertical-positioning-of-slots">Automatic vertical positioning of slots</a>. There are two recommended ways to implement input handling: the first one, in case the target is to create a list item, is to put the <a href="index.html">SlotsLayout</a> (or any derived component, like <a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a>) inside a <a href="Ubuntu.Components.ListItem.md">ListItem</a>, and use <a href="Ubuntu.Components.ListItem.md">ListItem</a>'s onClicked handler to handle clicks and taps.</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span> {
<span class="name">height</span>: <span class="name">layout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
<span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;clicked!&quot;</span>)
<span class="type"><a href="index.html">SlotsLayout</a></span> {
<span class="name">id</span>: <span class="name">layout</span>
<span class="name">mainSlot</span>: <span class="name">Label</span> {
<span class="name">text</span>: <span class="string">&quot;Hello developers!&quot;</span>
}
<span class="comment">//just an example of something inside SlotsLayout</span>
<span class="type"><a href="Ubuntu.Components.CheckBox.md">CheckBox</a></span> { <span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Trailing</span> }
}
}</pre>
<p>The second option is to use a <a href="QtQuick.MouseArea.md">MouseArea</a> as a wrapper around <a href="index.html">SlotsLayout</a>, as the following code demonstrates:</p>
<pre class="qml"><span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.left: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">height</span>: <span class="name">layout</span>.<span class="name">height</span>
<span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;clicked!&quot;</span>)
<span class="type"><a href="index.html">SlotsLayout</a></span> {
<span class="name">id</span>: <span class="name">layout</span>
<span class="name">mainSlot</span>: <span class="name">Label</span> {
<span class="name">text</span>: <span class="string">&quot;Hello developers!&quot;</span>
}
<span class="comment">//just an example of something inside SlotsLayout</span>
<span class="type"><a href="Ubuntu.Components.CheckBox.md">CheckBox</a></span> { <span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Trailing</span> }
}
}</pre>
<p><b>Note</b>: as recommended in <a href="#resizing-the-layout">Resizing the layout</a>, since <a href="index.html">SlotsLayout</a> has a dynamic height, it is important to have the parent item's height (in this case <a href="QtQuick.MouseArea.md">MouseArea</a>) follow <a href="index.html">SlotsLayout</a>'s <b>height</b>, and not the opposite, to avoid getting the slots clipped out of the layout.</p>
<h2 id="advanced-layout-tweaks">Advanced layout tweaks</h2>
<p>The automatic layout provided by <a href="index.html">SlotsLayout</a> is designed to cover most of the usecases. There could be times, however, where you might want to tweak the positioning of one particular slot.</p>
<p>A slot can set its attached properties <a href="#padding-attached-prop">SlotsLayout::padding</a> and <a href="#overrideVerticalPositioning-attached-prop">SlotsLayout::overrideVerticalPositioning</a> to reach the desired position.</p>
<p>When a slot enables <a href="#overrideVerticalPositioning-attached-prop">SlotsLayout::overrideVerticalPositioning</a>, it gains control over its vertical anchors (top, bottom, verticalCenter). Moreover, <a href="index.html">SlotsLayout</a> will ignore the height of that slot in the following computations of its implicitHeight (see <a href="#resizing-the-layout">Resizing the layout</a>).</p>
<p>When manually positioning a slot, care must be taken to avoid pushing the slot outside of the layout perimeter, to avoid getting it clipped.</p>
<p>The following example shows a <a href="index.html">SlotsLayout</a> which has both custom padding and a slot which uses custom vertical positioning:</p>
<pre class="qml"><span class="type"><a href="index.html">SlotsLayout</a></span> {
<span class="name">id</span>: <span class="name">layout</span>
<span class="name">mainSlot</span>: <span class="name">Label</span> { <span class="name">id</span>: <span class="name">label</span>; <span class="name">text</span>: <span class="string">&quot;Hello developers!&quot;</span> }
<span class="type">padding</span> {
<span class="name">top</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">3</span>)
<span class="name">bottom</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">3</span>)
}
<span class="type"><a href="Ubuntu.Components.CheckBox.md">CheckBox</a></span> {
<span class="name">anchors</span>.top: <span class="name">label</span>.<span class="name">top</span>
<span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Trailing</span>
<span class="name">SlotsLayout</span>.overrideVerticalPositioning: <span class="number">true</span>
}
}</pre>
<p>It is also possible to sort the slots in a relative fashion, by using positions such as <a href="index.html">SlotsLayout</a>.Leading+1, for instance, if we want that slot to always be positioned after items with position <a href="index.html">SlotsLayout</a>.Leading. This is particularly useful, for example, when subclassing <a href="index.html">SlotsLayout</a>-based components which already have predefined slots inside them. If, for instance, the component we're subclassing has a slot with position <a href="index.html">SlotsLayout</a>.Trailing, we can add a slot to our subclass with position <a href="index.html">SlotsLayout</a>.Trailing-1 if we want to make sure our slot is always positioned before the one in the component we are deriving from. This scenario is shown in the following example code:</p>
<pre class="qml"><span class="comment">//ExampleLayout.qml</span>
<span class="type"><a href="index.html">SlotsLayout</a></span> {
<span class="name">id</span>: <span class="name">layout</span>
<span class="name">mainSlot</span>: <span class="name">Label</span> { <span class="name">id</span>: <span class="name">label</span>; <span class="name">text</span>: <span class="string">&quot;Hello developers!&quot;</span> }
<span class="type"><a href="Ubuntu.Components.CheckBox.md">CheckBox</a></span> { <span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Trailing</span> }
}</pre>
<pre class="qml"><span class="comment">//DerivedLayout.qml</span>
<span class="type">ExampleLayout</span> {
<span class="name">id</span>: <span class="name">derivedLayout</span>
<span class="type"><a href="Ubuntu.Components.Icon.md">Icon</a></span> {
<span class="name">id</span>: <span class="name">newSlot</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
<span class="name">name</span>: <span class="string">&quot;message&quot;</span>
<span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Trailing</span> <span class="operator">-</span> <span class="number">1</span>
}
}</pre>
<p><b>See also </b><a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a>.</p>
<!-- @@@SlotsLayout -->
<h2>Property Documentation</h2>
<!-- $$$mainSlot -->
<table class="qmlname"><tr valign="top" id="mainSlot-prop"><td class="tblQmlPropNode"><p><span class="name">mainSlot</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>This property represents the main slot of the layout. By default, <a href="index.html">SlotsLayout</a> has no mainSlot set.</p>
<p>The main slot is the one that defines the vertical positioning of the other slots. Because of this, changing its position and <a href="#overrideVerticalPositioning-attached-prop">overrideVerticalPositioning</a> attached properties has no effect. More details can be found in the section <a href="#automatic-vertical-positioning-of-slots">Automatic vertical positioning of slots</a>.</p>
<p><b>Note</b>: because of limitations in <a href="http://doc.qt.io/qt-5/qtquick-qmlmodule.html">QtQuick</a>/QML, it is not possible to initialize mainSlot's attached properties. Setting mainSlot's attached properties has to be done via JS, for example inside Component.onCompleted, as shown in the following example:</p>
<pre class="qml"><span class="type"><a href="index.html">SlotsLayout</a></span> {
<span class="name">id</span>: <span class="name">layout</span>
<span class="name">Component</span>.onCompleted: {
<span class="name">mainSlot</span>.<span class="name">SlotsLayout</span>.<span class="name">padding</span>.<span class="name">leading</span> <span class="operator">=</span>
<span class="name">Qt</span>.<span class="name">binding</span>(<span class="keyword">function</span>() { <span class="keyword">return</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>) })
}
<span class="name">mainSlot</span>: <span class="name">Label</span> { <span class="name">id</span>: <span class="name">label</span>; <span class="name">text</span>: <span class="string">&quot;Hello developers!&quot;</span> }
<span class="type"><a href="Ubuntu.Components.CheckBox.md">CheckBox</a></span> {
<span class="name">anchors</span>.top: <span class="name">label</span>.<span class="name">top</span>
<span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Trailing</span>
<span class="name">SlotsLayout</span>.overrideVerticalPositioning: <span class="number">true</span>
}
}</pre>
<!-- @@@mainSlot -->
<br/>
<!-- $$$padding -->
<table class="qmlname"><tr valign="top" id="padding-prop"><th class="centerAlign"><p><b>padding group</b></p></th></tr><tr valign="top" id="padding.top-prop"><td class="tblQmlPropNode"><p><span class="name">padding.top</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="padding.bottom-prop"><td class="tblQmlPropNode"><p><span class="name">padding.bottom</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="padding.leading-prop"><td class="tblQmlPropNode"><p><span class="name">padding.leading</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="padding.trailing-prop"><td class="tblQmlPropNode"><p><span class="name">padding.trailing</span> : <span class="type">real</span></p></td></tr></table><p>This property defines the padding around the bounding box which holds all the slots. The default value for padding.leading is 1 Grid Unit. The default value for padding.trailing is 1 Grid Unit.</p>
<p>The value of padding.top and padding.bottom depends on the size of the slots which are in the layout:</p>
<ul>
<li>if, according to the rules defined in <a href="#automatic-vertical-positioning-of-slots">Automatic vertical positioning of slots</a>, the slots are supposed to align to the top of the layout, padding.top and padding.bottom will have a value of <b>2</b> Grid Units.</li>
<li>otherwise, if according to the rules defined in <a href="#automatic-vertical-positioning-of-slots">Automatic vertical positioning of slots</a> the slots are supposed to be vertically centered in the layout, <b>and</b> the tallest slot (<a href="#mainSlot-prop">mainSlot</a> excluded) has a height of at least 4 Grid Units, padding.top and padding.bottom will be set to <b>1</b> Grid Unit.</li>
</ul>
<p><b>Note</b>: the automatic handling of padding.top and padding.bottom is disabled once either padding.top or padding.bottom is set to a custom value.</p>
<!-- @@@padding -->
<br/>
<h2>Attached Property Documentation</h2>
<!-- $$$overrideVerticalPositioning -->
<table class="qmlname"><tr valign="top" id="overrideVerticalPositioning-attached-prop"><td class="tblQmlPropNode"><p><span class="name">SlotsLayout.overrideVerticalPositioning</span> : <span class="type">bool</span></p></td></tr></table><p>This attached property holds whether the layout should automatically handle the vertical positioning of a slot. It is attached to every slot. The default value is <b>false</b>.</p>
<p>If this property is set to true, the layout will ignore the corresponding slot during the computation of the <b>implicitHeight</b> of the whole layout (see <a href="#resizing-the-layout">Resizing the layout</a>) and will not modify its vertical position during the layout process. As a consequence, it is possible, in that case, to manually set the vertical anchors of that slot (verticalCenter, top, bottom) or even its <b>y</b> property.</p>
<p>Care must be taken to avoid getting the slot clipped by positioning it partly or completely outside of the <a href="index.html">SlotsLayout</a> that holds it.</p>
<p><b>Note</b>: changing the value of overrideVerticalPositioning of one slot after the layout has already been initialized will reset its top, bottom, verticalCenter, fill, centerIn anchors for that slot, and the corresponding margins. Care must be taken to set the anchors to the desired values only after setting overrideVerticalPositioning.</p>
<p><b>Note</b>: this property is only valid for standard slots. Changing the value of <a href="#mainSlot-prop">mainSlot</a>'s overrideVerticalPositioning has no effect.</p>
<!-- @@@overrideVerticalPositioning -->
<br/>
<!-- $$$padding -->
<table class="qmlname"><tr valign="top" id="padding-attached-prop"><td class="tblQmlPropNode"><p><span class="name">SlotsLayout.padding</span> : <span class="type"><a href="QtQml.QtObject.md">QtObject</a></span></p></td></tr></table><p>While <a href="index.html">SlotsLayout</a>'s padding property defines the padding around the whole layout, this attached property defines the padding around the slot it is attached to.</p>
<p>It is a grouped property that exposes the properties padding.top, padding.bottom, padding.leading, padding.trailing.</p>
<p>The default value for <a href="index.html">SlotsLayout</a>.padding.top is 0. The default value for <a href="index.html">SlotsLayout</a>.padding.bottom is 0. The default value for <a href="index.html">SlotsLayout</a>.padding.leading is 1 Grid Unit. The default value for <a href="index.html">SlotsLayout</a>.padding.trailing is 1 Grid Unit.</p>
<p>Please note that <b>top</b> and <b>bottom</b> paddings are only used when <a href="#overrideVerticalPositioning-attached-prop">SlotsLayout::overrideVerticalPositioning</a> is set to false. More about this in <a href="#automatic-vertical-positioning-of-slots">Automatic vertical positioning of slots</a>.</p>
<!-- @@@padding -->
<br/>
<!-- $$$position -->
<table class="qmlname"><tr valign="top" id="position-attached-prop"><td class="tblQmlPropNode"><p><span class="name">SlotsLayout.position</span> : <span class="type">enumeration</span></p></td></tr></table><p>This attached property defines the relative position of the slot inside the layout. It is attached to each slot. The default value is <a href="index.html">SlotsLayout</a>.Trailing.</p>
<p>Valid values for position are:</p>
<ul>
<li><a href="index.html">SlotsLayout</a>.First: the slot will be positioned at the beginning of the layout</li>
<li><a href="index.html">SlotsLayout</a>.Leading: the slot will be positioned in the leading slots</li>
<li><a href="index.html">SlotsLayout</a>.Trailing: the slot will be positioned in the trailing slots, i.e&#x2e; the one towards the end of the layout.</li>
<li><a href="index.html">SlotsLayout</a>.Last: the slot will be positioned at the end of the layout.</li>
</ul>
<p><a href="Ubuntu.Components.ProgressionSlot.md">ProgressionSlot</a>, for instance, has its position set to <a href="index.html">SlotsLayout</a>.Last, in order to make sure the chevron is always displayed as the last trailing slot.</p>
<p>Whenever there are more slots with the same SlotsLayout::position, they will be positioned following the order in which they were added to the layout.</p>
<p>It is also possible to define relative positioning between the slots, by using values such as <a href="index.html">SlotsLayout</a>.Leading+1, or <a href="index.html">SlotsLayout</a>.Trailing-3. More about this in <a href="#advanced-layout-tweaks">Advanced layout tweaks</a>.</p>
<p><b>Note</b>: you can only change the position of standard slots. Changing the position of <a href="#mainSlot-prop">mainSlot</a> has no effect.</p>
<!-- @@@position -->
<br/>
