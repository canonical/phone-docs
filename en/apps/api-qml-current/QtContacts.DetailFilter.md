---
Title: QtContacts.DetailFilter
---
        
DetailFilter
============

<span class="subtitle"></span>
The DetailFilter element provides a filter based around a detail value criterion. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[detail](#detail-prop)**** : enumeration
-   ****[field](#field-prop)**** : int
-   ****[matchFlags](#matchFlags-prop)**** : enumeration
-   ****[value](#value-prop)**** : variant

<span id="details"></span>
Detailed Description
--------------------

This element is part of the **QtContacts** module.

**See also** QContactDetailFilter.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="detail-prop"></span><span class="name">detail</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the detail type of which details will be matched to.

**See also** [ContactDetail::type](../QtContacts.ContactDetail.md#type-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="field-prop"></span><span class="name">field</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the detail field type of which detail fields will be matched to. Detail field types are enumeration values defined in each detail elements.

**See also** [Address](../QtContacts.Address.md), [Anniversary](../QtContacts.Anniversary.md), [Avatar](../QtContacts.Avatar.md), [Birthday](../QtContacts.Birthday.md), [DisplayLabel](../QtContacts.DisplayLabel.md), [EmailAddress](../QtContacts.EmailAddress.md), [Family](../QtContacts.Family.md), [Favorite](../QtContacts.Favorite.md), [Gender](../QtContacts.Gender.md), [GeoLocation](../QtContacts.GeoLocation.md), [GlobalPresence](../QtContacts.GlobalPresence.md), [Guid](../QtContacts.Guid.md), [Name](../QtContacts.Name.md), [Nickname](../QtContacts.Nickname.md), [Note](../QtContacts.Note.md), [OnlineAccount](../QtContacts.OnlineAccount.md), [Organization](../QtContacts.Organization.md), [PhoneNumber](../QtContacts.PhoneNumber.md), [Presence](../QtContacts.Presence.md), [Ringtone](../QtContacts.Ringtone.md), [SyncTarget](../QtContacts.SyncTarget.md), [Tag](../QtContacts.Tag.md), [Timestamp](../QtContacts.Timestamp.md), [Url](../QtContacts.Url.md), and [Hobby](../QtContacts.Hobby.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="matchFlags-prop"></span><span class="name">matchFlags</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the semantics of the value matching criterion. The valid match flags include:

-   MatchExactly - Performs QVariant-based matching (default).
-   MatchContains - The search term is contained in the item.
-   MatchStartsWith - The search term matches the start of the item.
-   MatchEndsWith - The search term matches the end of the item.
-   MatchFixedString - Performs string-based matching. String-based comparisons are case-insensitive unless the `MatchCaseSensitive` flag is also specified.
-   MatchCaseSensitive - The search is case sensitive.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="value-prop"></span><span class="name">value</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the value criterion of the detail filter.

