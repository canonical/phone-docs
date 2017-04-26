---
Title: QtAudioEngine.AttenuationModelLinear
---

# QtAudioEngine.AttenuationModelLinear

<span class="subtitle"></span>
<!-- $$$AttenuationModelLinear-brief -->
<p>Defines a linear attenuation curve for a Sound. More...</p>
<!-- @@@AttenuationModelLinear -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtAudioEngine 1.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#end-prop">end</a></b></b> : real</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#start-prop">start</a></b></b> : real</li>
</ul>
<!-- $$$AttenuationModelLinear-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This type is part of the <b>QtAudioEngine 1.0</b> module.</p>
<p><a href="index.html">AttenuationModelLinear</a> must be defined inside <a href="QtAudioEngine.AudioEngine.md">AudioEngine</a>.</p>
<pre class="qml">import QtQuick 2.0
import QtAudioEngine 1.0
<span class="type">Rectangle</span> {
<span class="name">color</span>:<span class="string">&quot;white&quot;</span>
<span class="name">width</span>: <span class="number">300</span>
<span class="name">height</span>: <span class="number">500</span>
<span class="type"><a href="QtAudioEngine.AudioEngine.md">AudioEngine</a></span> {
<span class="name">id</span>:<span class="name">audioengine</span>
<span class="type"><a href="index.html">AttenuationModelLinear</a></span> {
<span class="name">name</span>:<span class="string">&quot;linear&quot;</span>
<span class="name">start</span>: <span class="number">20</span>
<span class="name">end</span>: <span class="number">180</span>
}
<span class="type"><a href="QtAudioEngine.AudioSample.md">AudioSample</a></span> {
<span class="name">name</span>:<span class="string">&quot;explosion&quot;</span>
<span class="name">source</span>: <span class="string">&quot;explosion-02.wav&quot;</span>
}
<span class="type"><a href="QtAudioEngine.Sound.md">Sound</a></span> {
<span class="name">name</span>:<span class="string">&quot;explosion&quot;</span>
<span class="name">attenuationModel</span>: <span class="string">&quot;linear&quot;</span>
<span class="type"><a href="QtAudioEngine.PlayVariation.md">PlayVariation</a></span> {
<span class="name">sample</span>:<span class="string">&quot;explosion&quot;</span>
}
}
}
}</pre>
<!-- @@@AttenuationModelLinear -->
<h2>Property Documentation</h2>
<!-- $$$end -->
<table class="qmlname"><tr valign="top" id="end-prop"><td class="tblQmlPropNode"><p><span class="name">end</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the end distance. There will be no sound hearable if the distance from sound to listener is larger than this. The default value is 1.</p>
<!-- @@@end -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of <a href="index.html">AttenuationModelLinear</a>, must be unique among all attenuation models and only defined once.</p>
<!-- @@@name -->
<br/>
<!-- $$$start -->
<table class="qmlname"><tr valign="top" id="start-prop"><td class="tblQmlPropNode"><p><span class="name">start</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the start distance. There will be no attenuation if the distance from sound to listener is within this range. The default value is 0.</p>
<!-- @@@start -->
<br/>
