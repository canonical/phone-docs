---
Title: QtMultimedia.Radio
---

# QtMultimedia.Radio

<span class="subtitle"></span>
<!-- $$$Radio-brief -->
<p>Access radio functionality from a QML application. More...</p>
<!-- @@@Radio -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtMultimedia 5.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#antennaConnected-prop">antennaConnected</a></b></b> : int</li>
<li class="fn"><b><b><a href="#availability-prop">availability</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#band-prop">band</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#frequency-prop">frequency</a></b></b> : int</li>
<li class="fn"><b><b><a href="#frequencyStep-prop">frequencyStep</a></b></b> : int</li>
<li class="fn"><b><b><a href="#maximumFrequency-prop">maximumFrequency</a></b></b> : int</li>
<li class="fn"><b><b><a href="#minimumFrequency-prop">minimumFrequency</a></b></b> : int</li>
<li class="fn"><b><b><a href="#muted-prop">muted</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#searching-prop">searching</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#signalStrength-prop">signalStrength</a></b></b> : int</li>
<li class="fn"><b><b><a href="#state-prop">state</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#stereo-prop">stereo</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#stereoMode-prop">stereoMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#volume-prop">volume</a></b></b> : int</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#stationFound-signal">stationFound</a></b></b>(int <i>frequency</i>, string <i>stationId</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#cancelScan-method">cancelScan</a></b></b>()</li>
<li class="fn"><b><b><a href="#scanDown-method">scanDown</a></b></b>()</li>
<li class="fn"><b><b><a href="#scanUp-method">scanUp</a></b></b>()</li>
<li class="fn"><b><b><a href="#searchAllStations-method">searchAllStations</a></b></b>(enumeration <i>searchMode</i>)</li>
<li class="fn"><b><b><a href="#start-method">start</a></b></b>()</li>
<li class="fn"><b><b><a href="#stop-method">stop</a></b></b>()</li>
<li class="fn"><b><b><a href="#tuneDown-method">tuneDown</a></b></b>()</li>
<li class="fn"><b><b><a href="#tuneUp-method">tuneUp</a></b></b>()</li>
</ul>
<!-- $$$Radio-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Radio is part of the <b>QtMultimedia 5.0</b> module.</p>
<pre class="qml">import QtQuick 2.0
import QtMultimedia 5.0
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">320</span>
<span class="name">height</span>: <span class="number">480</span>
<span class="type"><a href="index.html">Radio</a></span> {
<span class="name">id</span>: <span class="name">radio</span>
<span class="name">band</span>: <span class="name">Radio</span>.<span class="name">FM</span>
}
<span class="type">MouseArea</span> {
<span class="name">x</span>: <span class="number">0</span>; <span class="name">y</span>: <span class="number">0</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
<span class="name">onClicked</span>: <span class="name">radio</span>.<span class="name">scanDown</span>()
}
<span class="type">MouseArea</span> {
<span class="name">x</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>; <span class="name">y</span>: <span class="number">0</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
<span class="name">onClicked</span>: <span class="name">radio</span>.<span class="name">scanUp</span>()
}
}</pre>
<p>You can use <code>Radio</code> to tune the radio and get information about the signal. You can also use the Radio to get information about tuning, for instance the frequency steps supported for tuning.</p>
<p>The corresponding <a href="QtMultimedia.RadioData.md">RadioData</a> gives RDS information about the current radio station. The best way to access the <a href="QtMultimedia.RadioData.md">RadioData</a> for the current Radio is to use the <code>radioData</code> property.</p>
<p><b>See also </b><a href="QtMultimedia.radiooverview.md">Radio Overview</a>.</p>
<!-- @@@Radio -->
<h2>Property Documentation</h2>
<!-- $$$antennaConnected -->
<table class="qmlname"><tr valign="top" id="antennaConnected-prop"><td class="tblQmlPropNode"><p><span class="name">antennaConnected</span> : <span class="type">int</span></p></td></tr></table><p>This property is true if there is an antenna connected. Otherwise it will be false.</p>
<!-- @@@antennaConnected -->
<br/>
<!-- $$$availability -->
<table class="qmlname"><tr valign="top" id="availability-prop"><td class="tblQmlPropNode"><p><span class="name">availability</span> : <span class="type">enumeration</span></p></td></tr></table><p>Returns the availability state of the radio.</p>
<p>This is one of:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >Available</td><td >The radio is available to use</td></tr>
<tr valign="top"><td >Busy</td><td >The radio is usually available to use, but is currently busy. This can happen when some other process needs to use the audio hardware.</td></tr>
<tr valign="top"><td >Unavailable</td><td >The radio is not available to use (there may be no radio hardware)</td></tr>
<tr valign="top"><td >ResourceMissing</td><td >There is one or more resources missing, so the radio cannot be used. It may be possible to try again at a later time. This can occur if there is no antenna connected - see the <a href="#antennaConnected-prop">antennaConnected</a> property as well.</td></tr>
</table>
<!-- @@@availability -->
<br/>
<!-- $$$band -->
<table class="qmlname"><tr valign="top" id="band-prop"><td class="tblQmlPropNode"><p><span class="name">band</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the frequency band used for the radio, which can be specified as any one of the values in the table below.</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >AM</td><td >520 to 1610 kHz, 9 or 10kHz channel spacing, extended 1610 to 1710 kHz</td></tr>
<tr valign="top"><td >FM</td><td >87.5 to 108.0 MHz, except Japan 76-90 MHz</td></tr>
<tr valign="top"><td >SW</td><td >1.711 to 30.0 MHz, divided into 15 bands. 5kHz channel spacing</td></tr>
<tr valign="top"><td >LW</td><td >148.5 to 283.5 kHz, 9kHz channel spacing (Europe, Africa, Asia)</td></tr>
<tr valign="top"><td >FM2</td><td >range not defined, used when area supports more than one FM range</td></tr>
</table>
<!-- @@@band -->
<br/>
<!-- $$$frequency -->
<table class="qmlname"><tr valign="top" id="frequency-prop"><td class="tblQmlPropNode"><p><span class="name">frequency</span> : <span class="type">int</span></p></td></tr></table><p>Sets the frequency in Hertz that the radio is tuned to. The frequency must be within the frequency range for the current band, otherwise it will be changed to be within the frequency range.</p>
<p><b>See also </b><a href="#maximumFrequency-prop">maximumFrequency</a> and <a href="#minimumFrequency-prop">minimumFrequency</a>.</p>
<!-- @@@frequency -->
<br/>
<!-- $$$frequencyStep -->
<table class="qmlname"><tr valign="top" id="frequencyStep-prop"><td class="tblQmlPropNode"><p><span class="name">frequencyStep</span> : <span class="type">int</span></p></td></tr></table><p>The number of Hertz for each step when tuning the radio manually. The value is for the current <a href="#band-prop">band</a>.</p>
<!-- @@@frequencyStep -->
<br/>
<!-- $$$maximumFrequency -->
<table class="qmlname"><tr valign="top" id="maximumFrequency-prop"><td class="tblQmlPropNode"><p><span class="name">maximumFrequency</span> : <span class="type">int</span></p></td></tr></table><p>The maximum frequency for the current <a href="#band-prop">band</a>.</p>
<!-- @@@maximumFrequency -->
<br/>
<!-- $$$minimumFrequency -->
<table class="qmlname"><tr valign="top" id="minimumFrequency-prop"><td class="tblQmlPropNode"><p><span class="name">minimumFrequency</span> : <span class="type">int</span></p></td></tr></table><p>The minimum frequency for the current <a href="#band-prop">band</a>.</p>
<!-- @@@minimumFrequency -->
<br/>
<!-- $$$muted -->
<table class="qmlname"><tr valign="top" id="muted-prop"><td class="tblQmlPropNode"><p><span class="name">muted</span> : <span class="type">bool</span></p></td></tr></table><p>This property reflects whether the radio is muted or not.</p>
<!-- @@@muted -->
<br/>
<!-- $$$searching -->
<table class="qmlname"><tr valign="top" id="searching-prop"><td class="tblQmlPropNode"><p><span class="name">searching</span> : <span class="type">bool</span></p></td></tr></table><p>This property is true if the radio is currently searching for radio stations, for instance using the <a href="#scanUp-method">scanUp</a>, <a href="#scanDown-method">scanDown</a>, and <a href="#searchAllStations-method">searchAllStations</a> methods. Once the search completes, or if it is cancelled using <a href="#cancelScan-method">cancelScan</a>, this property will be false.</p>
<!-- @@@searching -->
<br/>
<!-- $$$signalStrength -->
<table class="qmlname"><tr valign="top" id="signalStrength-prop"><td class="tblQmlPropNode"><p><span class="name">signalStrength</span> : <span class="type">int</span></p></td></tr></table><p>The strength of the current radio signal as a percentage where 0% equals no signal, and 100% is a very good signal.</p>
<!-- @@@signalStrength -->
<br/>
<!-- $$$state -->
<table class="qmlname"><tr valign="top" id="state-prop"><td class="tblQmlPropNode"><p><span class="name">state</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the current state of the Radio.</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >ActiveState</td><td >The radio is started and active</td></tr>
<tr valign="top"><td >StoppedState</td><td >The radio is stopped</td></tr>
</table>
<p><b>See also </b><a href="#start-method">start</a> and <a href="#stop-method">stop</a>.</p>
<!-- @@@state -->
<br/>
<!-- $$$stereo -->
<table class="qmlname"><tr valign="top" id="stereo-prop"><td class="tblQmlPropNode"><p><span class="name">stereo</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the radio is receiving a stereo signal or not. If <a href="#stereoMode-prop">stereoMode</a> is set to ForceMono the value will always be false. Likewise, it will always be true if <a href="#stereoMode-prop">stereoMode</a> is set to ForceStereo.</p>
<p><b>See also </b><a href="#stereoMode-prop">stereoMode</a>.</p>
<!-- @@@stereo -->
<br/>
<!-- $$$stereoMode -->
<table class="qmlname"><tr valign="top" id="stereoMode-prop"><td class="tblQmlPropNode"><p><span class="name">stereoMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the stereo mode of the radio, which can be set to any one of the values in the table below.</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >Auto</td><td >Uses stereo mode matching the station</td></tr>
<tr valign="top"><td >ForceStereo</td><td >Forces the radio to play the station in stereo, converting the sound signal if necessary</td></tr>
<tr valign="top"><td >ForceMono</td><td >Forces the radio to play the station in mono, converting the sound signal if necessary</td></tr>
</table>
<!-- @@@stereoMode -->
<br/>
<!-- $$$volume -->
<table class="qmlname"><tr valign="top" id="volume-prop"><td class="tblQmlPropNode"><p><span class="name">volume</span> : <span class="type">int</span></p></td></tr></table><p>Set this property to control the volume of the radio. The valid range of the volume is from 0 to 100.</p>
<!-- @@@volume -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$stationFound -->
<table class="qmlname"><tr valign="top" id="stationFound-signal"><td class="tblQmlFuncNode"><p><span class="name">stationFound</span>(<span class="type">int</span><i> frequency</i>, <span class="type">string</span><i> stationId</i>)</p></td></tr></table><p>This signal is emitted when a new radio station is found. This signal is only emitted if <a href="#searchAllStations-method">searchAllStations</a> is called with <code>SearchGetStationId</code>.</p>
<p>The <i>frequency</i> is returned in Hertz, and the <i>stationId</i> corresponds to the station Id in the <a href="QtMultimedia.RadioData.md">RadioData</a> for this radio station.</p>
<p>The corresponding handler is <code>onStationFound</code>.</p>
<!-- @@@stationFound -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$cancelScan -->
<table class="qmlname"><tr valign="top" id="cancelScan-method"><td class="tblQmlFuncNode"><p><span class="name">cancelScan</span>()</p></td></tr></table><p>Cancel the current scan. Will also cancel a search started with <a href="#searchAllStations-method">searchAllStations</a>.</p>
<!-- @@@cancelScan -->
<br/>
<!-- $$$scanDown -->
<table class="qmlname"><tr valign="top" id="scanDown-method"><td class="tblQmlFuncNode"><p><span class="name">scanDown</span>()</p></td></tr></table><p>Searches backward in the frequency range for the current band.</p>
<!-- @@@scanDown -->
<br/>
<!-- $$$scanUp -->
<table class="qmlname"><tr valign="top" id="scanUp-method"><td class="tblQmlFuncNode"><p><span class="name">scanUp</span>()</p></td></tr></table><p>Searches forward in the frequency range for the current band.</p>
<!-- @@@scanUp -->
<br/>
<!-- $$$searchAllStations -->
<table class="qmlname"><tr valign="top" id="searchAllStations-method"><td class="tblQmlFuncNode"><p><span class="name">searchAllStations</span>(<span class="type">enumeration</span><i> searchMode</i>)</p></td></tr></table><p>Start searching the complete frequency range for the current band, and save all the radio stations found. The search mode can be either of the values described in the table below.</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >SearchFast</td><td >Stores each radio station for later retrival and tuning</td></tr>
<tr valign="top"><td >SearchGetStationId</td><td >Does the same as SearchFast, but also emits the station Id with the <a href="#stationFound-signal">stationFound</a> signal.</td></tr>
</table>
<p>The snippet below uses <code>searchAllStations</code> with <code>SearchGetStationId</code> to receive all the radio stations in the current band, and store them in a ListView. The station Id is shown to the user and if the user presses a station, the radio is tuned to this station.</p>
<pre class="qml"><span class="type">Item</span> {
<span class="name">width</span>: <span class="number">640</span>
<span class="name">height</span>: <span class="number">360</span>
<span class="type"><a href="index.html">Radio</a></span> {
<span class="name">id</span>: <span class="name">radio</span>
<span class="name">onStationFound</span>: <span class="name">radioStations</span>.<span class="name">append</span>({&quot;frequency&quot;: <span class="name">frequency</span>, &quot;stationId&quot;: <span class="name">stationId</span>})
}
<span class="type">ListModel</span> {
<span class="name">id</span>: <span class="name">radioStations</span>
}
<span class="type">ListView</span> {
<span class="name">model</span>: <span class="name">radioStations</span>
<span class="name">delegate</span>: <span class="name">Rectangle</span> {
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">radio</span>.<span class="name">frequency</span> <span class="operator">=</span> <span class="name">frequency</span>
}
<span class="type">Text</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">text</span>: <span class="name">stationId</span>
}
}
}
<span class="type">Rectangle</span> {
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">radio</span>.<span class="name">searchAllStations</span>(<span class="name">Radio</span>.<span class="name">SearchGetStationId</span>)
}
}
}</pre>
<!-- @@@searchAllStations -->
<br/>
<!-- $$$start -->
<table class="qmlname"><tr valign="top" id="start-method"><td class="tblQmlFuncNode"><p><span class="name">start</span>()</p></td></tr></table><p>Starts the radio. If the radio is available, as determined by the <a href="#availability-prop">availability</a> property, this will result in the <a href="#state-prop">state</a> becoming <code>ActiveState</code>.</p>
<!-- @@@start -->
<br/>
<!-- $$$stop -->
<table class="qmlname"><tr valign="top" id="stop-method"><td class="tblQmlFuncNode"><p><span class="name">stop</span>()</p></td></tr></table><p>Stops the radio. After calling this method the <a href="#state-prop">state</a> will be <code>StoppedState</code>.</p>
<!-- @@@stop -->
<br/>
<!-- $$$tuneDown -->
<table class="qmlname"><tr valign="top" id="tuneDown-method"><td class="tblQmlFuncNode"><p><span class="name">tuneDown</span>()</p></td></tr></table><p>Decrements the frequency by the frequency step for the current band. If the frequency is already set to the minimum frequency, calling this function has no effect.</p>
<p><b>See also </b><a href="#band-prop">band</a>, <a href="#frequencyStep-prop">frequencyStep</a>, and <a href="#minimumFrequency-prop">minimumFrequency</a>.</p>
<!-- @@@tuneDown -->
<br/>
<!-- $$$tuneUp -->
<table class="qmlname"><tr valign="top" id="tuneUp-method"><td class="tblQmlFuncNode"><p><span class="name">tuneUp</span>()</p></td></tr></table><p>Increments the frequency by the frequency step for the current band. If the frequency is already set to the maximum frequency, calling this function has no effect.</p>
<p><b>See also </b><a href="#band-prop">band</a>, <a href="#frequencyStep-prop">frequencyStep</a>, and <a href="#maximumFrequency-prop">maximumFrequency</a>.</p>
<!-- @@@tuneUp -->
<br/>
