---
Title: QtContacts.Url
---
        
Url
===

<span class="subtitle"></span>
The Url element contains a url associated with a contact. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtContacts 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[subType](#subType-prop)**** : enumeration
-   ****[url](#url-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

Url element contains the following field types:

-   Url.Url
-   Url.SubType

This element is part of the **QtContacts** module.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="subType-prop"></span><span class="name">subType</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the sub type of a QContactUrl.

-   Url.Unknown - indicating this url type is unknown (default).
-   Url.HomePage - indicating this url is a contact's home page.
-   Url.Favourite - indicating this url is one of the contact's favourite URLs (or bookmarks).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="url-prop"></span><span class="name">url</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the value of the URL.

