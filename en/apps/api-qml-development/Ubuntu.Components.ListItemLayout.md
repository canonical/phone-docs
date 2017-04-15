---
Title: Ubuntu.Components.ListItemLayout
---
        
ListItemLayout
==============

<span class="subtitle"></span>
ListItemLayout provides an easy way to create list items which follow Ubuntu design standards, thus making them visually appealing and consistent with the rest of the platform without effort. More...

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
<td><p><a href="Ubuntu.Components.SlotsLayout.md">SlotsLayout</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[subtitle](#subtitle-prop)**** : Label
-   ****[summary](#summary-prop)**** : Label
-   ****[title](#title-prop)**** : Label

<span id="details"></span>
Detailed Description
--------------------

[ListItemLayout](index.html) is essentially a [SlotsLayout](../Ubuntu.Components.SlotsLayout.md) with a predefined [SlotsLayout::mainSlot](../Ubuntu.Components.SlotsLayout.md#mainSlot-prop) that provides (up to) 3 Labels automatically laid out according to our UI guidelines.

**Note**: those labels may have properties whose default value is different from what is used by the standard Label component. The default wrapMode, for instance, is different. Have a look at [Labels' properties](#labels-properties) section.

This main slot has been optimized to cover most of the usecases without compromising performance (read more in [Optimizing memory consumption](#optimizing-memory-consumption)).

We're aware there could be usecases which the [SlotsLayout::mainSlot](../Ubuntu.Components.SlotsLayout.md#mainSlot-prop) provided by [ListItemLayout](index.html) doesn't cover. If that is the case, please use [SlotsLayout](../Ubuntu.Components.SlotsLayout.md) instead of [ListItemLayout](index.html) and provide your own [SlotsLayout::mainSlot](../Ubuntu.Components.SlotsLayout.md#mainSlot-prop).

[ListItemLayout](index.html) works similarly to [QtQuick](http://doc.qt.io/qt-5/qtquick-qmlmodule.html)'s Row, but while Row just positions its children in a horizontal formation, [ListItemLayout](index.html) also tweaks their vertical position to ensure a clean layout.

We will call [ListItemLayout](index.html)'s visual children "slots". [ListItemLayout](index.html) positions its slots automatically, following the visual rules specified by the Ubuntu Design team. Because we think flexibility is an important value of our UI components, we made it possible to tweak the position of each slot by modifying its attached properties (see [Advanced layout tweaks](../Ubuntu.Components.SlotsLayout.md#advanced-layout-tweaks)).

**Note** that if you're wrapping the [ListItemLayout](index.html) in a container such as [ListItem](../Ubuntu.Components.ListItem.md), **you will have to specify the height of the container so that it follows [ListItemLayout](index.html)'s height**, otherwise the layout content may appear clipped or not vertically centered.

See **[here](../Ubuntu.Components.SlotsLayout.md#resizing-the-layout)** for more details. Here's an example:

``` qml
import QtQuick 2.4
import Ubuntu.Component 1.3
ListItem {
    //CORRECT, ListItem will be tall enough to accomodate all the content
    height: layout.height + (divider.visible ? divider.height : 0)
    ListItemLayout {
        id: layout
        title.text: "Hello developers!"
        subtitle.text: "I am a ListItemLayout"
        summary.text: "I resize automatically to accomodate all the elements I hold. My parents should track my height property!"
    }
}
```

If you need a progression symbol in your list item, just add [ProgressionSlot](../Ubuntu.Components.ProgressionSlot.md) as a child of your [ListItemLayout](index.html). No manual positioning is needed, the layout will handle it for you.

To read more about advanced slots positioning or how to handle input (mouse or touch) in [ListItemLayout](index.html), see [SlotsLayout](../Ubuntu.Components.SlotsLayout.md) documentation.

If you don't need the features provided by [ListItem](../Ubuntu.Components.ListItem.md) (such as the swiping actions), you can also use [ListItemLayout](index.html) directly as root of your list view delegate or inside a [MouseArea](../QtQuick.MouseArea.md), as explained in [Input handling](../Ubuntu.Components.SlotsLayout.md#input-handling).

The following code example shows how easy it is to create even non trivial list items using [ListItem](../Ubuntu.Components.ListItem.md) and [ListItemLayout](index.html):

``` qml
ListItem {
    height: layout.height + (divider.visible ? divider.height : 0)
    ListItemLayout {
        id: layout
        title.text: "Hello developers!"
        subtitle.text: "I'm a subtitle, I'm tiny!"
        summary.text: "Ubuntu!"
        CheckBox { SlotsLayout.position: SlotsLayout.Leading }
        Icon {
            name: "message"
            SlotsLayout.position: SlotsLayout.Trailing;
            width: units.gu(2)
        }
    }
}
```

Although [ListItemLayout](index.html) covers most of the usecases, there might be times where you might want to tweak the position of one or more slots. The following example shows one way to implement a list item with a trailing slot holding two labels. What is special about this example is that we want the baseline of one label inside the trailing slot to align to [title](#title-prop)'s baseline and the baseline of the other label to align to [subtitle](#subtitle-prop)'s baseline.

``` qml
ListItem {
    id: listItem
    height: layout.height + (divider.visible ? divider.height : 0)
    ListItemLayout {
        id: layout
        title.text: "Hello..."
        title.color: UbuntuColors.Orange
        subtitle.text: "...world!"
        Rectangle {
            SlotsLayout.position: SlotsLayout.Leading
            color: "pink"
            height: units.gu(6)
            width: height
        }
        Item {
            id: slot
            width: secondLabel.width
            height: parent.height
            //as we want to position labels to align with title and subtitle
            SlotsLayout.overrideVerticalPositioning: true
            Label {
                id: firstLabel
                anchors.right: secondLabel.right
                text: "19:17"
                fontSize: "small"
                y: layout.mainSlot.y + layout.title.y
                   + layout.title.baselineOffset - baselineOffset
            }
            Label {
                id: secondLabel
                text: "Outgoing"
                fontSize: "small"
                y: layout.mainSlot.y + layout.subtitle.y
                   + layout.subtitle.baselineOffset - baselineOffset
            }
        }
    }
}
```

<span id="labels-layout"></span>
Labels layout
-------------

The labels in [ListItemLayout](index.html)'s default [SlotsLayout::mainSlot](../Ubuntu.Components.SlotsLayout.md#mainSlot-prop) are laid out in a column. The [title](#title-prop) is positioned at the top, followed by [subtitle](#subtitle-prop) and [summary](#summary-prop), respectively.

The [subtitle](#subtitle-prop) has its top anchored to [title](#title-prop)'s bottom, with a margin of 2 DPs.

The [summary](#summary-prop) has its top tightly anchored to [subtitle](#subtitle-prop)'s bottom.

The height of the default [SlotsLayout::mainSlot](../Ubuntu.Components.SlotsLayout.md#mainSlot-prop) provided with [ListItemLayout](index.html) is the minimum height required to accomodate the **visible** and **non-empty** labels it holds. If only [title](#title-prop) is visible and has a non-empty text set, for instance, the height of the main slot will be `title.height`.

If you wish to have the layout process accomodate a label which doesn't have a defined text yet, you should set its text property to " ", as shown in the following example:

``` qml
ListItemLayout {
    title.text: "Hello developers!"
    //NOTE: the whitespace
    subtitle.text: " "
}
```

That will make sure [SlotsLayout::mainSlot](../Ubuntu.Components.SlotsLayout.md#mainSlot-prop) is resized to accomodate the (currently empty) subtitle.

This is useful, for instance, if you want all list items in a list view to have the same height even without having to fill [subtitle](#subtitle-prop)'s (or summary's) text with dummy content.

<span id="labels-properties"></span>
Labels' properties
------------------

[ListItemLayout](index.html)'s labels are the same component as [Label](../Ubuntu.Components.Label.md), but with slightly different default properties. Moreover, [Label](../Ubuntu.Components.Label.md) derives from [Text](../../sdk-14.10/QtQuick.qtquick-releasenotes.md#text). As a consequence, you can access and override all the properties provided by [Text](../../sdk-14.10/QtQuick.qtquick-releasenotes.md#text) and [Label](../Ubuntu.Components.Label.md), if needed. Please refer to [Text](../../sdk-14.10/QtQuick.qtquick-releasenotes.md#text)'s and [Label](../Ubuntu.Components.Label.md)'s documentation to see the list of all the properties.

The default values for [ListItemLayout](index.html)'s labels are defined in the documentation of each label. See [title](#title-prop), [subtitle](#subtitle-prop) and [summary](#summary-prop).

**Note**: if you want to change the elide mode of a label to something other than `Text.ElideRight`, make sure its `wrapMode` is set to `Text.NoWrap`. See [Text::wrapMode](../QtQuick.Text.md#wrapMode-prop) for more details.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
Item {
    width: units.gu(30)
    height: units.gu(50)
    ListItem {
        height: layout.height + (divider.visible ? divider.height : 0)
        ListItemLayout {
            id: fileLayout
            //Let's change the default elide mode to Text.ElideMiddle
            title.elide: Text.ElideMiddle
            //ElideMiddle only works if there is no wrapping (see Text::wrapMode doc)
            title.wrapMode: Text.NoWrap
            title.text: "Red Roses run no risk, sir, on nurses order."
        }
    }
}
```

<span id="optimizing-memory-consumption"></span>
Optimizing memory consumption
-----------------------------

In order to minimize memory consumption, the Labels in the [SlotsLayout::mainSlot](../Ubuntu.Components.SlotsLayout.md#mainSlot-prop) are only allocated in memory on demand, i.e. the first time one of their properties is queried.

``` qml
ListItemLayout {
    //NOTE: querying subtitle.text triggers allocation of subtitle Label
    Component.onCompleted: console.log(subtitle.text)
    title.text: "Hello developers!"
}
```

In the example above, querying subtitle.text will trigger the allocation in memory of the subtitle Label, which we don't actually use. We **recommend** avoiding querying properties of labels that we don't plan to use in the layout, in order to minimize memory consumption and maximize the scrolling performance of our list views.

``` qml
ListItemLayout {
    //no extra labels created
    title.text: "Hello developers!"
}
```

<span id="about-aliasing-labels-properties"></span>
About aliasing labels properties
--------------------------------

Due to the way ListItemsLayout's labels are created (see [Optimizing memory consumption](#optimizing-memory-consumption)) it is not possible to directly alias their properties. It is still possible, however, to expose an API that gives indirect read-write access to those properties. The following code:

``` qml
ListItem {
    height: layout.height + (divider.visible ? divider.height : 0)
    property alias titleText: layout.title.text
    ListItemLayout {
        id: layout
    }
}
```

will return the error "Invalid alias location", because the title object does not yet exist at time when the alias is created.

If you need to expose an API for your component that allows changing the properties of the labels, we recommend aliasing the labels themselves. Let's assume you want to create a QML component to use as a delegate of many list views inside your application: you will probably have a qml file holding the definition of the that delegate, and the content of that file will be similar to:

``` qml
//Content of CustomListItem.qml
import QtQuick 2.4
import Ubuntu.Components 1.3
ListItem {
    id: listitem
    property alias title: layout.title
    property alias iconName: icon.name
    height: layout.height + (divider.visible ? divider.height : 0)
    ListItemLayout {
        id: layout
        Icon {
            id: icon
            width: units.gu(2)
        }
    }
}
```

As you can see, we alias the label item itself instead of its properties. This also has the advantage of only exposing one alias instead of one for each property, thus making your QML app a bit more performant. Once your delegate is defined, you can use it in your ListViews like usual.

``` qml
//other UI code...
ListView {
    anchors.fill: parent
    model: ListModel {
        id: listViewModel
        ListElement { titleText: "Hello1"; icon: "message" }
        ListElement { titleText: "Hello2"; icon: "email" }
        ListElement { titleText: "Hello3"; icon: "email" }
        ListElement { titleText: "Hello4"; icon: "message" }
    }
    delegate: CustomListItem {
        title.text: model.titleText
        iconName: model.icon
    }
}
```

Note how title's properties are all accessible via the "title" identifier.

**See also** [SlotsLayout](../Ubuntu.Components.SlotsLayout.md) and [ProgressionSlot](../Ubuntu.Components.ProgressionSlot.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="subtitle-prop"></span><span class="name">subtitle</span> : <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span></p></td>
</tr>
</tbody>
</table>

This property defines the subtitle label and its properties. Styling and font properties can be set by using the prefix `subtitle.` in a similar way as shown in [title](#title-prop).

The default [Text::elide](../QtQuick.Text.md#elide-prop) value for subtitle is `Text.ElideRight`.

The default [Text::wrapMode](../QtQuick.Text.md#wrapMode-prop) is `Text.WrapAnywhere`.

The default [Label::textSize](../Ubuntu.Components.Label.md#textSize-prop) is `Label.Small`.

The rest of the properties have the same default values as [Label](../Ubuntu.Components.Label.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="summary-prop"></span><span class="name">summary</span> : <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span></p></td>
</tr>
</tbody>
</table>

This property defines the subtitle label and its properties. Styling and font properties can be set by using the prefix `summary.` in a similar way as shown in [title](#title-prop).

The default [Text::elide](../QtQuick.Text.md#elide-prop) value for summary is `Text.ElideRight`.

The default [Text::wrapMode](../QtQuick.Text.md#wrapMode-prop) is `Text.WrapAnywhere`.

The default [Label::textSize](../Ubuntu.Components.Label.md#textSize-prop) is `Label.Small`.

The rest of the properties have the same default values as [Label](../Ubuntu.Components.Label.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="title-prop"></span><span class="name">title</span> : <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span></p></td>
</tr>
</tbody>
</table>

This property defines the title label and its properties. Styling and font properties can be set just like on any other Text component, as shown in the following example:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
ListItemLayout {
    height: units.gu(10)
    width: units.gu(30)
    title.color: UbuntuColors.orange
    title.maximumLineCount: 3
    title.text: "Red Roses\nrun no risk,\nsir, on nurses order."
}
```

The default [Text::elide](../QtQuick.Text.md#elide-prop) value for title is `Text.ElideRight`.

The default [Text::wrapMode](../QtQuick.Text.md#wrapMode-prop) is `Text.WrapAnywhere`.

That means, for instance, that if you want to use a different elide mode, you also have to set wrapMode to `Text.NoWrap`. Refer to the official [Text](../../sdk-14.10/QtQuick.qtquick-releasenotes.md#text) documentation for further details.

The default [Label::textSize](../Ubuntu.Components.Label.md#textSize-prop) is `Label.Medium`.

The rest of the properties have the same default values as [Label](../Ubuntu.Components.Label.md).

