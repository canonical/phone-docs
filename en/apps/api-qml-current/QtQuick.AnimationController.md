---
Title: QtQuick.AnimationController
---

# QtQuick.AnimationController

<span class="subtitle"></span>
<!-- $$$AnimationController-brief -->
<p>Enables manual control of animations More...</p>
<!-- @@@AnimationController -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#animation-prop">animation</a></b></b> : Animation</li>
<li class="fn"><b><b><a href="#progress-prop">progress</a></b></b> : real</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#completeToBeginning-method">completeToBeginning</a></b></b>()</li>
<li class="fn"><b><b><a href="#completeToEnd-method">completeToEnd</a></b></b>()</li>
<li class="fn"><b><b><a href="#reload-method">reload</a></b></b>()</li>
</ul>
<!-- $$$AnimationController-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Normally animations are driven by an internal timer, but the <a href="index.html">AnimationController</a> allows the given <i>animation</i> to be driven by a <i>progress</i> value explicitly.</p>
<!-- @@@AnimationController -->
<h2>Property Documentation</h2>
<!-- $$$animation -->
<table class="qmlname"><tr valign="top" id="animation-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">animation</span> : <span class="type"><a href="QtQuick.Animation.md">Animation</a></span></p></td></tr></table><p>This property holds the animation to be controlled by the <a href="index.html">AnimationController</a>.</p>
<p>Note:An animation controlled by <a href="index.html">AnimationController</a> will always have its <code>running</code> and <code>paused</code> properties set to true. It can not be manually started or stopped (much like an animation in a Behavior can not be manually started or stopped).</p>
<!-- @@@animation -->
<br/>
<!-- $$$progress -->
<table class="qmlname"><tr valign="top" id="progress-prop"><td class="tblQmlPropNode"><p><span class="name">progress</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the animation progress value.</p>
<p>The valid <code>progress</code> value is 0.0 to 1.0, setting values less than 0 will be converted to 0, setting values great than 1 will be converted to 1.</p>
<!-- @@@progress -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$completeToBeginning -->
<table class="qmlname"><tr valign="top" id="completeToBeginning-method"><td class="tblQmlFuncNode"><p><span class="name">completeToBeginning</span>()</p></td></tr></table><p>Finishes running the controlled animation in a backwards direction.</p>
<p>After calling this method, the animation runs normally from the current progress point in a backwards direction to the beginning state.</p>
<p>The animation controller's progress value will be automatically updated while the animation is running.</p>
<p><b>See also </b><a href="#completeToEnd-method">completeToEnd()</a> and <a href="#progress-prop">progress</a>.</p>
<!-- @@@completeToBeginning -->
<br/>
<!-- $$$completeToEnd -->
<table class="qmlname"><tr valign="top" id="completeToEnd-method"><td class="tblQmlFuncNode"><p><span class="name">completeToEnd</span>()</p></td></tr></table><p>Finishes running the controlled animation in a forwards direction.</p>
<p>After calling this method, the animation runs normally from the current progress point in a forwards direction to the end state.</p>
<p>The animation controller's progress value will be automatically updated while the animation is running.</p>
<p><b>See also </b><a href="#completeToBeginning-method">completeToBeginning()</a> and <a href="#progress-prop">progress</a>.</p>
<!-- @@@completeToEnd -->
<br/>
<!-- $$$reload -->
<table class="qmlname"><tr valign="top" id="reload-method"><td class="tblQmlFuncNode"><p><span class="name">reload</span>()</p></td></tr></table><p>Reloads the animation properties</p>
<p>If the animation properties changed, calling this method to reload the animation definations.</p>
<!-- @@@reload -->
<br/>
