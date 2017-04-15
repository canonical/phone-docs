---
Title: QtQuick.qtquick-imageelements-example
---
        
Qt Quick Examples - Image Elements
==================================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/44f5ab98-a89b-4e31-a1a8-60fd36298c7b-api/apps/qml/sdk-15.04.6/qtquick-imageelements-example/images/qml-imageelements-example.png)

*Image Elements* is a collection of small QML examples relating to image types. For more information, visit Use Case - Visual Elements In QML.

<span id="running-the-example"></span>
Running the Example
-------------------

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

<span id="borderimage"></span>
BorderImage
-----------

*BorderImage* shows off the various scaling modes of the [BorderImage](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.imageelements/#borderimage) type by setting its horizontalTileMode and verticalTileMode properties.

<span id="image"></span>
Image
-----

*Image* shows off the various fill modes of the [Image](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.imageelements/#image) type.

<span id="shadows"></span>
Shadows
-------

*Shadows* shows how to create a drop shadow effect for a rectangular item using a [BorderImage](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.imageelements/#borderimage):

``` qml
    BorderImage {
        anchors.fill: rectangle
        anchors { leftMargin: -6; topMargin: -6; rightMargin: -8; bottomMargin: -8 }
        border { left: 10; top: 10; right: 10; bottom: 10 }
        source: "shadow.png"
    }
```

<span id="animatedsprite"></span>
AnimatedSprite
--------------

*AnimatedSprite* shows how to display a simple animation using an [AnimatedSprite](../QtQuick.qtquick-effects-sprites.md#animatedsprite) object:

``` qml
    AnimatedSprite {
        id: sprite
        width: 170
        height: 170
        anchors.centerIn: parent
        source: "content/speaker.png"
        frameCount: 60
        frameSync: true
        frameWidth: 170
        frameHeight: 170
        loops: 3
    }
```

The sprite animation will loop three times.

<span id="spritesequence"></span>
SpriteSequence
--------------

*SpriteSequence* demonstrates using a sprite sequence to draw an animated and interactive bear. The [SpriteSequence](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.imageelements/#spritesequence) object defines five different sprites. The bear is initially in a *still* state:

``` qml
        Sprite{
            name: "still"
            source: "content/BearSheet.png"
            frameCount: 1
            frameWidth: 256
            frameHeight: 256
            frameDuration: 100
            to: {"still":1, "blink":0.1, "floating":0}
        }
```

When the scene is clicked, an animation sets the sprite sequence to the *falling* states and animates the bear's y property.

``` qml
    SequentialAnimation {
        id: anim
        ScriptAction { script: image.goalSprite = "falling"; }
        NumberAnimation { target: image; property: "y"; to: 480; duration: 12000; }
        ScriptAction { script: {image.goalSprite = ""; image.jumpTo("still");} }
        PropertyAction { target: image; property: "y"; value: 0 }
    }
```

At the end of the animation the bear is set back to its initial state.

Files:

-   imageelements/animatedsprite.qml
-   imageelements/borderimage.qml
-   imageelements/image.qml
-   imageelements/imageelements.qml
-   imageelements/shadows.qml
-   imageelements/spritesequence.qml
-   imageelements/content/BorderImageSelector.qml
-   imageelements/content/ImageCell.qml
-   imageelements/content/MyBorderImage.qml
-   imageelements/content/ShadowRectangle.qml
-   imageelements/main.cpp
-   imageelements/imageelements.pro
-   imageelements/imageelements.qmlproject
-   imageelements/imageelements.qrc

