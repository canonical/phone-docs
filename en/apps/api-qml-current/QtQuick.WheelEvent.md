---
Title: QtQuick.WheelEvent
---

# QtQuick.WheelEvent

<span class="subtitle"></span>
<!-- $$$WheelEvent-brief -->
<p>Provides information about a mouse wheel event More...</p>
<!-- @@@WheelEvent -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#accepted-prop">accepted</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#angleDelta-prop">angleDelta</a></b></b> : point</li>
<li class="fn"><b><b><a href="#buttons-prop">buttons</a></b></b> : int</li>
<li class="fn"><b><b><a href="#modifiers-prop">modifiers</a></b></b> : int</li>
<li class="fn"><b><b><a href="#pixelDelta-prop">pixelDelta</a></b></b> : point</li>
<li class="fn"><b><b><a href="#x-prop">x</a></b></b> : int</li>
<li class="fn"><b><b><a href="#y-prop">y</a></b></b> : int</li>
</ul>
<!-- $$$WheelEvent-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The position of the mouse can be found via the <a href="#x-prop">x</a> and <a href="#y-prop">y</a> properties.</p>
<p><b>See also </b><a href="QtQuick.MouseArea.md">MouseArea</a>.</p>
<!-- @@@WheelEvent -->
<h2>Property Documentation</h2>
<!-- $$$accepted -->
<table class="qmlname"><tr valign="top" id="accepted-prop"><td class="tblQmlPropNode"><p><span class="name">accepted</span> : <span class="type">bool</span></p></td></tr></table><p>Setting <i>accepted</i> to true prevents the wheel event from being propagated to items below this item.</p>
<p>Generally, if the item acts on the wheel event then it should be accepted so that items lower in the stacking order do not also respond to the same event.</p>
<!-- @@@accepted -->
<br/>
<!-- $$$angleDelta -->
<table class="qmlname"><tr valign="top" id="angleDelta-prop"><td class="tblQmlPropNode"><p><span class="name">angleDelta</span> : <span class="type">point</span></p></td></tr></table><p>This property holds the distance that the wheel is rotated in wheel degrees. The x and y cordinate of this property holds the delta in horizontal and vertical orientation.</p>
<p>A positive value indicates that the wheel was rotated up/right; a negative value indicates that the wheel was rotated down/left.</p>
<p>Most mouse types work in steps of 15 degrees, in which case the delta value is a multiple of 120; i.e&#x2e;, 120 units * 1/8 = 15 degrees.</p>
<!-- @@@angleDelta -->
<br/>
<!-- $$$buttons -->
<table class="qmlname"><tr valign="top" id="buttons-prop"><td class="tblQmlPropNode"><p><span class="name">buttons</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the mouse buttons pressed when the wheel event was generated.</p>
<p>It contains a bitwise combination of:</p>
<ul>
<li>Qt.LeftButton</li>
<li>Qt.RightButton</li>
<li>Qt.MiddleButton</li>
</ul>
<!-- @@@buttons -->
<br/>
<!-- $$$modifiers -->
<table class="qmlname"><tr valign="top" id="modifiers-prop"><td class="tblQmlPropNode"><p><span class="name">modifiers</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the keyboard modifier flags that existed immediately before the event occurred.</p>
<p>It contains a bitwise combination of:</p>
<ul>
<li>Qt.NoModifier - No modifier key is pressed.</li>
<li>Qt.ShiftModifier - A Shift key on the keyboard is pressed.</li>
<li>Qt.ControlModifier - A Ctrl key on the keyboard is pressed.</li>
<li>Qt.AltModifier - An Alt key on the keyboard is pressed.</li>
<li>Qt.MetaModifier - A Meta key on the keyboard is pressed.</li>
<li>Qt.KeypadModifier - A keypad button is pressed.</li>
</ul>
<p>For example, to react to a Control key pressed during the wheel event:</p>
<pre class="qml"><span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">onWheel</span>: {
<span class="keyword">if</span> (<span class="name">wheel</span>.<span class="name">modifiers</span> <span class="operator">&amp;</span> <span class="name">Qt</span>.<span class="name">ControlModifier</span>) {
<span class="keyword">if</span> (<span class="name">wheel</span>.<span class="name">angleDelta</span>.<span class="name">y</span> <span class="operator">&gt;</span> <span class="number">0</span>)
<span class="name">zoomIn</span>();
<span class="keyword">else</span>
<span class="name">zoomOut</span>();
}
}
}</pre>
<!-- @@@modifiers -->
<br/>
<!-- $$$pixelDelta -->
<table class="qmlname"><tr valign="top" id="pixelDelta-prop"><td class="tblQmlPropNode"><p><span class="name">pixelDelta</span> : <span class="type">point</span></p></td></tr></table><p>This property holds the delta in screen pixels and is available in plataforms that have high-resolution trackpads, such as Mac OS X. The x and y cordinate of this property holds the delta in horizontal and vertical orientation. The value should be used directly to scroll content on screen.</p>
<p>For platforms without high-resolution trackpad support, pixelDelta will always be (0,0), and <a href="#angleDelta-prop">angleDelta</a> should be used instead.</p>
<!-- @@@pixelDelta -->
<br/>
<!-- $$$x -->
<table class="qmlname"><tr valign="top" id="x-prop"><td class="tblQmlPropNode"><p><span class="name">x</span> : <span class="type">int</span></p></td></tr></table><p>These properties hold the coordinates of the position supplied by the wheel event.</p>
<!-- @@@x -->
<br/>
<!-- $$$y -->
<table class="qmlname"><tr valign="top" id="y-prop"><td class="tblQmlPropNode"><p><span class="name">y</span> : <span class="type">int</span></p></td></tr></table><p>These properties hold the coordinates of the position supplied by the wheel event.</p>
<!-- @@@y -->
<br/>
