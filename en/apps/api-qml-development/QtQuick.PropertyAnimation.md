---
Title: QtQuick.PropertyAnimation
---

# QtQuick.PropertyAnimation

<span class="subtitle"></span>
<!-- $$$PropertyAnimation-brief -->
<p>Animates changes in property values More...</p>
<!-- @@@PropertyAnimation -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Animation.md">Animation</a></p>
</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.ColorAnimation.md">ColorAnimation</a>, <a href="QtQuick.NumberAnimation.md">NumberAnimation</a>, <a href="QtQuick.RotationAnimation.md">RotationAnimation</a>, and <a href="QtQuick.Vector3dAnimation.md">Vector3dAnimation</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#duration-prop">duration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#easing-prop">easing</a></b></b><ul>
<li class="fn"><b><b><a href="#easing.type-prop">easing.type</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#easing.amplitude-prop">easing.amplitude</a></b></b> : real</li>
<li class="fn"><b><b><a href="#easing.overshoot-prop">easing.overshoot</a></b></b> : real</li>
<li class="fn"><b><b><a href="#easing.period-prop">easing.period</a></b></b> : real</li>
<li class="fn"><b><b><a href="#easing.bezierCurve-prop">easing.bezierCurve</a></b></b> : list&lt;real&gt;</li>
</ul>
</li>
<li class="fn"><b><b><a href="#exclude-prop">exclude</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#from-prop">from</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#properties-prop">properties</a></b></b> : string</li>
<li class="fn"><b><b><a href="#property-prop">property</a></b></b> : string</li>
<li class="fn"><b><b><a href="#target-prop">target</a></b></b> : Object</li>
<li class="fn"><b><b><a href="#targets-prop">targets</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#to-prop">to</a></b></b> : variant</li>
</ul>
<!-- $$$PropertyAnimation-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#propertyanimation">PropertyAnimation</a> provides a way to animate changes to a property's value.</p>
<p>It can be used to define animations in a number of ways:</p>
<ul>
<li>In a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a><p>For example, to animate any objects that have changed their <code>x</code> or <code>y</code> properties as a result of a state change, using an <code>InOutQuad</code> easing curve:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;moved&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">rect</span>; <span class="name">x</span>: <span class="number">50</span> }
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="type"><a href="index.html">PropertyAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
}
}</pre>
</li>
<li>In a <a href="QtQuick.Behavior.md">Behavior</a><p>For example, to animate all changes to a rectangle's <code>x</code> property:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
Behavior on <span class="name">x</span> { <span class="type"><a href="index.html">PropertyAnimation</a></span> {} }
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">onClicked</span>: <span class="name">parent</span>.<span class="name">x</span> <span class="operator">=</span> <span class="number">50</span> }
}</pre>
</li>
<li>As a property value source<p>For example, to repeatedly animate the rectangle's <code>x</code> property:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
SequentialAnimation on <span class="name">x</span> {
<span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
<span class="type"><a href="index.html">PropertyAnimation</a></span> { <span class="name">to</span>: <span class="number">50</span> }
<span class="type"><a href="index.html">PropertyAnimation</a></span> { <span class="name">to</span>: <span class="number">0</span> }
}
}</pre>
</li>
<li>In a signal handler<p>For example, to fade out <code>theObject</code> when clicked:</p>
<pre class="qml"><span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">theObject</span>
<span class="name">onClicked</span>: <span class="name">PropertyAnimation</span> { <span class="name">target</span>: <span class="name">theObject</span>; <span class="name">property</span>: <span class="string">&quot;opacity&quot;</span>; <span class="name">to</span>: <span class="number">0</span> }
}</pre>
</li>
<li>Standalone<p>For example, to animate <code>rect</code>'s <code>width</code> property over 500ms, from its current width to 30:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="comment">// this is a standalone animation, it's not running by default</span>
<span class="type"><a href="index.html">PropertyAnimation</a></span> { <span class="name">id</span>: <span class="name">animation</span>; <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;width&quot;</span>; <span class="name">to</span>: <span class="number">30</span>; <span class="name">duration</span>: <span class="number">500</span> }
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">anchors</span>.fill: <span class="name">parent</span>; <span class="name">onClicked</span>: <span class="name">animation</span>.<span class="name">running</span> <span class="operator">=</span> <span class="number">true</span> }
}</pre>
</li>
</ul>
<p>Depending on how the animation is used, the set of properties normally used will be different. For more information see the individual property documentation, as well as the <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> introduction.</p>
<p>Note that <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#propertyanimation">PropertyAnimation</a> inherits the abstract <a href="QtQuick.Animation.md">Animation</a> type. This includes additional properties and methods for controlling the animation.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a> and <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/">Qt Quick Examples - Animation</a>.</p>
<!-- @@@PropertyAnimation -->
<h2>Property Documentation</h2>
<!-- $$$duration -->
<table class="qmlname"><tr valign="top" id="duration-prop"><td class="tblQmlPropNode"><p><span class="name">duration</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the duration of the animation, in milliseconds.</p>
<p>The default value is 250.</p>
<!-- @@@duration -->
<br/>
<!-- $$$easing -->
<table class="qmlname"><tr valign="top" id="easing-prop"><th class="centerAlign"><p><b>easing group</b></p></th></tr><tr valign="top" id="easing.type-prop"><td class="tblQmlPropNode"><p><span class="name">easing.type</span> : <span class="type">enumeration</span></p></td></tr><tr valign="top" id="easing.amplitude-prop"><td class="tblQmlPropNode"><p><span class="name">easing.amplitude</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="easing.overshoot-prop"><td class="tblQmlPropNode"><p><span class="name">easing.overshoot</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="easing.period-prop"><td class="tblQmlPropNode"><p><span class="name">easing.period</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="easing.bezierCurve-prop"><td class="tblQmlPropNode"><p><span class="name">easing.bezierCurve</span> : <span class="type">list</span>&lt;<span class="type">real</span>&gt;</p></td></tr></table><p>//! propertyanimation.easing</p>
<p>Specifies the easing curve used for the animation</p>
<p>To specify an easing curve you need to specify at least the type. For some curves you can also specify amplitude, period and/or overshoot (more details provided after the table). The default easing curve is <code>Easing.Linear</code>.</p>
<pre class="qml"><span class="type"><a href="index.html">PropertyAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;y&quot;</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutElastic</span>; <span class="name">easing</span>.amplitude: <span class="number">2.0</span>; <span class="name">easing</span>.period: <span class="number">1.5</span> }</pre>
<p>Available types are:</p>
<table class="generic">
<tr valign="top"><td ><code>Easing.Linear</code></td><td >Easing curve for a linear (t) function: velocity is constant.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/1cfe3062-3954-4b62-8e36-b4819691ff04-../QtQuick.PropertyAnimation/images/qeasingcurve-linear.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InQuad</code></td><td >Easing curve for a quadratic (t^2) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/94c2821e-6829-422a-ae42-796822b9b257-../QtQuick.PropertyAnimation/images/qeasingcurve-inquad.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutQuad</code></td><td >Easing curve for a quadratic (t^2) function: decelerating to zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/f9182675-9671-4bb8-bb6f-769aa1d62165-../QtQuick.PropertyAnimation/images/qeasingcurve-outquad.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutQuad</code></td><td >Easing curve for a quadratic (t^2) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/135a30a4-46d7-4ce2-a3df-43c912fe625d-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutquad.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInQuad</code></td><td >Easing curve for a quadratic (t^2) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/99abe053-4ba1-4b83-bab5-1240900acff2-../QtQuick.PropertyAnimation/images/qeasingcurve-outinquad.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InCubic</code></td><td >Easing curve for a cubic (t^3) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/21a1f1de-e176-4a1f-8b7a-15b7cbea4d97-../QtQuick.PropertyAnimation/images/qeasingcurve-incubic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutCubic</code></td><td >Easing curve for a cubic (t^3) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/bdc8b965-0e63-4846-ae70-2e940e778cf7-../QtQuick.PropertyAnimation/images/qeasingcurve-outcubic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutCubic</code></td><td >Easing curve for a cubic (t^3) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/a158bb0e-0176-4f52-b34d-c2fa1f71e704-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutcubic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInCubic</code></td><td >Easing curve for a cubic (t^3) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/8ed2d9f4-0bb7-43c8-a8cd-7b3f10019346-../QtQuick.PropertyAnimation/images/qeasingcurve-outincubic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InQuart</code></td><td >Easing curve for a quartic (t^4) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/50b48df8-11b9-4c89-903f-e8eb7ce169b3-../QtQuick.PropertyAnimation/images/qeasingcurve-inquart.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutQuart</code></td><td >Easing curve for a quartic (t^4) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/60f6f8eb-55e9-4cfb-8c6e-f6336fdc6ed0-../QtQuick.PropertyAnimation/images/qeasingcurve-outquart.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutQuart</code></td><td >Easing curve for a quartic (t^4) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/66ea6126-4b48-4b3c-a7e3-00ed289a415e-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutquart.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInQuart</code></td><td >Easing curve for a quartic (t^4) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/53dd5860-0d9f-4e6d-8c11-b532c8fb52f3-../QtQuick.PropertyAnimation/images/qeasingcurve-outinquart.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InQuint</code></td><td >Easing curve for a quintic (t^5) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/a7d31fc9-889c-4e1d-8147-14bddedac6a0-../QtQuick.PropertyAnimation/images/qeasingcurve-inquint.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutQuint</code></td><td >Easing curve for a quintic (t^5) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/91f95000-7ce8-4463-8b43-2d37cafda1b0-../QtQuick.PropertyAnimation/images/qeasingcurve-outquint.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutQuint</code></td><td >Easing curve for a quintic (t^5) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/489166f5-292e-4715-8677-caef21bd2949-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutquint.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInQuint</code></td><td >Easing curve for a quintic (t^5) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/2bd603ee-d924-4678-a939-048acd79a993-../QtQuick.PropertyAnimation/images/qeasingcurve-outinquint.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InSine</code></td><td >Easing curve for a sinusoidal (sin(t)) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/b0986a63-2955-42fa-89dc-7d29aad2f5ba-../QtQuick.PropertyAnimation/images/qeasingcurve-insine.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutSine</code></td><td >Easing curve for a sinusoidal (sin(t)) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/8f030709-c892-4ae5-ae12-2b0d9eb60a30-../QtQuick.PropertyAnimation/images/qeasingcurve-outsine.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutSine</code></td><td >Easing curve for a sinusoidal (sin(t)) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/d6cace88-b6c9-45dc-8902-78d7cf41d961-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutsine.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInSine</code></td><td >Easing curve for a sinusoidal (sin(t)) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/04cecc21-5c9c-4508-910d-218eae2fb972-../QtQuick.PropertyAnimation/images/qeasingcurve-outinsine.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InExpo</code></td><td >Easing curve for an exponential (2^t) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/ce855b39-a272-4cce-86a7-7ea5b30258fc-../QtQuick.PropertyAnimation/images/qeasingcurve-inexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutExpo</code></td><td >Easing curve for an exponential (2^t) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/edba4dac-d713-4f13-9666-9aa0057e3d8f-../QtQuick.PropertyAnimation/images/qeasingcurve-outexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutExpo</code></td><td >Easing curve for an exponential (2^t) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/e93227cd-d913-449e-8b56-796fdbe19d46-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInExpo</code></td><td >Easing curve for an exponential (2^t) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/875f8bb6-be12-4741-bc68-6f772ac8227d-../QtQuick.PropertyAnimation/images/qeasingcurve-outinexpo.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InCirc</code></td><td >Easing curve for a circular (sqrt(1-t^2)) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/3fab9298-9a41-434f-a80e-949fd6b81b89-../QtQuick.PropertyAnimation/images/qeasingcurve-incirc.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutCirc</code></td><td >Easing curve for a circular (sqrt(1-t^2)) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/0ae656ee-bdaa-4609-9d15-39358741280a-../QtQuick.PropertyAnimation/images/qeasingcurve-outcirc.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutCirc</code></td><td >Easing curve for a circular (sqrt(1-t^2)) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/7135e63b-7407-486f-ab30-784a0498b1cf-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutcirc.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInCirc</code></td><td >Easing curve for a circular (sqrt(1-t^2)) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/78394a18-a27e-47a4-9223-6e5514094035-../QtQuick.PropertyAnimation/images/qeasingcurve-outincirc.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InElastic</code></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: accelerating from zero velocity. <br />
The peak amplitude can be set with the <i>amplitude</i> parameter, and the period of decay by the <i>period</i> parameter.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/9f984c80-413c-4ead-bde5-7e8556e2ecf4-../QtQuick.PropertyAnimation/images/qeasingcurve-inelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutElastic</code></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: decelerating from zero velocity. <br />
The peak amplitude can be set with the <i>amplitude</i> parameter, and the period of decay by the <i>period</i> parameter.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/a0662e49-9dd9-4627-84ef-a29ca69413d1-../QtQuick.PropertyAnimation/images/qeasingcurve-outelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutElastic</code></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/de6d66fa-6902-47cd-ad8f-bcc843f02b56-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInElastic</code></td><td >Easing curve for an elastic (exponentially decaying sine wave) function: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/0986235a-3e9b-49ea-b957-69608fc353bc-../QtQuick.PropertyAnimation/images/qeasingcurve-outinelastic.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InBack</code></td><td >Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/aef17b42-8dce-4f99-a32b-7355a3f11c07-../QtQuick.PropertyAnimation/images/qeasingcurve-inback.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutBack</code></td><td >Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing out: decelerating to zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/36b67c6b-faba-4ab9-9c4c-4f14221a4d1a-../QtQuick.PropertyAnimation/images/qeasingcurve-outback.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutBack</code></td><td >Easing curve for a back (overshooting cubic function: (s+1)*t^3 - s*t^2) easing in/out: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/2ff33765-a519-40a9-9afe-48e09c7d4fa6-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutback.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInBack</code></td><td >Easing curve for a back (overshooting cubic easing: (s+1)*t^3 - s*t^2) easing out/in: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/438dd2ce-080d-4949-8c24-b3c10c28683c-../QtQuick.PropertyAnimation/images/qeasingcurve-outinback.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InBounce</code></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function: accelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/27a1d51d-cc4d-496c-b1d1-d5c731c4a701-../QtQuick.PropertyAnimation/images/qeasingcurve-inbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutBounce</code></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function: decelerating from zero velocity.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/7227c5ed-2ed9-4e9f-932f-53c218aed9d8-../QtQuick.PropertyAnimation/images/qeasingcurve-outbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.InOutBounce</code></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function easing in/out: acceleration until halfway, then deceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/3fc962bf-5740-4883-8e44-286f62e7b9fc-../QtQuick.PropertyAnimation/images/qeasingcurve-inoutbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.OutInBounce</code></td><td >Easing curve for a bounce (exponentially decaying parabolic bounce) function easing out/in: deceleration until halfway, then acceleration.</td><td ><img src="https://developer.ubuntu.com/static/devportal_uploaded/e7641bd8-6ff7-4d12-895a-0cba8548ac06-../QtQuick.PropertyAnimation/images/qeasingcurve-outinbounce.png" alt="" /></td></tr>
<tr valign="top"><td ><code>Easing.Bezier</code></td><td >Custom easing curve defined by the easing.bezierCurve property.</td><td ></td></tr>
</table>
<p><code>easing.amplitude</code> is only applicable for bounce and elastic curves (curves of type <code>Easing.InBounce</code>, <code>Easing.OutBounce</code>, <code>Easing.InOutBounce</code>, <code>Easing.OutInBounce</code>, <code>Easing.InElastic</code>, <code>Easing.OutElastic</code>, <code>Easing.InOutElastic</code> or <code>Easing.OutInElastic</code>).</p>
<p><code>easing.overshoot</code> is only applicable if <code>easing.type</code> is: <code>Easing.InBack</code>, <code>Easing.OutBack</code>, <code>Easing.InOutBack</code> or <code>Easing.OutInBack</code>.</p>
<p><code>easing.period</code> is only applicable if easing.type is: <code>Easing.InElastic</code>, <code>Easing.OutElastic</code>, <code>Easing.InOutElastic</code> or <code>Easing.OutInElastic</code>.</p>
<p><code>easing.bezierCurve</code> is only applicable if easing.type is: <code>Easing.Bezier</code>. This property is a list&lt;real&gt; containing groups of three points defining a curve from 0,0 to 1,1 - control1, control2, end point: [cx1, cy1, cx2, cy2, endx, endy, ..&#x2e;]&#x2e; The last point must be 1,1.</p>
<p>See the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#easing-curves">Easing Curves</a> for a demonstration of the different easing settings. //! propertyanimation.easing</p>
<!-- @@@easing -->
<br/>
<!-- $$$exclude -->
<table class="qmlname"><tr valign="top" id="exclude-prop"><td class="tblQmlPropNode"><p><span class="name">exclude</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>This property holds the items not to be affected by this animation.</p>
<p><b>See also </b><a href="#targets-prop">PropertyAnimation::targets</a>.</p>
<!-- @@@exclude -->
<br/>
<!-- $$$from -->
<table class="qmlname"><tr valign="top" id="from-prop"><td class="tblQmlPropNode"><p><span class="name">from</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the starting value for the animation.</p>
<p>If the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#propertyanimation">PropertyAnimation</a> is defined within a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> or <a href="QtQuick.Behavior.md">Behavior</a>, this value defaults to the value defined in the starting state of the <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a>, or the current value of the property at the moment the <a href="QtQuick.Behavior.md">Behavior</a> is triggered.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@from -->
<br/>
<!-- $$$properties -->
<table class="qmlname"><tr valign="top" id="properties-prop"><td class="tblQmlPropNode"><p><span class="name">properties</span> : <span class="type">string</span></p></td></tr></table><p>These properties are used as a set to determine which properties should be animated. The singular and plural forms are functionally identical, e.g&#x2e;</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theItem</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>has the same meaning as</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: <span class="name">theItem</span>; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>The singular forms are slightly optimized, so if you do have only a single target/property to animate you should try to use them.</p>
<p>The <code>targets</code> property allows multiple targets to be set. For example, this animates the <code>x</code> property of both <code>itemA</code> and <code>itemB</code>:</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: [<span class="name">itemA</span>, <span class="name">itemB</span>]; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>In many cases these properties do not need to be explicitly specified, as they can be inferred from the animation framework:</p>
<table class="generic" width="80%">
<tr valign="top"><td >Value Source / Behavior</td><td >When an animation is used as a value source or in a Behavior, the default target and property name to be animated can both be inferred.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
NumberAnimation on <span class="name">x</span> { <span class="name">to</span>: <span class="number">500</span>; <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span> } <span class="comment">//animate theRect's x property</span>
Behavior on <span class="name">y</span> { <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {} } <span class="comment">//animate theRect's y property</span>
}</pre>
</td></tr>
<tr valign="top"><td >Transition</td><td >When used in a transition, a property animation is assumed to match <i>all</i> targets but <i>no</i> properties. In practice, that means you need to specify at least the properties in order for the animation to do anything.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
<span class="type"><a href="QtQuick.Item.md">Item</a></span> { <span class="name">id</span>: <span class="name">uselessItem</span> }
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;state1&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">x</span>: <span class="number">200</span>; <span class="name">y</span>: <span class="number">200</span>; <span class="name">z</span>: <span class="number">4</span> }
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">uselessItem</span>; <span class="name">x</span>: <span class="number">10</span>; <span class="name">y</span>: <span class="number">10</span>; <span class="name">z</span>: <span class="number">2</span> }
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="comment">//animate both theRect's and uselessItem's x and y to their final values</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span> }
<span class="comment">//animate theRect's z to its final value</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;z&quot;</span> }
}
}</pre>
</td></tr>
<tr valign="top"><td >Standalone</td><td >When an animation is used standalone, both the target and property need to be explicitly specified.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
<span class="comment">//need to explicitly specify target and property</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">id</span>: <span class="name">theAnim</span>; <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">theAnim</span>.<span class="name">start</span>()
}
}</pre>
</td></tr>
</table>
<p>As seen in the above example, properties is specified as a comma-separated string of property names to animate.</p>
<p><b>See also </b><a href="#exclude-prop">exclude</a> and <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@properties -->
<br/>
<!-- $$$property -->
<table class="qmlname"><tr valign="top" id="property-prop"><td class="tblQmlPropNode"><p><span class="name">property</span> : <span class="type">string</span></p></td></tr></table><p>These properties are used as a set to determine which properties should be animated. The singular and plural forms are functionally identical, e.g&#x2e;</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theItem</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>has the same meaning as</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: <span class="name">theItem</span>; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>The singular forms are slightly optimized, so if you do have only a single target/property to animate you should try to use them.</p>
<p>The <code>targets</code> property allows multiple targets to be set. For example, this animates the <code>x</code> property of both <code>itemA</code> and <code>itemB</code>:</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: [<span class="name">itemA</span>, <span class="name">itemB</span>]; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>In many cases these properties do not need to be explicitly specified, as they can be inferred from the animation framework:</p>
<table class="generic" width="80%">
<tr valign="top"><td >Value Source / Behavior</td><td >When an animation is used as a value source or in a Behavior, the default target and property name to be animated can both be inferred.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
NumberAnimation on <span class="name">x</span> { <span class="name">to</span>: <span class="number">500</span>; <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span> } <span class="comment">//animate theRect's x property</span>
Behavior on <span class="name">y</span> { <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {} } <span class="comment">//animate theRect's y property</span>
}</pre>
</td></tr>
<tr valign="top"><td >Transition</td><td >When used in a transition, a property animation is assumed to match <i>all</i> targets but <i>no</i> properties. In practice, that means you need to specify at least the properties in order for the animation to do anything.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
<span class="type"><a href="QtQuick.Item.md">Item</a></span> { <span class="name">id</span>: <span class="name">uselessItem</span> }
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;state1&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">x</span>: <span class="number">200</span>; <span class="name">y</span>: <span class="number">200</span>; <span class="name">z</span>: <span class="number">4</span> }
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">uselessItem</span>; <span class="name">x</span>: <span class="number">10</span>; <span class="name">y</span>: <span class="number">10</span>; <span class="name">z</span>: <span class="number">2</span> }
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="comment">//animate both theRect's and uselessItem's x and y to their final values</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span> }
<span class="comment">//animate theRect's z to its final value</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;z&quot;</span> }
}
}</pre>
</td></tr>
<tr valign="top"><td >Standalone</td><td >When an animation is used standalone, both the target and property need to be explicitly specified.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
<span class="comment">//need to explicitly specify target and property</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">id</span>: <span class="name">theAnim</span>; <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">theAnim</span>.<span class="name">start</span>()
}
}</pre>
</td></tr>
</table>
<p>As seen in the above example, properties is specified as a comma-separated string of property names to animate.</p>
<p><b>See also </b><a href="#exclude-prop">exclude</a> and <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@property -->
<br/>
<!-- $$$target -->
<table class="qmlname"><tr valign="top" id="target-prop"><td class="tblQmlPropNode"><p><span class="name">target</span> : <span class="type">Object</span></p></td></tr></table><p>These properties are used as a set to determine which properties should be animated. The singular and plural forms are functionally identical, e.g&#x2e;</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theItem</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>has the same meaning as</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: <span class="name">theItem</span>; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>The singular forms are slightly optimized, so if you do have only a single target/property to animate you should try to use them.</p>
<p>The <code>targets</code> property allows multiple targets to be set. For example, this animates the <code>x</code> property of both <code>itemA</code> and <code>itemB</code>:</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: [<span class="name">itemA</span>, <span class="name">itemB</span>]; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>In many cases these properties do not need to be explicitly specified, as they can be inferred from the animation framework:</p>
<table class="generic" width="80%">
<tr valign="top"><td >Value Source / Behavior</td><td >When an animation is used as a value source or in a Behavior, the default target and property name to be animated can both be inferred.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
NumberAnimation on <span class="name">x</span> { <span class="name">to</span>: <span class="number">500</span>; <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span> } <span class="comment">//animate theRect's x property</span>
Behavior on <span class="name">y</span> { <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {} } <span class="comment">//animate theRect's y property</span>
}</pre>
</td></tr>
<tr valign="top"><td >Transition</td><td >When used in a transition, a property animation is assumed to match <i>all</i> targets but <i>no</i> properties. In practice, that means you need to specify at least the properties in order for the animation to do anything.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
<span class="type"><a href="QtQuick.Item.md">Item</a></span> { <span class="name">id</span>: <span class="name">uselessItem</span> }
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;state1&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">x</span>: <span class="number">200</span>; <span class="name">y</span>: <span class="number">200</span>; <span class="name">z</span>: <span class="number">4</span> }
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">uselessItem</span>; <span class="name">x</span>: <span class="number">10</span>; <span class="name">y</span>: <span class="number">10</span>; <span class="name">z</span>: <span class="number">2</span> }
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="comment">//animate both theRect's and uselessItem's x and y to their final values</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span> }
<span class="comment">//animate theRect's z to its final value</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;z&quot;</span> }
}
}</pre>
</td></tr>
<tr valign="top"><td >Standalone</td><td >When an animation is used standalone, both the target and property need to be explicitly specified.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
<span class="comment">//need to explicitly specify target and property</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">id</span>: <span class="name">theAnim</span>; <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">theAnim</span>.<span class="name">start</span>()
}
}</pre>
</td></tr>
</table>
<p>As seen in the above example, properties is specified as a comma-separated string of property names to animate.</p>
<p><b>See also </b><a href="#exclude-prop">exclude</a> and <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@target -->
<br/>
<!-- $$$targets -->
<table class="qmlname"><tr valign="top" id="targets-prop"><td class="tblQmlPropNode"><p><span class="name">targets</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>These properties are used as a set to determine which properties should be animated. The singular and plural forms are functionally identical, e.g&#x2e;</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theItem</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>has the same meaning as</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: <span class="name">theItem</span>; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>The singular forms are slightly optimized, so if you do have only a single target/property to animate you should try to use them.</p>
<p>The <code>targets</code> property allows multiple targets to be set. For example, this animates the <code>x</code> property of both <code>itemA</code> and <code>itemB</code>:</p>
<pre class="qml"><span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">targets</span>: [<span class="name">itemA</span>, <span class="name">itemB</span>]; <span class="name">properties</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }</pre>
<p>In many cases these properties do not need to be explicitly specified, as they can be inferred from the animation framework:</p>
<table class="generic" width="80%">
<tr valign="top"><td >Value Source / Behavior</td><td >When an animation is used as a value source or in a Behavior, the default target and property name to be animated can both be inferred.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
NumberAnimation on <span class="name">x</span> { <span class="name">to</span>: <span class="number">500</span>; <span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span> } <span class="comment">//animate theRect's x property</span>
Behavior on <span class="name">y</span> { <span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> {} } <span class="comment">//animate theRect's y property</span>
}</pre>
</td></tr>
<tr valign="top"><td >Transition</td><td >When used in a transition, a property animation is assumed to match <i>all</i> targets but <i>no</i> properties. In practice, that means you need to specify at least the properties in order for the animation to do anything.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
<span class="type"><a href="QtQuick.Item.md">Item</a></span> { <span class="name">id</span>: <span class="name">uselessItem</span> }
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;state1&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">x</span>: <span class="number">200</span>; <span class="name">y</span>: <span class="number">200</span>; <span class="name">z</span>: <span class="number">4</span> }
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">uselessItem</span>; <span class="name">x</span>: <span class="number">10</span>; <span class="name">y</span>: <span class="number">10</span>; <span class="name">z</span>: <span class="number">2</span> }
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="comment">//animate both theRect's and uselessItem's x and y to their final values</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;x,y&quot;</span> }
<span class="comment">//animate theRect's z to its final value</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;z&quot;</span> }
}
}</pre>
</td></tr>
<tr valign="top"><td >Standalone</td><td >When an animation is used standalone, both the target and property need to be explicitly specified.<pre class="qml">   <span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">theRect</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">rgba</span>(<span class="number">0</span>,<span class="number">0</span>,<span class="number">1</span>)
<span class="comment">//need to explicitly specify target and property</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">id</span>: <span class="name">theAnim</span>; <span class="name">target</span>: <span class="name">theRect</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">to</span>: <span class="number">500</span> }
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">theAnim</span>.<span class="name">start</span>()
}
}</pre>
</td></tr>
</table>
<p>As seen in the above example, properties is specified as a comma-separated string of property names to animate.</p>
<p><b>See also </b><a href="#exclude-prop">exclude</a> and <a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@targets -->
<br/>
<!-- $$$to -->
<table class="qmlname"><tr valign="top" id="to-prop"><td class="tblQmlPropNode"><p><span class="name">to</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the end value for the animation.</p>
<p>If the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.animation/#propertyanimation">PropertyAnimation</a> is defined within a <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a> or <a href="QtQuick.Behavior.md">Behavior</a>, this value defaults to the value defined in the end state of the <a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a>, or the value of the property change that triggered the <a href="QtQuick.Behavior.md">Behavior</a>.</p>
<p><b>See also </b><a href="QtQuick.qtquick-statesanimations-animations.md">Animation and Transitions in Qt Quick</a>.</p>
<!-- @@@to -->
<br/>
