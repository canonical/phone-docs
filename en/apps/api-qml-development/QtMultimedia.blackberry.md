---
Title: QtMultimedia.blackberry
---

# QtMultimedia.blackberry

<span class="subtitle"></span>
<!-- $$$blackberry.html-description -->
<p>Qt Multimedia supports BlackBerry devices that run the BB10 operating system. This page covers the availibility of different features on BB10.</p>
<h2 id="implementation">Implementation</h2>
<p>BB10 ships with a few different multimedia libraries. The main library for audio and video playback is <i>mmrenderer</i>. For low-latency output of raw audio samples, <i>libasound</i>, a variant of the Linux ALSA library, is available. Finally, for three-dimensional positional audio playback, <i>OpenAL</i> is supported and present on BB10.</p>
<p>The Qt Multimedia BlackBerry backend uses mmrenderer for media playback.</p>
<p>For the positional audio classes in the Qt Audio Engine QML module, OpenAL is used as on all other platforms.</p>
<p>For recording videos and taking photos, the camapi library is used.</p>
<h2 id="supported-features">Supported Features</h2>
<p>Playback of audio and video with QMediaPlayer and related classes is supported. This includes the corresponding QML elements like MediaPlayer and VideoOutput. Since the playback is delegated to mmrenderer, the supported formats are the same as in mmrenderer. As mmrenderer supports streaming from HTTP and other URLs, this is supported in QMediaPlayer as well. Playlists as sources are also supported.</p>
<p>mmrenderer does not allow access to the pixel data of video frames, hence Qt Multimedia classes like QVideoFrame and QAbstractVideoSurface will not work since they require access to the image data. QVideoWidget and the VideoOutput QML element are implemented with an overlay window; mmrenderer creates a separate window displaying a video and puts that on top of the Qt application. As a consequence, no other widget or QML element can be put on top of the video, and QML shaders have no effect.</p>
<p>The Qt Audio Engine QML module is fully supported, as it is based on OpenAL which is available in BB10.</p>
<p>The <a href="QtMultimedia.qml-multimedia.md#camera">QCamera</a> support includes recording of videos and taking photos. The viewfinder is available through QCameraViewfinder and the <a href="QtMultimedia.VideoOutput.md">VideoOutput</a> QML element.</p>
<p>Note: To use the camera on BB10, your application needs the 'access_shared', 'use_camera' and 'record_audio' permissions set in the bar-descriptor.xml file.</p>
<h2 id="unsupported-features">Unsupported Features</h2>
<p>Low-latency output and input of raw audio samples with QAudioOutput, QAudioInput and related classes is not yet supported. The SoundEffect QML element and QSoundEffect are based on these classes. In your QML file, use the MediaPlayer element instead of the SoundEffect element, as the APIs are nearly identical.</p>
<p>QMediaPlayer does not support QIODevice-based streaming sources. However, streaming by specifying, for example, an HTTP URL as the source does work. In addition, QMediaPlayer does not yet provide metadata like the artist and album of the current track.</p>
<p>Radio and audio recording are not yet supported.</p>
<!-- @@@blackberry.html -->
