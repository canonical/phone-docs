---
Title: QtQuick.Window.Window
---
        
Window
======

<span class="subtitle"></span>
Creates a new top-level window More...

|                   |                           |
|-------------------|---------------------------|
| Import Statement: | import QtQuick.Window 2.2 |
| Instantiates:     | QQuickWindow              |

<span id="properties"></span>
Properties
----------

-   ****[activeFocusItem](#activeFocusItem-prop)**** : Item
-   ****[color](#color-prop)**** : color
-   ****[contentOrientation](#contentOrientation-prop)**** : Qt::ScreenOrientation
-   ****[data](#data-prop)**** : list&lt;Object&gt;
-   ****[flags](#flags-prop)**** : Qt::WindowFlags
-   ****[height](#height-prop)**** : int
-   ****[maximumHeight](#maximumHeight-prop)**** : int
-   ****[maximumWidth](#maximumWidth-prop)**** : int
-   ****[minimumHeight](#minimumHeight-prop)**** : int
-   ****[minimumWidth](#minimumWidth-prop)**** : int
-   ****[modality](#modality-prop)**** : Qt::WindowModality
-   ****[opacity](#opacity-prop)**** : real
-   ****[title](#title-prop)**** : string
-   ****[visibility](#visibility-prop)**** : QWindow::Visibility
-   ****[visible](#visible-prop)**** : bool
-   ****[width](#width-prop)**** : int
-   ****[x](#x-prop)**** : int
-   ****[y](#y-prop)**** : int

<span id="attached-properties"></span>
Attached Properties
-------------------

-   ****[active](#active-attached-prop)**** : bool
-   ****[activeFocusItem](#activeFocusItem-attached-prop)**** : Item
-   ****[contentItem](#contentItem-attached-prop)**** : Item
-   ****[visibility](#visibility-attached-prop)**** : QWindow::Visibility

<span id="signals"></span>
Signals
-------

-   void ****[closing](#closing-signal)****(CloseEvent *close*)

<span id="methods"></span>
Methods
-------

-   ****[alert](#alert-method)****(int *msec*)
-   ****[close](#close-method)****()
-   ****[hide](#hide-method)****()
-   ****[lower](#lower-method)****()
-   ****[raise](#raise-method)****()
-   ****[requestActivate](#requestActivate-method)****()
-   ****[show](#show-method)****()
-   ****[showFullScreen](#showFullScreen-method)****()
-   ****[showMaximized](#showMaximized-method)****()
-   ****[showMinimized](#showMinimized-method)****()
-   ****[showNormal](#showNormal-method)****()

<span id="details"></span>
Detailed Description
--------------------

The Window object creates a new top-level window for a Qt Quick scene. It automatically sets up the window for use with `QtQuick 2.x` graphical types.

To use this type, you will need to import the module with the following line:

``` cpp
import QtQuick.Window 2.2
```

Omitting this import will allow you to have a QML environment without access to window system features.

A Window can be declared inside an Item or inside another Window; in that case the inner Window will automatically become "transient for" the outer Window: that is, most platforms will show it centered upon the outer window by default, and there may be other platform-dependent behaviors, depending also on the [flags](#flags-prop). If the nested window is intended to be a dialog in your application, you should also set [flags](#flags-prop) to Qt.Dialog, because some window managers will not provide the centering behavior without that flag. You can also declare multiple windows inside a top-level QtObject, in which case the windows will have no transient relationship.

Alternatively you can set or bind [x](#x-prop) and [y](#y-prop) to position the Window explicitly on the screen.

When the user attempts to close a window, the [closing](#closing-signal) signal will be emitted. You can force the window to stay open (for example to prompt the user to save changes) by writing an `onClosing` handler and setting `close.accepted = false`.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="activeFocusItem-prop"></span><span class="name">activeFocusItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The item which currently has active focus or `null` if there is no item with active focus.

This QML property was introduced in Qt 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="color-prop"></span><span class="name">color</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The background color for the window.

Setting this property is more efficient than using a separate Rectangle.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentOrientation-prop"></span><span class="name">contentOrientation</span> : <span class="type">Qt::ScreenOrientation</span></p></td>
</tr>
</tbody>
</table>

This is a hint to the window manager in case it needs to display additional content like popups, dialogs, status bars, or similar in relation to the window.

The recommended orientation is [Screen.orientation](../QtQuick.Window.Screen.md#orientation-attached-prop), but an application doesn't have to support all possible orientations, and thus can opt to ignore the current screen orientation.

The difference between the window and the content orientation determines how much to rotate the content by.

The default value is Qt::PrimaryOrientation.

This QML property was introduced in Qt 5.1.

**See also** [Screen](../QtQuick.Window.Screen.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="data-prop"></span><span class="qmldefault">[default] </span><span class="name">data</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td>
</tr>
</tbody>
</table>

The data property allows you to freely mix visual children, resources and other Windows in a Window.

If you assign another Window to the data list, the nested window will become "transient for" the outer Window.

If you assign an [Item](../QtQuick.Item.md) to the data list, it becomes a child of the Window's [contentItem](#contentItem-attached-prop), so that it appears inside the window. The item's parent will be the window's [contentItem](#contentItem-attached-prop), which is the root of the Item ownership tree within that Window.

If you assign any other object type, it is added as a resource.

It should not generally be necessary to refer to the `data` property, as it is the default property for Window and thus all child items are automatically assigned to this property.

**See also** QWindow::transientParent().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="flags-prop"></span><span class="name">flags</span> : <span class="type">Qt::WindowFlags</span></p></td>
</tr>
</tbody>
</table>

The window flags of the window.

The window flags control the window's appearance in the windowing system, whether it's a dialog, popup, or a regular window, and whether it should have a title bar, etc.

The flags which you read from this property might differ from the ones that you set if the requested flags could not be fulfilled.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="height-prop"></span><span class="name">height</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Defines the window's position and size.

The (x,y) position is relative to the [Screen](../QtQuick.Window.Screen.md) if there is only one, or to the virtual desktop (arrangement of multiple screens).

``` qml
Window { x: 100; y: 100; width: 100; height: 100 }
```

![](https://developer.ubuntu.com/static/devportal_uploaded/42fbda2b-01a4-45df-97c7-65ff858ababf-api/apps/qml/sdk-15.04.6/QtQuick.Window.Window/images/screen-and-window-dimensions.jpg)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumHeight-prop"></span><span class="name">maximumHeight</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Defines the window's maximum size.

This is a hint to the window manager to prevent resizing above the specified width and height.

This QML property was introduced in Qt 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximumWidth-prop"></span><span class="name">maximumWidth</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Defines the window's maximum size.

This is a hint to the window manager to prevent resizing above the specified width and height.

This QML property was introduced in Qt 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimumHeight-prop"></span><span class="name">minimumHeight</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Defines the window's minimum size.

This is a hint to the window manager to prevent resizing below the specified width and height.

This QML property was introduced in Qt 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimumWidth-prop"></span><span class="name">minimumWidth</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Defines the window's minimum size.

This is a hint to the window manager to prevent resizing below the specified width and height.

This QML property was introduced in Qt 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="modality-prop"></span><span class="name">modality</span> : <span class="type">Qt::WindowModality</span></p></td>
</tr>
</tbody>
</table>

The modality of the window.

A modal window prevents other windows from receiving input events. Possible values are Qt.NonModal (the default), Qt.WindowModal, and Qt.ApplicationModal.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="opacity-prop"></span><span class="name">opacity</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The opacity of the window.

If the windowing system supports window opacity, this can be used to fade the window in and out, or to make it semitransparent.

A value of 1.0 or above is treated as fully opaque, whereas a value of 0.0 or below is treated as fully transparent. Values inbetween represent varying levels of translucency between the two extremes.

The default value is 1.0.

This QML property was introduced in Qt 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="title-prop"></span><span class="name">title</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The window's title in the windowing system.

The window title might appear in the title area of the window decorations, depending on the windowing system and the window flags. It might also be used by the windowing system to identify the window in other contexts, such as in the task switcher.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="visibility-prop"></span><span class="name">visibility</span> : <span class="type">QWindow::Visibility</span></p></td>
</tr>
</tbody>
</table>

The screen-occupation state of the window.

Visibility is whether the window should appear in the windowing system as normal, minimized, maximized, fullscreen or hidden.

To set the visibility to AutomaticVisibility means to give the window a default visible state, which might be FullScreen or Windowed depending on the platform. However when reading the visibility property you will always get the actual state, never `AutomaticVisibility`.

When a window is not visible its visibility is Hidden, and setting visibility to Hidden is the same as setting [visible](#visible-prop) to `false`.

This QML property was introduced in Qt 5.1.

**See also** [visible](#visible-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="visible-prop"></span><span class="name">visible</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the window is visible on the screen.

Setting visible to false is the same as setting [visibility](#visibility-attached-prop) to Hidden.

**See also** [visibility](#visibility-attached-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="width-prop"></span><span class="name">width</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Defines the window's position and size.

The (x,y) position is relative to the [Screen](../QtQuick.Window.Screen.md) if there is only one, or to the virtual desktop (arrangement of multiple screens).

``` qml
Window { x: 100; y: 100; width: 100; height: 100 }
```

![](https://developer.ubuntu.com/static/devportal_uploaded/8ac2d524-ac5f-450b-a832-f27e91939493-api/apps/qml/sdk-15.04.6/QtQuick.Window.Window/images/screen-and-window-dimensions.jpg)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="x-prop"></span><span class="name">x</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Defines the window's position and size.

The (x,y) position is relative to the [Screen](../QtQuick.Window.Screen.md) if there is only one, or to the virtual desktop (arrangement of multiple screens).

``` qml
Window { x: 100; y: 100; width: 100; height: 100 }
```

![](https://developer.ubuntu.com/static/devportal_uploaded/510301fe-874d-49a1-aa4e-d6ade79432bf-api/apps/qml/sdk-15.04.6/QtQuick.Window.Window/images/screen-and-window-dimensions.jpg)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="y-prop"></span><span class="name">y</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

Defines the window's position and size.

The (x,y) position is relative to the [Screen](../QtQuick.Window.Screen.md) if there is only one, or to the virtual desktop (arrangement of multiple screens).

``` qml
Window { x: 100; y: 100; width: 100; height: 100 }
```

![](https://developer.ubuntu.com/static/devportal_uploaded/261a33a9-e26d-4e78-aa29-85589698cecc-api/apps/qml/sdk-15.04.6/QtQuick.Window.Window/images/screen-and-window-dimensions.jpg)

Attached Property Documentation
-------------------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="active-attached-prop"></span><span class="name">Window.active</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This attached property tells whether the window is active. The Window attached property can be attached to any Item.

Here is an example which changes a label to show the active state of the window in which it is shown:

``` qml
import QtQuick 2.4
import QtQuick.Window 2.2
Text {
    text: Window.active ? "active" : "inactive"
}
```

This QML property was introduced in Qt 5.4.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="activeFocusItem-attached-prop"></span><span class="name">Window.activeFocusItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

This attached property holds the item which currently has active focus or `null` if there is no item with active focus. The Window attached property can be attached to any Item.

This QML property was introduced in Qt 5.4.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentItem-attached-prop"></span><span class="name">Window.contentItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

This attached property holds the invisible root item of the scene or `null` if the item is not in a window. The Window attached property can be attached to any Item.

This QML property was introduced in Qt 5.4.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="visibility-attached-prop"></span><span class="name">Window.visibility</span> : <span class="type">QWindow::Visibility</span></p></td>
</tr>
</tbody>
</table>

This attached property holds whether the window is currently shown in the windowing system as normal, minimized, maximized, fullscreen or hidden. The `Window` attached property can be attached to any Item. If the item is not shown in any window, the value will be Hidden.

This QML property was introduced in Qt 5.4.

**See also** [visible](#visible-prop) and visibility.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="closing-signal"></span><span class="type">void</span> <span class="name">closing</span>(<span class="type"><a href="QtQuick.Window.CloseEvent.md">CloseEvent</a></span> <em>close</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the user tries to close the window.

This signal includes a *close* parameter. The *close* accepted property is true by default so that the window is allowed to close; but you can implement an `onClosing` handler and set `close.accepted = false` if you need to do something else before the window can be closed.

The corresponding handler is `onClosing`.

This QML signal was introduced in Qt 5.1.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="alert-method"></span><span class="name">alert</span>(<span class="type">int</span> <em>msec</em>)</p></td>
</tr>
</tbody>
</table>

Causes an alert to be shown for *msec* milliseconds. If *msec* is `0` (the default), then the alert is shown indefinitely until the window becomes active again.

In alert state, the window indicates that it demands attention, for example by flashing or bouncing the taskbar entry.

This QML method was introduced in Qt 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="close-method"></span><span class="name">close</span>()</p></td>
</tr>
</tbody>
</table>

Closes the window.

When this method is called, or when the user tries to close the window by its title bar button, the [closing](#closing-signal) signal will be emitted. If there is no handler, or the handler does not revoke permission to close, the window will subsequently close. If the QGuiApplication::quitOnLastWindowClosed property is `true`, and there are no other windows open, the application will quit.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hide-method"></span><span class="name">hide</span>()</p></td>
</tr>
</tbody>
</table>

Hides the window.

Equivalent to setting [visible](#visible-prop) to `false` or [visibility](#visibility-attached-prop) to Hidden.

**See also** [show()](#show-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lower-method"></span><span class="name">lower</span>()</p></td>
</tr>
</tbody>
</table>

Lowers the window in the windowing system.

Requests that the window be lowered to appear below other windows.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="raise-method"></span><span class="name">raise</span>()</p></td>
</tr>
</tbody>
</table>

Raises the window in the windowing system.

Requests that the window be raised to appear above other windows.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="requestActivate-method"></span><span class="name">requestActivate</span>()</p></td>
</tr>
</tbody>
</table>

Requests the window to be activated, i.e. receive keyboard focus.

This QML method was introduced in Qt 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="show-method"></span><span class="name">show</span>()</p></td>
</tr>
</tbody>
</table>

Shows the window.

This is equivalent to calling [showFullScreen()](#showFullScreen-method), [showMaximized()](#showMaximized-method), or [showNormal()](#showNormal-method), depending on the platform's default behavior for the window type and flags.

**See also** [showFullScreen()](#showFullScreen-method), [showMaximized()](#showMaximized-method), [showNormal()](#showNormal-method), [hide()](#hide-method), and flags().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="showFullScreen-method"></span><span class="name">showFullScreen</span>()</p></td>
</tr>
</tbody>
</table>

Shows the window as fullscreen.

Equivalent to setting [visibility](#visibility-attached-prop) to FullScreen.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="showMaximized-method"></span><span class="name">showMaximized</span>()</p></td>
</tr>
</tbody>
</table>

Shows the window as maximized.

Equivalent to setting [visibility](#visibility-attached-prop) to Maximized.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="showMinimized-method"></span><span class="name">showMinimized</span>()</p></td>
</tr>
</tbody>
</table>

Shows the window as minimized.

Equivalent to setting [visibility](#visibility-attached-prop) to Minimized.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="showNormal-method"></span><span class="name">showNormal</span>()</p></td>
</tr>
</tbody>
</table>

Shows the window as normal, i.e. neither maximized, minimized, nor fullscreen.

Equivalent to setting [visibility](#visibility-attached-prop) to Windowed.

