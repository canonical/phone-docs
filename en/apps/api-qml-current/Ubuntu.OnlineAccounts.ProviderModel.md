---
Title: Ubuntu.OnlineAccounts.ProviderModel
---
        
ProviderModel
=============

<span class="subtitle"></span>
A model of the account providers More...

|                   |                                  |
|-------------------|----------------------------------|
| Import Statement: | import Ubuntu.OnlineAccounts 0.1 |

<span id="properties"></span>
Properties
----------

-   ****[applicationId](#applicationId-prop)**** : string
-   ****[count](#count-prop)**** : int

<span id="methods"></span>
Methods
-------

-   variant ****[get](#get-method)****(int *row*, string *roleName*)

<span id="details"></span>
Detailed Description
--------------------

The [ProviderModel](index.html) is a model representing the account providers installed on the system.

The model defines the following roles:

-   `displayName`, the user-visible name of this provider
-   `providerId`, the unique identifier of the account provider
-   `iconName`, the name of the icon representing this provider
-   `isSingleAccount`, *true* if this provider supports creating one account at most
-   `translations`, the localization domain for translating the provider's display name

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="applicationId-prop"></span><span class="name">applicationId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

If set, the model will only show those providers which are relevant for the given *applicationId*. This means that a provider will only be shown if at least one of its services can be used by the application, as described in the application's manifest file.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="count-prop"></span><span class="name">count</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The number of items in the model.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="get-method"></span><span class="type">variant</span> <span class="name">get</span>(<span class="type">int</span> <em>row</em>, <span class="type">string</span> <em>roleName</em>)</p></td>
</tr>
</tbody>
</table>

Returns the data at *row* for the role *roleName*.

