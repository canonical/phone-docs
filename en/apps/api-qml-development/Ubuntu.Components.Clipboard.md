---
Title: Ubuntu.Components.Clipboard
---
        
Clipboard
=========

<span class="subtitle"></span>
This is a singleton type providing access to the system clipboard. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[data](#data-prop)**** : MimeData

<span id="signals"></span>
Signals
-------

-   ****[dataChanged](#dataChanged-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[clear](#clear-method)****()
-   MimeData ****[newData](#newData-method)****()
-   ****[push](#push-method)****(var *data*)

<span id="details"></span>
Detailed Description
--------------------

Clipboard data can be retrieved through data property, which returns an object of [MimeData](../Ubuntu.Components.MimeData.md) type. The actual content of the clipboard can be accessed through this object. Data can be pushed to the clipboard using [push()](#push-method) function.

The clipboard data cannot be modified through the type returned by the data property, for this a new instance of [MimeData](../Ubuntu.Components.MimeData.md) type must be used. This instance can be either a standalone MimeDala component or an object created using [newData()](#newData-method) function. Remember that standalone [MimeData](../Ubuntu.Components.MimeData.md) types duplicate the clipboard data which may cause extensive memory use.

Examples of use:

1. Using standard MimeType component - the following example copies the selected text from the text area into the clipboard pushing also a color

``` qml
Item {
    TextArea {
        id: editor
    }
    MimeData {
        id: mimeData
        color: "green"
        text: editor.text
    }
    Button {
        text: "Copy"
        onClicked: Clipboard.push(mimeData)
    }
}
```

2. Pushing data straight to clipboard

``` qml
Item {
    TextArea {
        id: editor
    }
    Button {
        text: "Copy"
        onClicked: {
            Clipboard.push(editor.text);
            Clipboard.push(["application/x-color", "green"]);
        }
    }
}
```

3. Pushing data using [MimeData](../Ubuntu.Components.MimeData.md) object

``` qml
Item {
    TextArea {
        id: editor
    }
    Button {
        text: "Copy"
        onClicked: {
            var mimeData = Clipboard.newData();
            mimeData.text = editor.text;
            mimeData.color = "green";
            Clipboard.push(mimeData);
        }
    }
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="data-prop"></span><span class="name">data</span> : <span class="type"><a href="Ubuntu.Components.MimeData.md">MimeData</a></span></p></td>
</tr>
</tbody>
</table>

Provides access to the Clipboard's current data.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dataChanged-signal"></span><span class="name">dataChanged</span>()</p></td>
</tr>
</tbody>
</table>

The signal is triggered when clipboard content gets changed.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clear-method"></span><span class="name">clear</span>()</p></td>
</tr>
</tbody>
</table>

The function clears the clipboard content.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="newData-method"></span><span class="type"><a href="Ubuntu.Components.MimeData.md">MimeData</a></span> <span class="name">newData</span>()</p></td>
</tr>
</tbody>
</table>

The function returns a new [MimeData](../Ubuntu.Components.MimeData.md) object that can be used in Java script code to push pultiple MIME types at the same time.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="push-method"></span><span class="name">push</span>(<span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span> <em>data</em>)</p></td>
</tr>
</tbody>
</table>

The function copies data provided as parameter to the clipboard. The parameter can be a [MimeData](../Ubuntu.Components.MimeData.md) instance or object created using [newData()](#newData-method) beside the ones listed at [MimeData::data](../Ubuntu.Components.MimeData.md#data-prop).

When [MimeData](../Ubuntu.Components.MimeData.md) instance or object is given, the entire object content will be pushed to the clipboard.

