---
Title: QtAudioEngine.PlayVariation
---

# QtAudioEngine.PlayVariation

<span class="subtitle"></span>
<!-- $$$PlayVariation-brief -->
<p>Define a playback variation for sounds. So each time the playback of the same sound can be a slightly different even with the same AudioSample. More...</p>
<!-- @@@PlayVariation -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtAudioEngine 1.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#looping-prop">looping</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#maxGain-prop">maxGain</a></b></b> : real</li>
<li class="fn"><b><b><a href="#maxPitch-prop">maxPitch</a></b></b> : real</li>
<li class="fn"><b><b><a href="#minGain-prop">minGain</a></b></b> : real</li>
<li class="fn"><b><b><a href="#minPitch-prop">minPitch</a></b></b> : real</li>
<li class="fn"><b><b><a href="#sample-prop">sample</a></b></b> : string</li>
</ul>
<!-- $$$PlayVariation-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This type is part of the <b>QtAudioEngine 1.0</b> module.</p>
<p><a href="index.html">PlayVariation</a> must be defined inside a <a href="QtAudioEngine.Sound.md">Sound</a>.</p>
<pre class="qml">import QtQuick 2.0
import QtAudioEngine 1.0
<span class="type">Rectangle</span> {
<span class="name">color</span>:<span class="string">&quot;white&quot;</span>
<span class="name">width</span>: <span class="number">300</span>
<span class="name">height</span>: <span class="number">500</span>
<span class="type"><a href="QtAudioEngine.AudioEngine.md">AudioEngine</a></span> {
<span class="name">id</span>:<span class="name">audioengine</span>
<span class="type"><a href="QtAudioEngine.AudioSample.md">AudioSample</a></span> {
<span class="name">name</span>:<span class="string">&quot;explosion01&quot;</span>
<span class="name">source</span>: <span class="string">&quot;explosion-01.wav&quot;</span>
}
<span class="type"><a href="QtAudioEngine.AudioSample.md">AudioSample</a></span> {
<span class="name">name</span>:<span class="string">&quot;explosion02&quot;</span>
<span class="name">source</span>: <span class="string">&quot;explosion-02.wav&quot;</span>
}
<span class="type"><a href="QtAudioEngine.Sound.md">Sound</a></span> {
<span class="name">name</span>:<span class="string">&quot;explosion&quot;</span>
<span class="type"><a href="index.html">PlayVariation</a></span> {
<span class="name">sample</span>:<span class="string">&quot;explosion01&quot;</span>
<span class="name">minPitch</span>: <span class="number">0.8</span>
<span class="name">maxPitch</span>: <span class="number">1.1</span>
}
<span class="type"><a href="index.html">PlayVariation</a></span> {
<span class="name">sample</span>:<span class="string">&quot;explosion01&quot;</span>
<span class="name">minGain</span>: <span class="number">1.1</span>
<span class="name">maxGain</span>: <span class="number">1.5</span>
}
}
}
}</pre>
<!-- @@@PlayVariation -->
<h2>Property Documentation</h2>
<!-- $$$looping -->
<table class="qmlname"><tr valign="top" id="looping-prop"><td class="tblQmlPropNode"><p><span class="name">looping</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates whether the playback will be looped or not.</p>
<!-- @@@looping -->
<br/>
<!-- $$$maxGain -->
<table class="qmlname"><tr valign="top" id="maxGain-prop"><td class="tblQmlPropNode"><p><span class="name">maxGain</span> : <span class="type">real</span></p></td></tr></table><p>This property specifies the maximum gain adjustment that can be applied in any playback.</p>
<!-- @@@maxGain -->
<br/>
<!-- $$$maxPitch -->
<table class="qmlname"><tr valign="top" id="maxPitch-prop"><td class="tblQmlPropNode"><p><span class="name">maxPitch</span> : <span class="type">real</span></p></td></tr></table><p>This property specifies the maximum pitch adjustment that can be applied in any playback.</p>
<!-- @@@maxPitch -->
<br/>
<!-- $$$minGain -->
<table class="qmlname"><tr valign="top" id="minGain-prop"><td class="tblQmlPropNode"><p><span class="name">minGain</span> : <span class="type">real</span></p></td></tr></table><p>This property specifies the minimum gain adjustment that can be applied in any playback.</p>
<!-- @@@minGain -->
<br/>
<!-- $$$minPitch -->
<table class="qmlname"><tr valign="top" id="minPitch-prop"><td class="tblQmlPropNode"><p><span class="name">minPitch</span> : <span class="type">real</span></p></td></tr></table><p>This property specifies the minimum pitch adjustment that can be applied in any playback.</p>
<!-- @@@minPitch -->
<br/>
<!-- $$$sample -->
<table class="qmlname"><tr valign="top" id="sample-prop"><td class="tblQmlPropNode"><p><span class="name">sample</span> : <span class="type">string</span></p></td></tr></table><p>This property specifies which <a href="QtAudioEngine.AudioSample.md">AudioSample</a> this variation will use.</p>
<!-- @@@sample -->
<br/>
