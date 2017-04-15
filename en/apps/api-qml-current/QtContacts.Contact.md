---
Title: QtContacts.Contact
---
        
Contact
=======

<span class="subtitle"></span>
The Contact element represents an addressbook contact. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[address](#address-prop)**** : Address
-   ****[addresses](#addresses-prop)**** : list&lt;Address&gt;
-   ****[anniversary](#anniversary-prop)**** : Anniversary
-   ****[avatar](#avatar-prop)**** : Avatar
-   ****[birthday](#birthday-prop)**** : Birthday
-   ****[contactDetails](#contactDetails-prop)**** : list&lt;ContactDetail&gt;
-   ****[contactId](#contactId-prop)**** : int
-   ****[displayLabel](#displayLabel-prop)**** : DisplayLabel
-   ****[email](#email-prop)**** : EmailAddress
-   ****[emails](#emails-prop)**** : list&lt;EmailAddress&gt;
-   ****[extendedDetail](#extendedDetail-prop)**** : ExtendedDetail
-   ****[extendedDetails](#extendedDetails-prop)**** : list&lt;ExtendedDetail&gt;
-   ****[family](#family-prop)**** : Family
-   ****[favorite](#favorite-prop)**** : Favorite
-   ****[gender](#gender-prop)**** : Gender
-   ****[geolocation](#geolocation-prop)**** : GeoLocation
-   ****[globalPresence](#globalPresence-prop)**** : GlobalPresence
-   ****[guid](#guid-prop)**** : Guid
-   ****[hobby](#hobby-prop)**** : Hobby
-   ****[manager](#manager-prop)**** : string
-   ****[modified](#modified-prop)**** : bool
-   ****[name](#name-prop)**** : Name
-   ****[nickname](#nickname-prop)**** : Nickname
-   ****[note](#note-prop)**** : Note
-   ****[onlineAccount](#onlineAccount-prop)**** : OnlineAccount
-   ****[organization](#organization-prop)**** : Organization
-   ****[organizations](#organizations-prop)**** : list&lt;Organization&gt;
-   ****[phoneNumber](#phoneNumber-prop)**** : PhoneNumber
-   ****[phoneNumbers](#phoneNumbers-prop)**** : list&lt;PhoneNumber&gt;
-   ****[presence](#presence-prop)**** : Presence
-   ****[ringtone](#ringtone-prop)**** : Ringtone
-   ****[syncTarget](#syncTarget-prop)**** : SyncTarget
-   ****[tag](#tag-prop)**** : Tag
-   ****[timestamp](#timestamp-prop)**** : Timestamp
-   ****[type](#type-prop)**** : enumeration
-   ****[url](#url-prop)**** : Url
-   ****[urls](#urls-prop)**** : list&lt;Url&gt;
-   ****[version](#version-prop)**** : Version

<span id="methods"></span>
Methods
-------

-   ****[addDetail](#addDetail-method)****(detail)
-   ****[clearDetails](#clearDetails-method)****()
-   ****[isPreferredDetail](#isPreferredDetail-method)****(actionName, detail)
-   ****[preferredDetail](#preferredDetail-method)****(actionName, detail)
-   ****[removeDetail](#removeDetail-method)****(detail)
-   ****[save](#save-method)****()
-   ****[setPreferredDetail](#setPreferredDetail-method)****(actionName, detail)

<span id="details"></span>
Detailed Description
--------------------

The Contact element is part of the **QtContacts** module.

A Contact object has a collection of details (like a name, phone numbers and email addresses). Each detail (which can have multiple fields) is stored in an appropriate subclass of [ContactDetail](../QtContacts.ContactDetail.md), and the Contact allows retrieving these details in various ways.

If some of the contact details are not unique details, all of this type of detail values can be accessed by the property with the name in plural. For example, if there are 3 phone numbers stored in a contact, they can be accessed by contact.[phoneNumbers](#phoneNumbers-prop) property, which holds a list of all [PhoneNumber](../QtContacts.PhoneNumber.md) details. If a contact does not contain a detail of particular type, the value of the corresponding singular property (e.g. [phoneNumber](#phoneNumber-prop)) in undefined and the plural (e.g. [phoneNumbers](#phoneNumbers-prop)) is empty. The list of properties which support multiple detail instances depends on the contact engine implementations.

**See also** QContact.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="address-prop"></span><span class="name">address</span> : <span class="type"><a href="QtContacts.Address.md">Address</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the address detail of the Contact object. In case a contact has several addresses then the first one is returned.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addresses-prop"></span><span class="name">addresses</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.Address.md">Address</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the address details of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="anniversary-prop"></span><span class="name">anniversary</span> : <span class="type"><a href="QtContacts.Anniversary.md">Anniversary</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the anniversary detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="avatar-prop"></span><span class="name">avatar</span> : <span class="type"><a href="QtContacts.Avatar.md">Avatar</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the avatar detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="birthday-prop"></span><span class="name">birthday</span> : <span class="type"><a href="QtContacts.Birthday.md">Birthday</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the birthday detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contactDetails-prop"></span><span class="name">contactDetails</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.ContactDetail.md">ContactDetail</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of all the details that the contact has.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contactId-prop"></span><span class="name">contactId</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the id of the Contact object. This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="displayLabel-prop"></span><span class="name">displayLabel</span> : <span class="type"><a href="QtContacts.DisplayLabel.md">DisplayLabel</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the displayLabel detail of the Contact object. display label is the one which gets displayed when a contact is created as per versit doc specs this is a "FN" property

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="email-prop"></span><span class="name">email</span> : <span class="type"><a href="QtContacts.EmailAddress.md">EmailAddress</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the email address detail of the Contact object. In case a contact has several email addresses then the first one is returned.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="emails-prop"></span><span class="name">emails</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.EmailAddress.md">EmailAddress</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the email address details of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="extendedDetail-prop"></span><span class="name">extendedDetail</span> : <span class="type"><a href="QtContacts.ExtendedDetail.md">ExtendedDetail</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the extended detail of the Contact object. In case a contact has several extended details then the first one is returned.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="extendedDetails-prop"></span><span class="name">extendedDetails</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.ExtendedDetail.md">ExtendedDetail</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the extended details of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="family-prop"></span><span class="name">family</span> : <span class="type"><a href="QtContacts.Family.md">Family</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the family detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="favorite-prop"></span><span class="name">favorite</span> : <span class="type"><a href="QtContacts.Favorite.md">Favorite</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the favorite detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="gender-prop"></span><span class="name">gender</span> : <span class="type"><a href="QtContacts.Gender.md">Gender</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the gender detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="geolocation-prop"></span><span class="name">geolocation</span> : <span class="type"><a href="QtContacts.GeoLocation.md">GeoLocation</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the geolocation detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="globalPresence-prop"></span><span class="name">globalPresence</span> : <span class="type"><a href="QtContacts.GlobalPresence.md">GlobalPresence</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the globalPresence detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="guid-prop"></span><span class="name">guid</span> : <span class="type"><a href="QtContacts.Guid.md">Guid</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the guid detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hobby-prop"></span><span class="name">hobby</span> : <span class="type"><a href="QtContacts.Hobby.md">Hobby</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the hobby detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="manager-prop"></span><span class="name">manager</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the manager name which the Contact object comes from.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="modified-prop"></span><span class="name">modified</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds the dirty flag of the Contact object. If the Contact has been changed, returns true, otherwise returns false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type"><a href="QtContacts.Name.md">Name</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the name detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="nickname-prop"></span><span class="name">nickname</span> : <span class="type"><a href="QtContacts.Nickname.md">Nickname</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the nickname detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="note-prop"></span><span class="name">note</span> : <span class="type"><a href="QtContacts.Note.md">Note</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the note detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onlineAccount-prop"></span><span class="name">onlineAccount</span> : <span class="type"><a href="QtContacts.OnlineAccount.md">OnlineAccount</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the onlineAccount detail of the Contact object. In case a contact has several accounts then the first one is returned.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="organization-prop"></span><span class="name">organization</span> : <span class="type"><a href="QtContacts.Organization.md">Organization</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the organization detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="organizations-prop"></span><span class="name">organizations</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.Organization.md">Organization</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the organization details of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="phoneNumber-prop"></span><span class="name">phoneNumber</span> : <span class="type"><a href="QtContacts.PhoneNumber.md">PhoneNumber</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the phone number detail of the Contact object. In case a contact has several numbers then the first one is returned.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="phoneNumbers-prop"></span><span class="name">phoneNumbers</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.PhoneNumber.md">PhoneNumber</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the phone number details of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="presence-prop"></span><span class="name">presence</span> : <span class="type"><a href="QtContacts.Presence.md">Presence</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the presence detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ringtone-prop"></span><span class="name">ringtone</span> : <span class="type"><a href="QtContacts.Ringtone.md">Ringtone</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the ringtone detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="syncTarget-prop"></span><span class="name">syncTarget</span> : <span class="type"><a href="QtContacts.SyncTarget.md">SyncTarget</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the syncTarget detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tag-prop"></span><span class="name">tag</span> : <span class="type"><a href="QtContacts.Tag.md">Tag</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the tag detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="timestamp-prop"></span><span class="name">timestamp</span> : <span class="type"><a href="QtContacts.Timestamp.md">Timestamp</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the timestamp detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="type-prop"></span><span class="name">type</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds type of the Contact, the value can be one of:

-   Contact.Contact
-   Contact.Group

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="url-prop"></span><span class="name">url</span> : <span class="type"><a href="QtContacts.Url.md">Url</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the url detail of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="urls-prop"></span><span class="name">urls</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtContacts.Url.md">Url</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the url details of the Contact object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="version-prop"></span><span class="name">version</span> : <span class="type">Version</span></p></td>
</tr>
</tbody>
</table>

This property holds the version detail of the Contact object.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addDetail-method"></span><span class="name">addDetail</span>(<span class="type">detail</span>)</p></td>
</tr>
</tbody>
</table>

Adds the given contact *detail* to the contact, returns true if successful, otherwise returns false.

Note: If the *detail* has been added into the same contact before, this operation will be ignored, so if you want to add a *detail* multiple times, the *detail* should be copied before calling this function.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clearDetails-method"></span><span class="name">clearDetails</span>()</p></td>
</tr>
</tbody>
</table>

Remove all detail objects in this contact.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isPreferredDetail-method"></span><span class="name">isPreferredDetail</span>(<span class="type">actionName</span>, <span class="type">detail</span>)</p></td>
</tr>
</tbody>
</table>

Returns true if the given *detail* is a preferred detail for the given *actionName*, or for any action if the *actionName* is empty.

**See also** [preferredDetail()](#preferredDetail-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="preferredDetail-method"></span><span class="name">preferredDetail</span>(<span class="type">actionName</span>, <span class="type">detail</span>)</p></td>
</tr>
</tbody>
</table>

Returns the preferred detail for a given *actionName*.

If the *actionName* is empty, or there is no preference recorded for the supplied *actionName*, returns null.

**See also** preferredDetails().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeDetail-method"></span><span class="name">removeDetail</span>(<span class="type">detail</span>)</p></td>
</tr>
</tbody>
</table>

Removes the given contact *detail* from the contact, returns true if successful, otherwise returns false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="save-method"></span><span class="name">save</span>()</p></td>
</tr>
</tbody>
</table>

Saves this Contact if the contact has been modified.

**See also** [Contact::modified](#modified-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setPreferredDetail-method"></span><span class="name">setPreferredDetail</span>(<span class="type">actionName</span>, <span class="type">detail</span>)</p></td>
</tr>
</tbody>
</table>

Set a particular detail (*preferredDetail*) as the preferred detail for any actions with the given *actionName*.

The *preferredDetail* object must exist in this object, and the *actionName* cannot be empty.

Returns true if the preference could be recorded, and false otherwise.

**See also** [preferredDetail()](#preferredDetail-method).

