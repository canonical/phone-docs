---
Title: QtMultimedia.videooverview
---

# QtMultimedia.videooverview

<span class="subtitle"></span>
<!-- $$$videooverview.html-description -->
<h2 id="video-features">Video Features</h2>
<p>Qt Multimedia offers both high and low level C++ classes for playing and manipulating video data, and QML types for playback and control. Some of these classes also overlap with both <a href="QtMultimedia.cameraoverview.md">camera</a> and <a href="QtMultimedia.audiooverview.md">audio</a> classes, which can be useful.</p>
<h2 id="video-implementation-details">Video Implementation Details</h2>
<h3 >Playing Video in C++</h3>
<p>You can use the QMediaPlayer class to decode a video file, and display it using QVideoWidget, QGraphicsVideoItem, or a custom class.</p>
<p>Here's an example of using QVideoWidget:</p>
<pre class="cpp">player <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QMediaPlayer</span>;
playlist <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QMediaPlaylist</span>(player);
playlist<span class="operator">-</span><span class="operator">&gt;</span>addMedia(<span class="type">QUrl</span>(<span class="string">&quot;http://example.com/myclip1.mp4&quot;</span>));
playlist<span class="operator">-</span><span class="operator">&gt;</span>addMedia(<span class="type">QUrl</span>(<span class="string">&quot;http://example.com/myclip2.mp4&quot;</span>));
videoWidget <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QVideoWidget</span>;
player<span class="operator">-</span><span class="operator">&gt;</span>setVideoOutput(videoWidget);
videoWidget<span class="operator">-</span><span class="operator">&gt;</span>show();
playlist<span class="operator">-</span><span class="operator">&gt;</span>setCurrentIndex(<span class="number">1</span>);
player<span class="operator">-</span><span class="operator">&gt;</span>play();</pre>
<p>And an example with QGraphicsVideoItem:</p>
<pre class="cpp">player <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QMediaPlayer</span>(<span class="keyword">this</span>);
<span class="type">QGraphicsVideoItem</span> <span class="operator">*</span>item <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QGraphicsVideoItem</span>;
player<span class="operator">-</span><span class="operator">&gt;</span>setVideoOutput(item);
graphicsView<span class="operator">-</span><span class="operator">&gt;</span>scene()<span class="operator">-</span><span class="operator">&gt;</span>addItem(item);
graphicsView<span class="operator">-</span><span class="operator">&gt;</span>show();
player<span class="operator">-</span><span class="operator">&gt;</span>setMedia(<span class="type">QUrl</span>(<span class="string">&quot;http://example.com/myclip4.ogv&quot;</span>));
player<span class="operator">-</span><span class="operator">&gt;</span>play();</pre>
<h3 >Playing Video in QML</h3>
<p>You can use <a href="QtMultimedia.VideoOutput.md">VideoOutput</a> to render content that is provided by either a <a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a> or a <a href="QtMultimedia.qml-multimedia.md#camera">Camera</a>. The <a href="QtMultimedia.VideoOutput.md">VideoOutput</a> is a visual component that can be transformed or acted upon by shaders (as the <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtMultimedia.video-qmlvideofx/">QML Video Shader Effects Example</a> shows), while all media decoding and playback control is handled by the <a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.</p>
<p>Alternatively there is also a higher level <a href="QtMultimedia.qml-multimedia.md#video">Video</a> type that acts as a single, visual element to play video and control playback.</p>
<h3 >Working with Low Level Video Frames</h3>
<p>Qt Multimedia offers a number of low level classes to make handling video frames a bit easier. These classes are primarily used when writing code that processes video or camera frames (for example, detecting barcodes, or applying a fancy vignette effect), or needs to display video in a special way that is otherwise unsupported.</p>
<p>The QVideoFrame class encapsulates a video frame and allows the contents to be mapped into system memory for manipulation or processing, while deriving a class from QAbstractVideoSurface allows you to receive these frames from QMediaPlayer and QCamera.</p>
<pre class="cpp"><span class="keyword">class</span> MyVideoSurface : <span class="keyword">public</span> <span class="type">QAbstractVideoSurface</span>
{
<span class="type">QList</span><span class="operator">&lt;</span><span class="type">QVideoFrame</span><span class="operator">::</span>PixelFormat<span class="operator">&gt;</span> supportedPixelFormats(
<span class="type">QAbstractVideoBuffer</span><span class="operator">::</span>HandleType handleType <span class="operator">=</span> <span class="type">QAbstractVideoBuffer</span><span class="operator">::</span>NoHandle) <span class="keyword">const</span>
{
Q_UNUSED(handleType);
<span class="comment">// Return the formats you will support</span>
<span class="keyword">return</span> <span class="type">QList</span><span class="operator">&lt;</span><span class="type">QVideoFrame</span><span class="operator">::</span>PixelFormat<span class="operator">&gt;</span>() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="type">QVideoFrame</span><span class="operator">::</span>Format_RGB565;
}
bool present(<span class="keyword">const</span> <span class="type">QVideoFrame</span> <span class="operator">&amp;</span>frame)
{
Q_UNUSED(frame);
<span class="comment">// Handle the frame and do your processing</span>
<span class="keyword">return</span> <span class="keyword">true</span>;
}
};</pre>
<p>and with an instance of this surface, <code>myVideoSurface</code>, you can set the surface as the video output for QMediaPlayer.</p>
<pre class="cpp">player<span class="operator">-</span><span class="operator">&gt;</span>setVideoOutput(myVideoSurface);</pre>
<p>Several of the built-in Qt classes offer this functionality as well, so if you decode video in your application, you can present it to classes that offer a QVideoRendererControl class, and in QML you can set a custom object for the source of a VideoOutput with either a writable <code>videoSurface</code> property (that the instance will set it's internal video surface to) or a readable <code>mediaObject</code> property with a QMediaObject derived class that implements the QVideoRendererControl interface.</p>
<p>The following snippet shows a class that has a writable <code>videoSurface</code> property and receives frames through a public slot <code>onNewVideoContentReceived()</code>. These frames are then presented on the surface set in <code>setVideoSurface()</code>.</p>
<pre class="cpp"><span class="keyword">class</span> MyVideoProducer : <span class="keyword">public</span> <span class="type">QObject</span>
{
Q_OBJECT
Q_PROPERTY(<span class="type">QAbstractVideoSurface</span> <span class="operator">*</span>videoSurface READ videoSurface WRITE setVideoSurface)
<span class="keyword">public</span>:
<span class="type">QAbstractVideoSurface</span><span class="operator">*</span> videoSurface() <span class="keyword">const</span> { <span class="keyword">return</span> m_surface; }
<span class="type">void</span> setVideoSurface(<span class="type">QAbstractVideoSurface</span> <span class="operator">*</span>surface)
{
<span class="keyword">if</span> (m_surface <span class="operator">!</span><span class="operator">=</span> surface <span class="operator">&amp;</span><span class="operator">&amp;</span> m_surface <span class="operator">&amp;</span><span class="operator">&amp;</span> m_surface<span class="operator">-</span><span class="operator">&gt;</span>isActive()) {
m_surface<span class="operator">-</span><span class="operator">&gt;</span>stop();
}
m_surface <span class="operator">=</span> surface;
<span class="keyword">if</span> (m_surface)
m_surface<span class="operator">-</span><span class="operator">&gt;</span>start(m_format);
}
<span class="comment">// ...</span>
<span class="keyword">public</span> <span class="keyword">slots</span>:
<span class="type">void</span> onNewVideoContentReceived(<span class="keyword">const</span> <span class="type">QVideoFrame</span> <span class="operator">&amp;</span>frame)
{
<span class="keyword">if</span> (m_surface)
m_surface<span class="operator">-</span><span class="operator">&gt;</span>present(frame);
}
<span class="keyword">private</span>:
<span class="type">QAbstractVideoSurface</span> <span class="operator">*</span>m_surface;
<span class="type">QVideoSurfaceFormat</span> m_format;
};</pre>
<h3 >Recording Video</h3>
<p>You can use the QMediaRecorder class in conjunction with other classes to record video to disk. Primarily this is used with the camera, so consult the Camera Overview for more information.</p>
<h3 >Monitoring Video Frames</h3>
<p>You can use the QVideoProbe class to access video frames as they flow through different parts of a media pipeline when using other classes like QMediaPlayer, QMediaRecorder or QCamera. After creating the high level media class, you can set the source of the video probe to that instance. This can be useful for performing some video processing tasks (like barcode recognition, or object detection) while the video is rendered normally. You can not affect the video frames using this class, and they may arrive at a slightly different time than they are being rendered.</p>
<p>Here's an example of installing a video probe while recording the camera:</p>
<pre class="cpp">camera <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QCamera</span>;
viewfinder <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QCameraViewfinder</span>();
camera<span class="operator">-</span><span class="operator">&gt;</span>setViewfinder(viewfinder);
camera<span class="operator">-</span><span class="operator">&gt;</span>setCaptureMode(<span class="type">QCamera</span><span class="operator">::</span>CaptureVideo);
videoProbe <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QVideoProbe</span>(<span class="keyword">this</span>);
<span class="keyword">if</span> (videoProbe<span class="operator">-</span><span class="operator">&gt;</span>setSource(camera)) {
<span class="comment">// Probing succeeded, videoProbe-&gt;isValid() should be true.</span>
connect(videoProbe<span class="operator">,</span> SIGNAL(videoFrameProbed(<span class="type">QVideoFrame</span>))<span class="operator">,</span>
<span class="keyword">this</span><span class="operator">,</span> SLOT(detectBarcodes(<span class="type">QVideoFrame</span>)));
}
camera<span class="operator">-</span><span class="operator">&gt;</span>start();
<span class="comment">// Viewfinder frames should now also be emitted by</span>
<span class="comment">// the video probe, even in still image capture mode.</span>
<span class="comment">// Another alternative is to install the probe on a</span>
<span class="comment">// QMediaRecorder connected to the camera to get the</span>
<span class="comment">// recorded frames, if they are different from the</span>
<span class="comment">// viewfinder frames.</span></pre>
<h2 id="examples">Examples</h2>
<p>There are both C++ and QML examples available.</p>
<h3 >C++ Examples</h3>
<h3 >QML Examples</h3>
<h2 id="reference-documentation">Reference Documentation</h2>
<h3 >C++ Classes</h3>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p>QAbstractPlanarVideoBuffer</p></td><td class="tblDescr"><p>Abstraction for planar video data</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QAbstractVideoBuffer</p></td><td class="tblDescr"><p>Abstraction for video data</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QAbstractVideoSurface</p></td><td class="tblDescr"><p>Base class for video presentation surfaces</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QVideoFrame</p></td><td class="tblDescr"><p>Represents a frame of video data</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QVideoProbe</p></td><td class="tblDescr"><p>Allows you to monitor video frames being played or recorded</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QVideoSurfaceFormat</p></td><td class="tblDescr"><p>Specifies the stream format of a video presentation surface</p></td></tr>
</table>
<h3 >QML Types</h3>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a></p></td><td class="tblDescr"><p>Add media playback to a scene</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtMultimedia.Playlist.md">Playlist</a></p></td><td class="tblDescr"><p>For specifying a list of media to be played</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="QtMultimedia.Video.md">Video</a></p></td><td class="tblDescr"><p>A convenience type for showing a specified video</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtMultimedia.VideoOutput.md">VideoOutput</a></p></td><td class="tblDescr"><p>Render video or camera viewfinder</p></td></tr>
</table>
<!-- @@@videooverview.html -->
