---
Title: QtMultimedia.RadioData
---

# QtMultimedia.RadioData

<span class="subtitle"></span>
<!-- $$$RadioData-brief -->
<p>Access RDS data from a QML application. More...</p>
<!-- @@@RadioData -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtMultimedia 5.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#alternativeFrequenciesEnabled-prop">alternativeFrequenciesEnabled</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#availability-prop">availability</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#programType-prop">programType</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#programTypeName-prop">programTypeName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#radioText-prop">radioText</a></b></b> : string</li>
<li class="fn"><b><b><a href="#stationId-prop">stationId</a></b></b> : string</li>
<li class="fn"><b><b><a href="#stationName-prop">stationName</a></b></b> : string</li>
</ul>
<!-- $$$RadioData-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This type is part of the <b>QtMultimedia 5.0</b> module.</p>
<p><code>RadioData</code> is your gateway to all the data available through RDS. RDS is the Radio Data System which allows radio stations to broadcast information like the <a href="#stationId-prop">stationId</a>, <a href="#programType-prop">programType</a>, <a href="#programTypeName-prop">programTypeName</a>, <a href="#stationName-prop">stationName</a>, and <a href="#radioText-prop">radioText</a>. This information can be read from the <code>RadioData</code>. It also allows you to set whether the radio should tune to alternative frequencies if the current signal strength falls too much.</p>
<pre class="qml">import QtQuick 2.0
import QtMultimedia 5.0
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">480</span>
<span class="name">height</span>: <span class="number">320</span>
<span class="type"><a href="QtMultimedia.Radio.md">Radio</a></span> {
<span class="name">id</span>: <span class="name">radio</span>
<span class="name">band</span>: <span class="name">Radio</span>.<span class="name">FM</span>
}
<span class="type">Column</span> {
<span class="type">Text</span> {
<span class="name">text</span>: <span class="name">radio</span>.<span class="name">radioData</span>.<span class="name">stationName</span>
}
<span class="type">Text</span> {
<span class="name">text</span>: <span class="name">radio</span>.<span class="name">radioData</span>.<span class="name">programTypeName</span>
}
<span class="type">Text</span> {
<span class="name">text</span>: <span class="name">radio</span>.<span class="name">radioData</span>.<span class="name">radioText</span>
}
}
}</pre>
<p>You use <code>RadioData</code> together with a <a href="QtMultimedia.Radio.md">Radio</a>, either by accessing the <code>radioData</code> property of the Radio, or creating a separate <a href="index.html">RadioData</a>. The properties of the <a href="index.html">RadioData</a> type will reflect the information broadcast by the radio station the Radio is currently tuned to.</p>
<p><b>See also </b><a href="QtMultimedia.radiooverview.md">Radio Overview</a>.</p>
<!-- @@@RadioData -->
<h2>Property Documentation</h2>
<!-- $$$alternativeFrequenciesEnabled -->
<table class="qmlname"><tr valign="top" id="alternativeFrequenciesEnabled-prop"><td class="tblQmlPropNode"><p><span class="name">alternativeFrequenciesEnabled</span> : <span class="type">bool</span></p></td></tr></table><p>This property allows you to specify whether the radio should try and tune to alternative frequencies if the signal strength of the current station becomes too weak. The alternative frequencies are emitted over RDS by the radio station, and the tuning happens automatically.</p>
<!-- @@@alternativeFrequenciesEnabled -->
<br/>
<!-- $$$availability -->
<table class="qmlname"><tr valign="top" id="availability-prop"><td class="tblQmlPropNode"><p><span class="name">availability</span> : <span class="type">enumeration</span></p></td></tr></table><p>Returns the availability state of the radio data interface.</p>
<p>This is one of:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >Available</td><td >The radio data interface is available to use</td></tr>
<tr valign="top"><td >Busy</td><td >The radio data interface is usually available to use, but is currently busy.</td></tr>
<tr valign="top"><td >Unavailable</td><td >The radio data interface is not available to use (there may be no radio hardware)</td></tr>
<tr valign="top"><td >ResourceMissing</td><td >There is one or more resources missing, so the radio cannot be used. It may be possible to try again at a later time.</td></tr>
</table>
<!-- @@@availability -->
<br/>
<!-- $$$programType -->
<table class="qmlname"><tr valign="top" id="programType-prop"><td class="tblQmlPropNode"><p><span class="name">programType</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the type of the currently playing program as transmitted by the radio station. The value can be any one of the values defined in the table below.</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th></tr></thead>
<tr valign="top"><td >Undefined</td></tr>
<tr valign="top"><td >News</td></tr>
<tr valign="top"><td >CurrentAffairs</td></tr>
<tr valign="top"><td >Information</td></tr>
<tr valign="top"><td >Sport</td></tr>
<tr valign="top"><td >Education</td></tr>
<tr valign="top"><td >Drama</td></tr>
<tr valign="top"><td >Culture</td></tr>
<tr valign="top"><td >Science</td></tr>
<tr valign="top"><td >Varied</td></tr>
<tr valign="top"><td >PopMusic</td></tr>
<tr valign="top"><td >RockMusic</td></tr>
<tr valign="top"><td >EasyListening</td></tr>
<tr valign="top"><td >LightClassical</td></tr>
<tr valign="top"><td >SeriousClassical</td></tr>
<tr valign="top"><td >OtherMusic</td></tr>
<tr valign="top"><td >Weather</td></tr>
<tr valign="top"><td >Finance</td></tr>
<tr valign="top"><td >ChildrensProgrammes</td></tr>
<tr valign="top"><td >SocialAffairs</td></tr>
<tr valign="top"><td >Religion</td></tr>
<tr valign="top"><td >PhoneIn</td></tr>
<tr valign="top"><td >Travel</td></tr>
<tr valign="top"><td >Leisure</td></tr>
<tr valign="top"><td >JazzMusic</td></tr>
<tr valign="top"><td >CountryMusic</td></tr>
<tr valign="top"><td >NationalMusic</td></tr>
<tr valign="top"><td >OldiesMusic</td></tr>
<tr valign="top"><td >FolkMusic</td></tr>
<tr valign="top"><td >Documentary</td></tr>
<tr valign="top"><td >AlarmTest</td></tr>
<tr valign="top"><td >Alarm</td></tr>
<tr valign="top"><td >Talk</td></tr>
<tr valign="top"><td >ClassicRock</td></tr>
<tr valign="top"><td >AdultHits</td></tr>
<tr valign="top"><td >SoftRock</td></tr>
<tr valign="top"><td >Top40</td></tr>
<tr valign="top"><td >Soft</td></tr>
<tr valign="top"><td >Nostalgia</td></tr>
<tr valign="top"><td >Classical</td></tr>
<tr valign="top"><td >RhythmAndBlues</td></tr>
<tr valign="top"><td >SoftRhythmAndBlues</td></tr>
<tr valign="top"><td >Language</td></tr>
<tr valign="top"><td >ReligiousMusic</td></tr>
<tr valign="top"><td >ReligiousTalk</td></tr>
<tr valign="top"><td >Personality</td></tr>
<tr valign="top"><td >Public</td></tr>
<tr valign="top"><td >College</td></tr>
</table>
<!-- @@@programType -->
<br/>
<!-- $$$programTypeName -->
<table class="qmlname"><tr valign="top" id="programTypeName-prop"><td class="tblQmlPropNode"><p><span class="name">programTypeName</span> : <span class="type">string</span></p></td></tr></table><p>This property holds a string representation of the <a href="#programType-prop">programType</a>.</p>
<!-- @@@programTypeName -->
<br/>
<!-- $$$radioText -->
<table class="qmlname"><tr valign="top" id="radioText-prop"><td class="tblQmlPropNode"><p><span class="name">radioText</span> : <span class="type">string</span></p></td></tr></table><p>This property holds free-text transmitted by the radio station. This is typically used to show supporting information for the currently playing content, for instance song title or artist name.</p>
<!-- @@@radioText -->
<br/>
<!-- $$$stationId -->
<table class="qmlname"><tr valign="top" id="stationId-prop"><td class="tblQmlPropNode"><p><span class="name">stationId</span> : <span class="type">string</span></p></td></tr></table><p>This property allows you to read the station Id of the currently tuned radio station.</p>
<!-- @@@stationId -->
<br/>
<!-- $$$stationName -->
<table class="qmlname"><tr valign="top" id="stationName-prop"><td class="tblQmlPropNode"><p><span class="name">stationName</span> : <span class="type">string</span></p></td></tr></table><p>This property has the name of the currently tuned radio station.</p>
<!-- @@@stationName -->
<br/>
