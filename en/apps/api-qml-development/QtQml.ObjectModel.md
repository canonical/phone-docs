---
Title: QtQml.ObjectModel
---
        
ObjectModel
===========

<span class="subtitle"></span>
Defines a set of items to be used as a model More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtQml.Models 2.1 |

<span id="properties"></span>
Properties
----------

-   ****[count](#count-prop)**** : int

<span id="attached-properties"></span>
Attached Properties
-------------------

-   ****[index](#index-attached-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

A [ObjectModel](index.html) contains the visual items to be used in a view. When a [ObjectModel](index.html) is used in a view, the view does not require a delegate since the [ObjectModel](index.html) already contains the visual delegate (items).

An item can determine its index within the model via the [index](#index-attached-prop) attached property.

The example below places three colored rectangles in a ListView.

``` cpp
import QtQuick 2.0
import QtQml.Models 2.1
Rectangle {
    ObjectModel {
        id: itemModel
        Rectangle { height: 30; width: 80; color: "red" }
        Rectangle { height: 30; width: 80; color: "green" }
        Rectangle { height: 30; width: 80; color: "blue" }
    }
    ListView {
        anchors.fill: parent
        model: itemModel
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/98141b30-082d-4731-91e1-93def57369d2-api/apps/qml/sdk-15.04.6/QtQml.ObjectModel/images/visualitemmodel.png)

**See also** Qt Quick Examples - Views.

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

The number of items in the model. This property is readonly.

Attached Property Documentation
-------------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="index-attached-prop"></span><span class="name">ObjectModel.index</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This attached property holds the index of this delegate's item within the model.

It is attached to each instance of the delegate.

