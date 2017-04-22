---
Title: QtQuick.qtquick-input-mouseevents
---

# QtQuick.qtquick-input-mouseevents

<span class="subtitle"></span>
<!-- $$$qtquick-input-mouseevents.html-description -->
<h2 id="mouse-types">Mouse Types</h2>
<ul>
<li><a href="QtQuick.MouseArea.md">MouseArea</a> type</li>
<li><a href="QtQuick.MouseEvent.md">MouseEvent</a> object</li>
</ul>
<h2 id="mouse-event-handling">Mouse Event Handling</h2>
<p>QML uses signals and handlers to deliver mouse interactions. Specifically, Qt Quick provides the <a href="QtQuick.MouseArea.md">MouseArea</a> and <a href="QtQuick.MouseEvent.md">MouseEvent</a> types which allow developers to define signal handlers which accept mouse events within a defined area.</p>
<h2 id="defining-a-mouse-area">Defining a Mouse Area</h2>
<p>The <a href="QtQuick.MouseArea.md">MouseArea</a> type receives events within a defined area. One quick way to define this area is to anchor the <code>MouseArea</code> to its parent's area using the <code>anchors.fill</code> property. If the parent is a <a href="QtQuick.Rectangle.md">Rectangle</a> (or any <a href="QtQuick.Item.md">Item</a> component), then the <a href="QtQuick.MouseArea.md">MouseArea</a> will fill the area defined by the parent's dimensions. Alternatively, an area smaller or larger than the parent is definable.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">button</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;button clicked&quot;</span>)
}
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">width</span>:<span class="number">150</span>; <span class="name">height</span>: <span class="number">75</span>
<span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;irregular area clicked&quot;</span>)
}
}</pre>
<h2 id="receiving-events">Receiving Events</h2>
<p>The <a href="QtQuick.MouseArea.md">MouseArea</a> type provides signals and handlers to detect different mouse events. The <a href="QtQuick.MouseArea.md">MouseArea</a> type documentation describes these gestures in greater detail:</p>
<ul>
<li>canceled</li>
<li>clicked</li>
<li>doubleClicked</li>
<li>entered</li>
<li>exited</li>
<li>positionChanged</li>
<li>pressAndHold</li>
<li>pressed</li>
<li>released</li>
</ul>
<p>These signals have signal handlers that are invoked when the signals are emitted.</p>
<pre class="qml"><span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;area clicked&quot;</span>)
<span class="name">onDoubleClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;area double clicked&quot;</span>)
<span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;mouse entered the area&quot;</span>)
<span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;mouse left the area&quot;</span>)
}</pre>
<h2 id="enabling-gestures">Enabling Gestures</h2>
<p>Some mouse gestures and button clicks need to be enabled before they send or receive events. Certain <a href="QtQuick.MouseArea.md">MouseArea</a> and <a href="QtQuick.MouseEvent.md">MouseEvent</a> properties enable these gestures.</p>
<p>To listen to (or explicitly ignore) a certain mouse button, set the appropriate mouse button to the <a href="QtQuick.MouseArea.md#acceptedButtons-prop">acceptedButtons</a> property.</p>
<p>Naturally, the mouse events, such as button presses and mouse positions, are sent during a mouse click. For example, the <code>containsMouse</code> property will only retrieve its correct value during a mouse press. The <a href="QtQuick.MouseArea.md#hoverEnabled-prop">hoverEnabled</a> will enable mouse events and positioning even when there are no mouse button presses. Setting the <code>hoverEnabled</code> property to <code>true</code>, in turn will enable the <code>entered</code>, <code>exited</code>, and <code>positionChanged</code> signal and their respective signal handlers.</p>
<pre class="qml"><span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">hoverEnabled</span>: <span class="number">true</span>
<span class="name">acceptedButtons</span>: <span class="name">Qt</span>.<span class="name">LeftButton</span> <span class="operator">|</span> <span class="name">Qt</span>.<span class="name">RightButton</span>
<span class="name">onEntered</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;mouse entered the area&quot;</span>)
<span class="name">onExited</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;mouse left the area&quot;</span>)
}</pre>
<p>Additionally, to disable the whole mouse area, set the <a href="QtQuick.MouseArea.md">MouseArea</a> <code>enabled</code> property to <code>false</code>.</p>
<h2 id="mouseevent-object">MouseEvent Object</h2>
<p>Signals and their handlers receive a <a href="QtQuick.MouseEvent.md">MouseEvent</a> object as a parameter. The <code>mouse</code> object contain information about the mouse event. For example, the mouse button that started the event is queried through the <a href="QtQuick.MouseEvent.md#button-prop">mouse.button</a> property.</p>
<p>The <code>MouseEvent</code> object can also ignore a mouse event using its <code>accepted</code> property.</p>
<h3 >Accepting Further Signals</h3>
<p>Many of the signals are sent multiple times to reflect various mouse events such as double clicking. To facilitate the classification of mouse clicks, the <a href="QtQuick.MouseEvent.md">MouseEvent</a> object has an <code>accepted</code> property to disable the event propagation.</p>
<p>To learn more about QML's event system, please read the signals and handlers, and event system document.</p>
<!-- @@@qtquick-input-mouseevents.html -->
