---
Title: Ubuntu.OnlineAccounts.Application
---
        
Application
===========

<span class="subtitle"></span>
Represents a client application of Online Accounts. More...

|                   |                                  |
|-------------------|----------------------------------|
| Import Statement: | import Ubuntu.OnlineAccounts 0.1 |

<span id="properties"></span>
Properties
----------

-   ****[applicationId](#applicationId-prop)**** : string
-   ****[description](#description-prop)**** : string

<span id="methods"></span>
Methods
-------

-   string ****[serviceUsage](#serviceUsage-method)****(Service *service*)

<span id="details"></span>
Detailed Description
--------------------

The Application element represents an application using online accounts. Currently, instances of this object cannot be created directly, but are instantiated by the [ApplicationModel](../Ubuntu.OnlineAccounts.ApplicationModel.md) element.

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

Unique identifier for this application.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="description-prop"></span><span class="name">description</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Description of the application.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="serviceUsage-method"></span><span class="type">string</span> <span class="name">serviceUsage</span>(<span class="type">Service</span> <em>service</em>)</p></td>
</tr>
</tbody>
</table>

Returns a textual description of how the application can make use of *service*.

