---
Title: QtContacts.DetailFilter
---

# QtContacts.DetailFilter

<span class="subtitle"></span>
<!-- $$$DetailFilter-brief -->
<p>The DetailFilter element provides a filter based around a detail value criterion. More...</p>
<!-- @@@DetailFilter -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtContacts 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#detail-prop">detail</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#field-prop">field</a></b></b> : int</li>
<li class="fn"><b><b><a href="#matchFlags-prop">matchFlags</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#value-prop">value</a></b></b> : variant</li>
</ul>
<!-- $$$DetailFilter-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>This element is part of the <b>QtContacts</b> module.</p>
<p><b>See also </b>QContactDetailFilter.</p>
<!-- @@@DetailFilter -->
<h2>Property Documentation</h2>
<!-- $$$detail -->
<table class="qmlname"><tr valign="top" id="detail-prop"><td class="tblQmlPropNode"><p><span class="name">detail</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the detail type of which details will be matched to.</p>
<p><b>See also </b><a href="QtContacts.ContactDetail.md#type-prop">ContactDetail::type</a>.</p>
<!-- @@@detail -->
<br/>
<!-- $$$field -->
<table class="qmlname"><tr valign="top" id="field-prop"><td class="tblQmlPropNode"><p><span class="name">field</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the detail field type of which detail fields will be matched to. Detail field types are enumeration values defined in each detail elements.</p>
<p><b>See also </b><a href="QtContacts.Address.md">Address</a>, <a href="QtContacts.Anniversary.md">Anniversary</a>, <a href="QtContacts.Avatar.md">Avatar</a>, <a href="QtContacts.Birthday.md">Birthday</a>, <a href="QtContacts.DisplayLabel.md">DisplayLabel</a>, <a href="QtContacts.EmailAddress.md">EmailAddress</a>, <a href="QtContacts.Family.md">Family</a>, <a href="QtContacts.Favorite.md">Favorite</a>, <a href="QtContacts.Gender.md">Gender</a>, <a href="QtContacts.GeoLocation.md">GeoLocation</a>, <a href="QtContacts.GlobalPresence.md">GlobalPresence</a>, <a href="QtContacts.Guid.md">Guid</a>, <a href="QtContacts.Name.md">Name</a>, <a href="QtContacts.Nickname.md">Nickname</a>, <a href="QtContacts.Note.md">Note</a>, <a href="QtContacts.OnlineAccount.md">OnlineAccount</a>, <a href="QtContacts.Organization.md">Organization</a>, <a href="QtContacts.PhoneNumber.md">PhoneNumber</a>, <a href="QtContacts.Presence.md">Presence</a>, <a href="QtContacts.Ringtone.md">Ringtone</a>, <a href="QtContacts.SyncTarget.md">SyncTarget</a>, <a href="QtContacts.Tag.md">Tag</a>, <a href="QtContacts.Timestamp.md">Timestamp</a>, <a href="QtContacts.Url.md">Url</a>, and <a href="QtContacts.Hobby.md">Hobby</a>.</p>
<!-- @@@field -->
<br/>
<!-- $$$matchFlags -->
<table class="qmlname"><tr valign="top" id="matchFlags-prop"><td class="tblQmlPropNode"><p><span class="name">matchFlags</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the semantics of the value matching criterion. The valid match flags include:</p>
<ul>
<li>MatchExactly - Performs QVariant-based matching (default).</li>
<li>MatchContains - The search term is contained in the item.</li>
<li>MatchStartsWith - The search term matches the start of the item.</li>
<li>MatchEndsWith - The search term matches the end of the item.</li>
<li>MatchFixedString - Performs string-based matching. String-based comparisons are case-insensitive unless the <code>MatchCaseSensitive</code> flag is also specified.</li>
<li>MatchCaseSensitive - The search is case sensitive.</li>
</ul>
<!-- @@@matchFlags -->
<br/>
<!-- $$$value -->
<table class="qmlname"><tr valign="top" id="value-prop"><td class="tblQmlPropNode"><p><span class="name">value</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the value criterion of the detail filter.</p>
<!-- @@@value -->
<br/>
