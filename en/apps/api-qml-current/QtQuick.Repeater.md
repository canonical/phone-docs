---
Title: QtQuick.Repeater
---
        
Repeater
========

<span class="subtitle"></span>
Instantiates a number of Item-based components using a provided model More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQuick 2.4</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[count](#count-prop)**** : int
-   ****[delegate](#delegate-prop)**** : Component
-   ****[model](#model-prop)**** : any

<span id="signals"></span>
Signals
-------

-   ****[itemAdded](#itemAdded-signal)****(int *index*, Item *item*)
-   ****[itemRemoved](#itemRemoved-signal)****(int *index*, Item *item*)

<span id="methods"></span>
Methods
-------

-   Item ****[itemAt](#itemAt-method)****(index)

<span id="details"></span>
Detailed Description
--------------------

The Repeater type is used to create a large number of similar items. Like other view types, a Repeater has a [model](#model-prop) and a [delegate](#delegate-prop): for each entry in the model, the delegate is instantiated in a context seeded with data from the model. A Repeater item is usually enclosed in a positioner type such as [Row](../QtQuick.qtquick-positioning-layouts.md#row) or [Column](../QtQuick.qtquick-positioning-layouts.md#column) to visually position the multiple delegate items created by the Repeater.

The following Repeater creates three instances of a [Rectangle](../QtQuick.Rectangle.md) item within a [Row](../QtQuick.qtquick-positioning-layouts.md#row):

``` qml
import QtQuick 2.0
Row {
    Repeater {
        model: 3
        Rectangle {
            width: 100; height: 40
            border.width: 1
            color: "yellow"
        }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/6ccc5089-25f6-4290-92fa-cb589e1731eb-api/apps/qml/sdk-15.04.5/QtQuick.Repeater/images/repeater-simple.png)

A Repeater's [model](#model-prop) can be any of the supported [data models](../QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models). Additionally, like delegates for other views, a Repeater delegate can access its index within the repeater, as well as the model data relevant to the delegate. See the [delegate](#delegate-prop) property documentation for details.

Items instantiated by the Repeater are inserted, in order, as children of the Repeater's parent. The insertion starts immediately after the repeater's position in its parent stacking list. This allows a Repeater to be used inside a layout. For example, the following Repeater's items are stacked between a red rectangle and a blue rectangle:

``` qml
Row {
    Rectangle { width: 10; height: 20; color: "red" }
    Repeater {
        model: 10
        Rectangle { width: 20; height: 20; radius: 10; color: "green" }
    }
    Rectangle { width: 10; height: 20; color: "blue" }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/5c790cbc-16af-4d05-a217-0840706dde7f-api/apps/qml/sdk-15.04.5/QtQuick.Repeater/images/repeater.png)

**Note:** A Repeater item owns all items it instantiates. Removing or dynamically destroying an item created by a Repeater results in unpredictable behavior.

<span id="considerations-when-using-repeater"></span>
### Considerations when using Repeater

The Repeater type creates all of its delegate items when the repeater is first created. This can be inefficient if there are a large number of delegate items and not all of the items are required to be visible at the same time. If this is the case, consider using other view types like [ListView](../QtQuick.ListView.md) (which only creates delegate items when they are scrolled into view) or use the Dynamic Object Creation methods to create items as they are required.

Also, note that Repeater is [Item](../QtQuick.Item.md)-based, and can only repeat [Item](../QtQuick.Item.md)-derived objects. For example, it cannot be used to repeat QtObjects:

``` cpp
//bad code
Item {
    Can't repeat QtObject as it doesn't derive from Item.
    Repeater {
        model: 10
        QtObject {}
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
<td><p><span id="count-prop"></span><span class="name">count</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the number of items in the repeater.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="delegate-prop"></span><span class="qmldefault">[default] </span><span class="name">delegate</span> : <span class="type">Component</span></p></td>
</tr>
</tbody>
</table>

The delegate provides a template defining each item instantiated by the repeater.

Delegates are exposed to a read-only `index` property that indicates the index of the delegate within the repeater. For example, the following [Text](../QtQuick.qtquick-releasenotes.md#text) delegate displays the index of each repeated item:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="qml"><code>Column {
    Repeater {
        model: 10
        Text { text: &quot;I&#39;m item &quot; + index }
    }
}</code></pre></td>
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/3204f232-afb5-4d12-a177-ffce5bbda402-api/apps/qml/sdk-15.04.5/QtQuick.Repeater/images/repeater-index.png" /></p></td>
</tr>
</tbody>
</table>

If the [model](#model-prop) is a [string list](../QtQuick.qtquick-modelviewsdata-cppmodels.md#qstringlist-based-model) or [object list](../QtQuick.qtquick-modelviewsdata-cppmodels.md#qobjectlist-based-model), the delegate is also exposed to a read-only `modelData` property that holds the string or object data. For example:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><pre class="qml"><code>Column {
    Repeater {
        model: [&quot;apples&quot;, &quot;oranges&quot;, &quot;pears&quot;]
        Text { text: &quot;Data: &quot; + modelData }
    }
}</code></pre></td>
<td><p><img src="https://developer.ubuntu.com/static/devportal_uploaded/f4cd1693-e590-4029-9a52-5747a08862b8-api/apps/qml/sdk-15.04.5/QtQuick.Repeater/images/repeater-modeldata.png" /></p></td>
</tr>
</tbody>
</table>

If the [model](#model-prop) is a model object (such as a [ListModel](../QtQuick.qtquick-modelviewsdata-modelview.md#listmodel)) the delegate can access all model roles as named properties, in the same way that delegates do for view classes like [ListView](../QtQuick.ListView.md).

**See also** [QML Data Models](../QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="model-prop"></span><span class="name">model</span> : <span class="type">any</span></p></td>
</tr>
</tbody>
</table>

The model providing data for the repeater.

This property can be set to any of the supported [data models](../QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models):

-   A number that indicates the number of delegates to be created by the repeater
-   A model (e.g. a [ListModel](../QtQuick.qtquick-modelviewsdata-modelview.md#listmodel) item, or a [QAbstractItemModel](../QtQuick.qtquick-modelviewsdata-cppmodels.md#qabstractitemmodel) subclass)
-   A string list
-   An object list

The type of model affects the properties that are exposed to the [delegate](#delegate-prop).

**See also** [Data Models](../QtQuick.qtquick-modelviewsdata-modelview.md#qml-data-models).

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemAdded-signal"></span><span class="name">itemAdded</span>(<span class="type">int</span> <em>index</em>, <span class="type"><a href="QtQuick.Item.md">Item</a></span> <em>item</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when an item is added to the repeater. The *index* parameter holds the index at which the item has been inserted within the repeater, and the *item* parameter holds the [Item](../QtQuick.Item.md) that has been added.

The corresponding handler is `onItemAdded`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemRemoved-signal"></span><span class="name">itemRemoved</span>(<span class="type">int</span> <em>index</em>, <span class="type"><a href="QtQuick.Item.md">Item</a></span> <em>item</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when an item is removed from the repeater. The *index* parameter holds the index at which the item was removed from the repeater, and the *item* parameter holds the [Item](../QtQuick.Item.md) that was removed.

Do not keep a reference to *item* if it was created by this repeater, as in these cases it will be deleted shortly after the signal is handled.

The corresponding handler is `onItemRemoved`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemAt-method"></span><span class="type"><a href="QtQuick.Item.md">Item</a></span> <span class="name">itemAt</span>(<span class="type">index</span>)</p></td>
</tr>
</tbody>
</table>

Returns the [Item](../QtQuick.Item.md) that has been created at the given *index*, or `null` if no item exists at *index*.

