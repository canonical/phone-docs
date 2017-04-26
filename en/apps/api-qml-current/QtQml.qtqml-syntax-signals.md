---
Title: QtQml.qtqml-syntax-signals
---

# QtQml.qtqml-syntax-signals

<span class="subtitle"></span>
<!-- $$$qtqml-syntax-signals.html-description -->
<p>Application and user interface components need to communicate with each other. For example, a button needs to know that the user has clicked on it. The button may change colors to indicate its state or perform some logic. As well, application needs to know whether the user is clicking the button. The application may need to relay this clicking event to other applications.</p>
<p>QML has a signal and handler mechanism, where the <i>signal</i> is the event and the signal is responded to through a <i>signal handler</i>. When a signal is emitted, the corresponding signal handler is invoked. Placing logic such as scripts or other operations in the handler allows the component to respond to the event.</p>
<h2 id="receiving-signals-with-signal-handlers">Receiving Signals with Signal Handlers</h2>
<p>To receive a notification when a particular signal is emitted for a particular object, the object definition should declare a signal handler named <i>on&lt;Signal&gt;</i> where <i>&lt;Signal&gt;</i> is the name of the signal, with the first letter capitalized. The signal handler should contain the JavaScript code to be executed when the signal handler is invoked.</p>
<p>For example, the MouseArea type from the <code>QtQuick</code> module has a <code>clicked</code> signal that is emitted whenever the mouse is clicked within the area. Since the signal name is <code>clicked</code>, the signal handler for receiving this signal should be named <code>onClicked</code>. In the example below, whenever the mouse area is clicked, the <code>onClicked</code> handler is invoked, applying a random color to the Rectangle:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: {
<span class="name">rect</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="number">1</span>);
}
}
}</pre>
<p>Looking at the MouseArea documentation, you can see the clicked signal is emitted with a parameter named <code>mouse</code> which is a MouseEvent object that contains further details about the mouse click event. This name can be referred to in our <code>onClicked</code> handler to access this parameter. For example, the MouseEvent type has <code>x</code> and <code>y</code> coordinates that allows us to print out the exact location where the mouse was clicked:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: {
<span class="name">rect</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="number">1</span>);
<span class="comment">// access 'mouse' parameter</span>
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Clicked mouse at&quot;</span>, <span class="name">mouse</span>.<span class="name">x</span>, <span class="name">mouse</span>.<span class="name">y</span>)
}
}
}</pre>
<h3 >Property Change Signal Handlers</h3>
<p>A signal is automatically emitted when the value of a QML property changes. This type of signal is a <i>property change signal</i> and signal handlers for these signals are written in the form <i>on&lt;Property&gt;Changed</i> where <i>&lt;Property&gt;</i> is the name of the property, with the first letter capitalized.</p>
<p>For example, the MouseArea type has a pressed property. To receive a notification whenever this property changes, write a signal handler named <code>onPressedChanged</code>:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onPressedChanged</span>: {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Mouse area is pressed?&quot;</span>, <span class="name">pressed</span>)
}
}
}</pre>
<p>Even though the MouseArea documentation does not document a signal handler named <code>onPressedChanged</code>, the signal is implicitly provided by the fact that the <code>pressed</code> property exists.</p>
<h3 >Using the Connections Type</h3>
<p>In some cases it may be desirable to access a signal outside of the object that emits it. For these purposes, the <code>QtQuick</code> module provides the <a href="QtQml.Connections.md">Connections</a> type for connecting to signals of arbitrary objects. A <a href="QtQml.Connections.md">Connections</a> object can receive any signal from its specified <a href="QtQml.Connections.md#target-prop">target</a>.</p>
<p>For example, the <code>onClicked</code> handler in the earlier example could have been received by the root Rectangle instead, by placing the <code>onClicked</code> handler in a <a href="QtQml.Connections.md">Connections</a> object that has its <a href="QtQml.Connections.md#target-prop">target</a> set to the MouseArea:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type">MouseArea</span> {
<span class="name">id</span>: <span class="name">mouseArea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
}
<span class="type"><a href="QtQml.Connections.md">Connections</a></span> {
<span class="name">target</span>: <span class="name">mouseArea</span>
<span class="name">onClicked</span>: {
<span class="name">rect</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="name">Math</span>.<span class="name">random</span>(), <span class="number">1</span>);
}
}
}</pre>
<h3 >Attached Signal Handlers</h3>
<p>An <a href="QtQml.qtqml-syntax-objectattributes.md#attached-properties-and-attached-signal-handlers">attached signal handler</a> is a signal handler that receives a signal from an <i>attaching type</i> rather than the object within which the handler is declared.</p>
<p>For example, <code>\l</code> {Component::isCompleted}{Component.isCompleted} is an attached signal handler. This handler is often used to execute some JavaScript code when its creation process has been completed, as in the example below:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">200</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="name">Qt</span>.<span class="name">random</span>(), <span class="name">Qt</span>.<span class="name">random</span>(), <span class="name">Qt</span>.<span class="name">random</span>(), <span class="number">1</span>)
<span class="name">Component</span>.onCompleted: {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;The rectangle's color is&quot;</span>, <span class="name">color</span>)
}
}</pre>
<p>The <code>onCompleted</code> handler is not responding to some <code>completed</code> signal from the Rectangle type. Instead, an object of the <code>Component</code> <i>attaching type</i> with a <code>completed</code> signal has automatically been <i>attached</i> to the Rectangle object by the QML engine, and the engine emits this signal when the object is fully created, thus triggering the <code>Component.onCompleted</code> signal handler.</p>
<p>Attached signal handlers allow objects to be notified of particular signals that are significant to each individual object. If there was no <code>Component.onCompleted</code> attached signal handler, for example, then an object could not receive this notification without registering for some special signal from some special object. The <i>attached signal handler</i> mechanism enables objects to receive particular signals without these extra processes.</p>
<p>See <a href="QtQml.qtqml-syntax-objectattributes.md#attached-properties-and-attached-signal-handlers">Attached properties and attached signal handlers</a> for more information on attached signal handlers.</p>
<h2 id="adding-signals-to-custom-qml-types">Adding Signals to Custom QML Types</h2>
<p>Signals can be added to custom QML types through the <code>signal</code> keyword.</p>
<p>The syntax for defining a new signal is:</p>
<p><code>signal &lt;name&gt;[([&lt;type&gt; &lt;parameter name&gt;[, ..&#x2e;]])]</code></p>
<p>A signal is emitted by invoking the signal as a method.</p>
<p>For example, say the code below is defined in a file named <code>SquareButton.qml</code>. The root Rectangle object has an <code>activated</code> signal. When the child MouseArea is clicked, it emits the parent's <code>activated</code> signal with the coordinates of the mouse click:</p>
<pre class="qml"><span class="comment">// SquareButton.qml</span>
<span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">root</span>
signal <span class="type">activated</span>(real xPosition, real yPosition)
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onPressed</span>: <span class="name">root</span>.<span class="name">activated</span>(<span class="name">mouse</span>.<span class="name">x</span>, <span class="name">mouse</span>.<span class="name">y</span>)
}
}</pre>
<p>Now any objects of the <code>SquareButton</code> can connect to the <code>activated</code> signal using an <code>onActivated</code> signal handler:</p>
<pre class="qml"><span class="comment">// myapplication.qml</span>
<span class="type">SquareButton</span> {
<span class="name">onActivated</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Activated at &quot;</span> <span class="operator">+</span> <span class="name">xPosition</span> <span class="operator">+</span> <span class="string">&quot;,&quot;</span> <span class="operator">+</span> <span class="name">yPosition</span>)
}</pre>
<p>See <a href="QtQml.qtqml-syntax-objectattributes.md#signal-attributes">Signal Attributes</a> for more details on writing signals for custom QML types.</p>
<h2 id="connecting-signals-to-methods-and-signals">Connecting Signals to Methods and Signals</h2>
<p>Signal objects have a <code>connect()</code> method to a connect a signal either to a method or another signal. When a signal is connected to a method, the method is automatically invoked whenever the signal is emitted. This mechanism enables a signal to be received by a method instead of a signal handler.</p>
<p>Below, the <code>messageReceived</code> signal is connected to three methods using the <code>connect()</code> method:</p>
<pre class="qml"><span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">relay</span>
signal <span class="type">messageReceived</span>(string person, string notice)
<span class="name">Component</span>.onCompleted: {
<span class="name">relay</span>.<span class="name">messageReceived</span>.<span class="name">connect</span>(<span class="name">sendToPost</span>)
<span class="name">relay</span>.<span class="name">messageReceived</span>.<span class="name">connect</span>(<span class="name">sendToTelegraph</span>)
<span class="name">relay</span>.<span class="name">messageReceived</span>.<span class="name">connect</span>(<span class="name">sendToEmail</span>)
<span class="name">relay</span>.<span class="name">messageReceived</span>(<span class="string">&quot;Tom&quot;</span>, <span class="string">&quot;Happy Birthday&quot;</span>)
}
<span class="keyword">function</span> <span class="name">sendToPost</span>(<span class="name">person</span>, notice) {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Sending to post: &quot;</span> <span class="operator">+</span> <span class="name">person</span> <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> <span class="name">notice</span>)
}
<span class="keyword">function</span> <span class="name">sendToTelegraph</span>(<span class="name">person</span>, notice) {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Sending to telegraph: &quot;</span> <span class="operator">+</span> <span class="name">person</span> <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> <span class="name">notice</span>)
}
<span class="keyword">function</span> <span class="name">sendToEmail</span>(<span class="name">person</span>, notice) {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Sending to email: &quot;</span> <span class="operator">+</span> <span class="name">person</span> <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> <span class="name">notice</span>)
}
}</pre>
<p>In many cases it is sufficient to receive signals through signal handlers rather than using the connect() function. However, using the <code>connect</code> method allows a signal to be received by multiple methods as shown above, which would not be possible with signal handlers as they must be uniquely named. Also, the <code>connect</code> method is useful when connecting signals to <a href="QtQml.qtqml-javascript-dynamicobjectcreation.md">dynamically created objects</a>.</p>
<p>There is a corresponding <code>disconnect()</code> method for removing connected signals:</p>
<pre class="qml"><span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">relay</span>
<span class="comment">//...</span>
<span class="keyword">function</span> <span class="name">removeTelegraphSignal</span>() {
<span class="name">relay</span>.<span class="name">messageReceived</span>.<span class="name">disconnect</span>(<span class="name">sendToTelegraph</span>)
}
}</pre>
<h4 >Signal to Signal Connect</h4>
<p>By connecting signals to other signals, the <code>connect()</code> method can form different signal chains.</p>
<pre class="qml"><span class="type">Rectangle</span> {
<span class="name">id</span>: <span class="name">forwarder</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
signal <span class="type">send</span>()
<span class="name">onSend</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Send clicked&quot;</span>)
<span class="type">MouseArea</span> {
<span class="name">id</span>: <span class="name">mousearea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;MouseArea clicked&quot;</span>)
}
<span class="name">Component</span>.onCompleted: {
<span class="name">mousearea</span>.<span class="name">clicked</span>.<span class="name">connect</span>(<span class="name">send</span>)
}
}</pre>
<p>Whenever the MouseArea <code>clicked</code> signal is emitted, the <code>send</code> signal will automatically be emitted as well.</p>
<pre class="cpp">output:
MouseArea clicked
Send clicked</pre>
<!-- @@@qtqml-syntax-signals.html -->
