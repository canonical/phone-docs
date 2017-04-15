---
Title: QtQuick.qml-tutorial1
---
        
QML Tutorial 1 - Basic Types
============================

<span class="subtitle"></span>
<span id="details"></span>
This first program is a very simple "Hello world" example that introduces some basic QML concepts. The picture below is a screenshot of this program.

![](https://developer.ubuntu.com/static/devportal_uploaded/b584c4a4-dc97-4277-bdc5-5ead41e428f9-api/apps/qml/sdk-15.04.5/qml-tutorial1/images/declarative-tutorial1.png)

Here is the QML code for the application:

``` qml
import QtQuick 2.0
Rectangle {
    id: page
    width: 320; height: 480
    color: "lightgray"
    Text {
        id: helloText
        text: "Hello world!"
        y: 30
        anchors.horizontalCenter: page.horizontalCenter
        font.pointSize: 24; font.bold: true
    }
}
```

<span id="walkthrough"></span>
Walkthrough
-----------

<span id="import"></span>
### Import

First, we need to import the types that we need for this example. Most QML files will import the built-in QML types (like [Rectangle](../QtQuick.Rectangle.md), [Image](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.imageelements/#image), ...) that come with Qt, using:

``` qml
import QtQuick 2.0
```

<span id="rectangle-type"></span>
### Rectangle Type

``` qml
Rectangle {
    id: page
    width: 320; height: 480
    color: "lightgray"
```

We declare a root object of type [Rectangle](../QtQuick.Rectangle.md). It is one of the basic building blocks you can use to create an application in QML. We give it an `id` to be able to refer to it later. In this case, we call it "page". We also set the `width`, `height` and `color` properties. The [Rectangle](../QtQuick.Rectangle.md) type contains many other properties (such as `x` and `y`), but these are left at their default values.

<span id="text-type"></span>
### Text Type

``` qml
    Text {
        id: helloText
        text: "Hello world!"
        y: 30
        anchors.horizontalCenter: page.horizontalCenter
        font.pointSize: 24; font.bold: true
    }
```

We add a [Text](../QtQuick.qtquick-releasenotes.md#text) type as a child of the root Rectangle type that displays the text 'Hello world!'.

The `y` property is used to position the text vertically at 30 pixels from the top of its parent.

The `anchors.horizontalCenter` property refers to the horizontal center of an type. In this case, we specify that our text type should be horizontally centered in the *page* element (see [Anchor-Based Layout](../QtQuick.qtquick-positioning-anchors.md#anchor-layout)).

The `font.pointSize` and `font.bold` properties are related to fonts and use the dot notation.

<span id="viewing-the-example"></span>
### Viewing the example

To view what you have created, run the qmlscene tool (located in the `bin` directory) with your filename as the first argument. For example, to run the provided completed Tutorial 1 example from the install location, you would type:

``` cpp
qmlscene tutorials/helloworld/tutorial1.qml
```

<a href="QtQuick.qml-tutorial.md" class="prevPage">QML Tutorial</a> <a href="QtQuick.qml-tutorial2.md" class="nextPage">QML Tutorial 2 - QML Components</a>

