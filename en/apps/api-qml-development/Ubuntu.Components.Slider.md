---
Title: Ubuntu.Components.Slider
---

# Ubuntu.Components.Slider

<span class="subtitle"></span>
<!-- $$$Slider-brief -->
<p>Slider is a component to select a value from a continuous range of values. More...</p>
<!-- @@@Slider -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#live-prop">live</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#maximumValue-prop">maximumValue</a></b></b> : real</li>
<li class="fn"><b><b><a href="#minimumValue-prop">minimumValue</a></b></b> : real</li>
<li class="fn"><b><b><a href="#pressed-prop">pressed</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#stepSize-prop">stepSize</a></b></b> : real</li>
<li class="fn"><b><b><a href="#value-prop">value</a></b></b> : real</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#touched-signal">touched</a></b></b>(bool <i>onThumb</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#formatValue-method">formatValue</a></b></b>(<i>v</i>)</li>
</ul>
<!-- $$$Slider-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The slider's sensing area is defined by the width and height, therefore styles should take this into account when defining the visuals, and alter these values to align the graphics' sizes.</p>
<p><a href="https://design.ubuntu.com/apps/building-blocks/selection#slider">See also the Design Guidelines on Sliders</a>.</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="index.html">Slider</a></span> {
<span class="keyword">function</span> <span class="name">formatValue</span>(<span class="name">v</span>) { <span class="keyword">return</span> <span class="name">v</span>.<span class="name">toFixed</span>(<span class="number">2</span>) }
<span class="name">minimumValue</span>: -<span class="number">3.14</span>
<span class="name">maximumValue</span>: <span class="number">3.14</span>
<span class="name">value</span>: <span class="number">0.0</span>
<span class="name">live</span>: <span class="number">true</span>
}
}</pre>
<!-- @@@Slider -->
<h2>Property Documentation</h2>
<!-- $$$live -->
<table class="qmlname"><tr valign="top" id="live-prop"><td class="tblQmlPropNode"><p><span class="name">live</span> : <span class="type">bool</span></p></td></tr></table><p>Defines whether the value is updated while the thumb is dragged or just when the thumb is released.</p>
<!-- @@@live -->
<br/>
<!-- $$$maximumValue -->
<table class="qmlname"><tr valign="top" id="maximumValue-prop"><td class="tblQmlPropNode"><p><span class="name">maximumValue</span> : <span class="type">real</span></p></td></tr></table><p>The maximum value from the continuous range of values. If this value is lesser than <a href="#minimumValue-prop">minimumValue</a>, the component will be in an inconsistent state.</p>
<!-- @@@maximumValue -->
<br/>
<!-- $$$minimumValue -->
<table class="qmlname"><tr valign="top" id="minimumValue-prop"><td class="tblQmlPropNode"><p><span class="name">minimumValue</span> : <span class="type">real</span></p></td></tr></table><p>The minimum value from the continuous range of values. If this value is greater than <a href="#maximumValue-prop">maximumValue</a>, the component will be in an inconsistent state.</p>
<!-- @@@minimumValue -->
<br/>
<!-- $$$pressed -->
<table class="qmlname"><tr valign="top" id="pressed-prop"><td class="tblQmlPropNode"><p><span class="name">pressed</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the Slider is currently being pressed.</p>
<!-- @@@pressed -->
<br/>
<!-- $$$stepSize -->
<table class="qmlname"><tr valign="top" id="stepSize-prop"><td class="tblQmlPropNode"><p><span class="name">stepSize</span> : <span class="type">real</span></p></td></tr></table><p>The distance between two selectable values in the range defined by [<a href="#minimumValue-prop">minimumValue</a>, <a href="#maximumValue-prop">maximumValue</a>].</p>
<!-- @@@stepSize -->
<br/>
<!-- $$$value -->
<table class="qmlname"><tr valign="top" id="value-prop"><td class="tblQmlPropNode"><p><span class="name">value</span> : <span class="type">real</span></p></td></tr></table><p>The current value of the slider. This property is not changed while the thumb is dragged unless the live property is set to true.</p>
<!-- @@@value -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$touched -->
<table class="qmlname"><tr valign="top" id="touched-signal"><td class="tblQmlFuncNode"><p><span class="name">touched</span>(<span class="type">bool</span><i> onThumb</i>)</p></td></tr></table><p>The signal is emitted when there is a click on the slider. The onThumb parameter provides information if the click, was inside of the thumb element.</p>
<!-- @@@touched -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$formatValue -->
<table class="qmlname"><tr valign="top" id="formatValue-method"><td class="tblQmlFuncNode"><p><span class="name">formatValue</span>(<i> v</i>)</p></td></tr></table><p>This function is used by the value indicator to show the current value. Reimplement this function if you want to show different information. By default, the value v is rounded to the nearest integer value.</p>
<!-- @@@formatValue -->
<br/>
