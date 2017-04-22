---
Title: QtQuick.MouseEvent
---

# QtQuick.MouseEvent

<span class="subtitle"></span>
<!-- $$$MouseEvent-brief -->
<p>Provides information about a mouse event More...</p>
<!-- @@@MouseEvent -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#accepted-prop">accepted</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#button-prop">button</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#buttons-prop">buttons</a></b></b> : int</li>
<li class="fn"><b><b><a href="#modifiers-prop">modifiers</a></b></b> : int</li>
<li class="fn"><b><b><a href="#wasHeld-prop">wasHeld</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#x-prop">x</a></b></b> : int</li>
<li class="fn"><b><b><a href="#y-prop">y</a></b></b> : int</li>
</ul>
<!-- $$$MouseEvent-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The position of the mouse can be found via the <a href="#x-prop">x</a> and <a href="#y-prop">y</a> properties. The button that caused the event is available via the <a href="#button-prop">button</a> property.</p>
<p><b>See also </b><a href="QtQuick.MouseArea.md">MouseArea</a>.</p>
<!-- @@@MouseEvent -->
<h2>Property Documentation</h2>
<!-- $$$accepted -->
<table class="qmlname"><tr valign="top" id="accepted-prop"><td class="tblQmlPropNode"><p><span class="name">accepted</span> : <span class="type">bool</span></p></td></tr></table><p>Setting <i>accepted</i> to true prevents the mouse event from being propagated to items below this item.</p>
<p>Generally, if the item acts on the mouse event then it should be accepted so that items lower in the stacking order do not also respond to the same event.</p>
<!-- @@@accepted -->
<br/>
<!-- $$$button -->
<table class="qmlname"><tr valign="top" id="button-prop"><td class="tblQmlPropNode"><p><span class="name">button</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the button that caused the event. It can be one of:</p>
<ul>
<li>Qt.LeftButton</li>
<li>Qt.RightButton</li>
<li>Qt.MiddleButton</li>
</ul>
<!-- @@@button -->
<br/>
<!-- $$$buttons -->
<table class="qmlname"><tr valign="top" id="buttons-prop"><td class="tblQmlPropNode"><p><span class="name">buttons</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the mouse buttons pressed when the event was generated. For mouse move events, this is all buttons that are pressed down. For mouse press and double click events this includes the button that caused the event. For mouse release events this excludes the button that caused the event.</p>
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
<p>For example, to react to a Shift key + Left mouse button click:</p>
<pre class="qml"><span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">onClicked</span>: {
<span class="keyword">if</span> ((<span class="name">mouse</span>.<span class="name">button</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">LeftButton</span>) <span class="operator">&amp;&amp;</span> (<span class="name">mouse</span>.<span class="name">modifiers</span> <span class="operator">&amp;</span> <span class="name">Qt</span>.<span class="name">ShiftModifier</span>))
<span class="name">doSomething</span>();
}
}</pre>
<!-- @@@modifiers -->
<br/>
<!-- $$$wasHeld -->
<table class="qmlname"><tr valign="top" id="wasHeld-prop"><td class="tblQmlPropNode"><p><span class="name">wasHeld</span> : <span class="type">bool</span></p></td></tr></table><p>This property is true if the mouse button has been held pressed longer the threshold (800ms).</p>
<!-- @@@wasHeld -->
<br/>
<!-- $$$x -->
<table class="qmlname"><tr valign="top" id="x-prop"><td class="tblQmlPropNode"><p><span class="name">x</span> : <span class="type">int</span></p></td></tr></table><p>These properties hold the coordinates of the position supplied by the mouse event.</p>
<!-- @@@x -->
<br/>
<!-- $$$y -->
<table class="qmlname"><tr valign="top" id="y-prop"><td class="tblQmlPropNode"><p><span class="name">y</span> : <span class="type">int</span></p></td></tr></table><p>These properties hold the coordinates of the position supplied by the mouse event.</p>
<!-- @@@y -->
<br/>
