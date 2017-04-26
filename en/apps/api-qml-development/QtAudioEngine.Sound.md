---
Title: QtAudioEngine.Sound
---

# QtAudioEngine.Sound

<span class="subtitle"></span>
<!-- $$$Sound-brief -->
<p>Define a variety of samples and parameters to be used for SoundInstance. More...</p>
<!-- @@@Sound -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtAudioEngine 1.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#attenuationModel-prop">attenuationModel</a></b></b> : string</li>
<li class="fn"><b><b><a href="#category-prop">category</a></b></b> : string</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#playType-prop">playType</a></b></b> : enumeration</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#play-method-12">play</a></b></b>(position, velocity, direction, gain, pitch)</li>
<li class="fn"><b><b><a href="#play-method-11">play</a></b></b>(position, velocity, gain, pitch)</li>
<li class="fn"><b><b><a href="#play-method-10">play</a></b></b>(position, gain, pitch)</li>
<li class="fn"><b><b><a href="#play-method-9">play</a></b></b>(position, velocity, direction, gain)</li>
<li class="fn"><b><b><a href="#play-method-8">play</a></b></b>(position, velocity, gain)</li>
<li class="fn"><b><b><a href="#play-method-7">play</a></b></b>(position, gain)</li>
<li class="fn"><b><b><a href="#play-method-6">play</a></b></b>(position, velocity, direction)</li>
<li class="fn"><b><b><a href="#play-method-5">play</a></b></b>(position, velocity)</li>
<li class="fn"><b><b><a href="#play-method-4">play</a></b></b>(position)</li>
<li class="fn"><b><b><a href="#play-method-3">play</a></b></b>(gain, pitch)</li>
<li class="fn"><b><b><a href="#play-method-2">play</a></b></b>(gain)</li>
<li class="fn"><b><b><a href="#play-method">play</a></b></b>()</li>
</ul>
<!-- $$$Sound-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This type is part of the <b>QtAudioEngine 1.0</b> module.</p>
<p>Sound can be accessed through <a href="QtAudioEngine.AudioEngine.md#sounds-prop">QtAudioEngine::AudioEngine::sounds</a> with its unique name and must be defined inside <a href="QtAudioEngine.AudioEngine.md">AudioEngine</a>.</p>
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
<span class="type"><a href="index.html">Sound</a></span> {
<span class="name">name</span>:<span class="string">&quot;explosion&quot;</span>
<span class="type"><a href="QtAudioEngine.PlayVariation.md">PlayVariation</a></span> {
<span class="name">sample</span>:<span class="string">&quot;explosion01&quot;</span>
<span class="name">minPitch</span>: <span class="number">0.8</span>
<span class="name">maxPitch</span>: <span class="number">1.1</span>
}
<span class="type"><a href="QtAudioEngine.PlayVariation.md">PlayVariation</a></span> {
<span class="name">sample</span>:<span class="string">&quot;explosion01&quot;</span>
<span class="name">minGain</span>: <span class="number">1.1</span>
<span class="name">maxGain</span>: <span class="number">1.5</span>
}
}
}
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onPressed</span>: {
<span class="name">audioengine</span>.<span class="name">sounds</span>[<span class="string">&quot;explosion&quot;</span>].<span class="name">play</span>();
}
}
}</pre>
<!-- @@@Sound -->
<h2>Property Documentation</h2>
<!-- $$$attenuationModel -->
<table class="qmlname"><tr valign="top" id="attenuationModel-prop"><td class="tblQmlPropNode"><p><span class="name">attenuationModel</span> : <span class="type">string</span></p></td></tr></table><p>This property specifies which attenuation model this sound will apply.</p>
<!-- @@@attenuationModel -->
<br/>
<!-- $$$category -->
<table class="qmlname"><tr valign="top" id="category-prop"><td class="tblQmlPropNode"><p><span class="name">category</span> : <span class="type">string</span></p></td></tr></table><p>This property specifies which <a href="QtAudioEngine.AudioCategory.md">AudioCategory</a> this sound belongs to.</p>
<!-- @@@category -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of Sound, must be unique among all sounds and only defined once.</p>
<!-- @@@name -->
<br/>
<!-- $$$playType -->
<table class="qmlname"><tr valign="top" id="playType-prop"><td class="tblQmlPropNode"><p><span class="name">playType</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the playType. It can be one of:</p>
<ul>
<li>Random - randomly picks up a play variation when playback is triggered</li>
<li>Sequential - plays each variation in sequence when playback is triggered</li>
</ul>
<p>The default value is Random.</p>
<!-- @@@playType -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$play -->
<table class="qmlname"><tr valign="top" id="play-method-12"><td class="tblQmlFuncNode"><p><span class="name">play</span>(<span class="type">position</span>, <span class="type">velocity</span>, <span class="type">direction</span>, <span class="type">gain</span>, <span class="type">pitch</span>)</p></td></tr></table><p>Creates a new <a href="QtAudioEngine.SoundInstance.md">SoundInstance</a> and starts playing with specified <i>position</i>, <i>velocity</i>, <i>direction</i>, adjusted <i>gain</i> and <i>pitch</i>.</p>
<!-- @@@play -->
<br/>
<!-- $$$play -->
<table class="qmlname"><tr valign="top" id="play-method-11"><td class="tblQmlFuncNode"><p><span class="name">play</span>(<span class="type">position</span>, <span class="type">velocity</span>, <span class="type">gain</span>, <span class="type">pitch</span>)</p></td></tr></table><p>Creates a new <a href="QtAudioEngine.SoundInstance.md">SoundInstance</a> and starts playing with specified <i>position</i>, <i>velocity</i>, adjusted <i>gain</i> and <i>pitch</i>. Direction is set to <code>&quot;0,0,0&quot;</code>.</p>
<!-- @@@play -->
<br/>
<!-- $$$play -->
<table class="qmlname"><tr valign="top" id="play-method-10"><td class="tblQmlFuncNode"><p><span class="name">play</span>(<span class="type">position</span>, <span class="type">gain</span>, <span class="type">pitch</span>)</p></td></tr></table><p>Creates a new <a href="QtAudioEngine.SoundInstance.md">SoundInstance</a> and starts playing with specified <i>position</i>, adjusted <i>gain</i> and <i>pitch</i>. Direction and velocity are all set to <code>&quot;0,0,0&quot;</code>.</p>
<!-- @@@play -->
<br/>
<!-- $$$play -->
<table class="qmlname"><tr valign="top" id="play-method-9"><td class="tblQmlFuncNode"><p><span class="name">play</span>(<span class="type">position</span>, <span class="type">velocity</span>, <span class="type">direction</span>, <span class="type">gain</span>)</p></td></tr></table><p>Creates a new <a href="QtAudioEngine.SoundInstance.md">SoundInstance</a> and starts playing with specified <i>position</i>, <i>velocity</i>, <i>direction</i> and adjusted <i>gain</i>.</p>
<!-- @@@play -->
<br/>
<!-- $$$play -->
<table class="qmlname"><tr valign="top" id="play-method-8"><td class="tblQmlFuncNode"><p><span class="name">play</span>(<span class="type">position</span>, <span class="type">velocity</span>, <span class="type">gain</span>)</p></td></tr></table><p>Creates a new <a href="QtAudioEngine.SoundInstance.md">SoundInstance</a> and starts playing with specified <i>position</i>, <i>velocity</i> and adjusted <i>gain</i>. Direction is set to <code>&quot;0,0,0&quot;</code>.</p>
<!-- @@@play -->
<br/>
<!-- $$$play -->
<table class="qmlname"><tr valign="top" id="play-method-7"><td class="tblQmlFuncNode"><p><span class="name">play</span>(<span class="type">position</span>, <span class="type">gain</span>)</p></td></tr></table><p>Creates a new <a href="QtAudioEngine.SoundInstance.md">SoundInstance</a> and starts playing with specified <i>position</i> and adjusted <i>gain</i>. Direction and velocity are all set to <code>&quot;0,0,0&quot;</code>.</p>
<!-- @@@play -->
<br/>
<!-- $$$play -->
<table class="qmlname"><tr valign="top" id="play-method-6"><td class="tblQmlFuncNode"><p><span class="name">play</span>(<span class="type">position</span>, <span class="type">velocity</span>, <span class="type">direction</span>)</p></td></tr></table><p>Creates a new <a href="QtAudioEngine.SoundInstance.md">SoundInstance</a> and starts playing with specified <i>position</i>, <i>velocity</i> and <i>direction</i>.</p>
<!-- @@@play -->
<br/>
<!-- $$$play -->
<table class="qmlname"><tr valign="top" id="play-method-5"><td class="tblQmlFuncNode"><p><span class="name">play</span>(<span class="type">position</span>, <span class="type">velocity</span>)</p></td></tr></table><p>Creates a new <a href="QtAudioEngine.SoundInstance.md">SoundInstance</a> and starts playing with specified <i>position</i> and <i>velocity</i>. Direction is set to <code>&quot;0,0,0&quot;</code>.</p>
<!-- @@@play -->
<br/>
<!-- $$$play -->
<table class="qmlname"><tr valign="top" id="play-method-4"><td class="tblQmlFuncNode"><p><span class="name">play</span>(<span class="type">position</span>)</p></td></tr></table><p>Creates a new <a href="QtAudioEngine.SoundInstance.md">SoundInstance</a> and starts playing with specified <i>position</i>. Direction and velocity are all set to <code>&quot;0,0,0&quot;</code>.</p>
<!-- @@@play -->
<br/>
<!-- $$$play -->
<table class="qmlname"><tr valign="top" id="play-method-3"><td class="tblQmlFuncNode"><p><span class="name">play</span>(<span class="type">gain</span>, <span class="type">pitch</span>)</p></td></tr></table><p>Creates a new <a href="QtAudioEngine.SoundInstance.md">SoundInstance</a> and starts playing with the adjusted <i>gain</i> and <i>pitch</i>. Position, direction and velocity are all set to <code>&quot;0,0,0&quot;</code>.</p>
<!-- @@@play -->
<br/>
<!-- $$$play -->
<table class="qmlname"><tr valign="top" id="play-method-2"><td class="tblQmlFuncNode"><p><span class="name">play</span>(<span class="type">gain</span>)</p></td></tr></table><p>Creates a new <a href="QtAudioEngine.SoundInstance.md">SoundInstance</a> and starts playing with the adjusted <i>gain</i>. Position, direction and velocity are all set to <code>&quot;0,0,0&quot;</code>.</p>
<!-- @@@play -->
<br/>
<!-- $$$play -->
<table class="qmlname"><tr valign="top" id="play-method"><td class="tblQmlFuncNode"><p><span class="name">play</span>()</p></td></tr></table><p>Creates a new <a href="QtAudioEngine.SoundInstance.md">SoundInstance</a> and starts playing. Position, direction and velocity are all set to <code>&quot;0,0,0&quot;</code>.</p>
<!-- @@@play -->
<br/>
