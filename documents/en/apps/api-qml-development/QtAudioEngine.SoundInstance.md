---
Title: QtAudioEngine.SoundInstance
---

# QtAudioEngine.SoundInstance

<span class="subtitle"></span>
<!-- $$$SoundInstance-brief -->
<p>Play 3d audio content. More...</p>
<!-- @@@SoundInstance -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtAudioEngine 1.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#direction-prop">direction</a></b></b> : vector3d</li>
<li class="fn"><b><b><a href="#engine-prop">engine</a></b></b> : QtAudioEngine::AudioEngine</li>
<li class="fn"><b><b><a href="#gain-prop">gain</a></b></b> : vector3d</li>
<li class="fn"><b><b><a href="#pitch-prop">pitch</a></b></b> : vector3d</li>
<li class="fn"><b><b><a href="#position-prop">position</a></b></b> : vector3d</li>
<li class="fn"><b><b><a href="#sound-prop">sound</a></b></b> : string</li>
<li class="fn"><b><b><a href="#state-prop">state</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#velocity-prop">velocity</a></b></b> : vector3d</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#directionChanged-signal">directionChanged</a></b></b>()</li>
<li class="fn"><b><b><a href="#gainChanged-signal">gainChanged</a></b></b>()</li>
<li class="fn"><b><b><a href="#pitchChanged-signal">pitchChanged</a></b></b>()</li>
<li class="fn"><b><b><a href="#positionChanged-signal">positionChanged</a></b></b>()</li>
<li class="fn"><b><b><a href="#soundChanged-signal">soundChanged</a></b></b>()</li>
<li class="fn"><b><b><a href="#stateChanged-signal">stateChanged</a></b></b>(state)</li>
<li class="fn"><b><b><a href="#velocityChanged-signal">velocityChanged</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#play-method-3">play</a></b></b>()</li>
<li class="fn"><b><b><a href="#play-method-2">play</a></b></b>()</li>
<li class="fn"><b><b><a href="#play-method">play</a></b></b>()</li>
</ul>
<!-- $$$SoundInstance-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This type is part of the <b>QtAudioEngine 1.0</b> module.</p>
<p>There are two ways to create <a href="index.html">SoundInstance</a> objects. You can obtain it by calling newInstance method of a <a href="QtAudioEngine.Sound.md">Sound</a>:</p>
<pre class="qml">import QtQuick 2.0
import QtAudioEngine 1.0
<span class="type">Rectangle</span> {
<span class="name">id</span>:<span class="name">root</span>
<span class="name">color</span>:<span class="string">&quot;white&quot;</span>
<span class="name">width</span>: <span class="number">300</span>
<span class="name">height</span>: <span class="number">500</span>
<span class="type"><a href="QtAudioEngine.AudioEngine.md">AudioEngine</a></span> {
<span class="name">id</span>:<span class="name">audioengine</span>
<span class="type"><a href="QtAudioEngine.AudioSample.md">AudioSample</a></span> {
<span class="name">name</span>:<span class="string">&quot;explosion01&quot;</span>
<span class="name">source</span>: <span class="string">&quot;explosion-01.wav&quot;</span>
}
<span class="type"><a href="QtAudioEngine.Sound.md">Sound</a></span> {
<span class="name">name</span>:<span class="string">&quot;explosion&quot;</span>
<span class="type"><a href="QtAudioEngine.PlayVariation.md">PlayVariation</a></span> {
<span class="name">sample</span>:<span class="string">&quot;explosion01&quot;</span>
}
}
}
property <span class="type">variant</span> <span class="name">soundEffect</span>: <span class="name">audioengine</span>.<span class="name">sounds</span>[<span class="string">&quot;explosion&quot;</span>].<span class="name">newInstance</span>();
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onPressed</span>: {
<span class="name">root</span>.<span class="name">soundEffect</span>.<span class="name">play</span>();
}
}
}</pre>
<p>Or alternatively, you can explicitly define <a href="index.html">SoundInstance</a> outside of <a href="QtAudioEngine.AudioEngine.md">AudioEngine</a> for easier qml bindings:</p>
<pre class="qml">import QtQuick 2.0
import QtAudioEngine 1.0
<span class="type">Rectangle</span> {
<span class="name">id</span>:<span class="name">root</span>
<span class="name">color</span>:<span class="string">&quot;white&quot;</span>
<span class="name">width</span>: <span class="number">300</span>
<span class="name">height</span>: <span class="number">500</span>
<span class="type"><a href="QtAudioEngine.AudioEngine.md">AudioEngine</a></span> {
<span class="name">id</span>:<span class="name">audioengine</span>
<span class="type"><a href="QtAudioEngine.AudioSample.md">AudioSample</a></span> {
<span class="name">name</span>:<span class="string">&quot;explosion01&quot;</span>
<span class="name">source</span>: <span class="string">&quot;explosion-01.wav&quot;</span>
}
<span class="type"><a href="QtAudioEngine.Sound.md">Sound</a></span> {
<span class="name">name</span>:<span class="string">&quot;explosion&quot;</span>
<span class="type"><a href="QtAudioEngine.PlayVariation.md">PlayVariation</a></span> {
<span class="name">sample</span>:<span class="string">&quot;explosion01&quot;</span>
}
}
}
<span class="type">Item</span> {
<span class="name">id</span>: <span class="name">animator</span>
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
<span class="type"><a href="index.html">SoundInstance</a></span> {
<span class="name">id</span>:<span class="name">soundEffect</span>
<span class="name">engine</span>:<span class="name">audioengine</span>
<span class="name">sound</span>:<span class="string">&quot;explosion&quot;</span>
<span class="name">position</span>:<span class="name">Qt</span>.<span class="name">vector3d</span>(<span class="name">animator</span>.<span class="name">x</span>, <span class="name">animator</span>.<span class="name">y</span>, <span class="number">0</span>);
}
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onPressed</span>: {
<span class="name">soundEffect</span>.<span class="name">play</span>();
}
}
}</pre>
<!-- @@@SoundInstance -->
<h2>Property Documentation</h2>
<!-- $$$direction -->
<table class="qmlname"><tr valign="top" id="direction-prop"><td class="tblQmlPropNode"><p><span class="name">direction</span> : <span class="type">vector3d</span></p></td></tr></table><p>This property holds the current 3d direction.</p>
<!-- @@@direction -->
<br/>
<!-- $$$engine -->
<table class="qmlname"><tr valign="top" id="engine-prop"><td class="tblQmlPropNode"><p><span class="name">engine</span> : <span class="type"><a href="QtAudioEngine.AudioEngine.md">QtAudioEngine::AudioEngine</a></span></p></td></tr></table><p>This property holds the reference to <a href="QtAudioEngine.AudioEngine.md">AudioEngine</a>, must be set only once.</p>
<!-- @@@engine -->
<br/>
<!-- $$$gain -->
<table class="qmlname"><tr valign="top" id="gain-prop"><td class="tblQmlPropNode"><p><span class="name">gain</span> : <span class="type">vector3d</span></p></td></tr></table><p>This property holds the gain adjustment which will be used to modulate the audio output level from this <a href="index.html">SoundInstance</a>.</p>
<!-- @@@gain -->
<br/>
<!-- $$$pitch -->
<table class="qmlname"><tr valign="top" id="pitch-prop"><td class="tblQmlPropNode"><p><span class="name">pitch</span> : <span class="type">vector3d</span></p></td></tr></table><p>This property holds the pitch adjustment which will be used to modulate the audio pitch from this <a href="index.html">SoundInstance</a>.</p>
<!-- @@@pitch -->
<br/>
<!-- $$$position -->
<table class="qmlname"><tr valign="top" id="position-prop"><td class="tblQmlPropNode"><p><span class="name">position</span> : <span class="type">vector3d</span></p></td></tr></table><p>This property holds the current 3d position.</p>
<!-- @@@position -->
<br/>
<!-- $$$sound -->
<table class="qmlname"><tr valign="top" id="sound-prop"><td class="tblQmlPropNode"><p><span class="name">sound</span> : <span class="type">string</span></p></td></tr></table><p>This property specifies which Sound this <a href="index.html">SoundInstance</a> will use. Unlike some properties in other types, this property can be changed dynamically.</p>
<!-- @@@sound -->
<br/>
<!-- $$$state -->
<table class="qmlname"><tr valign="top" id="state-prop"><td class="tblQmlPropNode"><p><span class="name">state</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the current playback state. It can be one of:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >StopppedState</td><td >The <a href="index.html">SoundInstance</a> is not playing, and when playback begins next it will play from position zero.</td></tr>
<tr valign="top"><td >PlayingState</td><td >The <a href="index.html">SoundInstance</a> is playing the media.</td></tr>
<tr valign="top"><td >PausedState</td><td >The <a href="index.html">SoundInstance</a> is not playing, and when playback begins next it will play from the position that it was paused at.</td></tr>
</table>
<!-- @@@state -->
<br/>
<!-- $$$velocity -->
<table class="qmlname"><tr valign="top" id="velocity-prop"><td class="tblQmlPropNode"><p><span class="name">velocity</span> : <span class="type">vector3d</span></p></td></tr></table><p>This property holds the current 3d velocity.</p>
<!-- @@@velocity -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$directionChanged -->
<table class="qmlname"><tr valign="top" id="directionChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">directionChanged</span>()</p></td></tr></table><p>This signal is emitted when <a href="#direction-prop">direction</a> is changed</p>
<p>The corresponding handler is <code>onDirectionChanged</code>.</p>
<!-- @@@directionChanged -->
<br/>
<!-- $$$gainChanged -->
<table class="qmlname"><tr valign="top" id="gainChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">gainChanged</span>()</p></td></tr></table><p>This signal is emitted when <a href="#gain-prop">gain</a> is changed</p>
<p>The corresponding handler is <code>onGainChanged</code>.</p>
<!-- @@@gainChanged -->
<br/>
<!-- $$$pitchChanged -->
<table class="qmlname"><tr valign="top" id="pitchChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">pitchChanged</span>()</p></td></tr></table><p>This signal is emitted when <a href="#pitch-prop">pitch</a> is changed</p>
<p>The corresponding handler is <code>onPitchChanged</code>.</p>
<!-- @@@pitchChanged -->
<br/>
<!-- $$$positionChanged -->
<table class="qmlname"><tr valign="top" id="positionChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">positionChanged</span>()</p></td></tr></table><p>This signal is emitted when <a href="#position-prop">position</a> is changed</p>
<p>The corresponding handler is <code>onPositionChanged</code>.</p>
<!-- @@@positionChanged -->
<br/>
<!-- $$$soundChanged -->
<table class="qmlname"><tr valign="top" id="soundChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">soundChanged</span>()</p></td></tr></table><p>This signal is emitted when <a href="#sound-prop">sound</a> is changed</p>
<p>The corresponding handler is <code>onSoundChanged</code>.</p>
<!-- @@@soundChanged -->
<br/>
<!-- $$$stateChanged -->
<table class="qmlname"><tr valign="top" id="stateChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">stateChanged</span>(<span class="type">state</span>)</p></td></tr></table><p>This signal is emitted when <a href="#state-prop">state</a> is changed</p>
<p>The corresponding handler is <code>onStateChanged</code>.</p>
<!-- @@@stateChanged -->
<br/>
<!-- $$$velocityChanged -->
<table class="qmlname"><tr valign="top" id="velocityChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">velocityChanged</span>()</p></td></tr></table><p>This signal is emitted when <a href="#velocity-prop">velocity</a> is changed</p>
<p>The corresponding handler is <code>onVelocityChanged</code>.</p>
<!-- @@@velocityChanged -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$play -->
<table class="qmlname"><tr valign="top" id="play-method-3"><td class="tblQmlFuncNode"><p><span class="name">play</span>()</p></td></tr></table><p>Pauses current playback.</p>
<!-- @@@play -->
<br/>
<!-- $$$play -->
<table class="qmlname"><tr valign="top" id="play-method-2"><td class="tblQmlFuncNode"><p><span class="name">play</span>()</p></td></tr></table><p>Stops current playback.</p>
<!-- @@@play -->
<br/>
<!-- $$$play -->
<table class="qmlname"><tr valign="top" id="play-method"><td class="tblQmlFuncNode"><p><span class="name">play</span>()</p></td></tr></table><p>Starts playback.</p>
<!-- @@@play -->
<br/>
