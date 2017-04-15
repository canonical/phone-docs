---
Title: Ubuntu.Components.SortFilterModel
---
        
SortFilterModel
===============

<span class="subtitle"></span>
SortFilterModel sorts and filters rows from an existing model. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[filter.pattern](#filter.pattern-prop)**** : string
-   ****[filter.property](#filter.property-prop)**** : string
-   ****[model](#model-prop)**** : QAbstractItemModel
-   ****[sort.order](#sort.order-prop)**** : string
-   ****[sort.property](#sort.property-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

The [SortFilterModel](index.html) takes an existing model such as a [ListModel](../../sdk-14.10/QtQuick.qtquick-modelviewsdata-modelview.md#listmodel) or any [QAbstractItemModel](../../sdk-14.10/QtQuick.qtquick-modelviewsdata-cppmodels.md#qabstractitemmodel) implementation. The original rows and role names show up in the [SortFilterModel](index.html) with two basic differences. For one if [sort.property](#sort.property-prop) is set all rows will be sorted. Further more if [filter.property](#filter.property-prop) is set only rows matching the filter will be in the model.

Example usage:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
import Ubuntu.Components.ListItems 1.1
MainView {
    width: units.gu(80)
    height: units.gu(40)
    ListModel {
        id: movies
        ListElement {
            title: "Esign"
            producer: "Chris Larkee"
        }
        ListElement {
            title: "Elephants Dream"
            producer: "Blender"
        }
        ListElement {
            title: "Big Buck Bunny"
            producer: "Blender"
        }
    }
    SortFilterModel {
        id: sortedMovies
        model: movies
        sort.property: "title"
        sort.order: Qt.DescendingOrder
        // case insensitive sorting
        sortCaseSensitivity: Qt.CaseInsensitive
        filter.property: "producer"
        filter.pattern: /blender/
    }
    ListView {
        model: sortedMovies
        anchors.fill: parent
        delegate: Subtitled {
            text: title
            subText: producer
        }
        section.delegate: ListItem.Header { text: i18n.tr(section) }
        section.property: "title"
        section.criteria: ViewSection.FirstCharacter
    }
}
```

Pay attention to the differences between the original model and the result:

-   Big Buck Bunny will be the first row, because it's sorted by title
-   Esign won't be visible, because it's from the wrong producer

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="filter.pattern-prop"></span><span class="name">filter.pattern</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The pattern all rows must match, if [filter.property](#filter.property-prop) is set.

Some examples:

-   /possible/ matches anywhere in a word, so both "impossible" and "possible".
-   /^sign/ matches "sign". But not "assignment" because ^ means start.
-   /vest$/ matches "safety vest" and "vest" but not "vested".

For more advanced uses it's recommended to read up on Javascript regular expressions.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="filter.property-prop"></span><span class="name">filter.property</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

If set to a valid role name, only rows matching [filter.pattern](#filter.pattern-prop) will be in the model.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="model-prop"></span><span class="name">model</span> : <span class="type">QAbstractItemModel</span></p></td>
</tr>
</tbody>
</table>

The source model to sort and/ or filter.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sort.order-prop"></span><span class="name">sort.order</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The order, if [sort.property](#sort.property-prop) is set. Qt::AscendingOrder sorts results from A to Z or 0 to 9. Qt::DescendingOrder sorts results from Z to A or 9 to 0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sort.property-prop"></span><span class="name">sort.property</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

If set to a valid role name, all rows will be sorted according to [sort.order](#sort.order-prop).

