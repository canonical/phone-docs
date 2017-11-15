---
Title: QtQuick.Keys
---

# QtQuick.Keys

<span class="subtitle"></span>
<!-- $$$Keys-brief -->
<p>Provides key handling to Items More...</p>
<!-- @@@Keys -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#forwardTo-prop">forwardTo</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#priority-prop">priority</a></b></b> : enumeration</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#asteriskPressed-signal">asteriskPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#backPressed-signal">backPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#backtabPressed-signal">backtabPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#callPressed-signal">callPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#cancelPressed-signal">cancelPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#context1Pressed-signal">context1Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#context2Pressed-signal">context2Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#context3Pressed-signal">context3Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#context4Pressed-signal">context4Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#deletePressed-signal">deletePressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#digit0Pressed-signal">digit0Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#digit1Pressed-signal">digit1Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#digit2Pressed-signal">digit2Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#digit3Pressed-signal">digit3Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#digit4Pressed-signal">digit4Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#digit5Pressed-signal">digit5Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#digit6Pressed-signal">digit6Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#digit7Pressed-signal">digit7Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#digit8Pressed-signal">digit8Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#digit9Pressed-signal">digit9Pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#downPressed-signal">downPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#enterPressed-signal">enterPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#escapePressed-signal">escapePressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#flipPressed-signal">flipPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#hangupPressed-signal">hangupPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#leftPressed-signal">leftPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#menuPressed-signal">menuPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#noPressed-signal">noPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#pressed-signal">pressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#released-signal">released</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#returnPressed-signal">returnPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#rightPressed-signal">rightPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#selectPressed-signal">selectPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#spacePressed-signal">spacePressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#tabPressed-signal">tabPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#upPressed-signal">upPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#volumeDownPressed-signal">volumeDownPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#volumeUpPressed-signal">volumeUpPressed</a></b></b>(KeyEvent <i>event</i>)</li>
<li class="fn"><b><b><a href="#yesPressed-signal">yesPressed</a></b></b>(KeyEvent <i>event</i>)</li>
</ul>
<!-- $$$Keys-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>All visual primitives support key handling via the Keys attached property. Keys can be handled via the onPressed and onReleased signal properties.</p>
<p>The signal properties have a <a href="QtQuick.KeyEvent.md">KeyEvent</a> parameter, named <i>event</i> which contains details of the event. If a key is handled <i>event.accepted</i> should be set to true to prevent the event from propagating up the item hierarchy.</p>
<h2 id="example-usage">Example Usage</h2>
<p>The following example shows how the general onPressed handler can be used to test for a certain key; in this case, the left cursor key:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onPressed: {
<span class="keyword">if</span> (<span class="name">event</span>.<span class="name">key</span> <span class="operator">==</span> <span class="name">Qt</span>.<span class="name">Key_Left</span>) {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;move left&quot;</span>);
<span class="name">event</span>.<span class="name">accepted</span> <span class="operator">=</span> <span class="number">true</span>;
}
}
}</pre>
<p>Some keys may alternatively be handled via specific signal properties, for example <i>onSelectPressed</i>. These handlers automatically set <i>event.accepted</i> to true.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onLeftPressed: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;move left&quot;</span>)
}</pre>
<p>See Qt.Key for the list of keyboard codes.</p>
<h2 id="key-handling-priorities">Key Handling Priorities</h2>
<p>The Keys attached property can be configured to handle key events before or after the item it is attached to. This makes it possible to intercept events in order to override an item's default behavior, or act as a fallback for keys not handled by the item.</p>
<p>If <a href="#priority-prop">priority</a> is Keys.BeforeItem (default) the order of key event processing is:</p>
<ol class="1">
<li>Items specified in <code>forwardTo</code></li>
<li>specific key handlers, e.g&#x2e; onReturnPressed</li>
<li>onPressed, onReleased handlers</li>
<li>Item specific key handling, e.g&#x2e; <a href="QtQuick.TextInput.md">TextInput</a> key handling</li>
<li>parent item</li>
</ol>
<p>If priority is Keys.AfterItem the order of key event processing is:</p>
<ol class="1">
<li>Item specific key handling, e.g&#x2e; <a href="QtQuick.TextInput.md">TextInput</a> key handling</li>
<li>Items specified in <code>forwardTo</code></li>
<li>specific key handlers, e.g&#x2e; onReturnPressed</li>
<li>onPressed, onReleased handlers</li>
<li>parent item</li>
</ol>
<p>If the event is accepted during any of the above steps, key propagation stops.</p>
<p><b>See also </b><a href="QtQuick.KeyEvent.md">KeyEvent</a> and <a href="QtQuick.KeyNavigation.md">KeyNavigation attached property</a>.</p>
<!-- @@@Keys -->
<h2>Property Documentation</h2>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>This flags enables key handling if true (default); otherwise no key handlers will be called.</p>
<!-- @@@enabled -->
<br/>
<!-- $$$forwardTo -->
<table class="qmlname"><tr valign="top" id="forwardTo-prop"><td class="tblQmlPropNode"><p><span class="name">forwardTo</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>This property provides a way to forward key presses, key releases, and keyboard input coming from input methods to other items. This can be useful when you want one item to handle some keys (e.g&#x2e; the up and down arrow keys), and another item to handle other keys (e.g&#x2e; the left and right arrow keys). Once an item that has been forwarded keys accepts the event it is no longer forwarded to items later in the list.</p>
<p>This example forwards key events to two lists:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">list1</span>
<span class="comment">// ...</span>
}
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">list2</span>
<span class="comment">// ...</span>
}
<span class="name">Keys</span>.forwardTo: [<span class="name">list1</span>, <span class="name">list2</span>]
<span class="name">focus</span>: <span class="number">true</span>
}</pre>
<p>To see the order in which events are received when using forwardTo, see <a href="#key-handling-priorities">Key Handling Priorities</a>.</p>
<!-- @@@forwardTo -->
<br/>
<!-- $$$priority -->
<table class="qmlname"><tr valign="top" id="priority-prop"><td class="tblQmlPropNode"><p><span class="name">priority</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property determines whether the keys are processed before or after the attached item's own key handling.</p>
<ul>
<li>Keys.BeforeItem (default) - process the key events before normal item key processing. If the event is accepted it will not be passed on to the item.</li>
<li>Keys.AfterItem - process the key events after normal item key handling. If the item accepts the key event it will not be handled by the Keys attached property handler.</li>
</ul>
<p><b>See also </b><a href="#key-handling-priorities">Key Handling Priorities</a>.</p>
<!-- @@@priority -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$asteriskPressed -->
<table class="qmlname"><tr valign="top" id="asteriskPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">asteriskPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Asterisk '*' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onAsteriskPressed</code>.</p>
<!-- @@@asteriskPressed -->
<br/>
<!-- $$$backPressed -->
<table class="qmlname"><tr valign="top" id="backPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">backPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Back key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onBackPressed</code>.</p>
<!-- @@@backPressed -->
<br/>
<!-- $$$backtabPressed -->
<table class="qmlname"><tr valign="top" id="backtabPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">backtabPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Shift+Tab key combination (Backtab) has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onBacktabPressed</code>.</p>
<!-- @@@backtabPressed -->
<br/>
<!-- $$$callPressed -->
<table class="qmlname"><tr valign="top" id="callPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">callPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Call key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onCallPressed</code>.</p>
<!-- @@@callPressed -->
<br/>
<!-- $$$cancelPressed -->
<table class="qmlname"><tr valign="top" id="cancelPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">cancelPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Cancel key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onCancelPressed</code>.</p>
<!-- @@@cancelPressed -->
<br/>
<!-- $$$context1Pressed -->
<table class="qmlname"><tr valign="top" id="context1Pressed-signal"><td class="tblQmlFuncNode"><p><span class="name">context1Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Context1 key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onContext1Pressed</code>.</p>
<!-- @@@context1Pressed -->
<br/>
<!-- $$$context2Pressed -->
<table class="qmlname"><tr valign="top" id="context2Pressed-signal"><td class="tblQmlFuncNode"><p><span class="name">context2Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Context2 key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onContext2Pressed</code>.</p>
<!-- @@@context2Pressed -->
<br/>
<!-- $$$context3Pressed -->
<table class="qmlname"><tr valign="top" id="context3Pressed-signal"><td class="tblQmlFuncNode"><p><span class="name">context3Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Context3 key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onContext3Pressed</code>.</p>
<!-- @@@context3Pressed -->
<br/>
<!-- $$$context4Pressed -->
<table class="qmlname"><tr valign="top" id="context4Pressed-signal"><td class="tblQmlFuncNode"><p><span class="name">context4Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Context4 key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onContext4Pressed</code>.</p>
<!-- @@@context4Pressed -->
<br/>
<!-- $$$deletePressed -->
<table class="qmlname"><tr valign="top" id="deletePressed-signal"><td class="tblQmlFuncNode"><p><span class="name">deletePressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Delete key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onDeletePressed</code>.</p>
<!-- @@@deletePressed -->
<br/>
<!-- $$$digit0Pressed -->
<table class="qmlname"><tr valign="top" id="digit0Pressed-signal"><td class="tblQmlFuncNode"><p><span class="name">digit0Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the digit '0' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onDigit0Pressed</code>.</p>
<!-- @@@digit0Pressed -->
<br/>
<!-- $$$digit1Pressed -->
<table class="qmlname"><tr valign="top" id="digit1Pressed-signal"><td class="tblQmlFuncNode"><p><span class="name">digit1Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the digit '1' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onDigit1Pressed</code>.</p>
<!-- @@@digit1Pressed -->
<br/>
<!-- $$$digit2Pressed -->
<table class="qmlname"><tr valign="top" id="digit2Pressed-signal"><td class="tblQmlFuncNode"><p><span class="name">digit2Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the digit '2' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onDigit2Pressed</code>.</p>
<!-- @@@digit2Pressed -->
<br/>
<!-- $$$digit3Pressed -->
<table class="qmlname"><tr valign="top" id="digit3Pressed-signal"><td class="tblQmlFuncNode"><p><span class="name">digit3Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the digit '3' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onDigit3Pressed</code>.</p>
<!-- @@@digit3Pressed -->
<br/>
<!-- $$$digit4Pressed -->
<table class="qmlname"><tr valign="top" id="digit4Pressed-signal"><td class="tblQmlFuncNode"><p><span class="name">digit4Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the digit '4' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onDigit4Pressed</code>.</p>
<!-- @@@digit4Pressed -->
<br/>
<!-- $$$digit5Pressed -->
<table class="qmlname"><tr valign="top" id="digit5Pressed-signal"><td class="tblQmlFuncNode"><p><span class="name">digit5Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the digit '5' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onDigit5Pressed</code>.</p>
<!-- @@@digit5Pressed -->
<br/>
<!-- $$$digit6Pressed -->
<table class="qmlname"><tr valign="top" id="digit6Pressed-signal"><td class="tblQmlFuncNode"><p><span class="name">digit6Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the digit '6' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onDigit6Pressed</code>.</p>
<!-- @@@digit6Pressed -->
<br/>
<!-- $$$digit7Pressed -->
<table class="qmlname"><tr valign="top" id="digit7Pressed-signal"><td class="tblQmlFuncNode"><p><span class="name">digit7Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the digit '7' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onDigit7Pressed</code>.</p>
<!-- @@@digit7Pressed -->
<br/>
<!-- $$$digit8Pressed -->
<table class="qmlname"><tr valign="top" id="digit8Pressed-signal"><td class="tblQmlFuncNode"><p><span class="name">digit8Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the digit '8' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onDigit8Pressed</code>.</p>
<!-- @@@digit8Pressed -->
<br/>
<!-- $$$digit9Pressed -->
<table class="qmlname"><tr valign="top" id="digit9Pressed-signal"><td class="tblQmlFuncNode"><p><span class="name">digit9Pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the digit '9' has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onDigit9Pressed</code>.</p>
<!-- @@@digit9Pressed -->
<br/>
<!-- $$$downPressed -->
<table class="qmlname"><tr valign="top" id="downPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">downPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Down arrow has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onDownPressed</code>.</p>
<!-- @@@downPressed -->
<br/>
<!-- $$$enterPressed -->
<table class="qmlname"><tr valign="top" id="enterPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">enterPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Enter key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onEnterPressed</code>.</p>
<!-- @@@enterPressed -->
<br/>
<!-- $$$escapePressed -->
<table class="qmlname"><tr valign="top" id="escapePressed-signal"><td class="tblQmlFuncNode"><p><span class="name">escapePressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Escape key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onEscapePressed</code>.</p>
<!-- @@@escapePressed -->
<br/>
<!-- $$$flipPressed -->
<table class="qmlname"><tr valign="top" id="flipPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">flipPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Flip key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onFlipPressed</code>.</p>
<!-- @@@flipPressed -->
<br/>
<!-- $$$hangupPressed -->
<table class="qmlname"><tr valign="top" id="hangupPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">hangupPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Hangup key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onHangupPressed</code>.</p>
<!-- @@@hangupPressed -->
<br/>
<!-- $$$leftPressed -->
<table class="qmlname"><tr valign="top" id="leftPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">leftPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Left arrow has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onLeftPressed</code>.</p>
<!-- @@@leftPressed -->
<br/>
<!-- $$$menuPressed -->
<table class="qmlname"><tr valign="top" id="menuPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">menuPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Menu key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onMenuPressed</code>.</p>
<!-- @@@menuPressed -->
<br/>
<!-- $$$noPressed -->
<table class="qmlname"><tr valign="top" id="noPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">noPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the No key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onNoPressed</code>.</p>
<!-- @@@noPressed -->
<br/>
<!-- $$$pressed -->
<table class="qmlname"><tr valign="top" id="pressed-signal"><td class="tblQmlFuncNode"><p><span class="name">pressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when a key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onPressed</code>.</p>
<!-- @@@pressed -->
<br/>
<!-- $$$released -->
<table class="qmlname"><tr valign="top" id="released-signal"><td class="tblQmlFuncNode"><p><span class="name">released</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when a key has been released. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onReleased</code>.</p>
<!-- @@@released -->
<br/>
<!-- $$$returnPressed -->
<table class="qmlname"><tr valign="top" id="returnPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">returnPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Return key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onReturnPressed</code>.</p>
<!-- @@@returnPressed -->
<br/>
<!-- $$$rightPressed -->
<table class="qmlname"><tr valign="top" id="rightPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">rightPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Right arrow has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onRightPressed</code>.</p>
<!-- @@@rightPressed -->
<br/>
<!-- $$$selectPressed -->
<table class="qmlname"><tr valign="top" id="selectPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">selectPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Select key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onSelectPressed</code>.</p>
<!-- @@@selectPressed -->
<br/>
<!-- $$$spacePressed -->
<table class="qmlname"><tr valign="top" id="spacePressed-signal"><td class="tblQmlFuncNode"><p><span class="name">spacePressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Space key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onSpacePressed</code>.</p>
<!-- @@@spacePressed -->
<br/>
<!-- $$$tabPressed -->
<table class="qmlname"><tr valign="top" id="tabPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">tabPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Tab key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onTabPressed</code>.</p>
<!-- @@@tabPressed -->
<br/>
<!-- $$$upPressed -->
<table class="qmlname"><tr valign="top" id="upPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">upPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Up arrow has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onUpPressed</code>.</p>
<!-- @@@upPressed -->
<br/>
<!-- $$$volumeDownPressed -->
<table class="qmlname"><tr valign="top" id="volumeDownPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">volumeDownPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the VolumeDown key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onVolumeDownPressed</code>.</p>
<!-- @@@volumeDownPressed -->
<br/>
<!-- $$$volumeUpPressed -->
<table class="qmlname"><tr valign="top" id="volumeUpPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">volumeUpPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the VolumeUp key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onVolumeUpPressed</code>.</p>
<!-- @@@volumeUpPressed -->
<br/>
<!-- $$$yesPressed -->
<table class="qmlname"><tr valign="top" id="yesPressed-signal"><td class="tblQmlFuncNode"><p><span class="name">yesPressed</span>(<span class="type"><a href="QtQuick.KeyEvent.md">KeyEvent</a></span><i> event</i>)</p></td></tr></table><p>This signal is emitted when the Yes key has been pressed. The <i>event</i> parameter provides information about the event.</p>
<p>The corresponding handler is <code>onYesPressed</code>.</p>
<!-- @@@yesPressed -->
<br/>
