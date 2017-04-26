---
Title: QtQuick.KeyEvent
---

# QtQuick.KeyEvent

<span class="subtitle"></span>
<!-- $$$KeyEvent-brief -->
<p>Provides information about a key event More...</p>
<!-- @@@KeyEvent -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#accepted-prop">accepted</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#count-prop">count</a></b></b> : int</li>
<li class="fn"><b><b><a href="#isAutoRepeat-prop">isAutoRepeat</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#key-prop">key</a></b></b> : int</li>
<li class="fn"><b><b><a href="#modifiers-prop">modifiers</a></b></b> : int</li>
<li class="fn"><b><b><a href="#nativeScanCode-prop">nativeScanCode</a></b></b> : quint32</li>
<li class="fn"><b><b><a href="#text-prop">text</a></b></b> : string</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">bool <b><b><a href="#matches-method">matches</a></b></b>(StandardKey <i>key</i>)</li>
</ul>
<!-- $$$KeyEvent-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>For example, the following changes the Item's state property when the Enter key is pressed:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onPressed: { <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_Enter</span>) <span class="name">state</span> <span class="operator">=</span> <span class="string">'ShowDetails'</span>; }
}</pre>
<!-- @@@KeyEvent -->
<h2>Property Documentation</h2>
<!-- $$$accepted -->
<table class="qmlname"><tr valign="top" id="accepted-prop"><td class="tblQmlPropNode"><p><span class="name">accepted</span> : <span class="type">bool</span></p></td></tr></table><p>Setting <i>accepted</i> to true prevents the key event from being propagated to the item's parent.</p>
<p>Generally, if the item acts on the key event then it should be accepted so that ancestor items do not also respond to the same event.</p>
<!-- @@@accepted -->
<br/>
<!-- $$$count -->
<table class="qmlname"><tr valign="top" id="count-prop"><td class="tblQmlPropNode"><p><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the number of keys involved in this event. If <a href="#text-prop">KeyEvent::text</a> is not empty, this is simply the length of the string.</p>
<!-- @@@count -->
<br/>
<!-- $$$isAutoRepeat -->
<table class="qmlname"><tr valign="top" id="isAutoRepeat-prop"><td class="tblQmlPropNode"><p><span class="name">isAutoRepeat</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether this event comes from an auto-repeating key.</p>
<!-- @@@isAutoRepeat -->
<br/>
<!-- $$$key -->
<table class="qmlname"><tr valign="top" id="key-prop"><td class="tblQmlPropNode"><p><span class="name">key</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the code of the key that was pressed or released.</p>
<p>See Qt.Key for the list of keyboard codes. These codes are independent of the underlying window system. Note that this function does not distinguish between capital and non-capital letters; use the <a href="#text-prop">text</a> property for this purpose.</p>
<p>A value of either 0 or Qt.Key_Unknown means that the event is not the result of a known key; for example, it may be the result of a compose sequence, a keyboard macro, or due to key event compression.</p>
<!-- @@@key -->
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
<p>For example, to react to a Shift key + Enter key combination:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onPressed: {
<span class="keyword">if</span> ((<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_Enter</span>) <span class="operator">&amp;&amp;</span> (<span class="name">event</span>.<span class="name">modifiers</span> <span class="operator">&amp;</span> <span class="name">Qt</span>.<span class="name">ShiftModifier</span>))
<span class="name">doSomething</span>();
}
}</pre>
<!-- @@@modifiers -->
<br/>
<!-- $$$nativeScanCode -->
<table class="qmlname"><tr valign="top" id="nativeScanCode-prop"><td class="tblQmlPropNode"><p><span class="name">nativeScanCode</span> : <span class="type">quint32</span></p></td></tr></table><p>This property contains the native scan code of the key that was pressed. It is passed through from QKeyEvent unchanged.</p>
<p><b>See also </b>QKeyEvent::nativeScanCode().</p>
<!-- @@@nativeScanCode -->
<br/>
<!-- $$$text -->
<table class="qmlname"><tr valign="top" id="text-prop"><td class="tblQmlPropNode"><p><span class="name">text</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the Unicode text that the key generated. The text returned can be an empty string in cases where modifier keys, such as Shift, Control, Alt, and Meta, are being pressed or released. In such cases <code>key</code> will contain a valid value</p>
<!-- @@@text -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$matches -->
<table class="qmlname"><tr valign="top" id="matches-method"><td class="tblQmlFuncNode"><p><span class="type">bool</span> <span class="name">matches</span>(<span class="type">StandardKey</span><i> key</i>)</p></td></tr></table><p>Returns <code>true</code> if the key event matches the given standard <i>key</i>; otherwise returns <code>false</code>.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onPressed: {
<span class="keyword">if</span> (<span class="name">event</span>.<span class="name">matches</span>(<span class="name">StandardKey</span>.<span class="name">Undo</span>))
<span class="name">myModel</span>.<span class="name">undo</span>();
<span class="keyword">else</span> <span class="keyword">if</span> (<span class="name">event</span>.<span class="name">matches</span>(<span class="name">StandardKey</span>.<span class="name">Redo</span>))
<span class="name">myModel</span>.<span class="name">redo</span>();
}
}</pre>
<p>This QML method was introduced in  Qt 5.2.</p>
<p><b>See also </b>QKeySequence::StandardKey.</p>
<!-- @@@matches -->
<br/>
