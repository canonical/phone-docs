---
Title: QtQuick.qtquick-demos-photosurface-example
---
        
Qt Quick Demo - Photo Surface
=============================

<span class="subtitle"></span>
<span id="details"></span>
![](https://developer.ubuntu.com/static/devportal_uploaded/9c8de1cd-7f99-402c-ba63-10bc13110aa4-api/apps/qml/sdk-15.04.6/qtquick-demos-photosurface-example/images/qtquick-demo-photosurface-small.png)

*Photo Surface* demonstrates how to use a [Repeater](../QtQuick.Repeater.md) with a [FolderListModel](../Qt.labs.folderlistmodel.FolderListModel.md) and a FileDialog to access images from a folder selected by a user and how to handle dragging, rotation and pinch zooming within the same item using a [PinchArea](../QtQuick.PinchArea.md) that contains a [MouseArea](../QtQuick.MouseArea.md).

All the app code is contained in one QML file, photosurface.qml. Inline JavaScript code is used to place, rotate, and scale images on the photo surface.

<span id="running-the-example"></span>
Running the Example
-------------------

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

<span id="creating-the-main-window"></span>
Creating the Main Window
------------------------

To create the main window for the Photo Surface app, we use the [Window](../QtQuick.Window.Window.md) QML type as the root item. It automatically sets up the window for use with [Qt Quick](../QtQuick.qtquick-index.md) graphical types:

``` qml
Window {
    id: root
    visible: true
    width: 1024; height: 600
    color: "black"
    property int highestZ: 0
    property real defaultSize: 200
    property var currentFrame: undefined
```

To use the [Window](../QtQuick.Window.Window.md) type, we must import it:

``` cpp
import QtQuick.Window 2.1
```

<span id="accessing-folder-contents"></span>
Accessing Folder Contents
-------------------------

We use a [Repeater](../QtQuick.Repeater.md) QML type together with the [FolderListModel](../Qt.labs.folderlistmodel.FolderListModel.md) to display GIF, JPG, and PNG images located in a folder:

``` qml
    Repeater {
        model: FolderListModel {
            id: folderModel
            objectName: "folderModel"
            showDirs: false
            nameFilters: ["*.png", "*.jpg", "*.gif"]
        }
```

To use the [FolderListModel](../Qt.labs.folderlistmodel.FolderListModel.md) type, we must import it:

``` cpp
import Qt.labs.folderlistmodel 1.0
```

We use a FileDialog to enable users to select the folder that contains the images:

``` qml
    FileDialog {
        id: fileDialog
        title: "Choose a folder with some images"
        selectFolder: true
        onAccepted: folderModel.folder = fileUrl + "/"
    }
```

To use the FileDialog type, we must import Qt Quick Dialogs:

``` cpp
import QtQuick.Dialogs 1.0
```

We use the `fileDialog.open()` function to open the file dialog when the app starts:

``` cpp
Component.onCompleted: fileDialog.open()
```

Users can also click the file dialog icon to open the file dialog. We use an [Image](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.imageelements/#image) QML type to display the icon. Inside the [Image](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.imageelements/#image) type, we use a [MouseArea](../QtQuick.MouseArea.md) with the `onClicked` signal handler to call the `fileDialog.open()` function:

``` qml
    Image {
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.margins: 10
        source: "resources/folder.png"
        MouseArea {
            anchors.fill: parent
            anchors.margins: -10
            onClicked: fileDialog.open()
        }
    }
```

<span id="displaying-images-on-the-photo-surface"></span>
Displaying Images on the Photo Surface
--------------------------------------

We use a [Rectangle](../QtQuick.Rectangle.md) as a delegate for a [Repeater](../QtQuick.Repeater.md) to provide a frame for each image that the [FolderListModel](../Qt.labs.folderlistmodel.FolderListModel.md) finds in the selected folder. We use JavaScript `Math()` methods to place the frames randomly on the photo surface and to rotate them at random angles, as well as to scale the images:

``` qml
        Rectangle {
            id: photoFrame
            width: image.width * image.scale + 20
            height: image.height * image.scale + 20
            border.color: "black"
            border.width: 2
            smooth: true
            antialiasing: true
            x: Math.random() * root.width - defaultSize
            y: Math.random() * root.height - defaultSize
            rotation: Math.random() * 13 - 6
            Image {
                id: image
                anchors.centerIn: parent
                fillMode: Image.PreserveAspectFit
                source: folderModel.folder + fileName
                scale: defaultSize / Math.max(sourceSize.width, sourceSize.height)
                antialiasing: true
            }
```

<span id="handling-pinch-gestures"></span>
Handling Pinch Gestures
-----------------------

We use a [PinchArea](../QtQuick.PinchArea.md) that contains a [MouseArea](../QtQuick.MouseArea.md) in the photo frames to handle dragging, rotation and pinch zooming of the frame:

``` qml
            PinchArea {
                anchors.fill: parent
                pinch.target: photoFrame
                pinch.minimumRotation: -360
                pinch.maximumRotation: 360
                pinch.minimumScale: 0.1
                pinch.maximumScale: 10
                onPinchStarted: setFrameColor();
```

We use the `pinch` group property to control how the photo frames react to pinch gestures. The `pinch.target` sets `photoFrame` as the item to manipulate. The rotation properties specify that the frames can be rotated at all angles and the scale properties specify that they can be scaled between `0.1` and `10`.

In the [MouseArea](../QtQuick.MouseArea.md)'s `onPressed` signal handler, we raise the selected photo frame to the top by increasing the value of its `z` property. The root item stores the z value of the top-most frame. The border color of the photo frame is controlled in the `onEntered` signal handler to highlight the selected image:

``` qml
                MouseArea {
                    id: dragArea
                    hoverEnabled: true
                    anchors.fill: parent
                    drag.target: photoFrame
                    onPressed: {
                        photoFrame.z = ++root.highestZ;
                        parent.setFrameColor();
                    }
                    onEntered: parent.setFrameColor();
```

To enable you to test the example on the desktop, we use the [MouseArea](../QtQuick.MouseArea.md)'s `onWheel` signal handler to simulate pinch gestures by using a mouse:

``` qml
                    onWheel: {
                        if (wheel.modifiers & Qt.ControlModifier) {
                            photoFrame.rotation += wheel.angleDelta.y / 120 * 5;
                            if (Math.abs(photoFrame.rotation) < 4)
                                photoFrame.rotation = 0;
                        } else {
                            photoFrame.rotation += wheel.angleDelta.x / 120;
                            if (Math.abs(photoFrame.rotation) < 0.6)
                                photoFrame.rotation = 0;
                            var scaleBefore = image.scale;
                            image.scale += image.scale * wheel.angleDelta.y / 120 / 10;
                            photoFrame.x -= image.width * (image.scale - scaleBefore) / 2.0;
                            photoFrame.y -= image.height * (image.scale - scaleBefore) / 2.0;
                        }
                    }
                }
```

The `onWheel` signal handler is called in response to mouse wheel gestures. Use the vertical wheel to zoom and Ctrl and the vertical wheel to rotate frames. If the mouse has a horizontal wheel, use it to rotate frames.

Files:

-   demos/photosurface/photosurface.qml
-   demos/photosurface/main.cpp
-   demos/photosurface/photosurface.pro
-   demos/photosurface/photosurface.qmlproject
-   demos/photosurface/photosurface.qrc

**See also** QML Applications.

