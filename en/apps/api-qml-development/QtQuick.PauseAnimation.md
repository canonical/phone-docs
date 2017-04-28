---
Title: QtQuick.PauseAnimation
---

# QtQuick.PauseAnimation

<span class="subtitle"></span>
<!-- $$$PauseAnimation-brief -->
<p>Provides a pause for an animation More...</p>
<!-- @@@PauseAnimation -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Animation.md">Animation</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#duration-prop">duration</a></b></b> : int</li>
</ul>
<!-- $$$PauseAnimation-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>When used in a <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a>, <a href="index.html">PauseAnimation</a> is a step when nothing happens, for a specified duration.</p>
<p>A 500ms animation sequence, with a 100ms pause between two animations:</p>
<pre class="cpp">SequentialAnimation {
NumberAnimation { <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> duration: <span class="number">200</span> }
PauseAnimation { duration: <span class="number">100</span> }
NumberAnimation { <span class="operator">.</span><span class="operator">.</span><span class="operator">.</span> duration: <span class="number">200</span> }
}</pre>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> and <a href="QtQuick.animation.md">Qt Quick Examples - Animation</a>.</p>
<!-- @@@PauseAnimation -->
<h2>Property Documentation</h2>
<!-- $$$duration -->
<table class="qmlname"><tr valign="top" id="duration-prop"><td class="tblQmlPropNode"><p><span class="name">duration</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the duration of the pause in milliseconds</p>
<p>The default value is 250.</p>
<!-- @@@duration -->
<br/>
