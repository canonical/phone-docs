---
Title: Ubuntu.Components.AbstractButton
---

# Ubuntu.Components.AbstractButton

<span class="subtitle"></span>
<!-- $$$AbstractButton-brief -->
<p>The AbstractButton class defines the behavior of the button. More...</p>
<!-- @@@AbstractButton -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ActionItem.md">ActionItem</a></p>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.Button.md">Button</a>, <a href="Ubuntu.Components.CheckBox.md">CheckBox</a>, <a href="Ubuntu.Components.ComboButton.md">ComboButton</a>, <a href="Ubuntu.Components.ListItems.Empty.md">Empty</a>, and <a href="Ubuntu.Components.Pickers.PickerDelegate.md">PickerDelegate</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#hovered-prop">hovered</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#pressed-prop">pressed</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#sensingMargins-prop">sensingMargins</a></b></b><ul>
<li class="fn"><b><b><a href="#sensingMargins.left-prop">sensingMargins.left</a></b></b> : real</li>
<li class="fn"><b><b><a href="#sensingMargins.right-prop">sensingMargins.right</a></b></b> : real</li>
<li class="fn"><b><b><a href="#sensingMargins.top-prop">sensingMargins.top</a></b></b> : real</li>
<li class="fn"><b><b><a href="#sensingMargins.bottom-prop">sensingMargins.bottom</a></b></b> : real</li>
<li class="fn"><b><b><a href="#sensingMargins.all-prop">sensingMargins.all</a></b></b> : real</li>
</ul>
</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#clicked-signal">clicked</a></b></b>()</li>
<li class="fn"><b><b><a href="#pressAndHold-signal">pressAndHold</a></b></b>()</li>
</ul>
<!-- $$$AbstractButton-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This class defines the behavior of the button. All components deriving from this class support haptic feedback out of the box.</p>
<p>If an action is specified, the button's clicked signal will trigger the action. Subclasses of <a href="index.html">AbstractButton</a> can use other properties of action (for example the text and iconName).</p>
<h3 >Sensing area</h3>
<p>It has been proven that, on touch devices in order to properly aim an active component a minimum of 8x8 millimeters (i.e&#x2e; 4x4 grid units) area has to be provided. However not all the visuals are of that size, as Icons for example are defaulted to be 2x2 grid units, but a component containing a single Icon still has to be able to capture the press events. Therefore <a href="index.html">AbstractButton</a> makes sure this rule of 4x4 grid units for the sensing area is provided. In addition it exposes the <a href="#sensingMargins-prop">sensingMargins</a> property which extends the component's sensing area in all the directions, so other use cases when the sensing area needs to be extended outside of the component's area, or restricted on a given area of the component can be implemented. The following example extends the sensing area on the left, top and bottom with 1 grid units, and on the right with 10 grid units.</p>
<pre class="qml"><span class="type"><a href="index.html">AbstractButton</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
<span class="type">sensingMargins</span> {
<span class="name">left</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
<span class="name">top</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
<span class="name">bottom</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
<span class="name">right</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
}
}</pre>
<p><b>Note: </b>Do not set clipping for the component as that will restrict the sensing area to be available on the visual area only.</p><!-- @@@AbstractButton -->
<h2>Property Documentation</h2>
<!-- $$$hovered -->
<table class="qmlname"><tr valign="top" id="hovered-prop"><td class="tblQmlPropNode"><p><span class="name">hovered</span> : <span class="type">bool</span></p></td></tr></table><p>True if the mouse cursor hovers over the button's mouse area.</p>
<!-- @@@hovered -->
<br/>
<!-- $$$pressed -->
<table class="qmlname"><tr valign="top" id="pressed-prop"><td class="tblQmlPropNode"><p><span class="name">pressed</span> : <span class="type">bool</span></p></td></tr></table><p>True if the user presses a mouse button in the button's mouse area.</p>
<!-- @@@pressed -->
<br/>
<!-- $$$sensingMargins -->
<table class="qmlname"><tr valign="top" id="sensingMargins-prop"><th class="centerAlign"><p><b>sensingMargins group</b></p></th></tr><tr valign="top" id="sensingMargins.left-prop"><td class="tblQmlPropNode"><p><span class="name">sensingMargins.left</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="sensingMargins.right-prop"><td class="tblQmlPropNode"><p><span class="name">sensingMargins.right</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="sensingMargins.top-prop"><td class="tblQmlPropNode"><p><span class="name">sensingMargins.top</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="sensingMargins.bottom-prop"><td class="tblQmlPropNode"><p><span class="name">sensingMargins.bottom</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="sensingMargins.all-prop"><td class="tblQmlPropNode"><p><span class="name">sensingMargins.all</span> : <span class="type">real</span></p></td></tr></table><p>The property group specifies the margins extending the visual area where the touch events are sensed. Positive values mean the area will be extended on the specified direction outside of the visual area, negative values mean the sensing will fall under the component's visual border. All values default to 0. This does not affect mouse sensing area, which only covers the visual area of the component.</p>
<p><b>Note: </b>If the visual area and the sensing margins are not reaching the 4x4 grid units limit, the component will fall back to these minimum limits. For example, extending a 2x2 grid unit visual component into 5x4 grid units sensing area would look as follows:</p><pre class="qml"><span class="type"><a href="index.html">AbstractButton</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
<span class="type"><a href="Ubuntu.Components.Icon.md">Icon</a></span> {
<span class="name">name</span>: <span class="string">&quot;settings&quot;</span>
}
<span class="type">sensingArea</span> {
<span class="comment">// no need to set the vertical direction as the minimum of</span>
<span class="comment">// 4 grid units will be taken automatically</span>
<span class="name">leftMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
<span class="comment">// we only have to add 2 grid units as the width + left margin</span>
<span class="comment">// already gives us 3 grid units out of 5</span>
<span class="name">rightMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
}
}</pre>
<!-- @@@sensingMargins -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$clicked -->
<table class="qmlname"><tr valign="top" id="clicked-signal"><td class="tblQmlFuncNode"><p><span class="name">clicked</span>()</p></td></tr></table><p>This handler is called when there is a mouse click on the button and the button is not disabled. If <a href="Ubuntu.Components.ActionItem.md#action-prop">action</a> is defined, the action will be triggered.</p>
<!-- @@@clicked -->
<br/>
<!-- $$$pressAndHold -->
<table class="qmlname"><tr valign="top" id="pressAndHold-signal"><td class="tblQmlFuncNode"><p><span class="name">pressAndHold</span>()</p></td></tr></table><p>This handler is called when there is a long press.</p>
<!-- @@@pressAndHold -->
<br/>
