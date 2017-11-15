---
Title: QtMultimedia.multimediaoverview
---

# QtMultimedia.multimediaoverview

<span class="subtitle"></span>
<!-- $$$multimediaoverview.html-description -->
<p>Multimedia support in Qt is provided by the <a href="QtMultimedia.qtmultimedia-index.md">Qt Multimedia</a> module. The Qt Multimedia module provides a rich feature set that enables you to easily take advantage of a platform's multimedia capabilities such as media playback and the use of camera and radio devices.</p>
<h2 id="features">Features</h2>
<p>Here are some examples of what can be done with Qt Multimedia APIs:</p>
<ul>
<li>Access raw audio devices for input and output</li>
<li>Play low latency sound effects</li>
<li>Play media files in playlists (such as compressed audio or video files)</li>
<li>Record audio and compress it</li>
<li>Tune and listen to radio stations</li>
<li>Use a camera, including viewfinder, image capture, and movie recording</li>
<li>Play 3D positional audio with Qt Audio Engine</li>
<li>Decode audio media files into memory for processing</li>
<li>Accessing video frames or audio buffers as they are played or recorded</li>
</ul>
<h2 id="multimedia-components">Multimedia Components</h2>
<p>Qt's multimedia APIs are categorized into four main components. More information (including background information and class references) is available here:</p>
<ul>
<li><a href="QtMultimedia.audiooverview.md">Audio Overview</a></li>
<li><a href="QtMultimedia.videooverview.md">Video Overview</a></li>
<li><a href="QtMultimedia.cameraoverview.md">Camera Overview</a></li>
<li><a href="QtMultimedia.radiooverview.md">Radio Overview</a></li>
</ul>
<h2 id="multimedia-recipes">Multimedia Recipes</h2>
<p>For some quick recipes, look at the overviews above and consult this table:</p>
<table class="generic" width="70%">
<thead><tr class="qt-style"><th >Use case</th><th >Examples</th><th >QML Types</th><th >C++ Classes</th></tr></thead>
<tr valign="top"><td >Playing a sound effect</td><td ></td><td ></td><td >QSoundEffect</td></tr>
<tr valign="top"><td >Playing low latency audio</td><td >audioinput, spectrum</td><td ></td><td >QAudioOutput</td></tr>
<tr valign="top"><td >Playing encoded audio (MP3, AAC etc)</td><td >player</td><td >Audio, MediaPlayer</td><td >QMediaPlayer</td></tr>
<tr valign="top"><td >Accessing raw audio input data</td><td >spectrum, audioinput</td><td ></td><td >QAudioInput</td></tr>
<tr valign="top"><td >Recording encoded audio data</td><td >audiorecorder</td><td ></td><td >QAudioRecorder</td></tr>
<tr valign="top"><td >Discovering raw audio devices</td><td >audiodevices</td><td ></td><td >QAudioDeviceInfo</td></tr>
<tr valign="top"><td >Video Playback</td><td >player, qmlvideo, qmlvideofx</td><td >MediaPlayer, VideoOutput, Video</td><td >QMediaPlayer, QVideoWidget, QGraphicsVideoItem</td></tr>
<tr valign="top"><td >Video Processing</td><td >qmlvideofx</td><td >MediaPlayer, VideoOutput</td><td >QMediaPlayer, QAbstractVideoSurface, QVideoFrame</td></tr>
<tr valign="top"><td >Listening to the radio</td><td >declarative-radio</td><td >Radio, RadioData</td><td >QRadioTuner, QRadioData</td></tr>
<tr valign="top"><td >Accessing camera viewfinder</td><td >camera, declarative-camera</td><td >Camera, VideoOutput</td><td >QCamera, QVideoWidget, QGraphicsVideoItem</td></tr>
<tr valign="top"><td >Viewfinder processing</td><td ></td><td >Camera, VideoOutput</td><td >QCamera, QAbstractVideoSurface, QVideoFrame</td></tr>
<tr valign="top"><td >Capturing photos</td><td >camera, declarative-camera</td><td >Camera</td><td >QCamera, QCameraImageCapture</td></tr>
<tr valign="top"><td >Capturing movies</td><td >camera, declarative-camera</td><td >Camera</td><td >QCamera, QMediaRecorder</td></tr>
<tr valign="top"><td >3D sound sources</td><td ></td><td ><a href="QtMultimedia.qtmultimedia-audioengine-example.md">Audio Engine</a></td><td ><a href="QtAudioEngine.AudioEngine.md">AudioEngine</a>, <a href="QtAudioEngine.Sound.md">Sound</a></td><td ></td></tr>
</table>
<h2 id="limitations">Limitations</h2>
<p>The Qt Multimedia APIs build upon the multimedia framework of the underlying platform. This can mean that support for various codecs or containers can vary between machines, depending on what the end user has installed.</p>
<h2 id="advanced-usage">Advanced Usage</h2>
<p>For developers wishing to access some platform specific settings, or to port the Qt Multimedia APIs to a new platform or technology, see <a href="QtMultimedia.multimediabackend.md">Multimedia Backend Development</a>.</p>
<h2 id="changes-from-previous-versions">Changes from Previous Versions</h2>
<p>If you previously used Qt Multimedia in Qt 4, or used Qt Multimedia Kit in Qt Mobility, please see <a href="QtMultimedia.changes.md">Changes in Qt Multimedia</a> for more information on what changed, and what you might need to change when porting code.</p>
<h2 id="reference-documentation">Reference Documentation</h2>
<h3 >QML Types</h3>
<p>The QML types are accessed by using:</p>
<pre class="cpp">import <span class="type">QtMultimedia</span> <span class="number">5.4</span></pre>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p><a href="QtMultimedia.Audio.md">Audio</a></p></td><td class="tblDescr"><p>Add audio playback to a scene</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtMultimedia.Camera.md">Camera</a></p></td><td class="tblDescr"><p>Access viewfinder frames, and take photos and movies</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="QtMultimedia.CameraCapture.md">CameraCapture</a></p></td><td class="tblDescr"><p>An interface for capturing camera images</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtMultimedia.CameraExposure.md">CameraExposure</a></p></td><td class="tblDescr"><p>An interface for exposure related camera settings</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="QtMultimedia.CameraFlash.md">CameraFlash</a></p></td><td class="tblDescr"><p>An interface for flash related camera settings</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtMultimedia.CameraFocus.md">CameraFocus</a></p></td><td class="tblDescr"><p>An interface for focus related camera settings</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="QtMultimedia.CameraImageProcessing.md">CameraImageProcessing</a></p></td><td class="tblDescr"><p>An interface for camera capture related settings</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtMultimedia.CameraRecorder.md">CameraRecorder</a></p></td><td class="tblDescr"><p>Controls video recording with the Camera</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a></p></td><td class="tblDescr"><p>Add media playback to a scene</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtMultimedia.Playlist.md">Playlist</a></p></td><td class="tblDescr"><p>For specifying a list of media to be played</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="QtMultimedia.PlaylistItem.md">PlaylistItem</a></p></td><td class="tblDescr"><p>Defines an item in a Playlist</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtMultimedia.QtMultimedia.md">QtMultimedia</a></p></td><td class="tblDescr"><p>Provides a global object with useful functions from Qt Multimedia</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="QtMultimedia.Radio.md">Radio</a></p></td><td class="tblDescr"><p>Access radio functionality from a QML application</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtMultimedia.RadioData.md">RadioData</a></p></td><td class="tblDescr"><p>Access RDS data from a QML application</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="QtMultimedia.SoundEffect.md">SoundEffect</a></p></td><td class="tblDescr"><p>Type provides a way to play sound effects in QML</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtMultimedia.Torch.md">Torch</a></p></td><td class="tblDescr"><p>Simple control over torch functionality</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="QtMultimedia.Video.md">Video</a></p></td><td class="tblDescr"><p>A convenience type for showing a specified video</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtMultimedia.VideoOutput.md">VideoOutput</a></p></td><td class="tblDescr"><p>Render video or camera viewfinder</p></td></tr>
</table>
<p>The following types are accessed by using Qt Audio Engine:</p>
<pre class="cpp">import <span class="type">QtAudioEngine</span> <span class="number">1.0</span></pre>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p><a href="QtAudioEngine.AttenuationModelInverse.md">AttenuationModelInverse</a></p></td><td class="tblDescr"><p>Defines a non-linear attenuation curve for a Sound</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtAudioEngine.AttenuationModelLinear.md">AttenuationModelLinear</a></p></td><td class="tblDescr"><p>Defines a linear attenuation curve for a Sound</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="QtAudioEngine.AudioCategory.md">AudioCategory</a></p></td><td class="tblDescr"><p>Control all active sound instances by group</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtAudioEngine.AudioEngine.md">AudioEngine</a></p></td><td class="tblDescr"><p>Organize all your 3d audio content in one place</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="QtAudioEngine.AudioListener.md">AudioListener</a></p></td><td class="tblDescr"><p>Control global listener parameters</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtAudioEngine.AudioSample.md">AudioSample</a></p></td><td class="tblDescr"><p>Load audio samples, mostly .wav</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="QtAudioEngine.PlayVariation.md">PlayVariation</a></p></td><td class="tblDescr"><p>Define a playback variation for sounds. So each time the playback of the same sound can be a slightly different even with the same AudioSample</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtAudioEngine.Sound.md">Sound</a></p></td><td class="tblDescr"><p>Define a variety of samples and parameters to be used for SoundInstance</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="QtAudioEngine.SoundInstance.md">SoundInstance</a></p></td><td class="tblDescr"><p>Play 3d audio content</p></td></tr>
</table>
<h3 >Multimedia Classes</h3>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p>QAbstractPlanarVideoBuffer</p></td><td class="tblDescr"><p>Abstraction for planar video data</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QAbstractVideoBuffer</p></td><td class="tblDescr"><p>Abstraction for video data</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QAbstractVideoSurface</p></td><td class="tblDescr"><p>Base class for video presentation surfaces</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QAudio</p></td><td class="tblDescr"><p>Contains enums used by the audio classes</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QAudioBuffer</p></td><td class="tblDescr"><p>Represents a collection of audio samples with a specific format and sample rate</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QAudioBuffer::StereoFrame</p></td><td class="tblDescr"><p>Simple wrapper for a stereo audio frame</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QAudioDecoder</p></td><td class="tblDescr"><p>Allows decoding audio</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QAudioDeviceInfo</p></td><td class="tblDescr"><p>Interface to query audio devices and their functionality</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QAudioEncoderSettings</p></td><td class="tblDescr"><p>Set of audio encoder settings</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QAudioFormat</p></td><td class="tblDescr"><p>Stores audio stream parameter information</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QAudioInput</p></td><td class="tblDescr"><p>Interface for receiving audio data from an audio input device</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QAudioOutput</p></td><td class="tblDescr"><p>Interface for sending audio data to an audio output device</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QAudioProbe</p></td><td class="tblDescr"><p>Allows you to monitor audio being played or recorded</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QAudioRecorder</p></td><td class="tblDescr"><p>Used for the recording of audio</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QCamera</p></td><td class="tblDescr"><p>Interface for system camera devices</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QCameraExposure</p></td><td class="tblDescr"><p>Interface for exposure related camera settings</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QCameraFocus</p></td><td class="tblDescr"><p>Interface for focus and zoom related camera settings</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QCameraFocusZone</p></td><td class="tblDescr"><p>Information on zones used for autofocusing a camera</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QCameraImageCapture</p></td><td class="tblDescr"><p>Used for the recording of media content</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QCameraImageProcessing</p></td><td class="tblDescr"><p>Interface for image processing related camera settings</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QCameraInfo</p></td><td class="tblDescr"><p>General information about camera devices</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QGraphicsEffect</p></td><td class="tblDescr"><p>The base class for all graphics effects</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QImageEncoderSettings</p></td><td class="tblDescr"><p>Set of image encoder settings</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QMediaBindableInterface</p></td><td class="tblDescr"><p>The base class for objects extending media objects functionality</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QMediaContent</p></td><td class="tblDescr"><p>Access to the resources relating to a media content</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QMediaControl</p></td><td class="tblDescr"><p>Base interface for media service controls</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QMediaMetaData</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QMediaObject</p></td><td class="tblDescr"><p>Common base for multimedia objects</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QMediaPlayer</p></td><td class="tblDescr"><p>Allows the playing of a media source</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QMediaPlaylist</p></td><td class="tblDescr"><p>List of media content to play</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QMediaRecorder</p></td><td class="tblDescr"><p>Used for the recording of media content</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QMediaResource</p></td><td class="tblDescr"><p>Description of a media resource</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QMediaService</p></td><td class="tblDescr"><p>Common base class for media service implementations</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QMediaTimeInterval</p></td><td class="tblDescr"><p>Represents a time interval with integer precision</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QMediaTimeRange</p></td><td class="tblDescr"><p>Represents a set of zero or more disjoint time intervals</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QMultimedia</p></td><td class="tblDescr"><p>Contains miscellaneous identifiers used throughout the Qt Multimedia library</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QRadioData</p></td><td class="tblDescr"><p>Interfaces to the RDS functionality of the system radio</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QRadioTuner</p></td><td class="tblDescr"><p>Interface to the systems analog radio device</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QSound</p></td><td class="tblDescr"><p>Method to play .wav sound files</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QSoundEffect</p></td><td class="tblDescr"><p>Way to play low latency sound effects</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QStaticText</p></td><td class="tblDescr"><p>Enables optimized drawing of text when the text and its layout is updated rarely</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QVideoEncoderSettings</p></td><td class="tblDescr"><p>Set of video encoder settings</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QVideoFrame</p></td><td class="tblDescr"><p>Represents a frame of video data</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QVideoProbe</p></td><td class="tblDescr"><p>Allows you to monitor video frames being played or recorded</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QVideoSurfaceFormat</p></td><td class="tblDescr"><p>Specifies the stream format of a video presentation surface</p></td></tr>
</table>
<!-- @@@multimediaoverview.html -->
