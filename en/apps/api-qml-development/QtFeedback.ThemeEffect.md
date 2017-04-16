---
Title: QtFeedback.ThemeEffect
---

# QtFeedback.ThemeEffect

<span class="subtitle"></span>
<!-- $$$ThemeEffect-brief -->
<p>The ThemeEffect element represents a themed feedback effect. More...</p>
<!-- @@@ThemeEffect -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import  .</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtFeedback.themeeffect.md#effect-prop">effect</a></b></b> : ThemeEffect</li>
<li class="fn"><b><b><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtFeedback.themeeffect.md#supported-prop">supported</a></b></b> : bool</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtFeedback.themeeffect.md#play-method-2">play</a></b></b>(Effect)</li>
<li class="fn"><b><b><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtFeedback.themeeffect.md#play-method">play</a></b></b>()</li>
</ul>
<!-- $$$ThemeEffect-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This element is used for playing feedback effects that follow the system theme. The actual feedback might be haptic, audio or some other method.</p>
<pre class="qml">//Example 1: using ThemeEffect declaring element
import QtFeedback 5.0
Rectangle {
width: 180; height: 20
radius:5
color: &quot;lightgrey&quot;
Text {
anchors.centerIn: parent
text: &quot;Play Theme: Press&quot;
}
ThemeEffect {
id: myOtherThemeEffect
effect: &quot;Press&quot;
}
MouseArea {
anchors.fill: parent
onClicked: {
myOtherThemeEffect.play();
}
}
}
//Example 2: using ThemeEffect without declaring element
import QtFeedback.ThemeEffect 5.0 as Effect
Rectangle {
width: 180; height: 20
radius:5
color: &quot;lightgrey&quot;
Text {
anchors.centerIn: parent
text: &quot;Play Theme: Press&quot;
}
MouseArea {
anchors.fill: parent
onClicked: {
Effect.effect = &quot;Press&quot;
Effect.play();
}
}
}
//Example 3: using ThemeEffect without declaring element and calling overloaded play function
import QtFeedback.ThemeEffect 5.0 as Effect
Rectangle {
width: 180; height: 20
radius:5
color: &quot;lightgrey&quot;
Text {
anchors.centerIn: parent
text: &quot;Play Theme: Press&quot;
}
MouseArea {
anchors.fill: parent
onClicked: {
Effect.play(Effect.Press)
}
}
}</pre>
<!-- @@@ThemeEffect -->
<h2>Property Documentation</h2>
<!-- $$$effect -->
<table class="qmlname"><tr valign="top" id="effect-prop"><td class="tblQmlPropNode"><p><span class="name">effect</span> : <span class="type"><a href="https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtFeedback.themeeffect.md">ThemeEffect</a></span></p></td></tr></table><p>This property holds the specific themed effect type to play. It is one of:</p>
<p>Effect.Undefined - Undefined feedback. No feedback is given.</p>
<p>Effect.Press - Feedback for when the screen is pressed.</p>
<p>Effect.Release - Feedback for touch release.</p>
<p>Effect.PressWeak - A weak feedback for press.</p>
<p>Effect.ReleaseWeak - A weak feedback for release.</p>
<p>Effect.PressStrong - A strong feedback for press.</p>
<p>Effect.ReleaseStrong - A strong feedback for release.</p>
<p>Effect.DragStart - Feedback for when dragging starts.</p>
<p>Effect.DragDropInZone - Feedback for when dragging ends and touch is released inside a drop zone.</p>
<p>Effect.DragDropOutOfZone - Feedback for when dragging ends and touch is released outside a drop zone.</p>
<p>Effect.DragCrossBoundary - Feedback for when crossing a boundary while dragging.</p>
<p>Effect.Appear - Feedback for when an item is shown.</p>
<p>Effect.Disappear - Feedback for when an item item is closed.</p>
<p>Effect.Move - Feedback for dragging on screen.</p>
<p><b>See also </b>QFeedbackEffect::Effect.</p>
<!-- @@@effect -->
<br/>
<!-- $$$supported -->
<table class="qmlname"><tr valign="top" id="supported-prop"><td class="tblQmlPropNode"><p><span class="name">supported</span> : <span class="type">bool</span></p></td></tr></table><p>This property is true if the system supports themed feedback effects.</p>
<!-- @@@supported -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$play -->
<table class="qmlname"><tr valign="top" id="play-method-2"><td class="tblQmlFuncNode"><p><span class="name">play</span>(<span class="type">Effect</span>)</p></td></tr></table><p>Call this to play the themed effect passed as parameter.</p>
<!-- @@@play -->
<br/>
<!-- $$$play -->
<table class="qmlname"><tr valign="top" id="play-method"><td class="tblQmlFuncNode"><p><span class="name">play</span>()</p></td></tr></table><p>Call this to play the themed effect.</p>
<!-- @@@play -->
