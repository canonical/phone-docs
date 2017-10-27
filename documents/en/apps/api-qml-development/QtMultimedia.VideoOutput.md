---
Title: QtMultimedia.VideoOutput
---

# QtMultimedia.VideoOutput

<span class="subtitle"></span>
<!-- $$$VideoOutput-brief -->
<p>Render video or camera viewfinder. More...</p>
<!-- @@@VideoOutput -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtMultimedia 5.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#autoOrientation-prop">autoOrientation</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#contentRect-prop">contentRect</a></b></b> : rectangle</li>
<li class="fn"><b><b><a href="#fillMode-prop">fillMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#orientation-prop">orientation</a></b></b> : int</li>
<li class="fn"><b><b><a href="#source-prop">source</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#sourceRect-prop">sourceRect</a></b></b> : rectangle</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">QPointF <b><b><a href="#mapNormalizedPointToItem-method">mapNormalizedPointToItem</a></b></b>(const QPointF &amp; <i>point</i>)</li>
<li class="fn">QRectF <b><b><a href="#mapNormalizedRectToItem-method">mapNormalizedRectToItem</a></b></b>(const QRectF &amp; <i>rectangle</i>)</li>
<li class="fn">QPointF <b><b><a href="#mapPointToItem-method">mapPointToItem</a></b></b>(const QPointF &amp; <i>point</i>)</li>
<li class="fn">QPointF <b><b><a href="#mapPointToSource-method">mapPointToSource</a></b></b>(const QPointF &amp; <i>point</i>)</li>
<li class="fn">QPointF <b><b><a href="#mapPointToSourceNormalized-method">mapPointToSourceNormalized</a></b></b>(const QPointF &amp; <i>point</i>)</li>
<li class="fn">QRectF <b><b><a href="#mapRectToItem-method">mapRectToItem</a></b></b>(const QRectF &amp; <i>rectangle</i>)</li>
<li class="fn">QRectF <b><b><a href="#mapRectToSource-method">mapRectToSource</a></b></b>(const QRectF &amp; <i>rectangle</i>)</li>
<li class="fn">QRectF <b><b><a href="#mapRectToSourceNormalized-method">mapRectToSourceNormalized</a></b></b>(const QRectF &amp; <i>rectangle</i>)</li>
</ul>
<!-- $$$VideoOutput-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><code>VideoOutput</code> is part of the <b>QtMultimedia 5.0</b> module.</p>
<pre class="qml">import QtQuick 2.0
import QtMultimedia 5.0
<span class="type">Rectangle</span> {
<span class="name">width</span>: <span class="number">800</span>
<span class="name">height</span>: <span class="number">600</span>
<span class="name">color</span>: <span class="string">&quot;black&quot;</span>
<span class="type"><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a></span> {
<span class="name">id</span>: <span class="name">player</span>
<span class="name">source</span>: <span class="string">&quot;file://video.webm&quot;</span>
<span class="name">autoPlay</span>: <span class="number">true</span>
}
<span class="type"><a href="index.html">VideoOutput</a></span> {
<span class="name">id</span>: <span class="name">videoOutput</span>
<span class="name">source</span>: <span class="name">player</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
}
}</pre>
<p>The <a href="index.html">VideoOutput</a> item supports untransformed, stretched, and uniformly scaled video presentation. For a description of stretched uniformly scaled presentation, see the <a href="#fillMode-prop">fillMode</a> property description.</p>
<p>The VideoOutput item works with backends that support either QVideoRendererControl or QVideoWindowControl. If the backend only supports QVideoWindowControl, the video is rendered onto an overlay window that is layered on top of the QtQuick window. Due to the nature of the video overlays, certain features are not available for these kind of backends:</p>
<ul>
<li>Some transformations like rotations</li>
<li>Having other QtQuick items on top of the <a href="index.html">VideoOutput</a> item</li>
</ul>
<p>Most backends however do support QVideoRendererControl and therefore don't have the limitations listed above.</p>
<p><b>See also </b><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a> and <a href="QtMultimedia.qml-multimedia.md#camera">Camera</a>.</p>
<!-- @@@VideoOutput -->
<h2>Property Documentation</h2>
<!-- $$$autoOrientation -->
<table class="qmlname"><tr valign="top" id="autoOrientation-prop"><td class="tblQmlPropNode"><p><span class="name">autoOrientation</span> : <span class="type">bool</span></p></td></tr></table><p>This property allows you to enable and disable auto orientation of the video stream, so that its orientation always matches the orientation of the screen. If <code>autoOrientation</code> is enabled, the <code>orientation</code> property is overwritten.</p>
<p>By default <code>autoOrientation</code> is disabled.</p>
<p>This QML property was introduced in  QtMultimedia 5.2.</p>
<p><b>See also </b><a href="#orientation-prop">orientation</a>.</p>
<!-- @@@autoOrientation -->
<br/>
<!-- $$$contentRect -->
<table class="qmlname"><tr valign="top" id="contentRect-prop"><td class="tblQmlPropNode"><p><span class="name">contentRect</span> : <span class="type">rectangle</span></p></td></tr></table><p>This property holds the item coordinates of the area that would contain video to render. With certain fill modes, this rectangle will be larger than the visible area of the <code>VideoOutput</code>.</p>
<p>This property is useful when other coordinates are specified in terms of the source dimensions - this applied for relative (normalized) frame coordinates in the range of 0 to 1.0&#x2e;</p>
<p>Areas outside this will be transparent.</p>
<p><b>See also </b><a href="#mapRectToItem-method">mapRectToItem()</a> and <a href="#mapPointToItem-method">mapPointToItem()</a>.</p>
<!-- @@@contentRect -->
<br/>
<!-- $$$fillMode -->
<table class="qmlname"><tr valign="top" id="fillMode-prop"><td class="tblQmlPropNode"><p><span class="name">fillMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>Set this property to define how the video is scaled to fit the target area.</p>
<ul>
<li>Stretch - the video is scaled to fit.</li>
<li>PreserveAspectFit - the video is scaled uniformly to fit without cropping</li>
<li>PreserveAspectCrop - the video is scaled uniformly to fill, cropping if necessary</li>
</ul>
<p>The default fill mode is PreserveAspectFit.</p>
<!-- @@@fillMode -->
<br/>
<!-- $$$orientation -->
<table class="qmlname"><tr valign="top" id="orientation-prop"><td class="tblQmlPropNode"><p><span class="name">orientation</span> : <span class="type">int</span></p></td></tr></table><p>In some cases the source video stream requires a certain orientation to be correct. This includes sources like a camera viewfinder, where the displayed viewfinder should match reality, no matter what rotation the rest of the user interface has.</p>
<p>This property allows you to apply a rotation (in steps of 90 degrees) to compensate for any user interface rotation, with positive values in the anti-clockwise direction.</p>
<p>The orientation change will also affect the mapping of coordinates from source to viewport.</p>
<p><b>See also </b><a href="#autoOrientation-prop">autoOrientation</a>.</p>
<!-- @@@orientation -->
<br/>
<!-- $$$source -->
<table class="qmlname"><tr valign="top" id="source-prop"><td class="tblQmlPropNode"><p><span class="name">source</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the source item providing the video frames like <a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a> or Camera.</p>
<p>If you are extending your own C++ classes to interoperate with VideoOutput, you can either provide a QObject based class with a <code>mediaObject</code> property that exposes a QMediaObject derived class that has a QVideoRendererControl available, or you can provide a QObject based class with a writable <code>videoSurface</code> property that can accept a QAbstractVideoSurface based class and can follow the correct protocol to deliver QVideoFrames to it.</p>
<!-- @@@source -->
<br/>
<!-- $$$sourceRect -->
<table class="qmlname"><tr valign="top" id="sourceRect-prop"><td class="tblQmlPropNode"><p><span class="name">sourceRect</span> : <span class="type">rectangle</span></p></td></tr></table><p>This property holds the area of the source video content that is considered for rendering. The values are in source pixel coordinates, adjusted for the source's pixel aspect ratio.</p>
<p>Note that typically the top left corner of this rectangle will be <code>0,0</code> while the width and height will be the width and height of the input content. Only when the video source has a viewport set, these values will differ.</p>
<p>The orientation setting does not affect this rectangle.</p>
<p><b>See also </b>QVideoSurfaceFormat::pixelAspectRatio() and QVideoSurfaceFormat::viewport().</p>
<!-- @@@sourceRect -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$mapNormalizedPointToItem -->
<table class="qmlname"><tr valign="top" id="mapNormalizedPointToItem-method"><td class="tblQmlFuncNode"><p><span class="type">QPointF</span> <span class="name">mapNormalizedPointToItem</span>(const <span class="type">QPointF</span> &amp;<i> point</i>) const</p></td></tr></table><p>Given normalized coordinates <i>point</i> (that is, each component in the range of 0 to 1.0), return the mapped point that it corresponds to (in item coordinates). This mapping is affected by the orientation.</p>
<p>Depending on the fill mode, this point may lie outside the rendered rectangle.</p>
<!-- @@@mapNormalizedPointToItem -->
<br/>
<!-- $$$mapNormalizedRectToItem -->
<table class="qmlname"><tr valign="top" id="mapNormalizedRectToItem-method"><td class="tblQmlFuncNode"><p><span class="type">QRectF</span> <span class="name">mapNormalizedRectToItem</span>(const <span class="type">QRectF</span> &amp;<i> rectangle</i>) const</p></td></tr></table><p>Given a rectangle <i>rectangle</i> in normalized coordinates (that is, each component in the range of 0 to 1.0), return the mapped rectangle that it corresponds to (in item coordinates). This mapping is affected by the orientation.</p>
<p>Depending on the fill mode, this rectangle may extend outside the rendered rectangle.</p>
<!-- @@@mapNormalizedRectToItem -->
<br/>
<!-- $$$mapPointToItem -->
<table class="qmlname"><tr valign="top" id="mapPointToItem-method"><td class="tblQmlFuncNode"><p><span class="type">QPointF</span> <span class="name">mapPointToItem</span>(const <span class="type">QPointF</span> &amp;<i> point</i>) const</p></td></tr></table><p>Given a point <i>point</i> in source coordinates, return the corresponding point in item coordinates. This mapping is affected by the orientation.</p>
<p>Depending on the fill mode, this point may lie outside the rendered rectangle.</p>
<!-- @@@mapPointToItem -->
<br/>
<!-- $$$mapPointToSource -->
<table class="qmlname"><tr valign="top" id="mapPointToSource-method"><td class="tblQmlFuncNode"><p><span class="type">QPointF</span> <span class="name">mapPointToSource</span>(const <span class="type">QPointF</span> &amp;<i> point</i>) const</p></td></tr></table><p>Given a point <i>point</i> in item coordinates, return the corresponding point in source coordinates. This mapping is affected by the orientation.</p>
<p>If the supplied point lies outside the rendered area, the returned point will be outside the source rectangle.</p>
<!-- @@@mapPointToSource -->
<br/>
<!-- $$$mapPointToSourceNormalized -->
<table class="qmlname"><tr valign="top" id="mapPointToSourceNormalized-method"><td class="tblQmlFuncNode"><p><span class="type">QPointF</span> <span class="name">mapPointToSourceNormalized</span>(const <span class="type">QPointF</span> &amp;<i> point</i>) const</p></td></tr></table><p>Given a point <i>point</i> in item coordinates, return the corresponding point in normalized source coordinates. This mapping is affected by the orientation.</p>
<p>If the supplied point lies outside the rendered area, the returned point will be outside the source rectangle. No clamping is performed.</p>
<!-- @@@mapPointToSourceNormalized -->
<br/>
<!-- $$$mapRectToItem -->
<table class="qmlname"><tr valign="top" id="mapRectToItem-method"><td class="tblQmlFuncNode"><p><span class="type">QRectF</span> <span class="name">mapRectToItem</span>(const <span class="type">QRectF</span> &amp;<i> rectangle</i>) const</p></td></tr></table><p>Given a rectangle <i>rectangle</i> in source coordinates, return the corresponding rectangle in item coordinates. This mapping is affected by the orientation.</p>
<p>Depending on the fill mode, this rectangle may extend outside the rendered rectangle.</p>
<!-- @@@mapRectToItem -->
<br/>
<!-- $$$mapRectToSource -->
<table class="qmlname"><tr valign="top" id="mapRectToSource-method"><td class="tblQmlFuncNode"><p><span class="type">QRectF</span> <span class="name">mapRectToSource</span>(const <span class="type">QRectF</span> &amp;<i> rectangle</i>) const</p></td></tr></table><p>Given a rectangle <i>rectangle</i> in item coordinates, return the corresponding rectangle in source coordinates. This mapping is affected by the orientation.</p>
<p>This mapping is affected by the orientation.</p>
<p>If the supplied point lies outside the rendered area, the returned point will be outside the source rectangle.</p>
<!-- @@@mapRectToSource -->
<br/>
<!-- $$$mapRectToSourceNormalized -->
<table class="qmlname"><tr valign="top" id="mapRectToSourceNormalized-method"><td class="tblQmlFuncNode"><p><span class="type">QRectF</span> <span class="name">mapRectToSourceNormalized</span>(const <span class="type">QRectF</span> &amp;<i> rectangle</i>) const</p></td></tr></table><p>Given a rectangle <i>rectangle</i> in item coordinates, return the corresponding rectangle in normalized source coordinates. This mapping is affected by the orientation.</p>
<p>This mapping is affected by the orientation.</p>
<p>If the supplied point lies outside the rendered area, the returned point will be outside the source rectangle. No clamping is performed.</p>
<!-- @@@mapRectToSourceNormalized -->
<br/>
