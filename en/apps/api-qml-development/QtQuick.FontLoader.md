---
Title: QtQuick.FontLoader
---
        
FontLoader
==========

<span class="subtitle"></span>
Allows fonts to be loaded by name or URL More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[name](#name-prop)**** : string
-   ****[source](#source-prop)**** : url
-   ****[status](#status-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

The [FontLoader](index.html) type is used to load fonts by name or URL.

The [status](#status-prop) indicates when the font has been loaded, which is useful for fonts loaded from remote sources.

For example:

``` qml
import QtQuick 2.0
Column {
    FontLoader { id: fixedFont; name: "Courier" }
    FontLoader { id: webFont; source: "http://www.mysite.com/myfont.ttf" }
    Text { text: "Fixed-size font"; font.family: fixedFont.name }
    Text { text: "Fancy font"; font.family: webFont.name }
}
```

**See also** [Qt Quick Examples - Text Fonts](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.text/#fonts).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the font family. It is set automatically when a font is loaded using the `url` property.

Use this to set the `font.family` property of a `Text` item.

Example:

``` qml
Item {
    width: 200; height: 50
    FontLoader {
        id: webFont
        source: "http://www.mysite.com/myfont.ttf"
    }
    Text {
        text: "Fancy font"
        font.family: webFont.name
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

The url of the font to load.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the status of font loading. It can be one of:

-   [FontLoader](index.html).Null - no font has been set
-   [FontLoader](index.html).Ready - the font has been loaded
-   [FontLoader](index.html).Loading - the font is currently being loaded
-   [FontLoader](index.html).Error - an error occurred while loading the font

Use this status to provide an update or respond to the status change in some way. For example, you could:

-   Trigger a state change:

    ``` qml
    State { name: 'loaded'; when: loader.status == FontLoader.Ready }
    ```

-   Implement an `onStatusChanged` signal handler:

    ``` qml
    FontLoader {
        id: loader
        onStatusChanged: if (loader.status == FontLoader.Ready) console.log('Loaded')
    }
    ```

-   Bind to the status value:

    ``` qml
    Text { text: loader.status == FontLoader.Ready ? 'Loaded' : 'Not loaded' }
    ```

