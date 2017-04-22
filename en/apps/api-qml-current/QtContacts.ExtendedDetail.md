---
Title: QtContacts.ExtendedDetail
---

# QtContacts.ExtendedDetail

<span class="subtitle"></span>
<!-- $$$ExtendedDetail-brief -->
<p>The ExtendedDetail element contains an extended detail of a contact. More...</p>
<!-- @@@ExtendedDetail -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtContacts 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#data-prop">data</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
</ul>
<!-- $$$ExtendedDetail-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Note for the jsondb manager backend: it converts extended detail data of type date, time or javascript Date to a string expressed in local timezone in ISO 8601 format without timezone specified. Javascript function Date.parse() cannot be used to parse this string, since it interprets the string without timezone specified being in UTC. It is recommended to convert dates to strings before storing them to extended details. For example, javascript functions Date.toISOString() and Date.parse() can be used for the conversion.</p>
<p><a href="index.html">ExtendedDetail</a> element contains the following field types:</p>
<ul>
<li><a href="index.html">ExtendedDetail</a>.Name</li>
<li><a href="index.html">ExtendedDetail</a>.Data</li>
</ul>
<p>This element is part of the <b>QtContacts</b> module.</p>
<p><b>See also </b>QContactExtendedDetail.</p>
<!-- @@@ExtendedDetail -->
<h2>Property Documentation</h2>
<!-- $$$data -->
<table class="qmlname"><tr valign="top" id="data-prop"><td class="tblQmlPropNode"><p><span class="name">data</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the data of the extended detail.</p>
<!-- @@@data -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the extended detail.</p>
<!-- @@@name -->
<br/>
