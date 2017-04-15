---
Title: QtContacts.ContactDetail
---
        
ContactDetail
=============

<span class="subtitle"></span>
The ContactDetail element represents a single, complete detail about a contact. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[contexts](#contexts-prop)**** : list&lt;int&gt;
-   ****[detailUri](#detailUri-prop)**** : string
-   ****[fields](#fields-prop)**** : list&lt;int&gt;
-   ****[linkedDetailUris](#linkedDetailUris-prop)**** : list&lt;string&gt;
-   ****[readOnly](#readOnly-prop)**** : bool
-   ****[removable](#removable-prop)**** : bool
-   ****[type](#type-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

The ContactDetail element is part of the **QtContacts** module.

**See also** QContactDetail.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contexts-prop"></span><span class="name">contexts</span> : <span class="type">list</span>&lt;<span class="type">int</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds one or more contexts that this detail is associated with.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="detailUri-prop"></span><span class="name">detailUri</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the unique URI of the detail if one exists.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fields-prop"></span><span class="name">fields</span> : <span class="type">list</span>&lt;<span class="type">int</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the list of all fields which this detail supports.

This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="linkedDetailUris-prop"></span><span class="name">linkedDetailUris</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds a list of detail URIs to which this detail is linked.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="readOnly-prop"></span><span class="name">readOnly</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether or not this detail is writable. This property is read only.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removable-prop"></span><span class="name">removable</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether or not this detail is removale. This property is read only.

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

This property holds the type of the detail.

-   [ContactDetail](index.html).Address
-   [ContactDetail](index.html).Anniversary
-   [ContactDetail](index.html).Avatar
-   [ContactDetail](index.html).Birthday
-   [ContactDetail](index.html).[DisplayLabel](../QtContacts.DisplayLabel.md)
-   [ContactDetail](index.html).Email
-   [ContactDetail](index.html).[ExtendedDetail](../QtContacts.ExtendedDetail.md)
-   [ContactDetail](index.html).Family
-   [ContactDetail](index.html).Favorite
-   [ContactDetail](index.html).Gender
-   [ContactDetail](index.html).Geolocation
-   [ContactDetail](index.html).[GlobalPresence](../QtContacts.GlobalPresence.md)
-   [ContactDetail](index.html).Guid
-   [ContactDetail](index.html).Hobby
-   [ContactDetail](index.html).Name
-   [ContactDetail](index.html).NickName
-   [ContactDetail](index.html).Note
-   [ContactDetail](index.html).[OnlineAccount](../QtContacts.OnlineAccount.md)
-   [ContactDetail](index.html).Organization
-   [ContactDetail](index.html).[PhoneNumber](../QtContacts.PhoneNumber.md)
-   [ContactDetail](index.html).Presence
-   [ContactDetail](index.html).Ringtone
-   [ContactDetail](index.html).[SyncTarget](../QtContacts.SyncTarget.md)
-   [ContactDetail](index.html).Tag
-   [ContactDetail](index.html).Timestamp
-   [ContactDetail](index.html).Url
-   [ContactDetail](index.html).Version
-   [ContactDetail](index.html).Unknown

This property is read only.

