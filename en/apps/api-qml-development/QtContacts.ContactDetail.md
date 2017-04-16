---
Title: QtContacts.ContactDetail
---

# QtContacts.ContactDetail

<span class="subtitle"></span>
<!-- $$$ContactDetail-brief -->
<p>The ContactDetail element represents a single, complete detail about a contact. More...</p>
<!-- @@@ContactDetail -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtContacts 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#contexts-prop">contexts</a></b></b> : list&lt;int&gt;</li>
<li class="fn"><b><b><a href="#detailUri-prop">detailUri</a></b></b> : string</li>
<li class="fn"><b><b><a href="#fields-prop">fields</a></b></b> : list&lt;int&gt;</li>
<li class="fn"><b><b><a href="#linkedDetailUris-prop">linkedDetailUris</a></b></b> : list&lt;string&gt;</li>
<li class="fn"><b><b><a href="#readOnly-prop">readOnly</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#removable-prop">removable</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#type-prop">type</a></b></b> : enumeration</li>
</ul>
<!-- $$$ContactDetail-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The ContactDetail element is part of the <b>QtContacts</b> module.</p>
<p><b>See also </b>QContactDetail.</p>
<!-- @@@ContactDetail -->
<h2>Property Documentation</h2>
<!-- $$$contexts -->
<table class="qmlname"><tr valign="top" id="contexts-prop"><td class="tblQmlPropNode"><p><span class="name">contexts</span> : <span class="type">list</span>&lt;<span class="type">int</span>&gt;</p></td></tr></table><p>This property holds one or more contexts that this detail is associated with.</p>
<!-- @@@contexts -->
<br/>
<!-- $$$detailUri -->
<table class="qmlname"><tr valign="top" id="detailUri-prop"><td class="tblQmlPropNode"><p><span class="name">detailUri</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the unique URI of the detail if one exists.</p>
<!-- @@@detailUri -->
<br/>
<!-- $$$fields -->
<table class="qmlname"><tr valign="top" id="fields-prop"><td class="tblQmlPropNode"><p><span class="name">fields</span> : <span class="type">list</span>&lt;<span class="type">int</span>&gt;</p></td></tr></table><p>This property holds the list of all fields which this detail supports.</p>
<p>This property is read only.</p>
<!-- @@@fields -->
<br/>
<!-- $$$linkedDetailUris -->
<table class="qmlname"><tr valign="top" id="linkedDetailUris-prop"><td class="tblQmlPropNode"><p><span class="name">linkedDetailUris</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td></tr></table><p>This property holds a list of detail URIs to which this detail is linked.</p>
<!-- @@@linkedDetailUris -->
<br/>
<!-- $$$readOnly -->
<table class="qmlname"><tr valign="top" id="readOnly-prop"><td class="tblQmlPropNode"><p><span class="name">readOnly</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates whether or not this detail is writable. This property is read only.</p>
<!-- @@@readOnly -->
<br/>
<!-- $$$removable -->
<table class="qmlname"><tr valign="top" id="removable-prop"><td class="tblQmlPropNode"><p><span class="name">removable</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates whether or not this detail is removale. This property is read only.</p>
<!-- @@@removable -->
<br/>
<!-- $$$type -->
<table class="qmlname"><tr valign="top" id="type-prop"><td class="tblQmlPropNode"><p><span class="name">type</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the type of the detail.</p>
<ul>
<li><a href="index.html">ContactDetail</a>.Address</li>
<li><a href="index.html">ContactDetail</a>.Anniversary</li>
<li><a href="index.html">ContactDetail</a>.Avatar</li>
<li><a href="index.html">ContactDetail</a>.Birthday</li>
<li><a href="index.html">ContactDetail</a>.<a href="QtContacts.DisplayLabel.md">DisplayLabel</a></li>
<li><a href="index.html">ContactDetail</a>.Email</li>
<li><a href="index.html">ContactDetail</a>.<a href="QtContacts.ExtendedDetail.md">ExtendedDetail</a></li>
<li><a href="index.html">ContactDetail</a>.Family</li>
<li><a href="index.html">ContactDetail</a>.Favorite</li>
<li><a href="index.html">ContactDetail</a>.Gender</li>
<li><a href="index.html">ContactDetail</a>.Geolocation</li>
<li><a href="index.html">ContactDetail</a>.<a href="QtContacts.GlobalPresence.md">GlobalPresence</a></li>
<li><a href="index.html">ContactDetail</a>.Guid</li>
<li><a href="index.html">ContactDetail</a>.Hobby</li>
<li><a href="index.html">ContactDetail</a>.Name</li>
<li><a href="index.html">ContactDetail</a>.NickName</li>
<li><a href="index.html">ContactDetail</a>.Note</li>
<li><a href="index.html">ContactDetail</a>.<a href="QtContacts.OnlineAccount.md">OnlineAccount</a></li>
<li><a href="index.html">ContactDetail</a>.Organization</li>
<li><a href="index.html">ContactDetail</a>.<a href="QtContacts.PhoneNumber.md">PhoneNumber</a></li>
<li><a href="index.html">ContactDetail</a>.Presence</li>
<li><a href="index.html">ContactDetail</a>.Ringtone</li>
<li><a href="index.html">ContactDetail</a>.<a href="QtContacts.SyncTarget.md">SyncTarget</a></li>
<li><a href="index.html">ContactDetail</a>.Tag</li>
<li><a href="index.html">ContactDetail</a>.Timestamp</li>
<li><a href="index.html">ContactDetail</a>.Url</li>
<li><a href="index.html">ContactDetail</a>.Version</li>
<li><a href="index.html">ContactDetail</a>.Unknown</li>
</ul>
<p>This property is read only.</p>
<!-- @@@type -->
<br/>
