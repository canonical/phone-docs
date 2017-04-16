---
Title: QtContacts.Address
---

# QtContacts.Address

<span class="subtitle"></span>
<!-- $$$Address-brief -->
<p>The Address element contains an address of a contact. More...</p>
<!-- @@@Address -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtContacts 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#country-prop">country</a></b></b> : string</li>
<li class="fn"><b><b><a href="#locality-prop">locality</a></b></b> : string</li>
<li class="fn"><b><b><a href="#postOfficeBox-prop">postOfficeBox</a></b></b> : string</li>
<li class="fn"><b><b><a href="#postcode-prop">postcode</a></b></b> : string</li>
<li class="fn"><b><b><a href="#region-prop">region</a></b></b> : string</li>
<li class="fn"><b><b><a href="#street-prop">street</a></b></b> : string</li>
<li class="fn"><b><b><a href="#subTypes-prop">subTypes</a></b></b> : list&lt;variant&gt;</li>
</ul>
<!-- $$$Address-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The fields in the Address element are based on the segments of the ADR property of a Versit vCard file.</p>
<p>Address element contains the following field types:</p>
<ul>
<li>Address.Street</li>
<li>Address.Locality</li>
<li>Address.Region</li>
<li>Address.PostCode</li>
<li>Address.Country</li>
<li>Address.SubTypes</li>
<li>Address.PostOfficeBox</li>
</ul>
<p>Versit <sup>&reg;</sup> is a trademark of the Internet Mail Consortium. This element is part of the <b>QtContacts</b> module.</p>
<!-- @@@Address -->
<h2>Property Documentation</h2>
<!-- $$$country -->
<table class="qmlname"><tr valign="top" id="country-prop"><td class="tblQmlPropNode"><p><span class="name">country</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the country of the address.</p>
<!-- @@@country -->
<br/>
<!-- $$$locality -->
<table class="qmlname"><tr valign="top" id="locality-prop"><td class="tblQmlPropNode"><p><span class="name">locality</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the city, town or suburb of the address.</p>
<!-- @@@locality -->
<br/>
<!-- $$$postOfficeBox -->
<table class="qmlname"><tr valign="top" id="postOfficeBox-prop"><td class="tblQmlPropNode"><p><span class="name">postOfficeBox</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the post office box identifier of the mailing address.</p>
<!-- @@@postOfficeBox -->
<br/>
<!-- $$$postcode -->
<table class="qmlname"><tr valign="top" id="postcode-prop"><td class="tblQmlPropNode"><p><span class="name">postcode</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the postal code for the address.</p>
<!-- @@@postcode -->
<br/>
<!-- $$$region -->
<table class="qmlname"><tr valign="top" id="region-prop"><td class="tblQmlPropNode"><p><span class="name">region</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name or identifier of the state, province or region of the address.</p>
<!-- @@@region -->
<br/>
<!-- $$$street -->
<table class="qmlname"><tr valign="top" id="street-prop"><td class="tblQmlPropNode"><p><span class="name">street</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the street number and street name of the address.</p>
<!-- @@@street -->
<br/>
<!-- $$$subTypes -->
<table class="qmlname"><tr valign="top" id="subTypes-prop"><td class="tblQmlPropNode"><p><span class="name">subTypes</span> : <span class="type">list</span>&lt;<span class="type">variant</span>&gt;</p></td></tr></table><p>This property stores the sub types of the address.</p>
<ul>
<li>Address.Parcel - An address for parcel delivery.</li>
<li>Address.Postal - An address for postal delivery.</li>
<li>Address.Domestic - An address for domestic mail delivery.</li>
<li>Address.International - An address for international mail delivery.</li>
</ul>
<!-- @@@subTypes -->
<br/>
