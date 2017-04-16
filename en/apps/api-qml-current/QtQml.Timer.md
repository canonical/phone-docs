---
Title: QtQml.Timer
---

# QtQml.Timer

<span class="subtitle"></span>
<!-- $$$Timer-brief -->
<p>Triggers a handler at a specified interval More...</p>
<!-- @@@Timer -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml 2.2</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#interval-prop">interval</a></b></b> : int</li>
<li class="fn"><b><b><a href="#repeat-prop">repeat</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#running-prop">running</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#triggeredOnStart-prop">triggeredOnStart</a></b></b> : bool</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#triggered-signal">triggered</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#restart-method">restart</a></b></b>()</li>
<li class="fn"><b><b><a href="#start-method">start</a></b></b>()</li>
<li class="fn"><b><b><a href="#stop-method">stop</a></b></b>()</li>
</ul>
<!-- $$$Timer-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A Timer can be used to trigger an action either once, or repeatedly at a given interval.</p>
<p>Here is a Timer that shows the current date and time, and updates the text every 500 milliseconds. It uses the JavaScript <code>Date</code> object to access the current time.</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Item</span> {
<span class="type"><a href="index.html">Timer</a></span> {
<span class="name">interval</span>: <span class="number">500</span>; <span class="name">running</span>: <span class="number">true</span>; <span class="name">repeat</span>: <span class="number">true</span>
<span class="name">onTriggered</span>: <span class="name">time</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">Date</span>().<span class="name">toString</span>()
}
<span class="type">Text</span> { <span class="name">id</span>: <span class="name">time</span> }
}</pre>
<p>The Timer type is synchronized with the animation timer. Since the animation timer is usually set to 60fps, the resolution of Timer will be at best 16ms.</p>
<p>If the Timer is running and one of its properties is changed, the elapsed time will be reset. For example, if a Timer with interval of 1000ms has its <i>repeat</i> property changed 500ms after starting, the elapsed time will be reset to 0, and the Timer will be triggered 1000ms later.</p>
<p><b>See also </b>Qt Quick Demo - Clocks.</p>
<!-- @@@Timer -->
<h2>Property Documentation</h2>
<!-- $$$interval -->
<table class="qmlname"><tr valign="top" id="interval-prop"><td class="tblQmlPropNode"><p><span class="name">interval</span> : <span class="type">int</span></p></td></tr></table><p>Sets the <i>interval</i> between triggers, in milliseconds.</p>
<p>The default interval is 1000 milliseconds.</p>
<!-- @@@interval -->
<br/>
<!-- $$$repeat -->
<table class="qmlname"><tr valign="top" id="repeat-prop"><td class="tblQmlPropNode"><p><span class="name">repeat</span> : <span class="type">bool</span></p></td></tr></table><p>If <i>repeat</i> is true the timer is triggered repeatedly at the specified interval; otherwise, the timer will trigger once at the specified interval and then stop (i.e&#x2e; running will be set to false).</p>
<p><i>repeat</i> defaults to false.</p>
<p><b>See also </b><a href="#running-prop">running</a>.</p>
<!-- @@@repeat -->
<br/>
<!-- $$$running -->
<table class="qmlname"><tr valign="top" id="running-prop"><td class="tblQmlPropNode"><p><span class="name">running</span> : <span class="type">bool</span></p></td></tr></table><p>If set to true, starts the timer; otherwise stops the timer. For a non-repeating timer, <i>running</i> is set to false after the timer has been triggered.</p>
<p><i>running</i> defaults to false.</p>
<p><b>See also </b><a href="#repeat-prop">repeat</a>.</p>
<!-- @@@running -->
<br/>
<!-- $$$triggeredOnStart -->
<table class="qmlname"><tr valign="top" id="triggeredOnStart-prop"><td class="tblQmlPropNode"><p><span class="name">triggeredOnStart</span> : <span class="type">bool</span></p></td></tr></table><p>When a timer is started, the first trigger is usually after the specified interval has elapsed. It is sometimes desirable to trigger immediately when the timer is started; for example, to establish an initial state.</p>
<p>If <i>triggeredOnStart</i> is true, the timer is triggered immediately when started, and subsequently at the specified interval. Note that if <i>repeat</i> is set to false, the timer is triggered twice; once on start, and again at the interval.</p>
<p><i>triggeredOnStart</i> defaults to false.</p>
<p><b>See also </b><a href="#running-prop">running</a>.</p>
<!-- @@@triggeredOnStart -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$triggered -->
<table class="qmlname"><tr valign="top" id="triggered-signal"><td class="tblQmlFuncNode"><p><span class="name">triggered</span>()</p></td></tr></table><p>This signal is emitted when the Timer times out.</p>
<p>The corresponding handler is <code>onTriggered</code>.</p>
<!-- @@@triggered -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$restart -->
<table class="qmlname"><tr valign="top" id="restart-method"><td class="tblQmlFuncNode"><p><span class="name">restart</span>()</p></td></tr></table><p>Restarts the timer</p>
<p>If the Timer is not running it will be started, otherwise it will be stopped, reset to initial state and started. The <code>running</code> property will be true following a call to <code>restart()</code>.</p>
<!-- @@@restart -->
<br/>
<!-- $$$start -->
<table class="qmlname"><tr valign="top" id="start-method"><td class="tblQmlFuncNode"><p><span class="name">start</span>()</p></td></tr></table><p>Starts the timer</p>
<p>If the timer is already running, calling this method has no effect. The <code>running</code> property will be true following a call to <code>start()</code>.</p>
<!-- @@@start -->
<br/>
<!-- $$$stop -->
<table class="qmlname"><tr valign="top" id="stop-method"><td class="tblQmlFuncNode"><p><span class="name">stop</span>()</p></td></tr></table><p>Stops the timer</p>
<p>If the timer is not running, calling this method has no effect. The <code>running</code> property will be false following a call to <code>stop()</code>.</p>
<!-- @@@stop -->
<br/>
