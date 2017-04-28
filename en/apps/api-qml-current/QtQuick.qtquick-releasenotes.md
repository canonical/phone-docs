---
Title: QtQuick.qtquick-releasenotes
---

# QtQuick.qtquick-releasenotes

<span class="subtitle"></span>
<!-- $$$qtquick-releasenotes.html-description -->
<h2 id="qt-quick-in-qt-5-1">Qt Quick in Qt 5.1</h2>
<p><a href="QtQuick.qtquick-index.md">Qt Quick</a> 2.1 is new in Qt 5.1&#x2e; This is a summary of improvements and new features introduced by the new import and new classes in Qt 5.1:</p>
<ul>
<li>New threaded render loop for Mac, Linux, and Embedded.</li>
<li>New render loop for windows for smoother animations.</li>
<li>New <a href="QtQuick.Window.Window.md">Window</a> properties: activeFocusItem, minimumWidth, minimumHeight, maximumWidth, maximumHeight, visibility, contentOrientation, and opacity.</li>
<li>New <a href="QtQuick.Window.Screen.md">Screen</a> attached properties: name, desktopAvailableWidth, desktopAvailableHeight, logicalPixelDensity</li>
<li>New <a href="QtQuick.qtquick-positioning-layouts.md#grid">Grid</a> properties: horizontalAlignment, verticalAlignment, and effectiveHorizontalAlignment.</li>
<li>New <a href="QtQuick.TextEdit.md">TextEdit</a> properties: selectByKeyboard and textDocument</li>
<li>A <a href="QtQuick.Window.Window.md">Window</a> declared inside another Window or <a href="QtQuick.Item.md">Item</a> will automatically be transient for (centered upon) the outer window.</li>
<li>These types are now part of Qt QML:<ul>
<li><a href="QtQuick.qtquick-modelviewsdata-modelview.md#visualitemmodel">VisualItemModel</a></li>
<li>VisualDataModel - Encapsulates a model and a delegate</li>
<li>VisualDataGroup</li>
</ul>
<p>These types are kept due to compatibility reasons and are replaced by the Qt QML Models types.</p>
</li>
</ul>
<h3 >New Submodules</h3>
<p>In Qt 5.1, there are several new modules which extend Qt Quick functionalities.</p>
<ul>
<li>Qt Quick Dialogs - contains types for creating and interacting with system dialogs</li>
<li>Qt Quick Controls - provides a set of reusable UI components</li>
<li>Qt Quick Layouts - contains types that are used to arrange items in the user interface</li>
</ul>
<p>The What's New in Qt 5.1 has more information about the Qt 5.1 release.</p>
<h2 id="qt-quick-in-qt-5-0">Qt Quick in Qt 5.0</h2>
<p>The <a href="QtQuick.qtquick-index.md">Qt Quick</a> module is new in Qt 5. It provides the visual canvas and scenegraph back-end as well as the <code>QtQuick</code> QML module for QML application development.</p>
<p>As of Qt 5, the <a href="QtQuick.qtquick-index.md">Qt Quick</a> module is based on an OpenGL scenegraph. Many of the classes in the <a href="QtQuick.qtquick-index.md">Qt Quick</a> module have been ported from the QtDeclarative module from Qt 4.8 to use the scenegraph architecture; these classes have been renamed to use a <code>QQuick*</code> prefix. (See the Porting QML Applications to Qt 5 for porting information.)</p>
<p>The following classes provide the basic functionality for interacting with the QML visual canvas from C++:</p>
<ul>
<li>QQuickItem - the base visual QML type (replaces <code>QDeclarativeItem</code>)</li>
<li>QQuickView - a convenience window for rendering a QML scene from a QML file (replaces <code>QDeclarativeView</code>)</li>
<li>QQuickWindow - a base window for displaying a QML scene</li>
<li>QQuickPaintedItem - convenience for using the QPainter API with the scenegraph</li>
<li>QQuickImageProvider - fetches custom images for use in QML applications (replaces <code>QDeclarativeImageProvider</code>)</li>
<li>QQuickTextureFactory - use with QQuickImageProvider::requestTexture()</li>
</ul>
<p>Custom rendering can be performed on the scenegraph using the following new classes:</p>
<ul>
<li>QSGNode</li>
<li>QSGMaterial</li>
<li>QSGBasicGeometryNode</li>
<li>QSGGeometryNode</li>
<li>QSGClipNode</li>
<li>QSGTransformNode</li>
<li>QSGOpacityNode</li>
<li>QSGFlatColorMaterial</li>
<li>QSGSimpleRectNode</li>
<li>QSGSimpleTextureNode</li>
<li>QSGTexture</li>
<li>QSGDynamicTexture</li>
<li>QSGOpaqueTextureMaterial</li>
<li>QSGTextureMaterial</li>
<li>QSGTextureProvider</li>
<li>QSGVertexColorMaterial</li>
</ul>
<h2 id="qt-5-0-qtquick-qml-module">Qt 5.0 - QtQuick QML Module</h2>
<p>The <code>QtQuick 2.0</code> QML module is a major update.</p>
<p>Below are the additions in <code>QtQuick 2.0</code>. For a list of behavioral changes which may affect applications ported from <code>QtQuick 1.x</code>, see the Porting QML Applications to Qt 5.</p>
<h3 >Visual types, Graphical Effects and Sprites</h3>
<ul>
<li>New <a href="QtQuick.Canvas.md">Canvas</a> type for drawing. This provides an API similar to that of the HTML5 Canvas API, along with some additional features.<ul>
<li>Supports two render targets: <code>Canvas.Image</code> and <code>Canvas.FramebufferObject</code>.</li>
<li>Supports background thread rendering.</li>
<li>Supports tiled canvas rendering.</li>
<li>Supports most of the HTML5 context2d APIs.</li>
</ul>
</li>
<li><a href="QtQuick.Item.md">Item</a>:<ul>
<li>New <a href="QtQuick.Item.md#layer.enabled-prop">layer.enabled</a> property enables an item to be rendered into an offscreen cache for optimization.</li>
<li>New <a href="QtQuick.Item.md#contains-method">contains()</a> method returns whether an item contains a specified point.</li>
<li>New <a href="QtQuick.Item.md#anchors.alignWhenCentered-prop">anchors.alignWhenCentered</a> property can force centered anchors to align on a whole pixel.</li>
<li>New <a href="QtQuick.Item.md#enabled-prop">enabled</a> property is available, which stops input event delivery and removes active focus.</li>
</ul>
</li>
<li><a href="QtQuick.qtquick-imageelements-example.md#image">Image</a>:<ul>
<li>New <a href="QtQuick.Image.md#horizontalAlignment-prop">horizontalAlignment</a> and <a href="QtQuick.Image.md#verticalAlignment-prop">verticalAlignment</a> properties to set the image alignment.</li>
<li>New <code>Image.Pad</code> enumeration value for <a href="QtQuick.Image.md#fillMode-prop">fillMode</a> that does not transform the image, unlike other <a href="QtQuick.Image.md#fillMode-prop">fillMode</a> enumeration values.</li>
</ul>
</li>
<li>New <a href="QtQuick.ShaderEffect.md">ShaderEffect</a> and <a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a> types enable GLSL shader programs to be integrated directly into QML code and applied to QML items and images. (This obsoletes the experimental Qt.labs.shaders module.)</li>
<li>New <a href="QtQuick.qtquick-imageelements-example.md#spritesequence">SpriteSequence</a> type renders animated sprites and can transition between animations. Each animation in a sequence is represented by the new <a href="QtQuick.Sprite.md">Sprite</a> type.</li>
<li>New <a href="QtQuick.qtquick-effects-sprites.md#animatedsprite">AnimatedSprite</a> type for drawing single sprite animations.</li>
</ul>
<h3 >Animations and Transitions</h3>
<ul>
<li>New <a href="QtQuick.AnimationController.md">AnimationController</a> type enables an animation to be manually driven by a <a href="QtQuick.AnimationController.md#progress-prop">progress</a> value.</li>
<li>New <a href="QtQuick.animation.md#pathanimation">PathAnimation</a> type animates an item along a <a href="QtQuick.Path.md">Path</a>.</li>
<li>New <a href="QtQuick.animation.md#pathinterpolator">PathInterpolator</a> type provides updated attribute values for an item animating along a path. It can be used as an low-level alternative to <a href="QtQuick.animation.md#pathanimation">PathAnimation</a>.</li>
<li><a href="QtQuick.qmlexampletoggleswitch.md#transition">Transition</a>:<ul>
<li>New <a href="QtQuick.Transition.md#running-prop">running</a> property holds whether a transition is currently running.</li>
<li>New <a href="QtQuick.Transition.md#enabled-prop">enabled</a> property controls whether a transition is enabled.</li>
</ul>
</li>
</ul>
<h3 >Paths</h3>
<ul>
<li>New <a href="QtQuick.PathArc.md">PathArc</a> type creates an arc-type path.</li>
<li>New <a href="QtQuick.PathCurve.md">PathCurve</a> type creates a catmull-rom curve path.</li>
<li>New <a href="QtQuick.PathSvg.md">PathSvg</a> type creates a path from a SVG string.</li>
<li>Changes common to <a href="QtQuick.PathLine.md">PathLine</a>, <a href="QtQuick.PathQuad.md">PathQuad</a> and <a href="QtQuick.PathCubic.md">PathCubic</a>:<ul>
<li>New <code>relativeX</code> and <code>relativeY</code> properties define the start and end points of a path relative to its start.</li>
</ul>
</li>
<li><a href="QtQuick.PathCubic.md">PathCubic</a> only:<ul>
<li>New <a href="QtQuick.PathCubic.md#relativeControl1X-prop">relativeControl1X</a>, <a href="QtQuick.PathCubic.md#relativeControl1Y-prop">relativeControl1Y</a>, <a href="QtQuick.PathCubic.md#relativeControl2X-prop">relativeControl2X</a> and <a href="QtQuick.PathCubic.md#relativeControl2Y-prop">relativeControl2Y</a> properties define the positions of the control points relative to the start of the curve.</li>
</ul>
</li>
<li><a href="QtQuick.PathQuad.md">PathQuad</a> only:<ul>
<li>New <a href="QtQuick.PathQuad.md#relativeControlX-prop">relativeControlX</a> and <a href="QtQuick.PathQuad.md#relativeControlY-prop">relativeControlY</a> define the positions of the control points relative to the start of the curve.</li>
</ul>
</li>
</ul>
<h3 >Text</h3>
<ul>
<li>Changes common to <a href="#text">Text</a>, <a href="QtQuick.TextEdit.md">TextEdit</a> and <a href="QtQuick.TextInput.md">TextInput</a>:<ul>
<li>New <code>contentWidth</code> and <code>contentHeight</code> properties provide the dimensions of the textual content.</li>
<li>New <code>effectiveHorizontalAlignment</code> property provides the read-only actual horizontal alignment.</li>
</ul>
</li>
<li>Changes common to both <a href="QtQuick.TextEdit.md">TextEdit</a> and <a href="QtQuick.TextInput.md">TextInput</a>:<ul>
<li>New <code>canUndo</code> and <code>canRedo</code> properties specify whether undo and redo operations are available.</li>
<li>New <code>getText()</code> method returns the text located between specified start and end indexes. Additionally <a href="QtQuick.TextEdit.md">TextEdit</a> has a <a href="QtQuick.TextEdit.md#getFormattedText-method">getFormattedText()</a> method that returns the formatted text.</li>
</ul>
</li>
<li><a href="#text">Text</a> only:<ul>
<li><code>Text.RightElide</code> is now supported where text spans multiple lines.</li>
<li>New <a href="QtQuick.Text.md#linkColor-prop">linkColor</a> property controls the color of linked text.</li>
<li>New <a href="QtQuick.Text.md#lineLaidOut-signal">lineLaidOut</a> signal is emitted for every line during the layout process to give the option of positioning and/or resizing lines as they are laid out.</li>
<li>New <a href="QtQuick.Text.md#doLayout-method">doLayout()</a> method will trigger the text layout from Javascript.</li>
<li>New <a href="QtQuick.Text.md#fontSizeMode-prop">fontSizeMode</a> property allows text to be fitted to the item size.</li>
<li>New <a href="QtQuick.Text.md#minimumPixelSize-prop">minimumPixelSize</a> and <a href="QtQuick.Text.md#minimumPointSize-prop">minimumPointSize</a> properties can be used to specify a lower bound when auto-fitting.</li>
</ul>
</li>
<li><a href="QtQuick.TextEdit.md">TextEdit</a> only:<ul>
<li>New <a href="QtQuick.TextEdit.md#baseUrl-prop">baseUrl</a> property specified the base URL used to resolve relative URLs within the text.</li>
</ul>
</li>
<li><a href="QtQuick.TextInput.md">TextInput</a> only:<ul>
<li>New <a href="QtQuick.TextInput.md#wrapMode-prop">wrapMode</a> property sets the text wrapping mode.</li>
<li>New <a href="QtQuick.TextInput.md#horizontalAlignment-prop">horizontalAlignment</a> and <a href="QtQuick.TextInput.md#verticalAlignment-prop">verticalAlignment</a> properties.</li>
<li>New <a href="QtQuick.TextInput.md#length-prop">length</a> property provides the total number of text characters.</li>
<li>New <a href="QtQuick.TextInput.md#persistentSelection-prop">persistentSelection</a> property enables the text selection to persist when the window loses focus.</li>
<li><a href="QtQuick.TextInput.md#positionAt-method">positionAt()</a> method now takes a y parameter.</li>
</ul>
</li>
</ul>
<h3 >User Input</h3>
<ul>
<li>New <a href="QtQuick.MultiPointTouchArea.md">MultiPointTouchArea</a> type processes multi-point touches and provides information on touch points including position, pressure and velocity. Touch point data is provided by the new <a href="QtQuick.TouchPoint.md">TouchPoint</a> type.</li>
<li>New <a href="QtQuick.DropArea.md">DropArea</a> type provides more advanced drag and drop functionality.</li>
<li><a href="QtQuick.MouseArea.md">MouseArea</a>:<ul>
<li>Wheel events are now supported; events are provided through the new <a href="QtQuick.WheelEvent.md">WheelEvent</a> type.</li>
<li>New <a href="QtQuick.MouseArea.md#propagateComposedEvents-prop">propagateComposedEvents</a> property sets whether composed events are propagated to other mouse areas. If this property is true and the handlers of the <a href="QtQuick.MouseArea.md#clicked-signal">clicked</a>, <a href="QtQuick.MouseArea.md#doubleClicked-signal">doubleClicked</a> or <a href="QtQuick.MouseArea.md#pressAndHold-signal">pressAndHold</a> signals reject a mouse event, the event will be propagated to overlapping <a href="QtQuick.MouseArea.md">MouseArea</a> items in the same area that are lower in the stacking order.</li>
<li>New <a href="QtQuick.MouseArea.md#cursorShape-prop">cursorShape</a> property controls the cursor shape.</li>
</ul>
</li>
</ul>
<h3 >Specialized Containers</h3>
<ul>
<li>Flickable:<ul>
<li>New <a href="QtQuick.Flickable.md#rebound-prop">rebound</a> property specifies the transition to be applied when a flickable snaps back to its bounds.</li>
<li>New <a href="QtQuick.Flickable.md#topMargin-prop">topMargin</a>, <a href="QtQuick.Flickable.md#bottomMargin-prop">bottomMargin</a>, <a href="QtQuick.Flickable.md#leftMargin-prop">leftMargin</a>, <a href="QtQuick.Flickable.md#rightMargin-prop">rightMargin</a> allow extra margin space to be specified for a flickable. This can be used, for example, to implement pull-to-refresh functionality for a list.</li>
<li>New <a href="QtQuick.Flickable.md#originX-prop">originX</a> and <a href="QtQuick.Flickable.md#originY-prop">originY</a> properties provide the top left position of the content item.</li>
<li>New <a href="QtQuick.Flickable.md#dragging-prop">dragging</a>, <a href="QtQuick.Flickable.md#draggingHorizontally-prop">draggingHorizontally</a> and <a href="QtQuick.Flickable.md#draggingVertically-prop">draggingVertically</a> properties provide information on whether a flickable is currently being dragged.</li>
<li>New <a href="QtQuick.Flickable.md#flick-method">flick()</a> method flicks the view with a specific velocity.</li>
<li>New <a href="QtQuick.Flickable.md#cancelFlick-method">cancelFlick()</a> method stops any current flicking movement.</li>
</ul>
</li>
</ul>
<h3 >Positioners (Row, Column, Grid, Flow types):</h3>
<ul>
<li>Changes common to <a href="QtQuick.qtquick-positioning-layouts.md#row">Row</a>, <a href="QtQuick.qtquick-positioning-layouts.md#column">Column</a>, <a href="QtQuick.qtquick-positioning-layouts.md#grid">Grid</a> and <a href="QtQuick.qtquick-positioning-layouts.md#flow">Flow</a>:<ul>
<li>The <code>add</code> and <code>move</code> transitions can access a new <a href="QtQuick.ViewTransition.md">ViewTransition</a> attached property (see the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation for examples) and can now animate arbitrary item properties (instead of being restricted to animating an item's position).</li>
<li>New <code>effectiveLayoutDirection</code> property provides the read-only actual layout direction of a positioner.</li>
<li>New <a href="QtQuick.Positioner.md">Positioner</a> type provides <code>index</code>, <code>isFirstItem</code> and <code>isLastItem</code> attached properties for items within positioners.</li>
<li>All <code>spacing</code> properties on positioners now use real numbers instead of integers.</li>
</ul>
</li>
<li>Grid only:<ul>
<li>New <a href="QtQuick.Grid.md#rowSpacing-prop">rowSpacing</a> and <a href="QtQuick.Grid.md#columnSpacing-prop">columnSpacing</a> properties.</li>
</ul>
</li>
</ul>
<h3 >Models and Views</h3>
<ul>
<li>Any delegate of a view that uses a <a href="QtQuick.qtquick-modelviewsdata-cppmodels.md#qabstractitemmodel">QAbstractItemModel</a>-derived model type can use the syntax <code>model.&lt;role&gt; = &lt;newDataValue&gt;</code> to modify the data for a particular role. (Previously, the <code>model.&lt;role&gt;</code> syntax was only available for reading, not writing to, a role value.)</li>
<li><a href="QtQuick.qtquick-modelviewsdata-modelview.md#listmodel">ListModel</a>:<ul>
<li>By default, roles can no longer change type during a model's lifetime. The new dynamicRoles property can be set to restore the original (less performant) behavior.</li>
</ul>
</li>
<li>VisualDataModel:<ul>
<li>Now has features to filter the items to be displayed in a view. This is supported by the new groups, filterOnGroup, items and persistedItems properties.</li>
</ul>
</li>
<li>Changes common to both <a href="QtQuick.ListView.md">ListView</a> and <a href="QtQuick.Drag.md#gridview">GridView</a>:<ul>
<li>New transition support for animating the adding, removing and moving of items in a <a href="QtQuick.ListView.md">ListView</a> or <a href="QtQuick.Drag.md#gridview">GridView</a>. See the <a href="QtQuick.ViewTransition.md">ViewTransition</a> documentation for details.</li>
<li>New <code>verticalLayoutDirection</code> property enables items to be laid out from bottom-to-top using the new <code>BottomToTop</code> enumeration value.</li>
<li>New <code>headerItem</code> and <code>footerItem</code> properties provide access to the instantiated header and footer items.</li>
<li>The <code>cacheBuffer</code> property now has a non-zero default.</li>
<li>Delegates in the cache buffer are now created asynchronously.</li>
<li>Setting a <code>RightToLeft</code> layout now also reverses the <code>preferredHighlightBegin</code> and <code>preferredHighlightEnd</code>.</li>
<li>If the model is changed after the component is completed, currentIndex is reset to 0.</li>
</ul>
</li>
<li><a href="QtQuick.ListView.md">ListView</a> only:<ul>
<li>New <a href="QtQuick.ListView.md#section.labelPositioning-prop">section.labelPositioning</a> property can fix the current section label to the start of the view, and the next section label to the end of the view, to prevent labels from scrolling while section items are still in view.</li>
<li><code>highlightMoveSpeed</code> and <code>highlightResizeSpeed</code> have been renamed to <a href="QtQuick.ListView.md#highlightMoveVelocity-prop">highlightMoveVelocity</a> and <a href="QtQuick.ListView.md#highlightResizeVelocity-prop">highlightResizeVelocity</a>.</li>
</ul>
</li>
<li><a href="QtQuick.Drag.md#gridview">GridView</a> only:<ul>
<li><a href="QtQuick.GridView.md#cellWidth-prop">cellWidth</a> and <a href="QtQuick.GridView.md#cellHeight-prop">cellHeight</a> now use real numbers instead of integers.</li>
</ul>
</li>
<li><a href="QtQuick.PathView.md">PathView</a>:<ul>
<li>New <a href="QtQuick.PathView.md#currentItem-prop">currentItem</a> property holds the current item in the view.</li>
<li>New <a href="QtQuick.PathView.md#maximumFlickVelocity-prop">maximumFlickVelocity</a> property controls the maximum flick velocity of the view.</li>
<li>New <a href="QtQuick.PathView.md#snapMode-prop">snapMode</a> property controls the snap model when flicking between items</li>
<li>If the model is changed after the component is completed, the offset and currentIndex are reset to 0.</li>
<li>New <a href="QtQuick.PathView.md#positionViewAtIndex-method">positionViewAtIndex()</a> function allows the view to be moved to display the specified index.</li>
<li>New <a href="QtQuick.PathView.md#indexAt-method">indexAt()</a> and <a href="QtQuick.PathView.md#itemAt-method">itemAt()</a> functions return the index or item at a specified point in the view.</li>
</ul>
</li>
</ul>
<h3 >Utility types</h3>
<ul>
<li>New <a href="QtQuick.Accessible.md">Accessible</a> attached property for implementing accessibility features in QML applications.</li>
<li><a href="QtQuick.Loader.md">Loader</a>:<ul>
<li>New <a href="QtQuick.Loader.md#asynchronous-prop">asynchronous</a> property allows components to be instantiated with lower chance of blocking. If source is used with <i>asynchronous: true</i> the component will be compiled in a background thread.</li>
<li>New <a href="QtQuick.Loader.md#active-prop">active</a> property can delay instantiation of a <a href="QtQuick.Loader.md">Loader</a> object's <a href="QtQuick.Loader.md#item-prop">item</a>.</li>
<li>New <a href="QtQuick.Loader.md#setSource-method">setSource()</a> method loads an object with specific initial property values, similar to Component::createObject().</li>
</ul>
</li>
<li>Binding:<ul>
<li>This type can now be used as a value source, and will also restore any previously set binding when its when clause becomes false.</li>
</ul>
</li>
</ul>
<h3 >Property types</h3>
<p>Support for various math and geometry-related value types, including QVector2D, QVector3D, QVector4D, QMatrix4x4 and QQuaternion, as well as QColor and QFont, are now provided by <a href="QtQuick.qtquick-index.md">Qt Quick</a>. Properties of these types can be declared in QML documents via the property syntax where the type name is <code>vector2d</code>, <code>vector3d</code>, <code>vector4d</code>, <code>matrix4x4</code>, <code>quaternion</code>, <code>color</code> and <code>font</code> respectively.</p>
<p><a href="QtQuick.qtquick-index.md">Qt Quick</a> also provides implementation for the various value type factory or utility functions of the <code>Qt</code> object which return or operate on values of the above types. The functions are:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value type</th><th >Functions</th></tr></thead>
<tr valign="top"><td >color</td><td >Qt.rgba(), Qt.hsla(), Qt.tint(), Qt.lighter(), Qt.darker(), Qt.colorEqual()</td></tr>
<tr valign="top"><td >font</td><td >Qt.font(), Qt.fontFamilies()</td></tr>
<tr valign="top"><td >vector2d</td><td >Qt.vector2d()</td></tr>
<tr valign="top"><td >vector3d</td><td >Qt.vector3d()</td></tr>
<tr valign="top"><td >vector4d</td><td >Qt.vector4d()</td></tr>
<tr valign="top"><td >matrix4x4</td><td >Qt.matrix4x4()</td></tr>
<tr valign="top"><td >quaternion</td><td >Qt.quaternion()</td></tr>
</table>
<p>The <code>Qt.rgba()</code>, <code>Qt.hsla()</code>, <code>Qt.tint()</code>, <code>Qt.lighter()</code>, <code>Qt.darker()</code> and <code>Qt.fontFamilies()</code> functions already existed in QtDeclarative prior to <a href="QtQuick.qtquick-index.md">Qt Quick 2</a>; the other functions are all new in <a href="QtQuick.qtquick-index.md">Qt Quick 2</a>.</p>
<h2 id="qt-5-0-additional-qml-modules">Qt 5.0 - Additional QML Modules</h2>
<h3 >QtQuick.Particles</h3>
<p>This new module provides particle system support for creating a variety of 2D particle systems. See the <a href="#qtquick-particles">QtQuick.Particles</a> documentation for comprehensive details.</p>
<p>This obsoletes the experimental <code>Qt.labs.particles</code> module.</p>
<h3 >QtQuick.Window</h3>
<p>This new module contains the <a href="QtQuick.Window.Window.md">Window</a> type for creating a basic window and the <a href="QtQuick.Window.Screen.md">Screen</a> type for accessing a screen's resolution and other details. See the <a href="#qtquick-window">QtQuick.Window</a> documentation for comprehensive details.</p>
<h3 >QtQuick.XmlListModel</h3>
<p>This new module contains <a href="QtQuick.qtquick-modelviewsdata-modelview.md#xmllistmodel">XmlListModel</a> and associated types, which were previously in the <code>QtQuick</code> module. See the <a href="#qtquick-xmllistmodel">QtQuick.XmlListModel</a> documentation for details.</p>
<h3 >QtQuick.LocalStorage</h3>
<p>This new module provides access to the SQL Local Storage API that was previously accessible from the QML Global Object. See the <a href="#qtquick-localstorage">QtQuick.LocalStorage</a> documentation for details.</p>
<!-- @@@qtquick-releasenotes.html -->
