---
Title: Ubuntu.Components.Mouse
---

# Ubuntu.Components.Mouse

<span class="subtitle"></span>
<!-- $$$Mouse-brief -->
<p>Attached property filtering mouse events occured inside the owner. More...</p>
<!-- @@@Mouse -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#acceptedButtons-prop">acceptedButtons</a></b></b> : Qt::MouseButtons</li>
<li class="fn"><b><b><a href="#clickAndHoldThreshold-prop">clickAndHoldThreshold</a></b></b> : int</li>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#forwardTo-prop">forwardTo</a></b></b> : list&lt;Item&gt;</li>
<li class="fn"><b><b><a href="#hoverEnabled-prop">hoverEnabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#ignoreSynthesizedEvents-prop">ignoreSynthesizedEvents</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#priority-prop">priority</a></b></b> : enumeration</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#onClicked-signal">onClicked</a></b></b>(MouseEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#onDoubleClicked-signal">onDoubleClicked</a></b></b>(MouseEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#onEntered-signal">onEntered</a></b></b>(MouseEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#onExited-signal">onExited</a></b></b>(MouseEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#onPositionChanged-signal">onPositionChanged</a></b></b>(MouseEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#onPressAndHold-signal">onPressAndHold</a></b></b>(MouseEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#onPressed-signal">onPressed</a></b></b>(MouseEvent <i>event</i>, Item <i>host</i>)</li>
<li class="fn"><b><b><a href="#onReleased-signal">onReleased</a></b></b>(MouseEvent <i>event</i>)</li>
</ul>
<!-- $$$Mouse-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Sometimes we need to provide additional functionality on mouse events beside a QML element's default behavior. Placing a <a href="QtQuick.MouseArea.md">MouseArea</a> over a component however will grab the mouse events from the component underneath, no matter if we set <i>preventStealing</i> to false or not. Setting mouse.accepted to false in <i>onPressed</i> would result in having the event forwarded to the <a href="QtQuick.MouseArea.md">MouseArea</a>'s parent, however <a href="QtQuick.MouseArea.md">MouseArea</a> will no longer receive other mouse events.</p>
<pre class="qml">import QtQuick 2.4
<span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="number">20</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">preventStealing</span>: <span class="number">false</span>
<span class="comment">// do not accept event so it gets propagated to the parent item</span>
<span class="name">onPressed</span>: <span class="name">mouse</span>.<span class="name">accepted</span> <span class="operator">=</span> <span class="number">false</span>;
<span class="name">onReleased</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;this will not be printed&quot;</span>)
}
}</pre>
<p>Ubuntu UI Toolkit declares filter components similar to Keys, which can be attached to any visual primitve. Mouse filter however will have effect only when attached to items handling mouse events. Events are handled through signals, where the event data is presented through the <i>mouse</i> parameter. Events should be accepted if the propagation of those to the owner is not wanted. This is not valid to <a href="#onClicked-signal">onClicked</a>, <a href="#onPressAndHold-signal">onPressAndHold</a> composed events.</p>
<p>The previous code sample using Mouse filter, which will print the pressed and released mouse buttons would look as follows:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="number">20</span>
<span class="comment">// do not accept event so it gets propagated to the parent item</span>
<span class="name">Mouse</span>.onPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;mouse button pressed: &quot;</span> <span class="operator">+</span> <span class="name">mouse</span>.<span class="name">button</span>)
<span class="name">Mouse</span>.onReleased: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;mouse button released: &quot;</span> <span class="operator">+</span> <span class="name">mouse</span>.<span class="name">button</span>)
}</pre>
<p>The event details are reported in the <i>mouse</i> parameter, of <a href="QtQuick.MouseEvent.md">MouseEvent</a> type, which extends <a href="http://doc.qt.io/qt-5/qtquick-qmlmodule.html">QtQuick</a>'s <a href="QtQuick.MouseEvent.md">MouseEvent</a> with additional properties.</p>
<p>The filter will accept the same mouse buttons the owner accepts, and will accept hover events if the owner does. However it is not possible to alter these settings through the filter. If button handling other than the default ones specified for the primitive is required, MouseAreas can be declared to handle those events.</p>
<p>Example of handling right button clicks over a <a href="QtQuick.TextInput.md">TextInput</a>:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="number">20</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">acceptedButtons</span>: <span class="name">Qt</span>.<span class="name">RightButton</span>
<span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;right button clicked&quot;</span>)
}
}</pre>
<p>In this example left and middle mouse button clicks will reach <a href="QtQuick.TextInput.md">TextInput</a> as <a href="QtQuick.MouseArea.md">MouseArea</a> only grabs right button events.</p>
<p>Mouse filter can be used in combination with <a href="QtQuick.MouseArea.md">MouseArea</a>, where the filter brings additional functionality on top of existing primitive functionality, and <a href="QtQuick.MouseArea.md">MouseArea</a> add new functionality to the primitive.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="number">20</span>
<span class="comment">// do not accept event so it gets propagated to the parent item</span>
<span class="name">Mouse</span>.onPressed: {
<span class="keyword">if</span> (<span class="name">mouse</span>.<span class="name">button</span> <span class="operator">===</span> <span class="name">Qt</span>.<span class="name">LeftButton</span>) {
<span class="comment">// do something</span>
}
}
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">acceptedButtons</span>: <span class="name">Qt</span>.<span class="name">RightButton</span>
<span class="name">Mouse</span>.onPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;right button clicked&quot;</span>)
}
}</pre>
<p>As mentioned, mouse filters can be attached to any visual item. Attaching it to items that do not handle any mouse events will not have any effect. However child items which handle mouse events can forward the events they handle to their parent. In this way mouse events will land in these items too, and mouse filter attached to those can also handle the event. This is useful when creating custom types where the mouse handling item is nested into a non-mouse handling one, and we want to provide additional filtering possibility to the user. These type of items are called proxy handlers.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">top</span>
<span class="name">width</span>: <span class="number">100</span>
<span class="name">height</span>: <span class="number">50</span>
<span class="name">Mouse</span>.onPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;mouse received from input&quot;</span>)
<span class="type">TextItem</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">Mouse</span>.forvardTo: [<span class="name">top</span>]
<span class="name">Mouse</span>.onPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;pressed over input&quot;</span>)
<span class="name">Mouse</span>.onPressAndHold: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;longpress handled here&quot;</span>)
}
}</pre>
<p>In this example the mouse press is first handled by the mouse filter attached to <a href="QtQuick.TextInput.md">TextInput</a>, then it is forwarded to the top item and finally to the <a href="QtQuick.TextInput.md">TextInput</a>. Accepting the mouse event will stop propagation to the top item as well as to the <a href="QtQuick.TextInput.md">TextInput</a>. The topmost item itself does not handle mouse events, therefore it will be a sinple proxy handler item. However, proxies can themself handle mouse events. Therefore each mouse event signal has the <i>host</i> parameter specifying the sender of the mouse event reported.</p>
<p><b>Note: </b>The forwarded events are handled in the proxy handlers only if the mouse position points inside their area. If the forwarded mouse position falls outside the target area, the event will not be reported, however will be forwarded further to the items in the list. In the following example the mouse press in red rectangle will be printed as well as the proxied mouse press from the main item.</p><pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">main</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="name">Mouse</span>.onPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;got the mouse press forwarded by &quot;</span> <span class="operator">+</span> <span class="name">host</span>.<span class="name">objectName</span>)
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">spacing</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">blueRect</span>
<span class="name">objectName</span>: <span class="string">&quot;BlueRect&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">Mouse</span>.forwardTo: [<span class="name">main</span>]
<span class="name">Mouse</span>.onPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;This should not be printed&quot;</span>)
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">objectName</span>: <span class="string">&quot;RedRect&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">Mouse</span>.forwardTo: [<span class="name">blueRect</span>]
<span class="name">Mouse</span>.onPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Pressed in &quot;</span> <span class="operator">+</span> <span class="name">host</span>.<span class="name">objectName</span>)
}
}
}
}</pre>
<p>An interesting feature that can be achieved using Mouse filter is the event &quot;transparency&quot; towards the <a href="QtQuick.MouseArea.md">MouseArea</a> lying behind the items which handle mouse events. This means for example that by forwarding mouse events occurred on a <a href="QtQuick.TextInput.md">TextInput</a> to a <a href="QtQuick.MouseArea.md">MouseArea</a> that stays behind it in the item hierarchy, the <a href="QtQuick.MouseArea.md">MouseArea</a> will also get all the events occurred on the area covered by the <a href="QtQuick.TextInput.md">TextInput</a>, acting like it would be above the <a href="QtQuick.TextInput.md">TextInput</a>. However, due to the nature of the <a href="QtQuick.MouseArea.md">MouseArea</a> event acceptance policy (all events are accepted by default) <a href="QtQuick.TextInput.md">TextInput</a> will not get these mouse events unless we set the <i>accepted</i> field of the mouse event to false in <a href="QtQuick.MouseArea.md">MouseArea</a>. This normally leads to the <a href="QtQuick.MouseArea.md">MouseArea</a> no longer getting further mouse events. However, Mouse filter will continue to forward other mouse events to the <a href="QtQuick.MouseArea.md">MouseArea</a>, so setting <i>accepted</i> to false in <i>onPressed</i>, <i>onReleased</i> will not have the default effect. This is only valid to press and release events, double-click or mouse position change will be blocked by the <a href="QtQuick.MouseArea.md">MouseArea</a> still.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">id</span>: <span class="name">topArea</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
<span class="name">onPressed</span>: {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;forwarded pressed&quot;</span>)
<span class="name">mouse</span>.<span class="name">accepted</span> <span class="operator">=</span> <span class="number">false</span>
}
<span class="name">onReleased</span>: {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;released&quot;</span>)
<span class="name">mouse</span>.<span class="name">accepted</span> <span class="operator">=</span> <span class="number">false</span>
}
<span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">Mouse</span>.forwardTo: [<span class="name">topArea</span>]
<span class="name">Mouse</span>.onPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;input pressed&quot;</span>)
<span class="name">Mouse</span>.onReleased: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;input released&quot;</span>)
}
}</pre>
<p>Mouse filter provides ability to control the order of the event dispatching. The filter can receive the events prior the owner or after the owner. This can be controlled through the <a href="#priority-prop">priority</a> property. In the following example we make sure the <a href="QtQuick.TextInput.md">TextInput</a> always receives the events before the filter:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
<span class="name">id</span>: <span class="name">input</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
<span class="name">activeFocusOnPress</span>: <span class="number">true</span>
<span class="name">Mouse</span>.prority: <span class="name">Mouse</span>.<span class="name">AfterItem</span>
<span class="name">Mouse</span>.onPressed: <span class="keyword">if</span> (<span class="name">input</span>.<span class="name">activeFocus</span>) <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Text input already handled it&quot;</span>)
}</pre>
<p>Another feature of the mouse filters is the ability to restrict when the composed events like <a href="#onClicked-signal">onClicked</a> and <a href="#onPressAndHold-signal">onPressAndHold</a> should be triggered. By default these events are triggered no matter what is the distance between the mouse pressed position and the current position after a certain timeout (for <a href="#onPressAndHold-signal">onPressAndHold</a>) or upon mouse release (for <a href="#onClicked-signal">onClicked</a>). In this way the <a href="#onClicked-signal">onClicked</a> will be emitted even if the user presses the mouse at the left-top edge of the component, then moves it to the right-bottom corner and releases it. This may not be the preferred behavior on certain components (like <a href="QtQuick.TextInput.md">TextInput</a>). Therefore MouseFilter provides a property which can alter this behavior, the <a href="#clickAndHoldThreshold-prop">clickAndHoldThreshold</a>. This property specifies the radius of the area the up-mentioned composed events are emitted during a mouse move.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="QtQuick.TextInput.md">TextInput</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
<span class="name">activeFocusOnPress</span>: <span class="number">true</span>
<span class="name">selectByMouse</span>: <span class="number">true</span>
<span class="comment">// emit composed events only if the mouse moves within 2 GU radius area</span>
<span class="name">Mouse</span>.clickAndHoldThreshold: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
<span class="name">Mouse</span>.onClicked: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;click happened within threshold value&quot;</span>)
<span class="name">Mouse</span>.onPressAndHold: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;pressAndHold happened within threshold value&quot;</span>)
}</pre>
<p>Similar functionality for the case when the mouse event occurs outside of the owner is brought by the <a href="Ubuntu.Components.InverseMouse.md">InverseMouse</a> attached property.</p>
<h2 id="mouse-events-synthesis">Mouse events synthesis</h2>
<p><a href="http://doc.qt.io/qt-5/qtquick-qmlmodule.html">QtQuick</a> automatically creates artificial mouse events whenever a scene receives touch events that are not consumed by any item (either by using <a href="QtQuick.MultiPointTouchArea.md">MultiPointTouchArea</a> or a custom C++ item). The Mouse filter provides the possibility to ignore synthesized mouse events by enabling the <a href="#ignoreSynthesizedEvents-prop">ignoreSynthesizedEvents</a> property.</p>
<p>This is really useful when, while developing a convergent application, the app developer wants to avoid triggering the hovering logic using a touchscreen, but still be able to handle the hover events when using a mouse, and at the same time doesn't want to stop the mouse and touch events from propagating to items underneath the <a href="QtQuick.MouseArea.md">MouseArea</a> which handles the hovering. The following is an example of how that functionaly can be implemented:</p>
<pre class="qml"> <span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">id</span>: <span class="name">proximityArea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">propagateComposedEvents</span>: <span class="number">true</span>
<span class="name">hoverEnabled</span>: <span class="number">true</span>
<span class="comment">//We use a separate variable to detect whether the area contains</span>
<span class="comment">//a mouse, because MouseArea's containsMouse is true even when</span>
<span class="comment">//tapping on it using a touchscreen (due to the touch events being</span>
<span class="comment">//converted to mouse events if no item consumes them).</span>
property <span class="type">bool</span> <span class="name">containsPointerDevice</span>: <span class="number">false</span>
<span class="comment">//handle hover events using the Mouse filter instead of MouseArea, so that</span>
<span class="comment">//we can ignore synthesized mouse events and not trigger hover logic when the</span>
<span class="comment">//user is interacting with the app using a touch device.</span>
<span class="name">Mouse</span>.ignoreSynthesizedEvents: <span class="number">true</span>
<span class="name">Mouse</span>.onEntered: {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;ONLY A MOUSE CAN TRIGGER THIS SLOT&quot;</span>)
<span class="name">proximityArea</span>.<span class="name">containsPointerDevice</span> <span class="operator">=</span> <span class="number">true</span>
}
<span class="name">Mouse</span>.onExited: <span class="name">proximityArea</span>.<span class="name">containsPointerDevice</span> <span class="operator">=</span> <span class="number">false</span>
<span class="comment">//let mouse and touch events propagate underneath the mouse area</span>
<span class="name">onPressed</span>: <span class="name">mouse</span>.<span class="name">accepted</span> <span class="operator">=</span> <span class="number">false</span>
}</pre>
<!-- @@@Mouse -->
<h2>Property Documentation</h2>
<!-- $$$acceptedButtons -->
<table class="qmlname"><tr valign="top" id="acceptedButtons-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">acceptedButtons</span> : <span class="type">Qt::MouseButtons</span></p></td></tr></table><p>The property holds the accepted mouse buttons of the owner.</p>
<!-- @@@acceptedButtons -->
<br/>
<!-- $$$clickAndHoldThreshold -->
<table class="qmlname"><tr valign="top" id="clickAndHoldThreshold-prop"><td class="tblQmlPropNode"><p><span class="name">clickAndHoldThreshold</span> : <span class="type">int</span></p></td></tr></table><p>The property holds the radius of the tolerance area the mouse can move in both x and y axis when the mouse is pressed, during which the composed events such as <a href="#onClicked-signal">onClicked</a> and <a href="#onPressAndHold-signal">onPressAndHold</a> will still be emitted. If the mouse is moved out of this area while the button is pressed, no composed events will be emitted.</p>
<p>When this value is 0, the signals will be emitted as in <a href="QtQuick.MouseArea.md">MouseArea</a>, meaning the composed events will come until the mouse is moved inside the owner's area.</p>
<p>The default value is 0.</p>
<p><b>Note: </b>The value has no effect for the forwarded events. The threshold is only valid when the host handles mouse events.</p><!-- @@@clickAndHoldThreshold -->
<br/>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><!-- @@@enabled -->
<br/>
<!-- $$$forwardTo -->
<table class="qmlname"><tr valign="top" id="forwardTo-prop"><td class="tblQmlPropNode"><p><span class="name">forwardTo</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.Item.md">Item</a></span>&gt;</p></td></tr></table><p>The property provides a way to forward mouse presses, releases, moves and double click events to other items. This can be useful when you want other items to handle different parts of the same mouse event or to handle other mouse events.</p>
<p>The items listed will receive the event only if the mouse event falls into their area. Once an item that has forwarded mouse events accepts the event, that will no longer be delivered to the rest of the items in the list. This rule is also applied on the owner when the priority is set to <i>BeforeItem</i>.</p>
<!-- @@@forwardTo -->
<br/>
<!-- $$$hoverEnabled -->
<table class="qmlname"><tr valign="top" id="hoverEnabled-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">hoverEnabled</span> : <span class="type">bool</span></p></td></tr></table><p>The property reports whether the owner accepts hover events or not. When events are accepted <a href="#onEntered-signal">onEntered</a>, <a href="#onPositionChanged-signal">onPositionChanged</a> and <a href="#onExited-signal">onExited</a> signals containing the mouse cursor position.</p>
<!-- @@@hoverEnabled -->
<br/>
<!-- $$$ignoreSynthesizedEvents -->
<table class="qmlname"><tr valign="top" id="ignoreSynthesizedEvents-prop"><td class="tblQmlPropNode"><p><span class="name">ignoreSynthesizedEvents</span> : <span class="type">bool</span></p></td></tr></table><p>This property controls how the filter handles the mouse events synthesized by Qt (e.g&#x2e; the artificial mouse events created when an original touch event is not consumed by any Item in the scene).</p>
<p>If the value is true, the filter will ignore the synthesized mouse events.</p>
<p>More info at <a href="#mouse-events-synthesis">Mouse events synthesis</a>.</p>
<p>The default value is false.</p>
<!-- @@@ignoreSynthesizedEvents -->
<br/>
<!-- $$$priority -->
<table class="qmlname"><tr valign="top" id="priority-prop"><td class="tblQmlPropNode"><p><span class="name">priority</span> : <span class="type">enumeration</span></p></td></tr></table><p>The property specifies the event dispach relation between the filter, the elements the event is forwarded to and the owner. Similar to Keys' <i>priority</i> property, the event dispach is performed in two ways: berfore (<i>BeforeItem</i>) or after (<i>AfterItem</i>) the owner receives the events.</p>
<p>When <i>BeforeItem</i> is set the event dispach happens based as follows:</p>
<ol class="i">
<li>the event is handled by the mouse filter</li>
<li>if there are items listed in <a href="#forwardTo-prop">forwardTo</a> property, the event will be forwarded to those items</li>
<li>the event is handed over the owner.</li>
</ol>
<br />
<p>When <i>AfterItem</i> is set the event dispach happens based as follows:</p>
<ol class="i">
<li>the event is handed over the owner;</li>
<li>the event is handled by the mouse filter;</li>
<li>if there are items listed in <a href="#forwardTo-prop">forwardTo</a> property, the event will be forwarded to those items.</li>
</ol>
<p>The default value is <i>BeforeItem</i>.</p>
<!-- @@@priority -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$onClicked -->
<table class="qmlname"><tr valign="top" id="onClicked-signal"><td class="tblQmlFuncNode"><p><span class="name">onClicked</span>(<span class="type"><a href="QtQuick.MouseEvent.md">MouseEvent</a></span><i> event</i>)</p></td></tr></table><p>The signal reports the mouse click. The signal is not emitted if the <a href="#onPressAndHold-signal">onPressAndHold</a> got triggered or if <a href="#onDoubleClicked-signal">onDoubleClicked</a> is handled (a slot is connected to it). The <i>host</i> specifies the item that triggered the event.</p>
<!-- @@@onClicked -->
<br/>
<!-- $$$onDoubleClicked -->
<table class="qmlname"><tr valign="top" id="onDoubleClicked-signal"><td class="tblQmlFuncNode"><p><span class="name">onDoubleClicked</span>(<span class="type"><a href="QtQuick.MouseEvent.md">MouseEvent</a></span><i> event</i>)</p></td></tr></table><p>The signal reports mouse double click. The <i>host</i> specifies the item that triggered the event.</p>
<!-- @@@onDoubleClicked -->
<br/>
<!-- $$$onEntered -->
<table class="qmlname"><tr valign="top" id="onEntered-signal"><td class="tblQmlFuncNode"><p><span class="name">onEntered</span>(<span class="type"><a href="QtQuick.MouseEvent.md">MouseEvent</a></span><i> event</i>)</p></td></tr></table><p>The signal reports that the mouse has entered into the area. The signal is emitted when the hover events are enabled and the mouse enters the area or when one of the accepted mouse button is pressed. The <i>host</i> specifies the item that triggered the event.</p>
<!-- @@@onEntered -->
<br/>
<!-- $$$onExited -->
<table class="qmlname"><tr valign="top" id="onExited-signal"><td class="tblQmlFuncNode"><p><span class="name">onExited</span>(<span class="type"><a href="QtQuick.MouseEvent.md">MouseEvent</a></span><i> event</i>)</p></td></tr></table><p>The signal reports that the mouse has left the area. The signal is emitted when the hover events are enabled for the owner or if not, when one of the accepted button is released. The <i>host</i> specifies the item that triggered the event.</p>
<!-- @@@onExited -->
<br/>
<!-- $$$onPositionChanged -->
<table class="qmlname"><tr valign="top" id="onPositionChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">onPositionChanged</span>(<span class="type"><a href="QtQuick.MouseEvent.md">MouseEvent</a></span><i> event</i>)</p></td></tr></table><p>The signal reports the mouse pointer position change. If the hover events are enabled for the owner, the signal will come continuously. Otherwise the position chanes are reported when one of the accepted mouse buttons are being kept pressed. The <i>host</i> specifies the item that triggered the event.</p>
<!-- @@@onPositionChanged -->
<br/>
<!-- $$$onPressAndHold -->
<table class="qmlname"><tr valign="top" id="onPressAndHold-signal"><td class="tblQmlFuncNode"><p><span class="name">onPressAndHold</span>(<span class="type"><a href="QtQuick.MouseEvent.md">MouseEvent</a></span><i> event</i>)</p></td></tr></table><p>The signal reports the mouse press and hold. The <i>host</i> specifies the item that triggered the event.</p>
<!-- @@@onPressAndHold -->
<br/>
<!-- $$$onPressed -->
<table class="qmlname"><tr valign="top" id="onPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">onPressed</span>(<span class="type"><a href="QtQuick.MouseEvent.md">MouseEvent</a></span><i> event</i>, <span class="type"><a href="QtQuick.Item.md">Item</a></span><i> host</i>)</p></td></tr></table><p>The signal reports the mouse press. The <i>host</i> specifies the item that triggered the event.</p>
<!-- @@@onPressed -->
<br/>
<!-- $$$onReleased -->
<table class="qmlname"><tr valign="top" id="onReleased-signal"><td class="tblQmlFuncNode"><p><span class="name">onReleased</span>(<span class="type"><a href="QtQuick.MouseEvent.md">MouseEvent</a></span><i> event</i>)</p></td></tr></table><p>The signal reports the mouse release. The <i>host</i> specifies the item that triggered the event.</p>
<!-- @@@onReleased -->
<br/>
