---
Title: Ubuntu.Components.Haptics
---

# Ubuntu.Components.Haptics

<span class="subtitle"></span>
<!-- $$$Haptics-brief -->
<p>Singleton defining the haptics feedback used in components, where execution of the feedback is controlled by the system settings. More...</p>
<!-- @@@Haptics -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#effect-prop">effect</a></b></b> : HapticsEffect</li>
<li class="fn"><b><b><a href="#enabled-prop">enabled</a></b></b> : bool</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">void <b><b><a href="#play-method">play</a></b></b>(var <i>customEffect</i>)</li>
</ul>
<!-- $$$Haptics-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Supports global feedback as well as custom feedback. Global feedback can be configured through its properties, and <a href="#play-method">play</a> function will play the default configuration, or a custom one if parameter is given.</p>
<p>Example of using Haptics:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">implicitWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
<span class="name">implicitHeight</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;Press me&quot;</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">horizontalAlignment</span>: <span class="name">Text</span>.<span class="name">AlignHCenter</span>
<span class="name">verticalAlignment</span>: <span class="name">Text</span>.<span class="name">AlignVCenter</span>
}
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">Haptics</span>.<span class="name">play</span>()
}
}</pre>
<p>Custom effects can be played as follows:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">implicitWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
<span class="name">implicitHeight</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;Press me&quot;</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">horizontalAlignment</span>: <span class="name">Text</span>.<span class="name">AlignHCenter</span>
<span class="name">verticalAlignment</span>: <span class="name">Text</span>.<span class="name">AlignVCenter</span>
}
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">Haptics</span>.<span class="name">play</span>({duration: <span class="number">25</span>, attackIntensity: <span class="number">0.7</span>})
}
}</pre>
<p><b>Note: </b>Though the <a href="#effect-prop">effect</a> property exposes <code>start</code>, <code>stop</code> and <code>pause</code> functions, use those only if you want to have feedback independent from what the system setting is.</p><!-- @@@Haptics -->
<h2>Property Documentation</h2>
<!-- $$$effect -->
<table class="qmlname"><tr valign="top" id="effect-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">effect</span> : <span class="type">HapticsEffect</span></p></td></tr></table><p>The property defines the settings of the haptics effect used by the component. The default setting is a haptics effect with a duration of 10 milliseconds with an intensity of 1.0, having fading time of 50 millisecods and fading intensity 0.0, and attack time of 50 milliseconds and with an intensity of 0.0&#x2e;</p>
<!-- @@@effect -->
<br/>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>The property specifies whether the haptics feedback is enabled or not by the system.</p>
<!-- @@@enabled -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$play -->
<table class="qmlname"><tr valign="top" id="play-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">play</span>(<span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span><i> customEffect</i>)</p></td></tr></table><p>The function plays the feedback with the configuration specified in <a href="#effect-prop">effect</a> if no parameter is given. Custom effect can be played by specifying the effect properties in a JSON object in <code>customEffect</code>.</p>
<p>The function will exit unconditionaly if playing the effects is blocked by system settings.</p>
<p>The function will not stop any ongoing haptics effect played, if that one was a default haptics effect. In case of custom effects, the previous effect will be stopped, and settings will be restored before the new haptics will be played. The custom settings properties (the ones which are required to be different from the ones defined in the <a href="#effect-prop">effect</a>) must be specified in the parameter in a JSON object.</p>
<!-- @@@play -->
<br/>
