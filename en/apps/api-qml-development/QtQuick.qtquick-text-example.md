---
Title: QtQuick.qtquick-text-example
---
        
Qt Quick Examples - Text
========================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/0229f93a-5018-4e66-a277-a57ad0a536f4-api/apps/qml/sdk-15.04.6/qtquick-text-example/images/qml-text-example.png)

*Text* is a collection of small QML examples relating to text. Each example is a small QML file, usually containing or emphasizing a particular type or feature. You can run and observe the behavior of each example.

<span id="hello"></span>
Hello
-----

*Hello* shows how to change and animate the letter spacing of a [Text](../QtQuick.qtquick-releasenotes.md#text) type. It uses a sequential animation to first animate the font.letterSpacing property from `0` to `50` over three seconds and then move the text to a random position on screen:

``` qml
            SequentialAnimation on font.letterSpacing {
                loops: Animation.Infinite;
                NumberAnimation { from: 0; to: 50; easing.type: Easing.InQuad; duration: 3000 }
                ScriptAction {
                    script: {
                        container.y = (screen.height / 4) + (Math.random() * screen.height / 2)
                        container.x = (screen.width / 4) + (Math.random() * screen.width / 2)
                    }
                }
            }
```

<span id="fonts"></span>
Fonts
-----

*Fonts* shows different ways of using fonts with the [Text](../QtQuick.qtquick-releasenotes.md#text) type. Simply by name, using the font.family property directly:

``` qml
            font.family: "Times"
```

or using a [FontLoader](../QtQuick.FontLoader.md) type:

``` qml
    FontLoader { id: fixedFont; name: "Courier" }
```

or using a [FontLoader](../QtQuick.FontLoader.md) and specifying a local font file:

``` qml
    FontLoader { id: localFont; source: "content/fonts/tarzeau_ocr_a.ttf" }
```

or finally using a [FontLoader](../QtQuick.FontLoader.md) and specifying a remote font file:

``` qml
    FontLoader { id: webFont; source: "http://www.princexml.com/fonts/steffmann/Starburst.ttf" }
```

<span id="available-fonts"></span>
Available Fonts
---------------

*Available Fonts* shows how to use the QML Qt global object and a list view to display all the fonts available on the system. The [ListView](../QtQuick.ListView.md) type uses the list of fonts available as its model:

``` qml
        model: Qt.fontFamilies()
```

Inside the delegate, the font family is set with the modelData:

``` qml
                font.family: modelData
```

<span id="banner"></span>
Banner
------

*Banner* is a simple example showing how to create a banner using a row of text types and a [NumberAnimation](../QtQuick.NumberAnimation.md).

<span id="img-tag"></span>
Img Tag
-------

*Img tag* shows different ways of displaying images in text objects using the `<img>` tag.

<span id="text-layout"></span>
Text Layout
-----------

*Text Layout* shows how to create a more complex layout for a text item. This example lays out the text in two columns using the onLineLaidOut handler that allows you to position and resize each line:

``` qml
        onLineLaidOut: {
            line.width = width / 2  - (margin)
            if (line.y + line.height >= height) {
                line.y -= height - margin
                line.x = width / 2 + margin
            }
        }
```

Files:

-   text/styledtext-layout.qml
-   text/text.qml
-   text/fonts/availableFonts.qml
-   text/fonts/banner.qml
-   text/fonts/fonts.qml
-   text/fonts/hello.qml
-   text/imgtag/TextWithImage.qml
-   text/imgtag/imgtag.qml
-   text/textselection/textselection.qml
-   text/main.cpp
-   text/text.pro
-   text/text.qmlproject
-   text/text.qrc

