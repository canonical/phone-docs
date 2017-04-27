---
Title: QtQuick.Window.Window
---

# QtQuick.Window.Window

<span class="subtitle"></span>
<!-- $$$Window-brief -->
<p>Creates a new top-level window More...</p>
<!-- @@@Window -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick.Window 2.2</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Instantiates:</td><td class="memItemRight bottomAlign"> <a href="https://developer.ubuntu.com../qquickwindow.html">QQuickWindow</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#activeFocusItem-prop">activeFocusItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#color-prop">color</a></b></b> : color</li>
<li class="fn"><b><b><a href="#contentOrientation-prop">contentOrientation</a></b></b> : Qt::ScreenOrientation</li>
<li class="fn"><b><b><a href="#data-prop">data</a></b></b> : list&lt;Object&gt;</li>
<li class="fn"><b><b><a href="#flags-prop">flags</a></b></b> : Qt::WindowFlags</li>
<li class="fn"><b><b><a href="#height-prop">height</a></b></b> : int</li>
<li class="fn"><b><b><a href="#maximumHeight-prop">maximumHeight</a></b></b> : int</li>
<li class="fn"><b><b><a href="#maximumWidth-prop">maximumWidth</a></b></b> : int</li>
<li class="fn"><b><b><a href="#minimumHeight-prop">minimumHeight</a></b></b> : int</li>
<li class="fn"><b><b><a href="#minimumWidth-prop">minimumWidth</a></b></b> : int</li>
<li class="fn"><b><b><a href="#modality-prop">modality</a></b></b> : Qt::WindowModality</li>
<li class="fn"><b><b><a href="#opacity-prop">opacity</a></b></b> : real</li>
<li class="fn"><b><b><a href="#title-prop">title</a></b></b> : string</li>
<li class="fn"><b><b><a href="#visibility-prop">visibility</a></b></b> : QWindow::Visibility</li>
<li class="fn"><b><b><a href="#visible-prop">visible</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#width-prop">width</a></b></b> : int</li>
<li class="fn"><b><b><a href="#x-prop">x</a></b></b> : int</li>
<li class="fn"><b><b><a href="#y-prop">y</a></b></b> : int</li>
</ul>
<h2 id="attached-properties">Attached Properties</h2>
<ul>
<li class="fn"><b><b><a href="#active-attached-prop">active</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#activeFocusItem-attached-prop">activeFocusItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#contentItem-attached-prop">contentItem</a></b></b> : Item</li>
<li class="fn"><b><b><a href="#visibility-attached-prop">visibility</a></b></b> : QWindow::Visibility</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn">void <b><b><a href="#closing-signal">closing</a></b></b>(CloseEvent <i>close</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#alert-method">alert</a></b></b>(int <i>msec</i>)</li>
<li class="fn"><b><b><a href="#close-method">close</a></b></b>()</li>
<li class="fn"><b><b><a href="#hide-method">hide</a></b></b>()</li>
<li class="fn"><b><b><a href="#lower-method">lower</a></b></b>()</li>
<li class="fn"><b><b><a href="#raise-method">raise</a></b></b>()</li>
<li class="fn"><b><b><a href="#requestActivate-method">requestActivate</a></b></b>()</li>
<li class="fn"><b><b><a href="#show-method">show</a></b></b>()</li>
<li class="fn"><b><b><a href="#showFullScreen-method">showFullScreen</a></b></b>()</li>
<li class="fn"><b><b><a href="#showMaximized-method">showMaximized</a></b></b>()</li>
<li class="fn"><b><b><a href="#showMinimized-method">showMinimized</a></b></b>()</li>
<li class="fn"><b><b><a href="#showNormal-method">showNormal</a></b></b>()</li>
</ul>
<!-- $$$Window-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Window object creates a new top-level window for a Qt Quick scene. It automatically sets up the window for use with <code>QtQuick 2.x</code> graphical types.</p>
<p>To use this type, you will need to import the module with the following line:</p>
<pre class="cpp">import <span class="type">QtQuick</span><span class="operator">.</span>Window <span class="number">2.2</span></pre>
<p>Omitting this import will allow you to have a QML environment without access to window system features.</p>
<p>A Window can be declared inside an Item or inside another Window; in that case the inner Window will automatically become &quot;transient for&quot; the outer Window: that is, most platforms will show it centered upon the outer window by default, and there may be other platform-dependent behaviors, depending also on the <a href="#flags-prop">flags</a>. If the nested window is intended to be a dialog in your application, you should also set <a href="#flags-prop">flags</a> to Qt.Dialog, because some window managers will not provide the centering behavior without that flag. You can also declare multiple windows inside a top-level QtObject, in which case the windows will have no transient relationship.</p>
<p>Alternatively you can set or bind <a href="#x-prop">x</a> and <a href="#y-prop">y</a> to position the Window explicitly on the screen.</p>
<p>When the user attempts to close a window, the <a href="#closing-signal">closing</a> signal will be emitted. You can force the window to stay open (for example to prompt the user to save changes) by writing an <code>onClosing</code> handler and setting <code>close.accepted = false</code>.</p>
<!-- @@@Window -->
<h2>Property Documentation</h2>
<!-- $$$activeFocusItem -->
<table class="qmlname"><tr valign="top" id="activeFocusItem-prop"><td class="tblQmlPropNode"><p><span class="name">activeFocusItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>The item which currently has active focus or <code>null</code> if there is no item with active focus.</p>
<p>This QML property was introduced in  Qt 5.1.</p>
<!-- @@@activeFocusItem -->
<br/>
<!-- $$$color -->
<table class="qmlname"><tr valign="top" id="color-prop"><td class="tblQmlPropNode"><p><span class="name">color</span> : <span class="type">color</span></p></td></tr></table><p>The background color for the window.</p>
<p>Setting this property is more efficient than using a separate Rectangle.</p>
<!-- @@@color -->
<br/>
<!-- $$$contentOrientation -->
<table class="qmlname"><tr valign="top" id="contentOrientation-prop"><td class="tblQmlPropNode"><p><span class="name">contentOrientation</span> : <span class="type">Qt::ScreenOrientation</span></p></td></tr></table><p>This is a hint to the window manager in case it needs to display additional content like popups, dialogs, status bars, or similar in relation to the window.</p>
<p>The recommended orientation is <a href="QtQuick.Window.Screen.md#orientation-attached-prop">Screen.orientation</a>, but an application doesn't have to support all possible orientations, and thus can opt to ignore the current screen orientation.</p>
<p>The difference between the window and the content orientation determines how much to rotate the content by.</p>
<p>The default value is Qt::PrimaryOrientation.</p>
<p>This QML property was introduced in  Qt 5.1.</p>
<p><b>See also </b><a href="QtQuick.Window.Screen.md">Screen</a>.</p>
<!-- @@@contentOrientation -->
<br/>
<!-- $$$data -->
<table class="qmlname"><tr valign="top" id="data-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">data</span> : <span class="type">list</span>&lt;<span class="type">Object</span>&gt;</p></td></tr></table><p>The data property allows you to freely mix visual children, resources and other Windows in a Window.</p>
<p>If you assign another Window to the data list, the nested window will become &quot;transient for&quot; the outer Window.</p>
<p>If you assign an <a href="QtQuick.Item.md">Item</a> to the data list, it becomes a child of the Window's <a href="#contentItem-attached-prop">contentItem</a>, so that it appears inside the window. The item's parent will be the window's <a href="#contentItem-attached-prop">contentItem</a>, which is the root of the Item ownership tree within that Window.</p>
<p>If you assign any other object type, it is added as a resource.</p>
<p>It should not generally be necessary to refer to the <code>data</code> property, as it is the default property for Window and thus all child items are automatically assigned to this property.</p>
<p><b>See also </b>QWindow::transientParent().</p>
<!-- @@@data -->
<br/>
<!-- $$$flags -->
<table class="qmlname"><tr valign="top" id="flags-prop"><td class="tblQmlPropNode"><p><span class="name">flags</span> : <span class="type">Qt::WindowFlags</span></p></td></tr></table><p>The window flags of the window.</p>
<p>The window flags control the window's appearance in the windowing system, whether it's a dialog, popup, or a regular window, and whether it should have a title bar, etc.</p>
<p>The flags which you read from this property might differ from the ones that you set if the requested flags could not be fulfilled.</p>
<!-- @@@flags -->
<br/>
<!-- $$$height -->
<table class="qmlname"><tr valign="top" id="height-prop"><td class="tblQmlPropNode"><p><span class="name">height</span> : <span class="type">int</span></p></td></tr></table><p>Defines the window's position and size.</p>
<p>The (x,y) position is relative to the <a href="QtQuick.Window.Screen.md">Screen</a> if there is only one, or to the virtual desktop (arrangement of multiple screens).</p>
<pre class="qml"><span class="type"><a href="index.html">Window</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> }</pre>
<p class="centerAlign"><img src="../../../media/screen-and-window-dimensions.jpg" alt="" /></p><!-- @@@height -->
<br/>
<!-- $$$maximumHeight -->
<table class="qmlname"><tr valign="top" id="maximumHeight-prop"><td class="tblQmlPropNode"><p><span class="name">maximumHeight</span> : <span class="type">int</span></p></td></tr></table><p>Defines the window's maximum size.</p>
<p>This is a hint to the window manager to prevent resizing above the specified width and height.</p>
<p>This QML property was introduced in  Qt 5.1.</p>
<!-- @@@maximumHeight -->
<br/>
<!-- $$$maximumWidth -->
<table class="qmlname"><tr valign="top" id="maximumWidth-prop"><td class="tblQmlPropNode"><p><span class="name">maximumWidth</span> : <span class="type">int</span></p></td></tr></table><p>Defines the window's maximum size.</p>
<p>This is a hint to the window manager to prevent resizing above the specified width and height.</p>
<p>This QML property was introduced in  Qt 5.1.</p>
<!-- @@@maximumWidth -->
<br/>
<!-- $$$minimumHeight -->
<table class="qmlname"><tr valign="top" id="minimumHeight-prop"><td class="tblQmlPropNode"><p><span class="name">minimumHeight</span> : <span class="type">int</span></p></td></tr></table><p>Defines the window's minimum size.</p>
<p>This is a hint to the window manager to prevent resizing below the specified width and height.</p>
<p>This QML property was introduced in  Qt 5.1.</p>
<!-- @@@minimumHeight -->
<br/>
<!-- $$$minimumWidth -->
<table class="qmlname"><tr valign="top" id="minimumWidth-prop"><td class="tblQmlPropNode"><p><span class="name">minimumWidth</span> : <span class="type">int</span></p></td></tr></table><p>Defines the window's minimum size.</p>
<p>This is a hint to the window manager to prevent resizing below the specified width and height.</p>
<p>This QML property was introduced in  Qt 5.1.</p>
<!-- @@@minimumWidth -->
<br/>
<!-- $$$modality -->
<table class="qmlname"><tr valign="top" id="modality-prop"><td class="tblQmlPropNode"><p><span class="name">modality</span> : <span class="type">Qt::WindowModality</span></p></td></tr></table><p>The modality of the window.</p>
<p>A modal window prevents other windows from receiving input events. Possible values are Qt.NonModal (the default), Qt.WindowModal, and Qt.ApplicationModal.</p>
<!-- @@@modality -->
<br/>
<!-- $$$opacity -->
<table class="qmlname"><tr valign="top" id="opacity-prop"><td class="tblQmlPropNode"><p><span class="name">opacity</span> : <span class="type">real</span></p></td></tr></table><p>The opacity of the window.</p>
<p>If the windowing system supports window opacity, this can be used to fade the window in and out, or to make it semitransparent.</p>
<p>A value of 1.0 or above is treated as fully opaque, whereas a value of 0.0 or below is treated as fully transparent. Values inbetween represent varying levels of translucency between the two extremes.</p>
<p>The default value is 1.0&#x2e;</p>
<p>This QML property was introduced in  Qt 5.1.</p>
<!-- @@@opacity -->
<br/>
<!-- $$$title -->
<table class="qmlname"><tr valign="top" id="title-prop"><td class="tblQmlPropNode"><p><span class="name">title</span> : <span class="type">string</span></p></td></tr></table><p>The window's title in the windowing system.</p>
<p>The window title might appear in the title area of the window decorations, depending on the windowing system and the window flags. It might also be used by the windowing system to identify the window in other contexts, such as in the task switcher.</p>
<!-- @@@title -->
<br/>
<!-- $$$visibility -->
<table class="qmlname"><tr valign="top" id="visibility-prop"><td class="tblQmlPropNode"><p><span class="name">visibility</span> : <span class="type">QWindow::Visibility</span></p></td></tr></table><p>The screen-occupation state of the window.</p>
<p>Visibility is whether the window should appear in the windowing system as normal, minimized, maximized, fullscreen or hidden.</p>
<p>To set the visibility to AutomaticVisibility means to give the window a default visible state, which might be FullScreen or Windowed depending on the platform. However when reading the visibility property you will always get the actual state, never <code>AutomaticVisibility</code>.</p>
<p>When a window is not visible its visibility is Hidden, and setting visibility to Hidden is the same as setting <a href="#visible-prop">visible</a> to <code>false</code>.</p>
<p>This QML property was introduced in  Qt 5.1.</p>
<p><b>See also </b><a href="#visible-prop">visible</a>.</p>
<!-- @@@visibility -->
<br/>
<!-- $$$visible -->
<table class="qmlname"><tr valign="top" id="visible-prop"><td class="tblQmlPropNode"><p><span class="name">visible</span> : <span class="type">bool</span></p></td></tr></table><p>Whether the window is visible on the screen.</p>
<p>Setting visible to false is the same as setting <a href="#visibility-attached-prop">visibility</a> to Hidden.</p>
<p><b>See also </b><a href="#visibility-attached-prop">visibility</a>.</p>
<!-- @@@visible -->
<br/>
<!-- $$$width -->
<table class="qmlname"><tr valign="top" id="width-prop"><td class="tblQmlPropNode"><p><span class="name">width</span> : <span class="type">int</span></p></td></tr></table><p>Defines the window's position and size.</p>
<p>The (x,y) position is relative to the <a href="QtQuick.Window.Screen.md">Screen</a> if there is only one, or to the virtual desktop (arrangement of multiple screens).</p>
<pre class="qml"><span class="type"><a href="index.html">Window</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> }</pre>
<p class="centerAlign"><img src="../../../media/screen-and-window-dimensions.jpg" alt="" /></p><!-- @@@width -->
<br/>
<!-- $$$x -->
<table class="qmlname"><tr valign="top" id="x-prop"><td class="tblQmlPropNode"><p><span class="name">x</span> : <span class="type">int</span></p></td></tr></table><p>Defines the window's position and size.</p>
<p>The (x,y) position is relative to the <a href="QtQuick.Window.Screen.md">Screen</a> if there is only one, or to the virtual desktop (arrangement of multiple screens).</p>
<pre class="qml"><span class="type"><a href="index.html">Window</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> }</pre>
<p class="centerAlign"><img src="../../../media/screen-and-window-dimensions.jpg" alt="" /></p><!-- @@@x -->
<br/>
<!-- $$$y -->
<table class="qmlname"><tr valign="top" id="y-prop"><td class="tblQmlPropNode"><p><span class="name">y</span> : <span class="type">int</span></p></td></tr></table><p>Defines the window's position and size.</p>
<p>The (x,y) position is relative to the <a href="QtQuick.Window.Screen.md">Screen</a> if there is only one, or to the virtual desktop (arrangement of multiple screens).</p>
<pre class="qml"><span class="type"><a href="index.html">Window</a></span> { <span class="name">x</span>: <span class="number">100</span>; <span class="name">y</span>: <span class="number">100</span>; <span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span> }</pre>
<p class="centerAlign"><img src="../../../media/screen-and-window-dimensions.jpg" alt="" /></p><!-- @@@y -->
<br/>
<h2>Attached Property Documentation</h2>
<!-- $$$active -->
<table class="qmlname"><tr valign="top" id="active-attached-prop"><td class="tblQmlPropNode"><p><span class="name">Window.active</span> : <span class="type">bool</span></p></td></tr></table><p>This attached property tells whether the window is active. The Window attached property can be attached to any Item.</p>
<p>Here is an example which changes a label to show the active state of the window in which it is shown:</p>
<pre class="qml">import QtQuick 2.4
import QtQuick.Window 2.2
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">text</span>: <span class="name">Window</span>.<span class="name">active</span> ? <span class="string">&quot;active&quot;</span> : <span class="string">&quot;inactive&quot;</span>
}</pre>
<p>This QML property was introduced in  Qt 5.4.</p>
<!-- @@@active -->
<br/>
<!-- $$$activeFocusItem -->
<table class="qmlname"><tr valign="top" id="activeFocusItem-attached-prop"><td class="tblQmlPropNode"><p><span class="name">Window.activeFocusItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>This attached property holds the item which currently has active focus or <code>null</code> if there is no item with active focus. The Window attached property can be attached to any Item.</p>
<p>This QML property was introduced in  Qt 5.4.</p>
<!-- @@@activeFocusItem -->
<br/>
<!-- $$$contentItem -->
<table class="qmlname"><tr valign="top" id="contentItem-attached-prop"><td class="tblQmlPropNode"><p><span class="name">Window.contentItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td></tr></table><p>This attached property holds the invisible root item of the scene or <code>null</code> if the item is not in a window. The Window attached property can be attached to any Item.</p>
<p>This QML property was introduced in  Qt 5.4.</p>
<!-- @@@contentItem -->
<br/>
<!-- $$$visibility -->
<table class="qmlname"><tr valign="top" id="visibility-attached-prop"><td class="tblQmlPropNode"><p><span class="name">Window.visibility</span> : <span class="type">QWindow::Visibility</span></p></td></tr></table><p>This attached property holds whether the window is currently shown in the windowing system as normal, minimized, maximized, fullscreen or hidden. The <code>Window</code> attached property can be attached to any Item. If the item is not shown in any window, the value will be Hidden.</p>
<p>This QML property was introduced in  Qt 5.4.</p>
<p><b>See also </b><a href="#visible-prop">visible</a> and visibility.</p>
<!-- @@@visibility -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$closing -->
<table class="qmlname"><tr valign="top" id="closing-signal"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">closing</span>(<span class="type"><a href="QtQuick.Window.CloseEvent.md">CloseEvent</a></span><i> close</i>)</p></td></tr></table><p>This signal is emitted when the user tries to close the window.</p>
<p>This signal includes a <i>close</i> parameter. The <i>close</i> accepted property is true by default so that the window is allowed to close; but you can implement an <code>onClosing</code> handler and set <code>close.accepted = false</code> if you need to do something else before the window can be closed.</p>
<p>The corresponding handler is <code>onClosing</code>.</p>
<p>This QML signal was introduced in  Qt 5.1.</p>
<!-- @@@closing -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$alert -->
<table class="qmlname"><tr valign="top" id="alert-method"><td class="tblQmlFuncNode"><p><span class="name">alert</span>(<span class="type">int</span><i> msec</i>)</p></td></tr></table><p>Causes an alert to be shown for <i>msec</i> milliseconds. If <i>msec</i> is <code>0</code> (the default), then the alert is shown indefinitely until the window becomes active again.</p>
<p>In alert state, the window indicates that it demands attention, for example by flashing or bouncing the taskbar entry.</p>
<p>This QML method was introduced in  Qt 5.1.</p>
<!-- @@@alert -->
<br/>
<!-- $$$close -->
<table class="qmlname"><tr valign="top" id="close-method"><td class="tblQmlFuncNode"><p><span class="name">close</span>()</p></td></tr></table><p>Closes the window.</p>
<p>When this method is called, or when the user tries to close the window by its title bar button, the <a href="#closing-signal">closing</a> signal will be emitted. If there is no handler, or the handler does not revoke permission to close, the window will subsequently close. If the QGuiApplication::quitOnLastWindowClosed property is <code>true</code>, and there are no other windows open, the application will quit.</p>
<!-- @@@close -->
<br/>
<!-- $$$hide -->
<table class="qmlname"><tr valign="top" id="hide-method"><td class="tblQmlFuncNode"><p><span class="name">hide</span>()</p></td></tr></table><p>Hides the window.</p>
<p>Equivalent to setting <a href="#visible-prop">visible</a> to <code>false</code> or <a href="#visibility-attached-prop">visibility</a> to Hidden.</p>
<p><b>See also </b><a href="#show-method">show()</a>.</p>
<!-- @@@hide -->
<br/>
<!-- $$$lower -->
<table class="qmlname"><tr valign="top" id="lower-method"><td class="tblQmlFuncNode"><p><span class="name">lower</span>()</p></td></tr></table><p>Lowers the window in the windowing system.</p>
<p>Requests that the window be lowered to appear below other windows.</p>
<!-- @@@lower -->
<br/>
<!-- $$$raise -->
<table class="qmlname"><tr valign="top" id="raise-method"><td class="tblQmlFuncNode"><p><span class="name">raise</span>()</p></td></tr></table><p>Raises the window in the windowing system.</p>
<p>Requests that the window be raised to appear above other windows.</p>
<!-- @@@raise -->
<br/>
<!-- $$$requestActivate -->
<table class="qmlname"><tr valign="top" id="requestActivate-method"><td class="tblQmlFuncNode"><p><span class="name">requestActivate</span>()</p></td></tr></table><p>Requests the window to be activated, i.e&#x2e; receive keyboard focus.</p>
<p>This QML method was introduced in  Qt 5.1.</p>
<!-- @@@requestActivate -->
<br/>
<!-- $$$show -->
<table class="qmlname"><tr valign="top" id="show-method"><td class="tblQmlFuncNode"><p><span class="name">show</span>()</p></td></tr></table><p>Shows the window.</p>
<p>This is equivalent to calling <a href="#showFullScreen-method">showFullScreen()</a>, <a href="#showMaximized-method">showMaximized()</a>, or <a href="#showNormal-method">showNormal()</a>, depending on the platform's default behavior for the window type and flags.</p>
<p><b>See also </b><a href="#showFullScreen-method">showFullScreen()</a>, <a href="#showMaximized-method">showMaximized()</a>, <a href="#showNormal-method">showNormal()</a>, <a href="#hide-method">hide()</a>, and flags().</p>
<!-- @@@show -->
<br/>
<!-- $$$showFullScreen -->
<table class="qmlname"><tr valign="top" id="showFullScreen-method"><td class="tblQmlFuncNode"><p><span class="name">showFullScreen</span>()</p></td></tr></table><p>Shows the window as fullscreen.</p>
<p>Equivalent to setting <a href="#visibility-attached-prop">visibility</a> to FullScreen.</p>
<!-- @@@showFullScreen -->
<br/>
<!-- $$$showMaximized -->
<table class="qmlname"><tr valign="top" id="showMaximized-method"><td class="tblQmlFuncNode"><p><span class="name">showMaximized</span>()</p></td></tr></table><p>Shows the window as maximized.</p>
<p>Equivalent to setting <a href="#visibility-attached-prop">visibility</a> to Maximized.</p>
<!-- @@@showMaximized -->
<br/>
<!-- $$$showMinimized -->
<table class="qmlname"><tr valign="top" id="showMinimized-method"><td class="tblQmlFuncNode"><p><span class="name">showMinimized</span>()</p></td></tr></table><p>Shows the window as minimized.</p>
<p>Equivalent to setting <a href="#visibility-attached-prop">visibility</a> to Minimized.</p>
<!-- @@@showMinimized -->
<br/>
<!-- $$$showNormal -->
<table class="qmlname"><tr valign="top" id="showNormal-method"><td class="tblQmlFuncNode"><p><span class="name">showNormal</span>()</p></td></tr></table><p>Shows the window as normal, i.e&#x2e; neither maximized, minimized, nor fullscreen.</p>
<p>Equivalent to setting <a href="#visibility-attached-prop">visibility</a> to Windowed.</p>
<!-- @@@showNormal -->
<br/>
