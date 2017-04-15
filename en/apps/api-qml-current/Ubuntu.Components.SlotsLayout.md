---
Title: Ubuntu.Components.SlotsLayout
---
        
SlotsLayout
===========

<span class="subtitle"></span>
The SlotsLayout component provides an easy way to layout a list of user-interface elements horizontally following Ubuntu design standards. We call the elements which we want to layout "slots". **Slots** is just another name for SlotsLayout's **visual children**. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components 1.3</td>
</tr>
<tr class="even">
<td>Since:</td>
<td>Ubuntu.Components 1.3</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="../../sdk-14.10/QtQuick.Item.md">Item</a></p></td>
</tr>
<tr class="even">
<td>Inherited By:</td>
<td><p><a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a>.</p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[mainSlot](#mainSlot-prop)**** : Item
-   ****[padding](#padding-prop)****
    -   ****[padding.top](#padding.top-prop)**** : real
    -   ****[padding.bottom](#padding.bottom-prop)**** : real
    -   ****[padding.leading](#padding.leading-prop)**** : real
    -   ****[padding.trailing](#padding.trailing-prop)**** : real

<span id="attached-properties"></span>
Attached Properties
-------------------

-   ****[overrideVerticalPositioning](#overrideVerticalPositioning-attached-prop)**** : bool
-   ****[padding](#padding-attached-prop)**** : QtObject
-   ****[position](#position-attached-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

[SlotsLayout](index.html) will layout its children according to Ubuntu's visual design rules, providing automatic spacing and positioning (both horizontal and vertical, unless [overrideVerticalPositioning](#overrideVerticalPositioning-attached-prop) is set) for each of them.

**If you're building list items,** we recommend to use [ListItemLayout](../Ubuntu.Components.ListItemLayout.md), as it is designed to accomodate up to 3 labels that follow our UI standards.

There are three conceptual types of slots:

-   The **leading slots**, which are the ones positioned at the beginning of the layout (i.e. they are the leftmost elements in left-to-right locales).
-   The **trailing slots**, which are positioned after [mainSlot](#mainSlot-prop), if any, or after the leading slots otherwise.
-   The **main slot**, which drives the positioning of the vertical dimension of each slot as described in section [Automatic vertical positioning of slots](#automatic-vertical-positioning-of-slots). This slot sits between leading and trailing slots, and can be set using the property [mainSlot](#mainSlot-prop).

In order to comply with Ubuntu design standards, this component hosts a maximum of 1 leading and 2 trailing slots. The layout algorithm will ignore any additional item.

[SlotsLayout](index.html) also provides a series of properties which are attached to each slot. However not all properties are valid in all the circumstances. These properties allow an easy tweaking of slot's positioning within the layout. [SlotsLayout::position](#position-attached-prop) can be used to set whether a slot should be a leading or trailing one. [SlotsLayout::padding](#padding-attached-prop) can be used to tweak the padding around a slot. [SlotsLayout::overrideVerticalPositioning](#overrideVerticalPositioning-attached-prop) allows to disable the automatic positioning of the vertical coordinate of a slot as described in [Automatic vertical positioning of slots](#automatic-vertical-positioning-of-slots), in case a custom behaviour is needed.

The following example shows a very simple [SlotsLayout](index.html) with an [Icon](../Ubuntu.Components.Icon.md) as leading slot, and a [CheckBox](../Ubuntu.Components.CheckBox.md) as trailing slot. There is no need to specify any size or margin, everything is handled automatically by the layout component.

``` qml
SlotsLayout {
    mainSlot: Label {
        text: "Hello developers!"
    }
    CheckBox { SlotsLayout.position: SlotsLayout.Trailing }
    Icon {
        name: "message"
        SlotsLayout.position: SlotsLayout.Leading;
        width: units.gu(2)
    }
}
```

The positioning of each slot should only be tweaked using its attached properties. Just like when using [QtQuick](http://doc.qt.io/qt-5/qtquick-qmlmodule.html)'s Row, a child item within the layout should not set its **x** or **anchors** affecting the horizontal positioning (left, right, horizontalCenter, centerIn, fill). If you need to perform these actions, consider positioning the items without the use of a [SlotsLayout](index.html).

The vertical **anchors** of a slot can be modified, **provided that** [SlotsLayout::overrideVerticalPositioning](#overrideVerticalPositioning-attached-prop) for that slot is set. More about this in the [Advanced layout tweaks](#advanced-layout-tweaks) section.

<span id="resizing-the-layout"></span>
Resizing the layout
-------------------

[SlotsLayout](index.html)'s **implicit width** is by default set to the width of the parent (usually a [ListItem](../Ubuntu.Components.ListItem.md)). Changing the width of the layout is possible but should not be needed in most of the usecases: keeping the width in sync with the width of its parent allows the user interface to be scalable across devices with varying resolution and form factors.

The **implicit height** is not fixed either. In order not to clip any of the slots, the [SlotsLayout](index.html) adapts to accomodate its highest slot with padding and the padding around the layout.

Because of the above, it is recommended to have items wrapping the layout bind to [SlotsLayout](index.html)'s **height** (adding [ListItem](../Ubuntu.Components.ListItem.md) **divider**'s height if needed), not the opposite. It is not recommended, for instance, to use anchors.fill to force [SlotsLayout](index.html) to fill another Item, because that item might not have enough space to accomdate all the slots, and therefore the slots will be clipped.

``` qml
ListItem {
    //CORRECT
    height: layout.height + divider.height
    SlotsLayout {
        id: layout
        //WRONG
        //anchors.fill: parent
        mainSlot: Label {
            text: "Hello developers!"
        }
        CheckBox { SlotsLayout.position: SlotsLayout.Trailing }
    }
}
```

Manually resizing [SlotsLayout](index.html) (or [ListItemLayout](../Ubuntu.Components.ListItemLayout.md)) is usually not needed and we recommend to avoid it, as the component will already take care of doing the job for you. The following example shows what a standard [SlotsLayout](index.html) should look like:

``` qml
SlotsLayout {
    mainSlot: Label {
        text: "Hello developers!"
    }
    //just an example of something inside SlotsLayout
    CheckBox { SlotsLayout.position: SlotsLayout.Trailing }
}
```

<span id="automatic-vertical-positioning-of-slots"></span>
Automatic vertical positioning of slots
---------------------------------------

In order to provide a visually pleasing and consistent layout across the whole platform, [SlotsLayout](index.html) automatically handles the vertical positioning of its slots so that they comply with the following rules:

-   if there's any slot which is taller or as tall as [mainSlot](#mainSlot-prop) or if no [mainSlot](#mainSlot-prop) is defined, all slots will be **vertically centered** within the layout (still taking [SlotsLayout::padding.top](#padding.top-prop) and [SlotsLayout::padding.bottom](#padding.bottom-prop) into account).

    ![](https://developer.ubuntu.com/static/devportal_uploaded/1506bbd2-3e0a-47cc-b6f7-f1b1ade5f561-api/apps/qml/sdk-15.04.5/Ubuntu.Components.SlotsLayout/images/SlotsLayout_centerVertically.png)

-   **Otherwise**, all the slots (including [mainSlot](#mainSlot-prop)) will be **aligned to the top** of the layout with a padding of [SlotsLayout::padding.top](#padding.top-prop) plus the top padding of the slot, defined in its attached properties.

    ![](https://developer.ubuntu.com/static/devportal_uploaded/b9c70519-410a-474e-8102-19a2acf88e43-api/apps/qml/sdk-15.04.5/Ubuntu.Components.SlotsLayout/images/SlotsLayout_alignToTop.png)

Even though it is **not recommended**, it is still possible to override this behaviour on a slot-by-slot basis by setting [SlotsLayout::overrideVerticalPositioning](#overrideVerticalPositioning-attached-prop) to true. This is described in [Advanced layout tweaks](#advanced-layout-tweaks).

<span id="input-handling"></span>
Input handling
--------------

The purpose of [SlotsLayout](index.html) is to position its slots following the rules defined in [Automatic vertical positioning of slots](#automatic-vertical-positioning-of-slots). There are two recommended ways to implement input handling: the first one, in case the target is to create a list item, is to put the [SlotsLayout](index.html) (or any derived component, like [ListItemLayout](../Ubuntu.Components.ListItemLayout.md)) inside a [ListItem](../Ubuntu.Components.ListItem.md), and use [ListItem](../Ubuntu.Components.ListItem.md)'s onClicked handler to handle clicks and taps.

``` qml
ListItem {
    height: layout.height + divider.height
    onClicked: console.log("clicked!")
    SlotsLayout {
        id: layout
        mainSlot: Label {
            text: "Hello developers!"
        }
        //just an example of something inside SlotsLayout
        CheckBox { SlotsLayout.position: SlotsLayout.Trailing }
    }
}
```

The second option is to use a [MouseArea](../../sdk-14.10/QtQuick.MouseArea.md) as a wrapper around [SlotsLayout](index.html), as the following code demonstrates:

``` qml
MouseArea {
    anchors.left: parent.left
    anchors.right: parent.right
    height: layout.height
    onClicked: console.log("clicked!")
    SlotsLayout {
        id: layout
        mainSlot: Label {
            text: "Hello developers!"
        }
        //just an example of something inside SlotsLayout
        CheckBox { SlotsLayout.position: SlotsLayout.Trailing }
    }
}
```

**Note**: as recommended in [Resizing the layout](#resizing-the-layout), since [SlotsLayout](index.html) has a dynamic height, it is important to have the parent item's height (in this case [MouseArea](../../sdk-14.10/QtQuick.MouseArea.md)) follow [SlotsLayout](index.html)'s **height**, and not the opposite, to avoid getting the slots clipped out of the layout.

<span id="advanced-layout-tweaks"></span>
Advanced layout tweaks
----------------------

The automatic layout provided by [SlotsLayout](index.html) is designed to cover most of the usecases. There could be times, however, where you might want to tweak the positioning of one particular slot.

A slot can set its attached properties [SlotsLayout::padding](#padding-attached-prop) and [SlotsLayout::overrideVerticalPositioning](#overrideVerticalPositioning-attached-prop) to reach the desired position.

When a slot enables [SlotsLayout::overrideVerticalPositioning](#overrideVerticalPositioning-attached-prop), it gains control over its vertical anchors (top, bottom, verticalCenter). Moreover, [SlotsLayout](index.html) will ignore the height of that slot in the following computations of its implicitHeight (see [Resizing the layout](#resizing-the-layout)).

When manually positioning a slot, care must be taken to avoid pushing the slot outside of the layout perimeter, to avoid getting it clipped.

The following example shows a [SlotsLayout](index.html) which has both custom padding and a slot which uses custom vertical positioning:

``` qml
SlotsLayout {
    id: layout
    mainSlot: Label { id: label; text: "Hello developers!" }
    padding {
        top: units.gu(3)
        bottom: units.gu(3)
    }
    CheckBox {
        anchors.top: label.top
        SlotsLayout.position: SlotsLayout.Trailing
        SlotsLayout.overrideVerticalPositioning: true
    }
}
```

It is also possible to sort the slots in a relative fashion, by using positions such as [SlotsLayout](index.html).Leading+1, for instance, if we want that slot to always be positioned after items with position [SlotsLayout](index.html).Leading. This is particularly useful, for example, when subclassing [SlotsLayout](index.html)-based components which already have predefined slots inside them. If, for instance, the component we're subclassing has a slot with position [SlotsLayout](index.html).Trailing, we can add a slot to our subclass with position [SlotsLayout](index.html).Trailing-1 if we want to make sure our slot is always positioned before the one in the component we are deriving from. This scenario is shown in the following example code:

``` qml
//ExampleLayout.qml
SlotsLayout {
    id: layout
    mainSlot: Label { id: label; text: "Hello developers!" }
    CheckBox { SlotsLayout.position: SlotsLayout.Trailing }
}
```

``` qml
//DerivedLayout.qml
ExampleLayout {
    id: derivedLayout
    Icon {
        id: newSlot
        width: units.gu(2)
        name: "message"
        SlotsLayout.position: SlotsLayout.Trailing - 1
    }
}
```

**See also** [ListItemLayout](../Ubuntu.Components.ListItemLayout.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mainSlot-prop"></span><span class="name">mainSlot</span> : <span class="type"><a href="../../sdk-14.10/QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

This property represents the main slot of the layout. By default, [SlotsLayout](index.html) has no mainSlot set.

The main slot is the one that defines the vertical positioning of the other slots. Because of this, changing its position and [overrideVerticalPositioning](#overrideVerticalPositioning-attached-prop) attached properties has no effect. More details can be found in the section [Automatic vertical positioning of slots](#automatic-vertical-positioning-of-slots).

**Note**: because of limitations in [QtQuick](http://doc.qt.io/qt-5/qtquick-qmlmodule.html)/QML, it is not possible to initialize mainSlot's attached properties. Setting mainSlot's attached properties has to be done via JS, for example inside Component.onCompleted, as shown in the following example:

``` qml
SlotsLayout {
    id: layout
    Component.onCompleted: {
        mainSlot.SlotsLayout.padding.leading =
            Qt.binding(function() { return units.gu(5) })
    }
    mainSlot: Label { id: label; text: "Hello developers!" }
    CheckBox {
        anchors.top: label.top
        SlotsLayout.position: SlotsLayout.Trailing
        SlotsLayout.overrideVerticalPositioning: true
    }
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="padding-prop"></span><strong>padding group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="padding.top-prop"></span><span class="name">padding.top</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="padding.bottom-prop"></span><span class="name">padding.bottom</span> : <span class="type">real</span></p></td>
</tr>
<tr class="odd">
<td><p><span id="padding.leading-prop"></span><span class="name">padding.leading</span> : <span class="type">real</span></p></td>
</tr>
<tr class="even">
<td><p><span id="padding.trailing-prop"></span><span class="name">padding.trailing</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property defines the padding around the bounding box which holds all the slots. The default value for padding.leading is 1 Grid Unit. The default value for padding.trailing is 1 Grid Unit.

The value of padding.top and padding.bottom depends on the size of the slots which are in the layout:

-   if, according to the rules defined in [Automatic vertical positioning of slots](#automatic-vertical-positioning-of-slots), the slots are supposed to align to the top of the layout, padding.top and padding.bottom will have a value of **2** Grid Units.
-   otherwise, if according to the rules defined in [Automatic vertical positioning of slots](#automatic-vertical-positioning-of-slots) the slots are supposed to be vertically centered in the layout, **and** the tallest slot ([mainSlot](#mainSlot-prop) excluded) has a height of at least 4 Grid Units, padding.top and padding.bottom will be set to **1** Grid Unit.

**Note**: the automatic handling of padding.top and padding.bottom is disabled once either padding.top or padding.bottom is set to a custom value.

Attached Property Documentation
-------------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="overrideVerticalPositioning-attached-prop"></span><span class="name">SlotsLayout.overrideVerticalPositioning</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This attached property holds whether the layout should automatically handle the vertical positioning of a slot. It is attached to every slot. The default value is **false**.

If this property is set to true, the layout will ignore the corresponding slot during the computation of the **implicitHeight** of the whole layout (see [Resizing the layout](#resizing-the-layout)) and will not modify its vertical position during the layout process. As a consequence, it is possible, in that case, to manually set the vertical anchors of that slot (verticalCenter, top, bottom) or even its **y** property.

Care must be taken to avoid getting the slot clipped by positioning it partly or completely outside of the [SlotsLayout](index.html) that holds it.

**Note**: changing the value of overrideVerticalPositioning of one slot after the layout has already been initialized will reset its top, bottom, verticalCenter, fill, centerIn anchors for that slot, and the corresponding margins. Care must be taken to set the anchors to the desired values only after setting overrideVerticalPositioning.

**Note**: this property is only valid for standard slots. Changing the value of [mainSlot](#mainSlot-prop)'s overrideVerticalPositioning has no effect.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="padding-attached-prop"></span><span class="name">SlotsLayout.padding</span> : <span class="type"><a href="../../sdk-14.10/QtQml.QtObject.md">QtObject</a></span></p></td>
</tr>
</tbody>
</table>

While [SlotsLayout](index.html)'s padding property defines the padding around the whole layout, this attached property defines the padding around the slot it is attached to.

It is a grouped property that exposes the properties padding.top, padding.bottom, padding.leading, padding.trailing.

The default value for [SlotsLayout](index.html).padding.top is 0. The default value for [SlotsLayout](index.html).padding.bottom is 0. The default value for [SlotsLayout](index.html).padding.leading is 1 Grid Unit. The default value for [SlotsLayout](index.html).padding.trailing is 1 Grid Unit.

Please note that **top** and **bottom** paddings are only used when [SlotsLayout::overrideVerticalPositioning](#overrideVerticalPositioning-attached-prop) is set to false. More about this in [Automatic vertical positioning of slots](#automatic-vertical-positioning-of-slots).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="position-attached-prop"></span><span class="name">SlotsLayout.position</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This attached property defines the relative position of the slot inside the layout. It is attached to each slot. The default value is [SlotsLayout](index.html).Trailing.

Valid values for position are:

-   [SlotsLayout](index.html).First: the slot will be positioned at the beginning of the layout
-   [SlotsLayout](index.html).Leading: the slot will be positioned in the leading slots
-   [SlotsLayout](index.html).Trailing: the slot will be positioned in the trailing slots, i.e. the one towards the end of the layout.
-   [SlotsLayout](index.html).Last: the slot will be positioned at the end of the layout.

[ProgressionSlot](../Ubuntu.Components.ProgressionSlot.md), for instance, has its position set to [SlotsLayout](index.html).Last, in order to make sure the chevron is always displayed as the last trailing slot.

Whenever there are more slots with the same SlotsLayout::position, they will be positioned following the order in which they were added to the layout.

It is also possible to define relative positioning between the slots, by using values such as [SlotsLayout](index.html).Leading+1, or [SlotsLayout](index.html).Trailing-3. More about this in [Advanced layout tweaks](#advanced-layout-tweaks).

**Note**: you can only change the position of standard slots. Changing the position of [mainSlot](#mainSlot-prop) has no effect.

