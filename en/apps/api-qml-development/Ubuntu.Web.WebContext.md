---
Title: Ubuntu.Web.WebContext
---
        
WebContext
==========

<span class="subtitle"></span>
A default context implementation for use with WebView. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import Ubuntu.Web 0.2 |

<span id="properties"></span>
Properties
----------

-   ****[acceptLangs](../../sdk-15.04.4/Ubuntu.Web.WebContext.md#acceptLangs-prop)**** : string
-   ****[cachePath](../../sdk-15.04.4/Ubuntu.Web.WebContext.md#cachePath-prop)**** : url
-   ****[dataPath](../../sdk-15.04.4/Ubuntu.Web.WebContext.md#dataPath-prop)**** : url
-   ****[userAgent](../../sdk-15.04.4/Ubuntu.Web.WebContext.md#userAgent-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

This default [WebContext](../../sdk-15.04.4/Ubuntu.Web.WebContext.md) implementation has the default user agent string used by the Ubuntu browser as well as the UA override mechanism that allows sending an overridden user agent for given domains/websites, based on the form factor.

It has its data path (for cache and cookie database) set to the standard writable data location for the current application, which is based on the application name (see `Qt.application.name`), for example *~/.local/share/myApp/*.

Note that the [WebView](../../sdk-15.04.4/Ubuntu.Web.WebView.md) component already uses this default context, so there is no need to explicitly instantiate a `WebContext` unless you want to override some of its default properties.

**See also** [SharedWebContext](../../sdk-15.04.4/Ubuntu.Web.SharedWebContext.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="acceptLangs-prop"></span><span class="name">acceptLangs</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The list of accepted languages (the Accept-Language HTTP header), as a comma-separated list of language codes.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cachePath-prop"></span><span class="name">cachePath</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

The local path where network data will be cached. If not set, it defaults to [dataPath](../../sdk-15.04.4/Ubuntu.Web.WebContext.md#dataPath-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dataPath-prop"></span><span class="name">dataPath</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

The local path where persistent data (such as cookies) will be stored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="userAgent-prop"></span><span class="name">userAgent</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The default user agent string that will be sent with each HTTP request.

