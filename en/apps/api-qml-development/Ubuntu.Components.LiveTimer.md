---
Title: Ubuntu.Components.LiveTimer
---

# Ubuntu.Components.LiveTimer

<span class="subtitle"></span>
<!-- $$$LiveTimer-brief -->
<p>A live timing source providing peridioc updates. More...</p>
<!-- @@@LiveTimer -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#frequency-prop">frequency</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#relativeTime-prop">relativeTime</a></b></b> : datetime</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#trigger-signal">trigger</a></b></b>()</li>
</ul>
<!-- $$$LiveTimer-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">LiveTimer</a> is a source for periodic signals triggered on second/minute/hour boundaries. The timer can also be set up to provide signals with an increasing frequency the closer a given time is to current time.</p>
<p>Examples:</p>
<pre class="qml">import Ubuntu.Components 1.3
<span class="type"><a href="index.html">LiveTimer</a></span> {
<span class="name">frequency</span>: <span class="name">LiveTimer</span>.<span class="name">Second</span>
<span class="name">onTrigger</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;The time is now&quot;</span>, new <span class="name">Date</span>().<span class="name">toString</span>());
}</pre>
<pre class="qml">import Ubuntu.Components 1.3
<span class="type"><a href="index.html">LiveTimer</a></span> {
<span class="name">frequency</span>: <span class="name">LiveTimer</span>.<span class="name">Relative</span>
<span class="name">relativeTime</span>: new <span class="name">Date</span>()
}</pre>
<!-- @@@LiveTimer -->
<h2>Property Documentation</h2>
<!-- $$$frequency -->
<table class="qmlname"><tr valign="top" id="frequency-prop"><td class="tblQmlPropNode"><p><span class="name">frequency</span> : <span class="type">enumeration</span></p></td></tr></table><p>This properties defines the frequency at which the <a href="index.html">LiveTimer</a> signals notifications.</p>
<ul>
<li><b>LiveTimer.Disabled</b> - disable the <a href="index.html">LiveTimer</a> <a href="#trigger-signal">trigger</a> signal</li>
<li><b>LiveTimer.Second</b> - emit the <a href="#trigger-signal">trigger</a> signal on every change of second.</li>
<li><b>LiveTimer.Minute</b> - emit the <a href="#trigger-signal">trigger</a> signal on every change of minute.</li>
<li><b>LiveTimer.Hour</b> - emit the <a href="#trigger-signal">trigger</a> signal on every change of hour.</li>
<li><b>LiveTimer.Relative</b> - emit the <a href="#trigger-signal">trigger</a> signal periodically depending on how close current time is to to <a href="#relativeTime-prop">relativeTime</a>. If <a href="#relativeTime-prop">relativeTime</a> is within 30 seconds of the current time, trigger every 30 seconds. Within an hour, trigger every minute. Otherwise, trigger every hour until the relative time is more than a week past current time, after which updates are disabled.<p><b>Note: </b>Setting the frequency to <a href="index.html">LiveTimer</a>.Relative will disable the timer until a <a href="#relativeTime-prop">relativeTime</a> is set.</p></li>
</ul>
<p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<!-- @@@frequency -->
<br/>
<!-- $$$relativeTime -->
<table class="qmlname"><tr valign="top" id="relativeTime-prop"><td class="tblQmlPropNode"><p><span class="name">relativeTime</span> : <span class="type">datetime</span></p></td></tr></table><p>This properties defines the value used for proximity evaluation when using Relative mode.</p>
<p><b>Note: </b>This property has no impact unless the <a href="#frequency-prop">frequency</a> is set to <a href="index.html">LiveTimer</a>.Relative</p><p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<!-- @@@relativeTime -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$trigger -->
<table class="qmlname"><tr valign="top" id="trigger-signal"><td class="tblQmlFuncNode"><p><span class="name">trigger</span>()</p></td></tr></table><p>Signal called when the timer is triggered</p>
<!-- @@@trigger -->
<br/>
