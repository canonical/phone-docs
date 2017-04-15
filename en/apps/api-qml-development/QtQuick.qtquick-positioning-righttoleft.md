---
Title: QtQuick.qtquick-positioning-righttoleft
---
        
Right-to-left User Interfaces
=============================

<span class="subtitle"></span>
details
Overview
--------

This chapter discusses different approaches and options available for implementing right-to-left language support for Qt Quick applications. Some common right-to-left languages include Arabic, Hebrew, Persian and Urdu. Most changes include making sure that text translated to right-to-left languages is properly aligned to the right, and horizontally ordered content in views, lists and grids flows correctly from the right to left.

In right-to-left language speaking cultures, people naturally scan and read graphic elements and text from the right to left. The general rule of thumb is that content (like photos, videos and maps) is not mirrored, but positioning of the content (like application layouts and the flow of visual elements) is mirrored. For example, photos shown in chronological order should flow from right to left, the low end range of the horizontal sliders should be located at the right side of the slider, and text lines should be aligned to the right side of the available text area. The location of visual elements should not be mirrored when the position is related to a content; for example, when a position marker is shown to indicate a location on a map. Also, there are some special cases you may need to take into account where right-to-left language speakers are used to left-to-right positioning, for example when using number dialers in phones and media play, pause, rewind and forward buttons in music players.

<span id="text-alignment"></span>
Text Alignment
--------------

(This applies to the [Text](../QtQuick.qtquick-releasenotes.md#text), [TextInput](../QtQuick.TextInput.md) and [TextEdit](../QtQuick.TextEdit.md) types.)

When the horizontal alignment of a text item is not explicitly set, the text element is automatically aligned to the natural reading direction of the text. By default left-to-right text like English is aligned to the left side of the text area, and right-to-left text like Arabic is aligned to the right side of the text area. The alignment of a text element with empty text takes its alignment cue from QInputMethod::inputDirection(), which is based on the active system locale.

This default locale-based alignment can be overridden by setting the `horizontalAlignment` property for the text element, or by enabling layout mirroring using the [LayoutMirroring](../QtQuick.LayoutMirroring.md) attached property, which causes any explicit left and right horizontal alignments to be mirrored. Note that when [LayoutMirroring](../QtQuick.LayoutMirroring.md) is set, the `horizontalAlignment` property value remains unchanged; the effective alignment of the text element that takes the mirroring into account can be read from the `effectiveHorizontalAlignment` property.

``` qml
// automatically aligned to the left
Text {
    text: "Phone"
    width: 200
}
// automatically aligned to the right
Text {
    text: "خامل"
    width: 200
}
// aligned to the left
Text {
    text: "خامل"
    horizontalAlignment: Text.AlignLeft
    width: 200
}
// aligned to the right
Text {
    text: "خامل"
    horizontalAlignment: Text.AlignLeft
    LayoutMirroring.enabled: true
    width: 200
}
```

<span id="layout-direction-of-positioners-and-views"></span>
Layout Direction of Positioners and Views
-----------------------------------------

(This applies to the [Row](../QtQuick.qtquick-positioning-layouts.md#row), [Grid](../QtQuick.qtquick-positioning-layouts.md#grid), [Flow](../QtQuick.qtquick-positioning-layouts.md#flow), [ListView](../QtQuick.ListView.md) and [GridView](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.draganddrop/#gridview) types.)

From Qt Quick 1.1 onwards, types used for horizontal positioning and model views have gained a `layoutDirection` property for controlling the horizontal direction of the layouts. Setting `layoutDirection` to `Qt.RightToLeft` causes items to be laid out from the right to left. By default Qt Quick follows the left-to-right layout direction.

The horizontal layout direction can also be reversed through the [LayoutMirroring](../QtQuick.LayoutMirroring.md) attached property. This causes the effective `layoutDirection` of positioners and views to be mirrored. Note the actual value of the `layoutDirection` property will remain unchanged; the effective layout direction of positioners and views that takes the mirroring into account can be read from the `effectiveLayoutDirection` property.

``` qml
// by default child items are positioned from left to right
Row {
    Child {}
    Child {}
}
// position child items from right to left
Row {
    layoutDirection: Qt.RightToLeft
    Child {}
    Child {}
}
// position child items from left to right
Row {
    LayoutMirroring.enabled: true
    layoutDirection: Qt.RightToLeft
    Child {}
    Child {}
}
```

<span id="layout-mirroring"></span>
Layout Mirroring
----------------

The attached property [LayoutMirroring](../QtQuick.LayoutMirroring.md) is provided as a convenience for easily implementing right-to-left support for existing left-to-right Qt Quick applications. It mirrors the behavior of [Item anchors](../QtQuick.qtquick-positioning-anchors.md#anchor-layout), the layout direction of [positioners](../QtQuick.qtquick-positioning-layouts.md) and [model views](../QtQuick.qtquick-modelviewsdata-modelview.md), and the explicit text alignment of QML text types.

You can enable layout mirroring for a particular [Item](../QtQuick.Item.md):

``` qml
Item {
    height: 50; width: 150
    LayoutMirroring.enabled: true
    anchors.left: parent.left   // anchor left becomes right
    Row {
        // items flow from left to right (as per default)
        Child {}
        Child {}
        Child {}
    }
}
```

Or set all child types to also inherit the layout direction:

``` qml
Item {
    height: 50; width: 150
    LayoutMirroring.enabled: true
    LayoutMirroring.childrenInherit: true
    anchors.left: parent.left   // anchor left becomes right
    Row {
        // setting childrenInherit in the parent causes these
        // items to flow from right to left instead
        Child {}
        Child {}
        Child {}
    }
}
```

Applying mirroring in this manner does not change the actual value of the relevant anchor, `layoutDirection` or `horizontalAlignment` properties. The separate read-only property `effectiveLayoutDirection` can be used to query the effective layout direction of positioners and model views that takes the mirroring into account. Similarly the [Text](../QtQuick.qtquick-releasenotes.md#text), [TextInput](../QtQuick.TextInput.md) and [TextEdit](../QtQuick.TextEdit.md) types have gained the read-only property `effectiveHorizontalAlignment` for querying the effective visual alignment of text. For anchors, the read only [anchors.mirrored](../QtQuick.Item.md#anchors.top-prop) property reflects whether anchors have been mirrored.

Note that application layouts and animations that are defined using [x](../QtQuick.Item.md#x-prop) property values (as opposed to anchors or positioner types) are not affected by the [LayoutMirroring](../QtQuick.LayoutMirroring.md) attached property. Therefore, adding right-to-left support to these types of layouts may require some code changes to your application, especially in views that rely on both the anchors and x coordinate-based positioning. Here is one way to use the [LayoutMirroring](../QtQuick.LayoutMirroring.md) attached property to apply mirroring to an item that is positioned using [x](../QtQuick.Item.md#x-prop) coordinates:

``` qml
Rectangle {
    color: "black"
    height: 50; width: 50
    x: mirror(10)
    function mirror(value) {
        return LayoutMirroring.enabled ? (parent.width - width - value) : value;
    }
}
```

Not all layouts should necessarily be mirrored. There are cases where a visual type is positioned to the right side of the screen for improved one-handed use, because most people are right-handed, and not because of the reading direction. In the case that a child type should not be affected by mirroring, set the [LayoutMirroring.enabled](../QtQuick.LayoutMirroring.md#enabled-prop) property for that type to false.

Qt Quick is designed for developing animated, fluid user interfaces. When mirroring your application, remember to test that the animations and transitions continue to work as expected. If you do not have the resources to add right-to-left support for your application, it may be better to just keep the application layouts left aligned and just make sure that text is translated and aligned properly.

<span id="mirroring-icons"></span>
Mirroring Icons
---------------

(This applies to [Image](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.imageelements/#image), [BorderImage](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.imageelements/#borderimage) and [AnimatedImage](../QtQuick.AnimatedImage.md) types.)

Most images do not need to be mirrored, but some directional icons, such as arrows, may need to be mirrored. The painting of these icons can be mirrored with a dedicated `mirror` property introduced in Qt Quick 1.1:

``` qml
Image {
    source: "arrow.png"
    mirror: true
}
```

<span id="default-layout-direction"></span>
Default Layout Direction
------------------------

The Qt.application.layoutDirection property can be used to query the active layout direction of the application. It is based on QGuiApplication::layoutDirection(), which most commonly determines the layout direction from the active language translation file.

To define the layout direction for a particular locale, declare the dedicated string literal `QT_LAYOUT_DIRECTION` in context `QGuiApplication` as either "LTR" or "RTL".

You can do this by first introducing this line

``` cpp
QT_TRANSLATE_NOOP("QGuiApplication", "QT_LAYOUT_DIRECTION");
```

somewhere in your QML source code and calling `lupdate` to generate the translation source file.

``` cpp
lupdate myapp.qml -ts myapp.ts
```

This will append the following declaration to the translation file, where you can fill in either "LTR" or "RTL" as the translation for the locale.

``` cpp
<context>
    <name>QGuiApplication</name>
    <message>
        <location filename="myapp.qml" line="33"/>
        <source>QT_LAYOUT_DIRECTION</source>
        <translation type="unfinished">RTL</translation>
    </message>
</context>
```

You can test that the layout direction works as expected by running your Qt Quick application with the compiled translation file:

``` cpp
qmlscene myapp.qml -translation myapp.qm
```

You can test your application in right-to-left layout direction simply by executing qmlscene with a command-line parameter "-reverse":

``` cpp
qmlscene myapp.qml -reverse
```

The layout direction can also be set from C++ by calling the static function QGuiApplication::setLayoutDirection():

``` cpp
QGuiApplication app(argc, argv);
app.setLayoutDirection(Qt::RightToLeft);
```

