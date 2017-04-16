---
Title: QtMultimedia.qtmultimedia-index
---

# QtMultimedia.qtmultimedia-index

<span class="subtitle"></span>
<!-- $$$qtmultimedia-index.html-description -->
<p>Qt Multimedia is an essential module that provides a rich set of QML types and C++ classes to handle multimedia content. It also provides necessary APIs to access the camera and radio functionality. The included Qt Audio Engine provides types for 3D positional audio playback and management.</p>
<p>The Qt Multimedia Widgets module provides widget based multimedia classes.</p>
<h2 id="getting-started">Getting Started</h2>
<p>The QML types can be imported into your applciation using the following import statement in your <code>.qml</code> file.</p>
<pre class="cpp">import <span class="type">QtMultimedia</span> <span class="number">5.4</span></pre>
<p>If you intend to use the C++ classes in your application, include the C++ definitions using the following directive:</p>
<pre class="cpp"> <span class="preprocessor">#include &lt;QtMultimedia&gt;</span></pre>
<p><b>Note: </b>If you are using a few classes from this module, we recommend including those specific classes only instead of the module.</p><p>To link against the corresponding C++ libraries, add the following to your <code>qmake</code> project file:</p>
<pre class="cpp">QT <span class="operator">+</span><span class="operator">=</span> multimedia</pre>
<h2 id="qml-types-and-c-classes">QML Types and C++ Classes</h2>
<p>The following is a list of important QML types and C++ classes provided by this module:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Type</th><th >Description</th></tr></thead>
<tr valign="top"><td ><a href="QtMultimedia.Audio.md">Audio</a></td><td >Add audio playback functionality to a scene</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.Playlist.md">Playlist</a></td><td >Add playlist functionality</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.Camera.md">Camera</a></td><td >Access camera viewfinder frames</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a></td><td >Add media playback functionality to a scene. It is same as Audio type, but can be used for video playback with the <a href="QtMultimedia.VideoOutput.md">VideoOutput</a> type.</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.Radio.md">Radio</a></td><td >Access radio functionality</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.Video.md">Video</a></td><td >Add Video playback functionality to a scene. It uses <a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a> and <a href="QtMultimedia.VideoOutput.md">VideoOutput</a> types to provide video playback functionality.</td></tr>
</table>
<table class="generic">
<thead><tr class="qt-style"><th >Class</th><th >Description</th></tr></thead>
<tr valign="top"><td >QAudioOutput</td><td >Sends audio data to an audio output device</td></tr>
<tr valign="top"><td >QCamera</td><td >Access camera viewfinder.</td></tr>
<tr valign="top"><td >QCameraImageCapture</td><td >Record media content. Intended to be used with QCamera to record media.</td></tr>
<tr valign="top"><td >QMediaPlayer</td><td >Playback media from a source.</td></tr>
<tr valign="top"><td >QMediaPlaylist</td><td >List of media to be played.</td></tr>
<tr valign="top"><td >QRadioTuner</td><td >Access radio device.</td></tr>
<tr valign="top"><td >QVideoRendererControl</td><td >Control video data.</td></tr>
</table>
<h2 id="related-information">Related Information</h2>
<h3 >Guides</h3>
<ul>
<li><a href="QtMultimedia.multimediaoverview.md">Multimedia</a> - overview of multimedia support in Qt</li>
<li><a href="QtMultimedia.audiooverview.md">Audio Overview</a></li>
<li><a href="QtMultimedia.videooverview.md">Video Overview</a></li>
<li><a href="QtMultimedia.cameraoverview.md">Camera Overview</a></li>
<li><a href="QtMultimedia.radiooverview.md">Radio Overview</a></li>
</ul>
<h3 >Platform Notes</h3>
<ul>
<li><a href="QtMultimedia.blackberry.md">BlackBerry</a></li>
<li><a href="QtMultimedia.qtmultimedia-windows.md">Windows</a></li>
</ul>
<h3 >Reference</h3>
<ul>
<li>Qt Multimedia<ul>
<li>QML Types</li>
<li>C++ Classes</li>
</ul>
</li>
</ul>
<ul>
<li>Qt Audio Engine<ul>
<li>QML Types</li>
</ul>
</li>
</ul>
<h3 >Examples</h3>
<ul>
<li>Qt Multimedia Examples</li>
</ul>
<!-- @@@qtmultimedia-index.html -->
