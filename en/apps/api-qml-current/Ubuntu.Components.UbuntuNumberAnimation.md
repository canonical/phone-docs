---
Title: Ubuntu.Components.UbuntuNumberAnimation
---

# Ubuntu.Components.UbuntuNumberAnimation

<span class="subtitle"></span>
<!-- $$$UbuntuNumberAnimation-brief -->
<p>UbuntuNumberAnimation is a NumberAnimation that has predefined settings to ensure that Ubuntu applications are consistent in their animations. More...</p>
<!-- @@@UbuntuNumberAnimation -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></p>
</td></tr></table><ul>
</ul>
<!-- $$$UbuntuNumberAnimation-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Example of use:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">UbuntuColors</span>.<span class="name">orange</span>
UbuntuNumberAnimation on <span class="name">x</span> { <span class="name">to</span>: <span class="number">50</span> }
}</pre>
<p><a href="index.html">UbuntuNumberAnimation</a> is predefined with the following settings:</p>
<ul>
<li><i>duration</i>: <a href="Ubuntu.Components.UbuntuAnimation.md#FastDuration-prop">UbuntuAnimation.FastDuration</a></li>
<li><i>easing</i>: <a href="Ubuntu.Components.UbuntuAnimation.md#StandardEasing-prop">UbuntuAnimation.StandardEasing</a></li>
</ul>
<p>If the standard duration and easing used by <a href="index.html">UbuntuNumberAnimation</a> do not satisfy a use case or you need to use a different type of Animation (e.g&#x2e; <a href="QtQuick.qtquick-animation-example.md#coloranimation">ColorAnimation</a>), use standard durations and easing defined in <a href="Ubuntu.Components.UbuntuAnimation.md">UbuntuAnimation</a> manually in order to ensure consistency.</p>
<!-- @@@UbuntuNumberAnimation -->
