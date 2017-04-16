---
Title: QtAudioEngine.AudioEngine
---

# QtAudioEngine.AudioEngine

<span class="subtitle"></span>
<!-- $$$AudioEngine-brief -->
<p>Organize all your 3d audio content in one place. More...</p>
<!-- @@@AudioEngine -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtAudioEngine 1.0</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#categories-prop">categories</a></b></b> : map</li>
<li class="fn"><b><b><a href="#dopplerFactor-prop">dopplerFactor</a></b></b> : real</li>
<li class="fn"><b><b><a href="#listener-prop">listener</a></b></b> : QtAudioEngine::AudioListener</li>
<li class="fn"><b><b><a href="#liveInstances-prop">liveInstances</a></b></b> : int</li>
<li class="fn"><b><b><a href="#loading-prop">loading</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#samples-prop">samples</a></b></b> : map</li>
<li class="fn"><b><b><a href="#sounds-prop">sounds</a></b></b> : map</li>
<li class="fn"><b><b><a href="#speedOfSound-prop">speedOfSound</a></b></b> : real</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#finishedLoading-signal">finishedLoading</a></b></b>()</li>
<li class="fn"><b><b><a href="#isLoadingChanged-signal">isLoadingChanged</a></b></b>()</li>
<li class="fn"><b><b><a href="#liveInstanceCountChanged-signal">liveInstanceCountChanged</a></b></b>()</li>
<li class="fn"><b><b><a href="#ready-signal">ready</a></b></b>()</li>
</ul>
<!-- $$$AudioEngine-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><code>AudioEngine</code> is part of the <b>QtAudioEngine 1.0</b> module.</p>
<pre class="qml">import QtQuick 2.0
import QtAudioEngine 1.0
<span class="type">Rectangle</span> {
<span class="name">color</span>:<span class="string">&quot;white&quot;</span>
<span class="name">width</span>: <span class="number">300</span>
<span class="name">height</span>: <span class="number">500</span>
<span class="type"><a href="index.html">AudioEngine</a></span> {
<span class="name">id</span>:<span class="name">audioengine</span>
<span class="type"><a href="QtAudioEngine.AudioSample.md">AudioSample</a></span> {
<span class="name">name</span>:<span class="string">&quot;explosion&quot;</span>
<span class="name">source</span>: <span class="string">&quot;explosion-02.wav&quot;</span>
}
<span class="type"><a href="QtAudioEngine.Sound.md">Sound</a></span> {
<span class="name">name</span>:<span class="string">&quot;explosion&quot;</span>
<span class="type"><a href="QtAudioEngine.PlayVariation.md">PlayVariation</a></span> {
<span class="name">sample</span>:<span class="string">&quot;explosion&quot;</span>
}
}
<span class="name">dopplerFactor</span>: <span class="number">1</span>
<span class="name">speedOfSound</span>: <span class="number">343.33</span> <span class="comment">// Approximate speed of sound in air at 20 degrees Celsius</span>
<span class="name">listener</span>.up:<span class="string">&quot;0,0,1&quot;</span>
<span class="name">listener</span>.position:<span class="string">&quot;0,0,0&quot;</span>
<span class="name">listener</span>.velocity:<span class="string">&quot;0,0,0&quot;</span>
<span class="name">listener</span>.direction:<span class="string">&quot;0,1,0&quot;</span>
}
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onPressed</span>: {
<span class="name">audioengine</span>.<span class="name">sounds</span>[<span class="string">&quot;explosion&quot;</span>].<span class="name">play</span>();
}
}
}</pre>
<p><code>AudioEngine</code> acts as a central library for configuring all 3d audio content in an app, so you should define only one in your app.</p>
<p>It is mostly used as a container to access other types such as <a href="QtAudioEngine.AudioCategory.md">AudioCategory</a>, <a href="QtAudioEngine.AudioSample.md">AudioSample</a> and Sound.</p>
<p><b>See also </b><a href="QtAudioEngine.AudioCategory.md">AudioCategory</a>, <a href="QtAudioEngine.AudioSample.md">AudioSample</a>, <a href="QtAudioEngine.Sound.md">Sound</a>, <a href="QtAudioEngine.SoundInstance.md">SoundInstance</a>, <a href="QtAudioEngine.AttenuationModelLinear.md">AttenuationModelLinear</a>, and <a href="QtAudioEngine.AttenuationModelInverse.md">AttenuationModelInverse</a>.</p>
<!-- @@@AudioEngine -->
<h2>Property Documentation</h2>
<!-- $$$categories -->
<table class="qmlname"><tr valign="top" id="categories-prop"><td class="tblQmlPropNode"><p><span class="name">categories</span> : <span class="type">map</span></p></td></tr></table><p>Container of all <a href="QtAudioEngine.AudioCategory.md">AudioCategory</a> instances.</p>
<!-- @@@categories -->
<br/>
<!-- $$$dopplerFactor -->
<table class="qmlname"><tr valign="top" id="dopplerFactor-prop"><td class="tblQmlPropNode"><p><span class="name">dopplerFactor</span> : <span class="type">real</span></p></td></tr></table><p>This property holds a simple scaling for the effect of doppler shift.</p>
<!-- @@@dopplerFactor -->
<br/>
<!-- $$$listener -->
<table class="qmlname"><tr valign="top" id="listener-prop"><td class="tblQmlPropNode"><p><span class="name">listener</span> : <span class="type"><a href="QtAudioEngine.AudioListener.md">QtAudioEngine::AudioListener</a></span></p></td></tr></table><p>This property holds the listener object. You can change various properties to affect the 3D positioning of sounds.</p>
<p><b>See also </b><a href="QtAudioEngine.AudioListener.md">AudioListener</a>.</p>
<!-- @@@listener -->
<br/>
<!-- $$$liveInstances -->
<table class="qmlname"><tr valign="top" id="liveInstances-prop"><td class="tblQmlPropNode"><p><span class="name">liveInstances</span> : <span class="type">int</span></p></td></tr></table><p>This property indicates how many live sound instances there are at the moment.</p>
<!-- @@@liveInstances -->
<br/>
<!-- $$$loading -->
<table class="qmlname"><tr valign="top" id="loading-prop"><td class="tblQmlPropNode"><p><span class="name">loading</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates if the audio engine is loading any audio sample at the moment. This may be useful if you specified the preloaded property in <a href="QtAudioEngine.AudioSample.md">AudioSample</a> and would like to show a loading screen to the user before all audio samples are loaded.</p>
<p>/sa <a href="#finishedLoading-signal">finishedLoading</a>, <a href="QtAudioEngine.AudioSample.md#preloaded-prop">AudioSample::preloaded</a></p>
<!-- @@@loading -->
<br/>
<!-- $$$samples -->
<table class="qmlname"><tr valign="top" id="samples-prop"><td class="tblQmlPropNode"><p><span class="name">samples</span> : <span class="type">map</span></p></td></tr></table><p>Container of all <a href="QtAudioEngine.AudioSample.md">AudioSample</a> instances.</p>
<!-- @@@samples -->
<br/>
<!-- $$$sounds -->
<table class="qmlname"><tr valign="top" id="sounds-prop"><td class="tblQmlPropNode"><p><span class="name">sounds</span> : <span class="type">map</span></p></td></tr></table><p>Container of all Sound instances.</p>
<!-- @@@sounds -->
<br/>
<!-- $$$speedOfSound -->
<table class="qmlname"><tr valign="top" id="speedOfSound-prop"><td class="tblQmlPropNode"><p><span class="name">speedOfSound</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the reference value of the sound speed (in meters per second) which will be used in doppler shift calculation. The doppler shift calculation is used to emulate the change in frequency in sound that is perceived by an observer when the sound source is travelling towards or away from the observer. The speed of sound depends on the medium the sound is propagating through.</p>
<!-- @@@speedOfSound -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$finishedLoading -->
<table class="qmlname"><tr valign="top" id="finishedLoading-signal"><td class="tblQmlFuncNode"><p><span class="name">finishedLoading</span>()</p></td></tr></table><p>This signal is emitted when <a href="#loading-prop">loading</a> has completed.</p>
<p>The corresponding handler is <code>onFinishedLoading</code>.</p>
<!-- @@@finishedLoading -->
<br/>
<!-- $$$isLoadingChanged -->
<table class="qmlname"><tr valign="top" id="isLoadingChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">isLoadingChanged</span>()</p></td></tr></table><p>This signal is emitted when the <a href="#loading-prop">loading</a> property changes.</p>
<p>The corresponding handler is <code>onIsLoadingChanged</code>.</p>
<!-- @@@isLoadingChanged -->
<br/>
<!-- $$$liveInstanceCountChanged -->
<table class="qmlname"><tr valign="top" id="liveInstanceCountChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">liveInstanceCountChanged</span>()</p></td></tr></table><p>This signal is emitted when the number of live instances managed by the <a href="index.html">AudioEngine</a> is changed.</p>
<p>The corresponding handler is <code>onLiveInstanceCountChanged</code>.</p>
<!-- @@@liveInstanceCountChanged -->
<br/>
<!-- $$$ready -->
<table class="qmlname"><tr valign="top" id="ready-signal"><td class="tblQmlFuncNode"><p><span class="name">ready</span>()</p></td></tr></table><p>This signal is emitted when the <a href="index.html">AudioEngine</a> is ready to use.</p>
<p>The corresponding handler is <code>onReady</code>.</p>
<!-- @@@ready -->
<br/>
