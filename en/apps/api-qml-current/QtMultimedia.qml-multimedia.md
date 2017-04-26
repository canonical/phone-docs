---
Title: QtMultimedia.qml-multimedia
---

# QtMultimedia.qml-multimedia

<span class="subtitle"></span>
<!-- $$$qml-multimedia.html-description -->
<h2 id="overview">Overview</h2>
<p>The Qt Multimedia module gives developers a simplified way to use audio and video playback, and access camera functionality. The Multimedia QML API provides a QML friendly interface to these features.</p>
<h2 id="types">Types</h2>
<h3 >Audio</h3>
<p><a href="#audio">Audio</a> is an easy way to add audio playback to a Qt Quick scene. Qt Multimedia provides properties for control, methods (functions) and signals.</p>
<p>The code extract below shows the creation and use of an Audio instance.</p>
<pre class="qml">import QtQuick 2.0
import QtMultimedia 5.0
<span class="comment">// ...</span>
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">640</span>
<span class="name">height</span>: <span class="number">360</span>
<span class="type"><a href="QtMultimedia.Audio.md">Audio</a></span> {
<span class="name">id</span>: <span class="name">playMusic</span>
<span class="name">source</span>: <span class="string">&quot;music.wav&quot;</span>
}
<span class="type">MouseArea</span> {
<span class="name">id</span>: <span class="name">playArea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onPressed</span>:  { <span class="name">playMusic</span>.<span class="name">play</span>() }
}
}</pre>
<p>The snippet above shows how the inclusion of <i>playMusic</i> enables audio features on the type that contains it. So that when the parent's MouseArea is clicked the <a href="QtMultimedia.Audio.md#play-method">play()</a> method of Audio is run. Other typical audio control methods are available such as <a href="QtMultimedia.Audio.md#pause-method">pause()</a> and <a href="QtMultimedia.Audio.md#stop-method">stop()</a>.</p>
<p>Much of the getting / setting of <a href="#audio">Audio</a> parameters is done through properties. These include</p>
<table class="generic" width="70%">
<thead><tr class="qt-style"><th >Property</th><th >Description</th></tr></thead>
<tr valign="top"><td ><a href="QtMultimedia.Audio.md#source-prop">source</a></td><td >The source URL of the media.</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.Audio.md#autoLoad-prop">autoLoad</a></td><td >Indicates if loading of media should begin immediately.</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.Audio.md#playing-signal">playing</a></td><td >Indicates that the media is playing.</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.Audio.md#paused-signal">paused</a></td><td >The media is paused.</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.Audio.md#status-prop">status</a></td><td >The status of media loading.</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.Audio.md#duration-prop">duration</a></td><td >Amount of time in milliseconds the media will play.</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.Audio.md#position-prop">position</a></td><td >Current position in the media in milliseconds of play.</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.Audio.md#volume-prop">volume</a></td><td >Audio output volume: from 0.0 (silent) to 1.0 (maximum)</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.Audio.md#muted-prop">muted</a></td><td >Indicates audio is muted.</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.Audio.md#bufferProgress-prop">bufferProgress</a></td><td >Indicates how full the data buffer is: 0.0 (empty) to 1.0 (full).</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.Audio.md#seekable-prop">seekable</a></td><td >Indicates whether the audio position can be changed.</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.Audio.md#playbackRate-prop">playbackRate</a></td><td >The rate at which audio is played at as a multiple of the normal rate.</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.Audio.md#error-signal">error</a></td><td >An error code for the error state including NoError</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.Audio.md#errorString-prop">errorString</a></td><td >A description of the current error condition.</td></tr>
</table>
<p>The set of signals available allow the developer to create custom behavior when the following events occur,</p>
<table class="generic" width="70%">
<thead><tr class="qt-style"><th >Signal</th><th >Description</th></tr></thead>
<tr valign="top"><td ><a href="QtMultimedia.Audio.md#playing-signal">playing</a></td><td >Called when playback is started, or when resumed from paused state.</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.Audio.md#paused-signal">paused</a></td><td >Called when playback is paused.</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.Audio.md#stopped-signal">stopped</a></td><td >Called when playback is stopped.</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.Audio.md#error-signal">error</a></td><td >Called when the specified error occurs.</td></tr>
</table>
<h3 >Camera</h3>
<p><a href="#camera">Camera</a> enables still image and video capture using QML. It has a number of properties that help setting it up.</p>
<p>The details of using a <a href="#camera">Camera</a> are described in further depth in the <a href="QtMultimedia.cameraoverview.md">Camera Overview</a> and in the corresponding reference documentation.</p>
<h3 >Video</h3>
<p>Adding video playback, with sound, to a Qt Quick scene is also easy. The process is very similar to that of Audio above, in fact <a href="#video">Video</a> shares many of the property names, methods and signals. Here is the equivalent sample code to implement video playback in a scene</p>
<pre class="qml"><span class="type"><a href="QtMultimedia.Video.md">Video</a></span> {
<span class="name">id</span>: <span class="name">video</span>
<span class="name">width</span> : <span class="number">800</span>
<span class="name">height</span> : <span class="number">600</span>
<span class="name">source</span>: <span class="string">&quot;video.avi&quot;</span>
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: {
<span class="name">video</span>.<span class="name">play</span>()
}
}
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">Keys</span>.onSpacePressed: <span class="name">video</span>.<span class="name">paused</span> <span class="operator">=</span> !<span class="name">video</span>.<span class="name">paused</span>
<span class="name">Keys</span>.onLeftPressed: <span class="name">video</span>.<span class="name">position</span> <span class="operator">-=</span> <span class="number">5000</span>
<span class="name">Keys</span>.onRightPressed: <span class="name">video</span>.<span class="name">position</span> <span class="operator">+=</span> <span class="number">5000</span>
}</pre>
<p>There are similar features like <a href="QtMultimedia.Video.md#play-method">play()</a> with new features specific to video.</p>
<p>In the above sample when the parent of MouseArea is clicked, an area of 800x600 pixels with an id of 'video', the source &quot;video.avi&quot; will play in that area. Notice also that signals for the Keys have been defined so that a spacebar will toggle the pause button; the left arrow will move the current position in the video to 5 seconds previously; and the right arrow will advance the current position in the video by 5 seconds.</p>
<p>Most of the differences will obviously be about video control and information. There are many properties associated with <a href="#video">Video</a>, most of them deal with meta-data, control of the video media and aspects of presentation.</p>
<h3 >SoundEffect</h3>
<p><a href="#soundeffect">SoundEffect</a> provides a way to play short sound effects, like in video games. Multiple sound effect instances can be played simultaneously. You should use <a href="#audio">Audio</a> for music playback.</p>
<pre class="qml">import QtQuick 2.0
import QtMultimedia 5.0
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">640</span>
<span class="name">height</span>: <span class="number">360</span>
<span class="type"><a href="QtMultimedia.SoundEffect.md">SoundEffect</a></span> {
<span class="name">id</span>: <span class="name">effect</span>
<span class="name">source</span>: <span class="string">&quot;test.wav&quot;</span>
}
<span class="type">MouseArea</span> {
<span class="name">id</span>: <span class="name">playArea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onPressed</span>:  { <span class="name">effect</span>.<span class="name">play</span>() }
}
}</pre>
<p>In the above sample the sound effect will be played when the MouseArea is clicked.</p>
<p>For a complete description of this type, see <a href="#soundeffect">SoundEffect</a></p>
<h2 id="multimedia-qml-types">Multimedia QML Types</h2>
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
<!-- @@@qml-multimedia.html -->
