---
Title: Ubuntu.Components.UbuntuAnimation
---

# Ubuntu.Components.UbuntuAnimation

<span class="subtitle"></span>
<!-- $$$UbuntuAnimation-brief -->
<p>Singleton defining standard Ubuntu durations and easing for animations that should be used to ensure that Ubuntu applications are consistent in their animations. More...</p>
<!-- @@@UbuntuAnimation -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#BriskDuration-prop">BriskDuration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#FastDuration-prop">FastDuration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#SleepyDuration-prop">SleepyDuration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#SlowDuration-prop">SlowDuration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#SnapDuration-prop">SnapDuration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#StandardEasing-prop">StandardEasing</a></b></b> : QEasingCurve</li>
<li class="fn"><b><b><a href="#StandardEasingReverse-prop">StandardEasingReverse</a></b></b> : QEasingCurve</li>
</ul>
<!-- $$$UbuntuAnimation-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Example of use:</p>
<pre class="qml"><span class="type"><a href="QtQuick.RotationAnimation.md">RotationAnimation</a></span> {
<span class="name">duration</span>: <span class="name">UbuntuAnimation</span>.<span class="name">SlowDuration</span>
<span class="name">easing</span>: <span class="name">UbuntuAnimation</span>.<span class="name">StandardEasing</span>
}</pre>
<p>Animation durations should be selected depending on the frequency and disruptiveness of the animation. The more frequent an animation is, the faster it should be. The more disruptive an animation is, the slower it should be. Rule of thumb to select durations:</p>
<ul>
<li><a href="#SnapDuration-prop">SnapDuration</a>: very frequent, non-disruptive.</li>
<li><a href="#FastDuration-prop">FastDuration</a>: frequent, non-disruptive.</li>
<li><a href="#SlowDuration-prop">SlowDuration</a>: less frequent, non-disruptive.</li>
<li><a href="#SleepyDuration-prop">SleepyDuration</a>: disruptive.</li>
</ul>
<p>Note that <a href="Ubuntu.Components.UbuntuNumberAnimation.md">UbuntuNumberAnimation</a> provides a standard <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> for Ubuntu applications.</p>
<!-- @@@UbuntuAnimation -->
<h2>Property Documentation</h2>
<!-- $$$BriskDuration -->
<table class="qmlname"><tr valign="top" id="BriskDuration-prop"><td class="tblQmlPropNode"><p><span class="name">BriskDuration</span> : <span class="type">int</span></p></td></tr></table><p>Used for frequent and non-disruptive transitions. Used when objects have more distance to travel or when they are larger in size.</p>
<p>The value is 333ms.</p>
<!-- @@@BriskDuration -->
<br/>
<!-- $$$FastDuration -->
<table class="qmlname"><tr valign="top" id="FastDuration-prop"><td class="tblQmlPropNode"><p><span class="name">FastDuration</span> : <span class="type">int</span></p></td></tr></table><p>Used for frequent and non-disruptive transitions.</p>
<p>The value is 165ms.</p>
<!-- @@@FastDuration -->
<br/>
<!-- $$$SleepyDuration -->
<table class="qmlname"><tr valign="top" id="SleepyDuration-prop"><td class="tblQmlPropNode"><p><span class="name">SleepyDuration</span> : <span class="type">int</span></p></td></tr></table><p>Used for disruptive transitions.</p>
<p>The value is 1000ms.</p>
<!-- @@@SleepyDuration -->
<br/>
<!-- $$$SlowDuration -->
<table class="qmlname"><tr valign="top" id="SlowDuration-prop"><td class="tblQmlPropNode"><p><span class="name">SlowDuration</span> : <span class="type">int</span></p></td></tr></table><p>Used for delay after key press and for less frequent and non-disruptive transitions.</p>
<p>The value is 500ms.</p>
<!-- @@@SlowDuration -->
<br/>
<!-- $$$SnapDuration -->
<table class="qmlname"><tr valign="top" id="SnapDuration-prop"><td class="tblQmlPropNode"><p><span class="name">SnapDuration</span> : <span class="type">int</span></p></td></tr></table><p>Used for very frequent and non-disruptive transitions on small objects. The user would perceive the change as instant but smooth.</p>
<p>The value is 100ms.</p>
<!-- @@@SnapDuration -->
<br/>
<!-- $$$StandardEasing -->
<table class="qmlname"><tr valign="top" id="StandardEasing-prop"><td class="tblQmlPropNode"><p><span class="name">StandardEasing</span> : <span class="type">QEasingCurve</span></p></td></tr></table><p>Used for animations trigerred by user actions.</p>
<!-- @@@StandardEasing -->
<br/>
<!-- $$$StandardEasingReverse -->
<table class="qmlname"><tr valign="top" id="StandardEasingReverse-prop"><td class="tblQmlPropNode"><p><span class="name">StandardEasingReverse</span> : <span class="type">QEasingCurve</span></p></td></tr></table><p>StandardEasingReverse is mainly used in combination with <a href="#StandardEasing-prop">StandardEasing</a>. For example, if animating an object that bounces, you will want the object to slow down as it reaches the apex of its bounce and slowly speed back up as it descends.</p>
<p>StandardEasingReverse should not be used to introduce a new object or screen to the user. In general, it should only be used if <a href="#StandardEasing-prop">StandardEasing</a> is visually inappropriate and even so, will usually be proceeded by <a href="#StandardEasing-prop">StandardEasing</a>.</p>
<!-- @@@StandardEasingReverse -->
<br/>
