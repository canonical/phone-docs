---
Title: QtQuick.Row
---
        
Row
===

<span class="subtitle"></span>
Positions its children in a row More...

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

-   ****[add](#add-prop)**** : Transition
-   ****[effectiveLayoutDirection](#effectiveLayoutDirection-prop)**** : enumeration
-   ****[layoutDirection](#layoutDirection-prop)**** : enumeration
-   ****[move](#move-prop)**** : Transition
-   ****[populate](#populate-prop)**** : Transition
-   ****[spacing](#spacing-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

Row is a type that positions its child items along a single row. It can be used as a convenient way to horizontally position a series of items without using [anchors](../QtQuick.qtquick-positioning-anchors.md).

Below is a Row that contains three rectangles of various sizes:

``` qml
import QtQuick 2.0
Row {
    spacing: 2
    Rectangle { color: "red"; width: 50; height: 50 }
    Rectangle { color: "green"; width: 20; height: 50 }
    Rectangle { color: "blue"; width: 50; height: 20 }
}
```

The Row automatically positions these items in a horizontal formation, like this:

![](https://developer.ubuntu.com/static/devportal_uploaded/e0699b54-4236-420f-b477-63498cba8775-api/apps/qml/sdk-15.04.5/QtQuick.Row/images/horizontalpositioner_example.png)

If an item within a Row is not [visible](../QtQuick.Item.md#visible-prop), or if it has a width or height of 0, the item will not be laid out and it will not be visible within the row. Also, since a Row automatically positions its children horizontally, a child item within a Row should not set its [x](../QtQuick.Item.md#x-prop) position or horizontally anchor itself using the [left](../QtQuick.Item.md#anchors.left-prop), [right](../QtQuick.Item.md#anchors.right-prop), [anchors.horizontalCenter](../QtQuick.Item.md#anchors.horizontalCenter-prop), [fill](../QtQuick.Item.md#anchors.fill-prop) or [centerIn](../QtQuick.Item.md#anchors.centerIn-prop) anchors. If you need to perform these actions, consider positioning the items without the use of a Row.

Note that items in a Row can use the [Positioner](../QtQuick.Positioner.md) attached property to access more information about its position within the Row.

For more information on using Row and other related positioner-types, see [Item Positioners](../QtQuick.qtquick-positioning-layouts.md).

**See also** [Column](../QtQuick.qtquick-positioning-layouts.md#column), [Grid](../QtQuick.qtquick-positioning-layouts.md#grid), [Flow](../QtQuick.qtquick-positioning-layouts.md#flow), [Positioner](../QtQuick.Positioner.md), RowLayout, and [Qt Quick Examples - Positioners](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.positioners/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="add-prop"></span><span class="name">add</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to be run for items that are added to this positioner. For a positioner, this applies to:

-   Items that are created or reparented as a child of the positioner after the positioner has been created
-   Child items that change their [Item::visible](../QtQuick.Item.md#visible-prop) property from false to true, and thus are now visible

The transition can use the [ViewTransition](../QtQuick.ViewTransition.md) property to access more details about the item that is being added. See the [ViewTransition](../QtQuick.ViewTransition.md) documentation for more details and examples on using these transitions.

**Note:** This transition is not applied to the items that already part of the positioner at the time of its creation. In this case, the [populate](#populate-prop) transition is applied instead.

**See also** [populate](#populate-prop), [ViewTransition](../QtQuick.ViewTransition.md), and [Qt Quick Examples - Positioners](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.positioners/).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="effectiveLayoutDirection-prop"></span><span class="name">effectiveLayoutDirection</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the effective layout direction of the row.

When using the attached property [LayoutMirroring::enabled](../QtQuick.LayoutMirroring.md#enabled-prop) for locale layouts, the visual layout direction of the row positioner will be mirrored. However, the property [layoutDirection](#layoutDirection-prop) will remain unchanged.

**See also** [Row::layoutDirection](#layoutDirection-prop) and [LayoutMirroring](../QtQuick.LayoutMirroring.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="layoutDirection-prop"></span><span class="name">layoutDirection</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the layoutDirection of the row.

Possible values:

-   Qt.LeftToRight (default) - Items are laid out from left to right. If the width of the row is explicitly set, the left anchor remains to the left of the row.
-   Qt.RightToLeft - Items are laid out from right to left. If the width of the row is explicitly set, the right anchor remains to the right of the row.

**See also** [Grid::layoutDirection](../QtQuick.Grid.md#layoutDirection-prop), [Flow::layoutDirection](../QtQuick.Flow.md#layoutDirection-prop), and [Qt Quick Examples - Right to Left](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.righttoleft/).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="move-prop"></span><span class="name">move</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to run for items that have moved within the positioner. For a positioner, this applies to:

-   Child items that move when they are displaced due to the addition, removal or rearrangement of other items in the positioner
-   Child items that are repositioned due to the resizing of other items in the positioner

The transition can use the [ViewTransition](../QtQuick.ViewTransition.md) property to access more details about the item that is being moved. Note, however, that for this move transition, the [ViewTransition](../QtQuick.ViewTransition.md).targetIndexes and [ViewTransition](../QtQuick.ViewTransition.md).targetItems lists are only set when this transition is triggered by the addition of other items in the positioner; in other cases, these lists will be empty. See the [ViewTransition](../QtQuick.ViewTransition.md) documentation for more details and examples on using these transitions.

**Note:** In Qt Quick 1, this transition was applied to all items that were part of the positioner at the time of its creation. From [QtQuick 2](../QtQuick.qtquick-index.md) onwards, positioners apply the [populate](#populate-prop) transition to these items instead.

**See also** [add](#add-prop), [ViewTransition](../QtQuick.ViewTransition.md), and [Qt Quick Examples - Positioners](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.positioners/).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="populate-prop"></span><span class="name">populate</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to be run for items that are part of this positioner at the time of its creation. The transition is run when the positioner is first created.

The transition can use the [ViewTransition](../QtQuick.ViewTransition.md) property to access more details about the item that is being added. See the [ViewTransition](../QtQuick.ViewTransition.md) documentation for more details and examples on using these transitions.

**See also** [add](#add-prop), [ViewTransition](../QtQuick.ViewTransition.md), and [Qt Quick Examples - Positioners](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.positioners/).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="spacing-prop"></span><span class="name">spacing</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The spacing is the amount in pixels left empty between adjacent items. The default spacing is 0.

**See also** [Grid::spacing](../QtQuick.Grid.md#spacing-prop).

