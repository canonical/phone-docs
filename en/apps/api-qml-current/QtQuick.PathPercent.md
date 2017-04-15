---
Title: QtQuick.PathPercent
---
        
PathPercent
===========

<span class="subtitle"></span>
Manipulates the way a path is interpreted More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[value](#value-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

[PathPercent](index.html) allows you to manipulate the spacing between items on a [PathView](../QtQuick.PathView.md)'s path. You can use it to bunch together items on part of the path, and spread them out on other parts of the path.

The examples below show the normal distribution of items along a path compared to a distribution which places 50% of the items along the [PathLine](../QtQuick.PathLine.md) section of the path.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/393dbdee-64bb-48f7-9451-5f3177d47d51-api/apps/qml/sdk-15.04.5/QtQuick.PathPercent/images/declarative-nopercent.png" /></p></td>
<td><pre class="qml"><code>PathView {
    // ...
    Path {
        startX: 20; startY: 0
        PathQuad { x: 50; y: 80; controlX: 0; controlY: 80 }
        PathLine { x: 150; y: 80 }
        PathQuad { x: 180; y: 0; controlX: 200; controlY: 80 }
    }
}</code></pre></td>
</tr>
<tr class="even">
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/d543dcb5-cf61-4f2a-ba3b-191d0896ddc7-api/apps/qml/sdk-15.04.5/QtQuick.PathPercent/images/declarative-percent.png" /></p></td>
<td><pre class="qml"><code>PathView {
    // ...
    Path {
        startX: 20; startY: 0
        PathQuad { x: 50; y: 80; controlX: 0; controlY: 80 }
        PathPercent { value: 0.25 }
        PathLine { x: 150; y: 80 }
        PathPercent { value: 0.75 }
        PathQuad { x: 180; y: 0; controlX: 200; controlY: 80 }
        PathPercent { value: 1 }
    }
}</code></pre></td>
</tr>
</tbody>
</table>

**See also** [Path](../QtQuick.Path.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="value-prop"></span><span class="name">value</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The proportion of items that should be laid out up to this point.

This value should always be higher than the last value specified by a [PathPercent](index.html) at a previous position in the Path.

In the following example we have a Path made up of three PathLines. Normally, the items of the [PathView](../QtQuick.PathView.md) would be laid out equally along this path, with an equal number of items per line segment. [PathPercent](index.html) allows us to specify that the first and third lines should each hold 10% of the laid out items, while the second line should hold the remaining 80%.

``` qml
PathView {
    // ...
    Path {
        startX: 0; startY: 0
        PathLine { x:100; y: 0; }
        PathPercent { value: 0.1 }
        PathLine { x: 100; y: 100 }
        PathPercent { value: 0.9 }
        PathLine { x: 100; y: 0 }
        PathPercent { value: 1 }
    }
}
```

