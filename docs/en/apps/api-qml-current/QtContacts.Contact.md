---
Title: QtContacts.Contact
---

# QtContacts.Contact

<span class="subtitle"></span>
<!-- $$$Contact-brief -->
<p>The Contact element represents an addressbook contact. More...</p>
<!-- @@@Contact -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtContacts 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#address-prop">address</a></b></b> : Address</li>
<li class="fn"><b><b><a href="#addresses-prop">addresses</a></b></b> : list&lt;Address&gt;</li>
<li class="fn"><b><b><a href="#anniversary-prop">anniversary</a></b></b> : Anniversary</li>
<li class="fn"><b><b><a href="#avatar-prop">avatar</a></b></b> : Avatar</li>
<li class="fn"><b><b><a href="#birthday-prop">birthday</a></b></b> : Birthday</li>
<li class="fn"><b><b><a href="#contactDetails-prop">contactDetails</a></b></b> : list&lt;ContactDetail&gt;</li>
<li class="fn"><b><b><a href="#contactId-prop">contactId</a></b></b> : int</li>
<li class="fn"><b><b><a href="#displayLabel-prop">displayLabel</a></b></b> : DisplayLabel</li>
<li class="fn"><b><b><a href="#email-prop">email</a></b></b> : EmailAddress</li>
<li class="fn"><b><b><a href="#emails-prop">emails</a></b></b> : list&lt;EmailAddress&gt;</li>
<li class="fn"><b><b><a href="#extendedDetail-prop">extendedDetail</a></b></b> : ExtendedDetail</li>
<li class="fn"><b><b><a href="#extendedDetails-prop">extendedDetails</a></b></b> : list&lt;ExtendedDetail&gt;</li>
<li class="fn"><b><b><a href="#family-prop">family</a></b></b> : Family</li>
<li class="fn"><b><b><a href="#favorite-prop">favorite</a></b></b> : Favorite</li>
<li class="fn"><b><b><a href="#gender-prop">gender</a></b></b> : Gender</li>
<li class="fn"><b><b><a href="#geolocation-prop">geolocation</a></b></b> : GeoLocation</li>
<li class="fn"><b><b><a href="#globalPresence-prop">globalPresence</a></b></b> : GlobalPresence</li>
<li class="fn"><b><b><a href="#guid-prop">guid</a></b></b> : Guid</li>
<li class="fn"><b><b><a href="#hobby-prop">hobby</a></b></b> : Hobby</li>
<li class="fn"><b><b><a href="#manager-prop">manager</a></b></b> : string</li>
<li class="fn"><b><b><a href="#modified-prop">modified</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : Name</li>
<li class="fn"><b><b><a href="#nickname-prop">nickname</a></b></b> : Nickname</li>
<li class="fn"><b><b><a href="#note-prop">note</a></b></b> : Note</li>
<li class="fn"><b><b><a href="#onlineAccount-prop">onlineAccount</a></b></b> : OnlineAccount</li>
<li class="fn"><b><b><a href="#organization-prop">organization</a></b></b> : Organization</li>
<li class="fn"><b><b><a href="#organizations-prop">organizations</a></b></b> : list&lt;Organization&gt;</li>
<li class="fn"><b><b><a href="#phoneNumber-prop">phoneNumber</a></b></b> : PhoneNumber</li>
<li class="fn"><b><b><a href="#phoneNumbers-prop">phoneNumbers</a></b></b> : list&lt;PhoneNumber&gt;</li>
<li class="fn"><b><b><a href="#presence-prop">presence</a></b></b> : Presence</li>
<li class="fn"><b><b><a href="#ringtone-prop">ringtone</a></b></b> : Ringtone</li>
<li class="fn"><b><b><a href="#syncTarget-prop">syncTarget</a></b></b> : SyncTarget</li>
<li class="fn"><b><b><a href="#tag-prop">tag</a></b></b> : Tag</li>
<li class="fn"><b><b><a href="#timestamp-prop">timestamp</a></b></b> : Timestamp</li>
<li class="fn"><b><b><a href="#type-prop">type</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#url-prop">url</a></b></b> : Url</li>
<li class="fn"><b><b><a href="#urls-prop">urls</a></b></b> : list&lt;Url&gt;</li>
<li class="fn"><b><b><a href="#version-prop">version</a></b></b> : Version</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#addDetail-method">addDetail</a></b></b>(detail)</li>
<li class="fn"><b><b><a href="#clearDetails-method">clearDetails</a></b></b>()</li>
<li class="fn"><b><b><a href="#isPreferredDetail-method">isPreferredDetail</a></b></b>(actionName, detail)</li>
<li class="fn"><b><b><a href="#preferredDetail-method">preferredDetail</a></b></b>(actionName, detail)</li>
<li class="fn"><b><b><a href="#removeDetail-method">removeDetail</a></b></b>(detail)</li>
<li class="fn"><b><b><a href="#save-method">save</a></b></b>()</li>
<li class="fn"><b><b><a href="#setPreferredDetail-method">setPreferredDetail</a></b></b>(actionName, detail)</li>
</ul>
<!-- $$$Contact-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Contact element is part of the <b>QtContacts</b> module.</p>
<p>A Contact object has a collection of details (like a name, phone numbers and email addresses). Each detail (which can have multiple fields) is stored in an appropriate subclass of <a href="QtContacts.ContactDetail.md">ContactDetail</a>, and the Contact allows retrieving these details in various ways.</p>
<p>If some of the contact details are not unique details, all of this type of detail values can be accessed by the property with the name in plural. For example, if there are 3 phone numbers stored in a contact, they can be accessed by contact.<a href="#phoneNumbers-prop">phoneNumbers</a> property, which holds a list of all <a href="QtContacts.PhoneNumber.md">PhoneNumber</a> details. If a contact does not contain a detail of particular type, the value of the corresponding singular property (e.g&#x2e; <a href="#phoneNumber-prop">phoneNumber</a>) in undefined and the plural (e.g&#x2e; <a href="#phoneNumbers-prop">phoneNumbers</a>) is empty. The list of properties which support multiple detail instances depends on the contact engine implementations.</p>
<p><b>See also </b>QContact.</p>
<!-- @@@Contact -->
<h2>Property Documentation</h2>
<!-- $$$address -->
<table class="qmlname"><tr valign="top" id="address-prop"><td class="tblQmlPropNode"><p><span class="name">address</span> : <span class="type"><a href="QtContacts.Address.md">Address</a></span></p></td></tr></table><p>This property holds the address detail of the Contact object. In case a contact has several addresses then the first one is returned.</p>
<!-- @@@address -->
<br/>
<!-- $$$addresses -->
<table class="qmlname"><tr valign="top" id="addresses-prop"><td class="tblQmlPropNode"><p><span class="name">addresses</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.Address.md">Address</a></span>&gt;</p></td></tr></table><p>This property holds the address details of the Contact object.</p>
<!-- @@@addresses -->
<br/>
<!-- $$$anniversary -->
<table class="qmlname"><tr valign="top" id="anniversary-prop"><td class="tblQmlPropNode"><p><span class="name">anniversary</span> : <span class="type"><a href="QtContacts.Anniversary.md">Anniversary</a></span></p></td></tr></table><p>This property holds the anniversary detail of the Contact object.</p>
<!-- @@@anniversary -->
<br/>
<!-- $$$avatar -->
<table class="qmlname"><tr valign="top" id="avatar-prop"><td class="tblQmlPropNode"><p><span class="name">avatar</span> : <span class="type"><a href="QtContacts.Avatar.md">Avatar</a></span></p></td></tr></table><p>This property holds the avatar detail of the Contact object.</p>
<!-- @@@avatar -->
<br/>
<!-- $$$birthday -->
<table class="qmlname"><tr valign="top" id="birthday-prop"><td class="tblQmlPropNode"><p><span class="name">birthday</span> : <span class="type"><a href="QtContacts.Birthday.md">Birthday</a></span></p></td></tr></table><p>This property holds the birthday detail of the Contact object.</p>
<!-- @@@birthday -->
<br/>
<!-- $$$contactDetails -->
<table class="qmlname"><tr valign="top" id="contactDetails-prop"><td class="tblQmlPropNode"><p><span class="name">contactDetails</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.ContactDetail.md">ContactDetail</a></span>&gt;</p></td></tr></table><p>This property holds the list of all the details that the contact has.</p>
<!-- @@@contactDetails -->
<br/>
<!-- $$$contactId -->
<table class="qmlname"><tr valign="top" id="contactId-prop"><td class="tblQmlPropNode"><p><span class="name">contactId</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the id of the Contact object. This property is read only.</p>
<!-- @@@contactId -->
<br/>
<!-- $$$displayLabel -->
<table class="qmlname"><tr valign="top" id="displayLabel-prop"><td class="tblQmlPropNode"><p><span class="name">displayLabel</span> : <span class="type"><a href="QtContacts.DisplayLabel.md">DisplayLabel</a></span></p></td></tr></table><p>This property holds the displayLabel detail of the Contact object. display label is the one which gets displayed when a contact is created as per versit doc specs this is a &quot;FN&quot; property</p>
<!-- @@@displayLabel -->
<br/>
<!-- $$$email -->
<table class="qmlname"><tr valign="top" id="email-prop"><td class="tblQmlPropNode"><p><span class="name">email</span> : <span class="type"><a href="QtContacts.EmailAddress.md">EmailAddress</a></span></p></td></tr></table><p>This property holds the email address detail of the Contact object. In case a contact has several email addresses then the first one is returned.</p>
<!-- @@@email -->
<br/>
<!-- $$$emails -->
<table class="qmlname"><tr valign="top" id="emails-prop"><td class="tblQmlPropNode"><p><span class="name">emails</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.EmailAddress.md">EmailAddress</a></span>&gt;</p></td></tr></table><p>This property holds the email address details of the Contact object.</p>
<!-- @@@emails -->
<br/>
<!-- $$$extendedDetail -->
<table class="qmlname"><tr valign="top" id="extendedDetail-prop"><td class="tblQmlPropNode"><p><span class="name">extendedDetail</span> : <span class="type"><a href="QtContacts.ExtendedDetail.md">ExtendedDetail</a></span></p></td></tr></table><p>This property holds the extended detail of the Contact object. In case a contact has several extended details then the first one is returned.</p>
<!-- @@@extendedDetail -->
<br/>
<!-- $$$extendedDetails -->
<table class="qmlname"><tr valign="top" id="extendedDetails-prop"><td class="tblQmlPropNode"><p><span class="name">extendedDetails</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.ExtendedDetail.md">ExtendedDetail</a></span>&gt;</p></td></tr></table><p>This property holds the extended details of the Contact object.</p>
<!-- @@@extendedDetails -->
<br/>
<!-- $$$family -->
<table class="qmlname"><tr valign="top" id="family-prop"><td class="tblQmlPropNode"><p><span class="name">family</span> : <span class="type"><a href="QtContacts.Family.md">Family</a></span></p></td></tr></table><p>This property holds the family detail of the Contact object.</p>
<!-- @@@family -->
<br/>
<!-- $$$favorite -->
<table class="qmlname"><tr valign="top" id="favorite-prop"><td class="tblQmlPropNode"><p><span class="name">favorite</span> : <span class="type"><a href="QtContacts.Favorite.md">Favorite</a></span></p></td></tr></table><p>This property holds the favorite detail of the Contact object.</p>
<!-- @@@favorite -->
<br/>
<!-- $$$gender -->
<table class="qmlname"><tr valign="top" id="gender-prop"><td class="tblQmlPropNode"><p><span class="name">gender</span> : <span class="type"><a href="QtContacts.Gender.md">Gender</a></span></p></td></tr></table><p>This property holds the gender detail of the Contact object.</p>
<!-- @@@gender -->
<br/>
<!-- $$$geolocation -->
<table class="qmlname"><tr valign="top" id="geolocation-prop"><td class="tblQmlPropNode"><p><span class="name">geolocation</span> : <span class="type"><a href="QtContacts.GeoLocation.md">GeoLocation</a></span></p></td></tr></table><p>This property holds the geolocation detail of the Contact object.</p>
<!-- @@@geolocation -->
<br/>
<!-- $$$globalPresence -->
<table class="qmlname"><tr valign="top" id="globalPresence-prop"><td class="tblQmlPropNode"><p><span class="name">globalPresence</span> : <span class="type"><a href="QtContacts.GlobalPresence.md">GlobalPresence</a></span></p></td></tr></table><p>This property holds the globalPresence detail of the Contact object.</p>
<!-- @@@globalPresence -->
<br/>
<!-- $$$guid -->
<table class="qmlname"><tr valign="top" id="guid-prop"><td class="tblQmlPropNode"><p><span class="name">guid</span> : <span class="type"><a href="QtContacts.Guid.md">Guid</a></span></p></td></tr></table><p>This property holds the guid detail of the Contact object.</p>
<!-- @@@guid -->
<br/>
<!-- $$$hobby -->
<table class="qmlname"><tr valign="top" id="hobby-prop"><td class="tblQmlPropNode"><p><span class="name">hobby</span> : <span class="type"><a href="QtContacts.Hobby.md">Hobby</a></span></p></td></tr></table><p>This property holds the hobby detail of the Contact object.</p>
<!-- @@@hobby -->
<br/>
<!-- $$$manager -->
<table class="qmlname"><tr valign="top" id="manager-prop"><td class="tblQmlPropNode"><p><span class="name">manager</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the manager name which the Contact object comes from.</p>
<!-- @@@manager -->
<br/>
<!-- $$$modified -->
<table class="qmlname"><tr valign="top" id="modified-prop"><td class="tblQmlPropNode"><p><span class="name">modified</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds the dirty flag of the Contact object. If the Contact has been changed, returns true, otherwise returns false.</p>
<!-- @@@modified -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type"><a href="QtContacts.Name.md">Name</a></span></p></td></tr></table><p>This property holds the name detail of the Contact object.</p>
<!-- @@@name -->
<br/>
<!-- $$$nickname -->
<table class="qmlname"><tr valign="top" id="nickname-prop"><td class="tblQmlPropNode"><p><span class="name">nickname</span> : <span class="type"><a href="QtContacts.Nickname.md">Nickname</a></span></p></td></tr></table><p>This property holds the nickname detail of the Contact object.</p>
<!-- @@@nickname -->
<br/>
<!-- $$$note -->
<table class="qmlname"><tr valign="top" id="note-prop"><td class="tblQmlPropNode"><p><span class="name">note</span> : <span class="type"><a href="QtContacts.Note.md">Note</a></span></p></td></tr></table><p>This property holds the note detail of the Contact object.</p>
<!-- @@@note -->
<br/>
<!-- $$$onlineAccount -->
<table class="qmlname"><tr valign="top" id="onlineAccount-prop"><td class="tblQmlPropNode"><p><span class="name">onlineAccount</span> : <span class="type"><a href="QtContacts.OnlineAccount.md">OnlineAccount</a></span></p></td></tr></table><p>This property holds the onlineAccount detail of the Contact object. In case a contact has several accounts then the first one is returned.</p>
<!-- @@@onlineAccount -->
<br/>
<!-- $$$organization -->
<table class="qmlname"><tr valign="top" id="organization-prop"><td class="tblQmlPropNode"><p><span class="name">organization</span> : <span class="type"><a href="QtContacts.Organization.md">Organization</a></span></p></td></tr></table><p>This property holds the organization detail of the Contact object.</p>
<!-- @@@organization -->
<br/>
<!-- $$$organizations -->
<table class="qmlname"><tr valign="top" id="organizations-prop"><td class="tblQmlPropNode"><p><span class="name">organizations</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.Organization.md">Organization</a></span>&gt;</p></td></tr></table><p>This property holds the organization details of the Contact object.</p>
<!-- @@@organizations -->
<br/>
<!-- $$$phoneNumber -->
<table class="qmlname"><tr valign="top" id="phoneNumber-prop"><td class="tblQmlPropNode"><p><span class="name">phoneNumber</span> : <span class="type"><a href="QtContacts.PhoneNumber.md">PhoneNumber</a></span></p></td></tr></table><p>This property holds the phone number detail of the Contact object. In case a contact has several numbers then the first one is returned.</p>
<!-- @@@phoneNumber -->
<br/>
<!-- $$$phoneNumbers -->
<table class="qmlname"><tr valign="top" id="phoneNumbers-prop"><td class="tblQmlPropNode"><p><span class="name">phoneNumbers</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.PhoneNumber.md">PhoneNumber</a></span>&gt;</p></td></tr></table><p>This property holds the phone number details of the Contact object.</p>
<!-- @@@phoneNumbers -->
<br/>
<!-- $$$presence -->
<table class="qmlname"><tr valign="top" id="presence-prop"><td class="tblQmlPropNode"><p><span class="name">presence</span> : <span class="type"><a href="QtContacts.Presence.md">Presence</a></span></p></td></tr></table><p>This property holds the presence detail of the Contact object.</p>
<!-- @@@presence -->
<br/>
<!-- $$$ringtone -->
<table class="qmlname"><tr valign="top" id="ringtone-prop"><td class="tblQmlPropNode"><p><span class="name">ringtone</span> : <span class="type"><a href="QtContacts.Ringtone.md">Ringtone</a></span></p></td></tr></table><p>This property holds the ringtone detail of the Contact object.</p>
<!-- @@@ringtone -->
<br/>
<!-- $$$syncTarget -->
<table class="qmlname"><tr valign="top" id="syncTarget-prop"><td class="tblQmlPropNode"><p><span class="name">syncTarget</span> : <span class="type"><a href="QtContacts.SyncTarget.md">SyncTarget</a></span></p></td></tr></table><p>This property holds the syncTarget detail of the Contact object.</p>
<!-- @@@syncTarget -->
<br/>
<!-- $$$tag -->
<table class="qmlname"><tr valign="top" id="tag-prop"><td class="tblQmlPropNode"><p><span class="name">tag</span> : <span class="type"><a href="QtContacts.Tag.md">Tag</a></span></p></td></tr></table><p>This property holds the tag detail of the Contact object.</p>
<!-- @@@tag -->
<br/>
<!-- $$$timestamp -->
<table class="qmlname"><tr valign="top" id="timestamp-prop"><td class="tblQmlPropNode"><p><span class="name">timestamp</span> : <span class="type"><a href="QtContacts.Timestamp.md">Timestamp</a></span></p></td></tr></table><p>This property holds the timestamp detail of the Contact object.</p>
<!-- @@@timestamp -->
<br/>
<!-- $$$type -->
<table class="qmlname"><tr valign="top" id="type-prop"><td class="tblQmlPropNode"><p><span class="name">type</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds type of the Contact, the value can be one of:</p>
<ul>
<li>Contact.Contact</li>
<li>Contact.Group</li>
</ul>
<!-- @@@type -->
<br/>
<!-- $$$url -->
<table class="qmlname"><tr valign="top" id="url-prop"><td class="tblQmlPropNode"><p><span class="name">url</span> : <span class="type"><a href="QtContacts.Url.md">Url</a></span></p></td></tr></table><p>This property holds the url detail of the Contact object.</p>
<!-- @@@url -->
<br/>
<!-- $$$urls -->
<table class="qmlname"><tr valign="top" id="urls-prop"><td class="tblQmlPropNode"><p><span class="name">urls</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.Url.md">Url</a></span>&gt;</p></td></tr></table><p>This property holds the url details of the Contact object.</p>
<!-- @@@urls -->
<br/>
<!-- $$$version -->
<table class="qmlname"><tr valign="top" id="version-prop"><td class="tblQmlPropNode"><p><span class="name">version</span> : <span class="type">Version</span></p></td></tr></table><p>This property holds the version detail of the Contact object.</p>
<!-- @@@version -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$addDetail -->
<table class="qmlname"><tr valign="top" id="addDetail-method"><td class="tblQmlFuncNode"><p><span class="name">addDetail</span>(<span class="type">detail</span>)</p></td></tr></table><p>Adds the given contact <i>detail</i> to the contact, returns true if successful, otherwise returns false.</p>
<p>Note: If the <i>detail</i> has been added into the same contact before, this operation will be ignored, so if you want to add a <i>detail</i> multiple times, the <i>detail</i> should be copied before calling this function.</p>
<!-- @@@addDetail -->
<br/>
<!-- $$$clearDetails -->
<table class="qmlname"><tr valign="top" id="clearDetails-method"><td class="tblQmlFuncNode"><p><span class="name">clearDetails</span>()</p></td></tr></table><p>Remove all detail objects in this contact.</p>
<!-- @@@clearDetails -->
<br/>
<!-- $$$isPreferredDetail -->
<table class="qmlname"><tr valign="top" id="isPreferredDetail-method"><td class="tblQmlFuncNode"><p><span class="name">isPreferredDetail</span>(<span class="type">actionName</span>, <span class="type">detail</span>)</p></td></tr></table><p>Returns true if the given <i>detail</i> is a preferred detail for the given <i>actionName</i>, or for any action if the <i>actionName</i> is empty.</p>
<p><b>See also </b><a href="#preferredDetail-method">preferredDetail()</a>.</p>
<!-- @@@isPreferredDetail -->
<br/>
<!-- $$$preferredDetail -->
<table class="qmlname"><tr valign="top" id="preferredDetail-method"><td class="tblQmlFuncNode"><p><span class="name">preferredDetail</span>(<span class="type">actionName</span>, <span class="type">detail</span>)</p></td></tr></table><p>Returns the preferred detail for a given <i>actionName</i>.</p>
<p>If the <i>actionName</i> is empty, or there is no preference recorded for the supplied <i>actionName</i>, returns null.</p>
<p><b>See also </b>preferredDetails().</p>
<!-- @@@preferredDetail -->
<br/>
<!-- $$$removeDetail -->
<table class="qmlname"><tr valign="top" id="removeDetail-method"><td class="tblQmlFuncNode"><p><span class="name">removeDetail</span>(<span class="type">detail</span>)</p></td></tr></table><p>Removes the given contact <i>detail</i> from the contact, returns true if successful, otherwise returns false.</p>
<!-- @@@removeDetail -->
<br/>
<!-- $$$save -->
<table class="qmlname"><tr valign="top" id="save-method"><td class="tblQmlFuncNode"><p><span class="name">save</span>()</p></td></tr></table><p>Saves this Contact if the contact has been modified.</p>
<p><b>See also </b><a href="#modified-prop">Contact::modified</a>.</p>
<!-- @@@save -->
<br/>
<!-- $$$setPreferredDetail -->
<table class="qmlname"><tr valign="top" id="setPreferredDetail-method"><td class="tblQmlFuncNode"><p><span class="name">setPreferredDetail</span>(<span class="type">actionName</span>, <span class="type">detail</span>)</p></td></tr></table><p>Set a particular detail (<i>preferredDetail</i>) as the preferred detail for any actions with the given <i>actionName</i>.</p>
<p>The <i>preferredDetail</i> object must exist in this object, and the <i>actionName</i> cannot be empty.</p>
<p>Returns true if the preference could be recorded, and false otherwise.</p>
<p><b>See also </b><a href="#preferredDetail-method">preferredDetail()</a>.</p>
<!-- @@@setPreferredDetail -->
<br/>
