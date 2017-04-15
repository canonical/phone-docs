---
Title: QtQuick.DragEvent
---
        
DragEvent
=========

<span class="subtitle"></span>
Provides information about a drag event More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[accepted](#accepted-prop)**** : bool
-   ****[action](#action-prop)**** : enumeration
-   ****[colorData](#colorData-prop)**** : color
-   ****[drag.source](#drag.source-prop)**** : Object
-   ****[formats](#formats-prop)**** : stringlist
-   ****[hasColor](#hasColor-prop)**** : bool
-   ****[hasHtml](#hasHtml-prop)**** : bool
-   ****[hasText](#hasText-prop)**** : bool
-   ****[hasUrls](#hasUrls-prop)**** : bool
-   ****[html](#html-prop)**** : string
-   ****[keys](#keys-prop)**** : stringlist
-   ****[proposedAction](#proposedAction-prop)**** : flags
-   ****[supportedActions](#supportedActions-prop)**** : flags
-   ****[text](#text-prop)**** : string
-   ****[urls](#urls-prop)**** : urllist
-   ****[x](#x-prop)**** : real
-   ****[y](#y-prop)**** : real

<span id="methods"></span>
Methods
-------

-   ****[accept](#accept-method-2)****(enumeration *action*)
-   ****[accept](#accept-method)****()
-   ****[acceptProposedAction](#acceptProposedAction-method)****()
-   string ****[getDataAsString](#getDataAsString-method)****(string *format*)

<span id="details"></span>
Detailed Description
--------------------

The position of the drag event can be obtained from the [x](#x-prop) and [y](#y-prop) properties, and the [keys](#keys-prop) property identifies the drag keys of the event [source](#drag.source-prop).

The existence of specific drag types can be determined using the [hasColor](#hasColor-prop), [hasHtml](#hasHtml-prop), [hasText](#hasText-prop), and [hasUrls](#hasUrls-prop) properties.

The list of all supplied formats can be determined using the [formats](#formats-prop) property.

Specific drag types can be obtained using the [colorData](#colorData-prop), [html](#html-prop), [text](../QtQuick.qtquick-releasenotes.md#text), and [urls](#urls-prop) properties.

A string version of any available mimeType can be obtained using [getDataAsString](#getDataAsString-method).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accepted-prop"></span><span class="name">accepted</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the drag event was accepted by a handler.

The default value is true.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="action-prop"></span><span class="name">action</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the action that the [source](#drag.source-prop) is to perform on an accepted drop.

The drop action may be one of:

-   Qt.CopyAction Copy the data to the target.
-   Qt.MoveAction Move the data from the source to the target.
-   Qt.LinkAction Create a link from the source to the target.
-   Qt.IgnoreAction Ignore the action (do nothing with the data).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="colorData-prop"></span><span class="name">colorData</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

This property holds color data, if any.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="drag.source-prop"></span><span class="name">drag.source</span> : <span class="type">Object</span></p></td>
</tr>
</tbody>
</table>

This property holds the source of a drag event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="formats-prop"></span><span class="name">formats</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property holds a list of mime type formats contained in the drag data.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hasColor-prop"></span><span class="name">hasColor</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the drag event contains a color item.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hasHtml-prop"></span><span class="name">hasHtml</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the drag event contains a html item.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hasText-prop"></span><span class="name">hasText</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the drag event contains a text item.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hasUrls-prop"></span><span class="name">hasUrls</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the drag event contains one or more url items.

This QML property was introduced in Qt 5.2.

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

This property holds html data, if any.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="keys-prop"></span><span class="name">keys</span> : <span class="type">stringlist</span></p></td>
</tr>
</tbody>
</table>

This property holds a list of keys identifying the data type or source of a drag event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="proposedAction-prop"></span><span class="name">proposedAction</span> : <span class="type">flags</span></p></td>
</tr>
</tbody>
</table>

This property holds the set of [actions](#action-prop) proposed by the drag source.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="supportedActions-prop"></span><span class="name">supportedActions</span> : <span class="type">flags</span></p></td>
</tr>
</tbody>
</table>

This property holds the set of [actions](#action-prop) supported by the drag source.

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

This property holds text data, if any.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="urls-prop"></span><span class="name">urls</span> : <span class="type">urllist</span></p></td>
</tr>
</tbody>
</table>

This property holds a list of urls, if any.

This QML property was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="x-prop"></span><span class="name">x</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the x coordinate of a drag event.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="y-prop"></span><span class="name">y</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the y coordinate of a drag event.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accept-method-2"></span><span class="name">accept</span>(<span class="type">enumeration</span> <em>action</em>)</p></td>
</tr>
</tbody>
</table>

Accepts the drag event.

If an *action* is specified it will overwrite the value of the [action](#action-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="accept-method"></span><span class="name">accept</span>()</p></td>
</tr>
</tbody>
</table>

Accepts the drag event.

If an *action* is specified it will overwrite the value of the [action](#action-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="acceptProposedAction-method"></span><span class="name">acceptProposedAction</span>()</p></td>
</tr>
</tbody>
</table>

Accepts the drag event with the [proposedAction](#proposedAction-prop).

This QML method was introduced in Qt 5.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="getDataAsString-method"></span><span class="type">string</span> <span class="name">getDataAsString</span>(<span class="type">string</span> <em>format</em>)</p></td>
</tr>
</tbody>
</table>

Returns the data for the given *format* converted to a string. *format* should be one contained in the [formats](#formats-prop) property.

This QML method was introduced in Qt 5.2.

