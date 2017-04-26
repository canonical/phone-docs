---
Title: QtContacts.GlobalPresence
---

# QtContacts.GlobalPresence

<span class="subtitle"></span>
<!-- $$$GlobalPresence-brief -->
<p>The GlobalPresence element provides aggregated presence information for a contact, synthesized or supplied by the backend. More...</p>
<!-- @@@GlobalPresence -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtContacts 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#customMessage-prop">customMessage</a></b></b> : string</li>
<li class="fn"><b><b><a href="#imageUrl-prop">imageUrl</a></b></b> : url</li>
<li class="fn"><b><b><a href="#nickname-prop">nickname</a></b></b> : string</li>
<li class="fn"><b><b><a href="#state-prop">state</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#stateText-prop">stateText</a></b></b> : string</li>
<li class="fn"><b><b><a href="#timestamp-prop">timestamp</a></b></b> : date</li>
</ul>
<!-- $$$GlobalPresence-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">GlobalPresence</a> element contains the following field types:</p>
<ul>
<li><a href="index.html">GlobalPresence</a>.Timestamp</li>
<li><a href="index.html">GlobalPresence</a>.Nickname</li>
<li><a href="index.html">GlobalPresence</a>.State</li>
<li><a href="index.html">GlobalPresence</a>.StateText</li>
<li><a href="index.html">GlobalPresence</a>.ImageUrl</li>
<li><a href="index.html">GlobalPresence</a>.CustomMessage</li>
</ul>
<p>This element is part of the <b>QtContacts</b> module.</p>
<!-- @@@GlobalPresence -->
<h2>Property Documentation</h2>
<!-- $$$customMessage -->
<table class="qmlname"><tr valign="top" id="customMessage-prop"><td class="tblQmlPropNode"><p><span class="name">customMessage</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the custom status message from the contact for the online account about which this detail stores presence information.</p>
<!-- @@@customMessage -->
<br/>
<!-- $$$imageUrl -->
<table class="qmlname"><tr valign="top" id="imageUrl-prop"><td class="tblQmlPropNode"><p><span class="name">imageUrl</span> : <span class="type">url</span></p></td></tr></table><p>This property holds the last-known status image url of the contact for the online account about which this detail stores presence information.</p>
<!-- @@@imageUrl -->
<br/>
<!-- $$$nickname -->
<table class="qmlname"><tr valign="top" id="nickname-prop"><td class="tblQmlPropNode"><p><span class="name">nickname</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the nickname value of the <a href="index.html">GlobalPresence</a>.</p>
<!-- @@@nickname -->
<br/>
<!-- $$$state -->
<table class="qmlname"><tr valign="top" id="state-prop"><td class="tblQmlPropNode"><p><span class="name">state</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the presence state enumeration value.</p>
<ul>
<li>Presence.Unknown - Signifies that the presence state of the contact is not currently known (default).</li>
<li>Presence.Available - Signifies that the contact is available.</li>
<li>Presence.Hidden - Signifies that the contact is hidden.</li>
<li>Presence.Busy - Signifies that the contact is busy.</li>
<li>Presence.Away - Signifies that the contact is away.</li>
<li>Presence.ExtendedAway - Signifies that the contact is away for an extended period of time.</li>
<li>Presence.Offline - Signifies that the contact is offline.</li>
</ul>
<!-- @@@state -->
<br/>
<!-- $$$stateText -->
<table class="qmlname"><tr valign="top" id="stateText-prop"><td class="tblQmlPropNode"><p><span class="name">stateText</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the text corresponding to the current presence state.</p>
<!-- @@@stateText -->
<br/>
<!-- $$$timestamp -->
<table class="qmlname"><tr valign="top" id="timestamp-prop"><td class="tblQmlPropNode"><p><span class="name">timestamp</span> : <span class="type">date</span></p></td></tr></table><p>This property holds the timestamp value of the <a href="index.html">GlobalPresence</a>.</p>
<!-- @@@timestamp -->
<br/>
