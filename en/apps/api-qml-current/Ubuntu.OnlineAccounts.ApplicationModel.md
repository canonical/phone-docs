---
Title: Ubuntu.OnlineAccounts.ApplicationModel
---
        
ApplicationModel
================

<span class="subtitle"></span>
A model of the applications using online accounts. More...

|                   |                                  |
|-------------------|----------------------------------|
| Import Statement: | import Ubuntu.OnlineAccounts 0.1 |

<span id="properties"></span>
Properties
----------

-   ****[count](#count-prop)**** : int
-   ****[service](#service-prop)**** : string

<span id="methods"></span>
Methods
-------

-   variant ****[get](#get-method)****(int *row*, string *roleName*)

<span id="details"></span>
Detailed Description
--------------------

The [ApplicationModel](index.html) is a model representing the applications using online accounts installed on the system.

In the current implementation, the model is valid only if its [ApplicationModel::service](#service-prop) property is set to a valid service ID.

The model defines the following roles:

-   `applicationId` is the unique identifier of the application
-   `displayName` is the application display name
-   `iconName` is the name of the application icon
-   `serviceUsage` is a description of how the application uses the service; this is set to a valid value only if the [ApplicationModel::service](#service-prop) property is set to a valid service ID.
-   `application` is the Application object
-   `translations`, the localization domain for translating the `serviceUsage` field

Property Documentation
----------------------

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

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="service-prop"></span><span class="name">service</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

If set, the model will list only those applications which can use this specific service.

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

