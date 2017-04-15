---
Title: QtQuick.Column
---
        
Column
======

<span class="subtitle"></span>
Positions its children in a column More...

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
-   ****[move](#move-prop)**** : Transition
-   ****[populate](#populate-prop)**** : Transition
-   ****[spacing](#spacing-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

Column is a type that positions its child items along a single column. It can be used as a convenient way to vertically position a series of items without using [anchors](../QtQuick.qtquick-positioning-anchors.md).

Below is a Column that contains three rectangles of various sizes:

``` qml
Column {
    spacing: 2
    Rectangle { color: "red"; width: 50; height: 50 }
    Rectangle { color: "green"; width: 20; height: 50 }
    Rectangle { color: "blue"; width: 50; height: 20 }
}
```

The Column automatically positions these items in a vertical formation, like this:

![](https://developer.ubuntu.com/static/devportal_uploaded/bdc4675f-b9ca-4dc9-8472-ce395659529d-api/apps/qml/sdk-15.04.5/QtQuick.Column/images/verticalpositioner_example.png)

If an item within a Column is not [visible](../QtQuick.Item.md#visible-prop), or if it has a width or height of 0, the item will not be laid out and it will not be visible within the column. Also, since a Column automatically positions its children vertically, a child item within a Column should not set its [y](../QtQuick.Item.md#y-prop) position or vertically anchor itself using the [top](../QtQuick.Item.md#anchors.top-prop), [bottom](../QtQuick.Item.md#anchors.bottom-prop), [anchors.verticalCenter](../QtQuick.Item.md#anchors.verticalCenter-prop), [fill](../QtQuick.Item.md#anchors.fill-prop) or [centerIn](../QtQuick.Item.md#anchors.centerIn-prop) anchors. If you need to perform these actions, consider positioning the items without the use of a Column.

Note that items in a Column can use the [Positioner](../QtQuick.Positioner.md) attached property to access more information about its position within the Column.

For more information on using Column and other related positioner-types, see [Item Positioners](../QtQuick.qtquick-positioning-layouts.md).

<span id="using-transitions"></span>
Using Transitions
-----------------

A Column animate items using specific transitions when items are added to or moved within a Column.

For example, the Column below sets the [move](#move-prop) property to a specific [Transition](../QtQuick.qmlexampletoggleswitch.md#transition):

``` qml
Column {
    spacing: 2
    Rectangle { color: "red"; width: 50; height: 50 }
    Rectangle { id: greenRect; color: "green"; width: 20; height: 50 }
    Rectangle { color: "blue"; width: 50; height: 20 }
    move: Transition {
        NumberAnimation { properties: "x,y"; duration: 1000 }
    }
    focus: true
    Keys.onSpacePressed: greenRect.visible = !greenRect.visible
}
```

When the Space key is pressed, the [visible](../QtQuick.Item.md#visible-prop) value of the green [Rectangle](../QtQuick.Rectangle.md) is toggled. As it appears and disappears, the blue [Rectangle](../QtQuick.Rectangle.md) moves within the Column, and the [move](#move-prop) transition is automatically applied to the blue [Rectangle](../QtQuick.Rectangle.md):

![](https://developer.ubuntu.com/static/devportal_uploaded/d5abc49d-0039-46dd-89be-ffb36291cce7-api/apps/qml/sdk-15.04.5/QtQuick.Column/images/verticalpositioner_transition.gif)

**See also** [Row](../QtQuick.qtquick-positioning-layouts.md#row), [Grid](../QtQuick.qtquick-positioning-layouts.md#grid), [Flow](../QtQuick.qtquick-positioning-layouts.md#flow), [Positioner](../QtQuick.Positioner.md), ColumnLayout, and [Qt Quick Examples - Positioners](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.positioners/).

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
<td><p><span id="move-prop"></span><span class="name">move</span> : <span class="type"><a href="QtQuick.Transition.md">Transition</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the transition to run for items that have moved within the positioner. For a positioner, this applies to:

-   Child items that move when they are displaced due to the addition, removal or rearrangement of other items in the positioner
-   Child items that are repositioned due to the resizing of other items in the positioner

The transition can use the [ViewTransition](../QtQuick.ViewTransition.md) property to access more details about the item that is being moved. Note, however, that for this move transition, the [ViewTransition](../QtQuick.ViewTransition.md).targetIndexes and [ViewTransition](../QtQuick.ViewTransition.md).targetItems lists are only set when this transition is triggered by the addition of other items in the positioner; in other cases, these lists will be empty. See the [ViewTransition](../QtQuick.ViewTransition.md) documentation for more details and examples on using these transitions.

**Note:** In Qt Quick 1, this transition was applied to all items that were part of the positioner at the time of its creation. From [Qt Quick 2](../QtQuick.qtquick-index.md) onwards, positioners apply the [populate](#populate-prop) transition to these items instead.

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

