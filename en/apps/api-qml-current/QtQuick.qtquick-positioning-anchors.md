---
Title: QtQuick.qtquick-positioning-anchors
---

# QtQuick.qtquick-positioning-anchors

<span class="subtitle"></span>
<!-- $$$qtquick-positioning-anchors.html-description -->
<p>In addition to the more traditional <a href="QtQuick.qtquick-positioning-layouts.md#grid">Grid</a>, <a href="QtQuick.qtquick-positioning-layouts.md#row">Row</a>, and <a href="QtQuick.qtquick-positioning-layouts.md#column">Column</a>, Qt Quick also provides a way to layout items using the concept of <i>anchors</i>. Each item can be thought of as having a set of 7 invisible &quot;anchor lines&quot;: <a href="QtQuick.Item.md#anchors.left-prop">left</a>, <a href="QtQuick.Item.md#anchors.horizontalCenter-prop">horizontalCenter</a>, <a href="QtQuick.Item.md#anchors.right-prop">right</a>, <a href="QtQuick.Item.md#anchors.top-prop">top</a>, <a href="QtQuick.Item.md#anchors.verticalCenter-prop">verticalCenter</a>, <a href="QtQuick.Item.md#anchors.baseline-prop">baseline</a>, and <a href="QtQuick.Item.md#anchors.bottom-prop">bottom</a>.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/1b92b4fa-03f3-4d39-941c-f7d787b47dbc-../qtquick-positioning-anchors/images/edges_qml.png" alt="" /></p><p>The baseline (not pictured above) corresponds to the imaginary line on which text would sit. For items with no text it is the same as <i>top</i>.</p>
<p>The Qt Quick anchoring system allows you to define relationships between the anchor lines of different items. For example, you can write:</p>
<pre class="cpp">Rectangle { id: rect1; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }
Rectangle { id: rect2; anchors<span class="operator">.</span>left: rect1<span class="operator">.</span>right; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }</pre>
<p>In this case, the left edge of <i>rect2</i> is bound to the right edge of <i>rect1</i>, producing the following:</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/bfd63796-7120-4ff0-b60e-2133ee37d267-../qtquick-positioning-anchors/images/edge1.png" alt="" /></p><p>You can specify multiple anchors. For example:</p>
<pre class="cpp">Rectangle { id: rect1; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }
Rectangle { id: rect2; anchors<span class="operator">.</span>left: rect1<span class="operator">.</span>right; anchors<span class="operator">.</span>top: rect1<span class="operator">.</span>bottom; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/e78597c0-7b59-4f5e-8224-46af3e996d5c-../qtquick-positioning-anchors/images/edge3.png" alt="" /></p><p>By specifying multiple horizontal or vertical anchors you can control the size of an item. Below, <i>rect2</i> is anchored to the right of <i>rect1</i> and the left of <i>rect3</i>. If either of the blue rectangles are moved, <i>rect2</i> will stretch and shrink as necessary:</p>
<pre class="cpp">Rectangle { id: rect1; x: <span class="number">0</span>; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }
Rectangle { id: rect2; anchors<span class="operator">.</span>left: rect1<span class="operator">.</span>right; anchors<span class="operator">.</span>right: rect3<span class="operator">.</span>left; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }
Rectangle { id: rect3; x: <span class="number">150</span>; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/eed06e84-a1ee-4ce4-9b58-943c6255fafb-../qtquick-positioning-anchors/images/edge4.png" alt="" /></p><p>There are also some convenience anchors. anchors.fill is a convenience that is the same as setting the left,right,top and bottom anchors to the left,right,top and bottom of the target item. anchors.centerIn is another convenience anchor, and is the same as setting the verticalCenter and horizontalCenter anchors to the verticalCenter and horizontalCenter of the target item.</p>
<h2 id="anchor-margins-and-offsets">Anchor Margins and Offsets</h2>
<p>The anchoring system also allows <i>margins</i> and <i>offsets</i> to be specified for an item's anchors. Margins specify the amount of empty space to leave to the outside of an item's anchor, while offsets allow positioning to be manipulated using the center anchor lines. An item can specify its anchor margins individually through <a href="QtQuick.Item.md#anchors.leftMargin-prop">leftMargin</a>, <a href="QtQuick.Item.md#anchors.rightMargin-prop">rightMargin</a>, <a href="QtQuick.Item.md#anchors.topMargin-prop">topMargin</a> and <a href="QtQuick.Item.md#anchors.bottomMargin-prop">bottomMargin</a>, or use <a href="QtQuick.Item.md#anchors.margins-prop">anchors.margins</a> to specify the same margin value for all four edges. Anchor offsets are specified using <a href="QtQuick.Item.md#anchors.horizontalCenterOffset-prop">horizontalCenterOffset</a>, <a href="QtQuick.Item.md#anchors.verticalCenterOffset-prop">verticalCenterOffset</a> and <a href="QtQuick.Item.md#anchors.baselineOffset-prop">baselineOffset</a>.</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/a0007019-701c-4160-a76a-3d73adcb1b3d-../qtquick-positioning-anchors/images/margins_qml.png" alt="" /></p><p>The following example specifies a left margin:</p>
<pre class="cpp">Rectangle { id: rect1; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }
Rectangle { id: rect2; anchors<span class="operator">.</span>left: rect1<span class="operator">.</span>right; anchors<span class="operator">.</span>leftMargin: <span class="number">5</span>; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }</pre>
<p>In this case, a margin of 5 pixels is reserved to the left of <i>rect2</i>, producing the following:</p>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/d401e8fa-8530-412e-97f1-376d6173612d-../qtquick-positioning-anchors/images/edge2.png" alt="" /></p><p><b>Note: </b>Anchor margins only apply to anchors; they are <i>not</i> a generic means of applying margins to an <a href="QtQuick.Item.md">Item</a>. If an anchor margin is specified for an edge but the item is not anchored to any item on that edge, the margin is not applied.</p>
<h2 id="changing-anchors">Changing Anchors</h2>
<p>Qt Quick provides the <a href="QtQuick.AnchorChanges.md">AnchorChanges</a> type for specifying the anchors in a state.</p>
<pre class="qml"><span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">&quot;anchorRight&quot;</span>
<span class="type"><a href="QtQuick.AnchorChanges.md">AnchorChanges</a></span> {
<span class="name">target</span>: <span class="name">rect2</span>
<span class="name">anchors</span>.right: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">anchors</span>.left: <span class="name">undefined</span>  <span class="comment">//remove the left anchor</span>
}
}</pre>
<p><a href="QtQuick.AnchorChanges.md">AnchorChanges</a> can be animated using the <a href="QtQuick.AnchorAnimation.md">AnchorAnimation</a> type.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
<span class="type"><a href="QtQuick.AnchorAnimation.md">AnchorAnimation</a></span> {}  <span class="comment">//animates any AnchorChanges in the corresponding state change</span>
}</pre>
<p>Anchors can also be changed imperatively within JavaScript. However, these changes should be carefully ordered, or they may produce unexpected outcomes. The following example illustrates the issue:</p>
<table class="generic">
<tr valign="top"><td ><pre class="cpp">    <span class="comment">//bad code</span>
Rectangle {
width: <span class="number">50</span>
anchors<span class="operator">.</span>left: parent<span class="operator">.</span>left
function reanchorToRight() {
anchors<span class="operator">.</span>right <span class="operator">=</span> parent<span class="operator">.</span>right
anchors<span class="operator">.</span>left <span class="operator">=</span> undefined
}
}</pre>
</td><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/ff0cc58e-77f0-41c8-a1d5-ad664703087d-../qtquick-positioning-anchors/images/anchor_ordering_bad.png" alt="" /></p></td></tr>
</table>
<p>When <code>reanchorToRight</code> is called, the function first sets the right anchor. At that point, both left and right anchors are set, and the item will be stretched horizontally to fill its parent. When the left anchor is unset, the new width will remain. Thus when updating anchors within JavaScript, you should first unset any anchors that are no longer required, and only then set any new anchors that are required, as shown below:</p>
<table class="generic">
<tr valign="top"><td ><pre class="qml">    <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">50</span>
<span class="name">anchors</span>.left: <span class="name">parent</span>.<span class="name">left</span>
<span class="keyword">function</span> <span class="name">reanchorToRight</span>() {
<span class="name">anchors</span>.<span class="name">left</span> <span class="operator">=</span> <span class="name">undefined</span>
<span class="name">anchors</span>.<span class="name">right</span> <span class="operator">=</span> <span class="name">parent</span>.<span class="name">right</span>
}
}</pre>
</td><td ><p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/cccc5fb1-5639-4c1a-98a5-c16ecf26e271-../qtquick-positioning-anchors/images/anchor_ordering.png" alt="" /></p></td></tr>
</table>
<p>Because the evaluation order of bindings is not defined, it is not recommended to change anchors via conditional bindings, as this can lead to the ordering issue described above. In the following example the Rectangle will eventually grow to the full width of its parent, because both left and right anchors will be simultaneously set during binding update.</p>
<pre class="cpp"><span class="comment">//bad code</span>
Rectangle {
width: <span class="number">50</span>; height: <span class="number">50</span>
anchors<span class="operator">.</span>left: state <span class="operator">=</span><span class="operator">=</span> <span class="string">&quot;right&quot;</span> <span class="operator">?</span> undefined : parent<span class="operator">.</span>left;
anchors<span class="operator">.</span>right: state <span class="operator">=</span><span class="operator">=</span> <span class="string">&quot;right&quot;</span> <span class="operator">?</span> parent<span class="operator">.</span>right : undefined;
}</pre>
<p>This should be rewritten to use <a href="QtQuick.AnchorChanges.md">AnchorChanges</a> instead, as <a href="QtQuick.AnchorChanges.md">AnchorChanges</a> will automatically handle ordering issues internally.</p>
<h2 id="restrictions">Restrictions</h2>
<p>For performance reasons, you can only anchor an item to its siblings and direct parent. For example, the following anchor is invalid and would produce a warning:</p>
<pre class="cpp"><span class="comment">//bad code</span>
Item {
id: group1
Rectangle { id: rect1; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }
}
Item {
id: group2
Rectangle { id: rect2; anchors<span class="operator">.</span>left: rect1<span class="operator">.</span>right; <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> }    <span class="comment">// invalid anchor!</span>
}</pre>
<p>Also, anchor-based layouts cannot be mixed with absolute positioning. If an item specifies its <a href="QtQuick.Item.md#x-prop">x</a> position and also sets <a href="QtQuick.Item.md#anchors.left-prop">anchors.left</a>, or anchors its left and right edges but additionally sets a <a href="QtQuick.Item.md#width-prop">width</a>, the result is undefined, as it would not be clear whether the item should use anchoring or absolute positioning. The same can be said for setting an item's <a href="QtQuick.Item.md#y-prop">y</a> and <a href="QtQuick.Item.md#height-prop">height</a> with <a href="QtQuick.Item.md#anchors.top-prop">anchors.top</a> and <a href="QtQuick.Item.md#anchors.bottom-prop">anchors.bottom</a>, or setting <a href="QtQuick.Item.md#anchors.fill-prop">anchors.fill</a> as well as <a href="QtQuick.Item.md#width-prop">width</a> or <a href="QtQuick.Item.md#height-prop">height</a>. The same applies when using positioners such as Row and Grid, which may set the item's <a href="QtQuick.Item.md#x-prop">x</a> and <a href="QtQuick.Item.md#y-prop">y</a> properties. If you wish to change from using anchor-based to absolute positioning, you can clear an anchor value by setting it to <code>undefined</code>.</p>
<!-- @@@qtquick-positioning-anchors.html -->
