---
Title: QtAudioEngine.AudioListener
---

# QtAudioEngine.AudioListener

<span class="subtitle"></span>
<!-- $$$AudioListener-brief -->
<p>Control global listener parameters. More...</p>
<!-- @@@AudioListener -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtAudioEngine 1.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#direction-prop">direction</a></b></b> : vector3d</li>
<li class="fn"><b><b><a href="#engine-prop">engine</a></b></b> : QtAudioEngine::AudioEngine</li>
<li class="fn"><b><b><a href="#gain-prop">gain</a></b></b> : real</li>
<li class="fn"><b><b><a href="#position-prop">position</a></b></b> : vector3d</li>
<li class="fn"><b><b><a href="#up-prop">up</a></b></b> : vector3d</li>
<li class="fn"><b><b><a href="#velocity-prop">velocity</a></b></b> : vector3d</li>
</ul>
<!-- $$$AudioListener-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This type is part of the <b>QtAudioEngine 1.0</b> module.</p>
<p><a href="index.html">AudioListener</a> will have only one global instance and you can either access it through the listener property of <a href="QtAudioEngine.AudioEngine.md">AudioEngine</a>:</p>
<pre class="qml">import QtQuick 2.0
import QtAudioEngine 1.0
<span class="type">Rectangle</span> {
<span class="name">color</span>:<span class="string">&quot;white&quot;</span>
<span class="name">width</span>: <span class="number">300</span>
<span class="name">height</span>: <span class="number">500</span>
<span class="type"><a href="QtAudioEngine.AudioEngine.md">AudioEngine</a></span> {
<span class="name">id</span>:<span class="name">audioengine</span>
<span class="name">listener</span>.up:<span class="string">&quot;0,0,1&quot;</span>
<span class="name">listener</span>.velocity:<span class="string">&quot;0,0,0&quot;</span>
<span class="name">listener</span>.direction:<span class="string">&quot;0,1,0&quot;</span>
<span class="name">listener</span>.position:<span class="name">Qt</span>.<span class="name">vector3d</span>(<span class="name">observer</span>.<span class="name">x</span>, <span class="name">observer</span>.<span class="name">y</span>, <span class="number">0</span>);
}
<span class="type">Item</span> {
<span class="name">id</span>: <span class="name">observer</span>
<span class="name">x</span>: <span class="number">10</span> <span class="operator">+</span> <span class="name">observer</span>.<span class="name">percent</span> <span class="operator">*</span> <span class="number">100</span>
<span class="name">y</span>: <span class="number">20</span> <span class="operator">+</span> <span class="name">observer</span>.<span class="name">percent</span> <span class="operator">*</span> <span class="number">80</span>
property <span class="type">real</span> <span class="name">percent</span>: <span class="number">0</span>
SequentialAnimation on <span class="name">percent</span> {
<span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
<span class="name">running</span>: <span class="number">true</span>
<span class="type">NumberAnimation</span> {
<span class="name">duration</span>: <span class="number">8000</span>
<span class="name">from</span>: <span class="number">0</span>
<span class="name">to</span>: <span class="number">1</span>
}
}
}
}</pre>
<p>or alternatively, by defining an <a href="index.html">AudioListener</a> outside <a href="QtAudioEngine.AudioEngine.md">AudioEngine</a>:</p>
<pre class="qml">import QtQuick 2.0
import QtAudioEngine 1.0
<span class="type">Rectangle</span> {
<span class="name">color</span>:<span class="string">&quot;white&quot;</span>
<span class="name">width</span>: <span class="number">300</span>
<span class="name">height</span>: <span class="number">500</span>
<span class="type"><a href="QtAudioEngine.AudioEngine.md">AudioEngine</a></span> {
<span class="name">id</span>:<span class="name">audioengine</span>
<span class="name">listener</span>.up:<span class="string">&quot;0,0,1&quot;</span>
<span class="name">listener</span>.velocity:<span class="string">&quot;0,0,0&quot;</span>
<span class="name">listener</span>.direction:<span class="string">&quot;0,1,0&quot;</span>
}
<span class="type"><a href="index.html">AudioListener</a></span> {
<span class="name">engine</span>:<span class="name">audioengine</span>
<span class="name">position</span>: <span class="name">Qt</span>.<span class="name">vector3d</span>(<span class="name">observer</span>.<span class="name">x</span>, <span class="name">observer</span>.<span class="name">y</span>, <span class="number">0</span>);
}
<span class="type">Item</span> {
<span class="name">id</span>: <span class="name">observer</span>
<span class="name">x</span>: <span class="number">10</span> <span class="operator">+</span> <span class="name">observer</span>.<span class="name">percent</span> <span class="operator">*</span> <span class="number">100</span>
<span class="name">y</span>: <span class="number">20</span> <span class="operator">+</span> <span class="name">observer</span>.<span class="name">percent</span> <span class="operator">*</span> <span class="number">80</span>
property <span class="type">real</span> <span class="name">percent</span>: <span class="number">0</span>
SequentialAnimation on <span class="name">percent</span> {
<span class="name">loops</span>: <span class="name">Animation</span>.<span class="name">Infinite</span>
<span class="name">running</span>: <span class="number">true</span>
<span class="type">NumberAnimation</span> {
<span class="name">duration</span>: <span class="number">8000</span>
<span class="name">from</span>: <span class="number">0</span>
<span class="name">to</span>: <span class="number">1</span>
}
}
}
}</pre>
<p>This separate <a href="index.html">AudioListener</a> definition is allowed to make QML bindings easier in some cases.</p>
<!-- @@@AudioListener -->
<h2>Property Documentation</h2>
<!-- $$$direction -->
<table class="qmlname"><tr valign="top" id="direction-prop"><td class="tblQmlPropNode"><p><span class="name">direction</span> : <span class="type">vector3d</span></p></td></tr></table><p>This property holds the normalized 3D direction vector of the listener.</p>
<!-- @@@direction -->
<br/>
<!-- $$$engine -->
<table class="qmlname"><tr valign="top" id="engine-prop"><td class="tblQmlPropNode"><p><span class="name">engine</span> : <span class="type"><a href="QtAudioEngine.AudioEngine.md">QtAudioEngine::AudioEngine</a></span></p></td></tr></table><p>This property holds the reference to <a href="QtAudioEngine.AudioEngine.md">AudioEngine</a>, and must only be set once.</p>
<!-- @@@engine -->
<br/>
<!-- $$$gain -->
<table class="qmlname"><tr valign="top" id="gain-prop"><td class="tblQmlPropNode"><p><span class="name">gain</span> : <span class="type">real</span></p></td></tr></table><p>This property will modulate all audio output from audio engine instances.</p>
<!-- @@@gain -->
<br/>
<!-- $$$position -->
<table class="qmlname"><tr valign="top" id="position-prop"><td class="tblQmlPropNode"><p><span class="name">position</span> : <span class="type">vector3d</span></p></td></tr></table><p>This property holds the 3D position of the listener.</p>
<!-- @@@position -->
<br/>
<!-- $$$up -->
<table class="qmlname"><tr valign="top" id="up-prop"><td class="tblQmlPropNode"><p><span class="name">up</span> : <span class="type">vector3d</span></p></td></tr></table><p>This property holds the normalized 3D up vector of the listener.</p>
<!-- @@@up -->
<br/>
<!-- $$$velocity -->
<table class="qmlname"><tr valign="top" id="velocity-prop"><td class="tblQmlPropNode"><p><span class="name">velocity</span> : <span class="type">vector3d</span></p></td></tr></table><p>This property holds the 3D velocity vector of the listener.</p>
<!-- @@@velocity -->
<br/>
