---
Title: QtLocation.MapItemView
---
        
MapItemView
===========

<span class="subtitle"></span>
The MapItemView is used to populate Map from a model. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[autoFitViewport](../../sdk-15.04.1/QtLocation.MapItemView.md#autoFitViewport-prop)**** : Component
-   ****[delegate](../../sdk-15.04.1/QtLocation.MapItemView.md#delegate-prop)**** : Component
-   ****[model](../../sdk-15.04.1/QtLocation.MapItemView.md#model-prop)**** : model

<span id="details"></span>
Detailed Description
--------------------

The [MapItemView](../../sdk-15.04.1/QtLocation.MapItemView.md) is used to populate Map with MapItems from a model. The [MapItemView](../../sdk-15.04.1/QtLocation.MapItemView.md) type only makes sense when contained in a Map, meaning that it has no standalone presentation.

<span id="example-usage"></span>
### Example Usage

This example demonstrates how to use the MapViewItem object to display a [route](../../sdk-15.04.1/QtLocation.Route.md) on a [map](../../sdk-15.04.1/QtLocation.Map.md):

``` qml
import QtQuick 2.0
import QtLocation 5.3
Map {
    RouteModel {
        id: routeModel
    }
    MapItemView {
        model: routeModel
        delegate: routeDelegate
    }
    Component {
        id: routeDelegate
        MapRoute {
            route: routeData
            line.color: "blue"
            line.width: 5
            smooth: true
            opacity: 0.8
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
<td><p><span id="autoFitViewport-prop"></span><span class="name">autoFitViewport</span> : <span class="type">Component</span></p></td>
</tr>
</tbody>
</table>

This property controls whether to automatically pan and zoom the viewport to display all map items when items are added or removed.

Defaults to false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="delegate-prop"></span><span class="name">delegate</span> : <span class="type">Component</span></p></td>
</tr>
</tbody>
</table>

This property holds the delegate which defines how each item in the model should be displayed. The Component must contain exactly one MapItem -derived object as the root object.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="model-prop"></span><span class="name">model</span> : <span class="type">model</span></p></td>
</tr>
</tbody>
</table>

This property holds the model that provides data used for creating the map items defined by the delegate. Only QAbstractItemModel based models are supported.

