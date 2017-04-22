---
Title: QtAudioEngine.AudioCategory
---

# QtAudioEngine.AudioCategory

<span class="subtitle"></span>
<!-- $$$AudioCategory-brief -->
<p>Control all active sound instances by group. More...</p>
<!-- @@@AudioCategory -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtAudioEngine 1.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#volume-prop">volume</a></b></b> : real</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#pause-method-2">pause</a></b></b>()</li>
<li class="fn"><b><b><a href="#pause-method">pause</a></b></b>()</li>
<li class="fn"><b><b><a href="#stop-method">stop</a></b></b>()</li>
</ul>
<!-- $$$AudioCategory-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This type is part of the <b>QtAudioEngine 1.0</b> module.</p>
<p>An instance of <a href="index.html">AudioCategory</a> can be accessed through <a href="QtAudioEngine.AudioEngine.md#categories-prop">AudioEngine.categories</a> with its unique name and must be defined inside <a href="QtAudioEngine.AudioEngine.md">AudioEngine</a>.</p>
<pre class="qml">import QtQuick 2.0
import QtAudioEngine 1.0
<span class="type">Rectangle</span> {
<span class="name">color</span>:<span class="string">&quot;white&quot;</span>
<span class="name">width</span>: <span class="number">300</span>
<span class="name">height</span>: <span class="number">500</span>
<span class="type"><a href="QtAudioEngine.AudioEngine.md">AudioEngine</a></span> {
<span class="name">id</span>:<span class="name">audioengine</span>
<span class="type"><a href="index.html">AudioCategory</a></span> {
<span class="name">name</span>: <span class="string">&quot;sfx&quot;</span>
<span class="name">volume</span>: <span class="number">0.8</span>
}
<span class="type"><a href="QtAudioEngine.AudioSample.md">AudioSample</a></span> {
<span class="name">name</span>:<span class="string">&quot;explosion&quot;</span>
<span class="name">source</span>: <span class="string">&quot;explosion-02.wav&quot;</span>
}
<span class="type"><a href="QtAudioEngine.Sound.md">Sound</a></span> {
<span class="name">name</span>:<span class="string">&quot;explosion&quot;</span>
<span class="name">category</span>: <span class="string">&quot;sfx&quot;</span>
<span class="type"><a href="QtAudioEngine.PlayVariation.md">PlayVariation</a></span> {
<span class="name">sample</span>:<span class="string">&quot;explosion&quot;</span>
}
}
}
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onPressed</span>: {
<span class="name">audioengine</span>.<span class="name">categories</span>[<span class="string">&quot;sfx&quot;</span>].<span class="name">volume</span> <span class="operator">=</span> <span class="number">0.5</span>;
}
}
}</pre>
<p><a href="QtAudioEngine.Sound.md">Sound</a> instances can be grouped together by specifying the category property. When you change the volume of a category, all audio output from related instances will be affected as well.</p>
<p>Note: there will always be an <a href="index.html">AudioCategory</a> named <code>default</code> whether you explicitly define it or not. If you do not specify any category for a <a href="QtAudioEngine.Sound.md">Sound</a>, it will be grouped into the <code>default</code> category.</p>
<!-- @@@AudioCategory -->
<h2>Property Documentation</h2>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of <a href="index.html">AudioCategory</a>. The name must be unique among all categories and only defined once. The name cannot be changed after the instance has been initialized.</p>
<!-- @@@name -->
<br/>
<!-- $$$volume -->
<table class="qmlname"><tr valign="top" id="volume-prop"><td class="tblQmlPropNode"><p><span class="name">volume</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the volume of the category and will modulate all audio output from the instances which belong to this category.</p>
<!-- @@@volume -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$pause -->
<table class="qmlname"><tr valign="top" id="pause-method-2"><td class="tblQmlFuncNode"><p><span class="name">pause</span>()</p></td></tr></table><p>Resumes all active sound instances from paused state which belong to this category.</p>
<!-- @@@pause -->
<br/>
<!-- $$$pause -->
<table class="qmlname"><tr valign="top" id="pause-method"><td class="tblQmlFuncNode"><p><span class="name">pause</span>()</p></td></tr></table><p>Pauses all active sound instances which belong to this category.</p>
<!-- @@@pause -->
<br/>
<!-- $$$stop -->
<table class="qmlname"><tr valign="top" id="stop-method"><td class="tblQmlFuncNode"><p><span class="name">stop</span>()</p></td></tr></table><p>Stops all active sound instances which belong to this category.</p>
<!-- @@@stop -->
<br/>
