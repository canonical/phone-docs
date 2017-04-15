---
Title: Ubuntu.Components.MimeData
---
        
MimeData
========

<span class="subtitle"></span>
MimeData type provides interface to access and store data to the Clipboard. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[color](#color-prop)**** : color
-   ****[data](#data-prop)**** : var
-   ****[format](#format-prop)**** : list&lt;string&gt;
-   ****[html](#html-prop)**** : string
-   ****[text](#text-prop)**** : string
-   ****[urls](#urls-prop)**** : list&lt;url&gt;

<span id="details"></span>
Detailed Description
--------------------

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="color-prop"></span><span class="name">color</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="data-prop"></span><span class="name">data</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td>
</tr>
</tbody>
</table>

Reading the property returns a list of MIME type and data pairs representing the data stored in the object. Users can set custom MIME types which are not covered by the other properties.

When setting the property value can take one of the following types:

-   - string - the data will be set as `text/plain` MIME type, or as `text/html` in case HTML tags are detected
-   - color - the data will be set as `application/x-color` MIME type
-   - list&lt;url&gt; - the data will be set as `text/uri-list`
-   - list&lt;string&gt; - the data will be set as `text/uri-list` in case the first element of the list is a valid URL with scheme; otherwise if the list size is even, the list will be set as pairs of (MIME type,data)
-   - list&lt;var&gt; - same as list&lt;url&gt; or list&lt;string&gt;

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="format-prop"></span><span class="name">format</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

Returns a list of formats supported by the object. This is a list of MIME types for which the object can return suitable data. The formats in the list are in a priority order.

**See also** [data](#data-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="html-prop"></span><span class="name">html</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Contains a string if the data stored in the object is HTML (MIME type text/html); otherwise contains an empty string.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="text-prop"></span><span class="name">text</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Contains a plain text (MIME type text/plain) representation of the data.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="urls-prop"></span><span class="name">urls</span> : <span class="type">list</span>&lt;<span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

Contains a list of URLs contained within the MIME data object. URLs correspond to the MIME type text/uri-list.

