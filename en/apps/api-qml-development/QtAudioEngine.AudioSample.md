---
Title: QtAudioEngine.AudioSample
---

# QtAudioEngine.AudioSample

<span class="subtitle"></span>
<!-- $$$AudioSample-brief -->
<p>Load audio samples, mostly .wav. More...</p>
<!-- @@@AudioSample -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtAudioEngine 1.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#loaded-prop">loaded</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#preloaded-prop">preloaded</a></b></b> : bool</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#loadedChanged-signal">loadedChanged</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">void <b><b><a href="#load-method">load</a></b></b>()</li>
</ul>
<!-- $$$AudioSample-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><code>AudioSample</code> is part of the <b>QtAudioEngine 1.0</b> module.</p>
<p>It can be accessed through <a href="QtAudioEngine.AudioEngine.md#samples-prop">QtAudioEngine::AudioEngine::samples</a> with its unique name and must be defined inside <a href="QtAudioEngine.AudioEngine.md">AudioEngine</a>.</p>
<pre class="qml">import QtQuick 2.0
import QtAudioEngine 1.0
<span class="type">Rectangle</span> {
<span class="name">color</span>:<span class="string">&quot;white&quot;</span>
<span class="name">width</span>: <span class="number">300</span>
<span class="name">height</span>: <span class="number">500</span>
<span class="type"><a href="QtAudioEngine.AudioEngine.md">AudioEngine</a></span> {
<span class="name">id</span>:<span class="name">audioengine</span>
<span class="type"><a href="index.html">AudioSample</a></span> {
<span class="name">name</span>:<span class="string">&quot;explosion&quot;</span>
<span class="name">source</span>: <span class="string">&quot;explosion-02.wav&quot;</span>
}
}
}</pre>
<!-- @@@AudioSample -->
<h2>Property Documentation</h2>
<!-- $$$loaded -->
<table class="qmlname"><tr valign="top" id="loaded-prop"><td class="tblQmlPropNode"><p><span class="name">loaded</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates whether this sample has been loaded into memory or not.</p>
<!-- @@@loaded -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the sample, which must be unique among all samples and only defined once.</p>
<!-- @@@name -->
<br/>
<!-- $$$preloaded -->
<table class="qmlname"><tr valign="top" id="preloaded-prop"><td class="tblQmlPropNode"><p><span class="name">preloaded</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates whether this sample needs to be preloaded or not. If <code>true</code>, the audio engine will start loading the sample file immediately when the application starts, otherwise the sample will not be loaded until explicitly requested.</p>
<!-- @@@preloaded -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$loadedChanged -->
<table class="qmlname"><tr valign="top" id="loadedChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">loadedChanged</span>()</p></td></tr></table><p>This signal is emitted when <a href="#loaded-prop">loaded</a> is changed.</p>
<p>The corresponding handler is <code>onLoadedChanged</code>.</p>
<!-- @@@loadedChanged -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$load -->
<table class="qmlname"><tr valign="top" id="load-method"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">load</span>()</p></td></tr></table><p>Starts loading the sample into memory if not loaded.</p>
<!-- @@@load -->
<br/>
