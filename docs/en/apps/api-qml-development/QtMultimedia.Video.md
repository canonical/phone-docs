---
Title: QtMultimedia.Video
---

# QtMultimedia.Video

<span class="subtitle"></span>
<!-- $$$Video-brief -->
<p>A convenience type for showing a specified video. More...</p>
<!-- @@@Video -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtMultimedia 5.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#audioRole-prop">audioRole</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#autoLoad-prop">autoLoad</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#autoPlay-prop">autoPlay</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#availability-prop">availability</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#bufferProgress-prop">bufferProgress</a></b></b> : real</li>
<li class="fn"><b><b><a href="#duration-prop">duration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#error-prop">error</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#errorString-prop">errorString</a></b></b> : string</li>
<li class="fn"><b><b><a href="#fillMode-prop">fillMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#hasAudio-prop">hasAudio</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#hasVideo-prop">hasVideo</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#metaData-prop">metaData</a></b></b> : object</li>
<li class="fn"><b><b><a href="#muted-prop">muted</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#orientation-prop">orientation</a></b></b> : int</li>
<li class="fn"><b><b><a href="#playbackRate-prop">playbackRate</a></b></b> : real</li>
<li class="fn"><b><b><a href="#playbackState-prop">playbackState</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#playlist-prop">playlist</a></b></b> : Playlist</li>
<li class="fn"><b><b><a href="#position-prop">position</a></b></b> : int</li>
<li class="fn"><b><b><a href="#seekable-prop">seekable</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#source-prop">source</a></b></b> : url</li>
<li class="fn"><b><b><a href="#status-prop">status</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#volume-prop">volume</a></b></b> : real</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#paused-signal">paused</a></b></b>()</li>
<li class="fn"><b><b><a href="#playing-signal">playing</a></b></b>()</li>
<li class="fn"><b><b><a href="#stopped-signal">stopped</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#pause-method">pause</a></b></b>()</li>
<li class="fn"><b><b><a href="#play-method">play</a></b></b>()</li>
<li class="fn"><b><b><a href="#seek-method">seek</a></b></b>(<i>offset</i>)</li>
<li class="fn"><b><b><a href="#stop-method">stop</a></b></b>()</li>
<li class="fn"><b><b><a href="#supportedAudioRoles-method">supportedAudioRoles</a></b></b>()</li>
</ul>
<!-- $$$Video-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><code>Video</code> is a convenience type combining the functionality of a <a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a> and a <a href="QtMultimedia.VideoOutput.md">VideoOutput</a> into one. It provides simple video playback functionality without having to declare multiple types.</p>
<pre class="qml">import QtQuick 2.0
import QtMultimedia 5.0
<span class="type"><a href="index.html">Video</a></span> {
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
<span class="name">Keys</span>.onSpacePressed: <span class="name">video</span>.<span class="name">playbackState</span> <span class="operator">==</span> <span class="name">MediaPlayer</span>.<span class="name">PlayingState</span> ? <span class="name">video</span>.<span class="name">pause</span>() : <span class="name">video</span>.<span class="name">play</span>()
<span class="name">Keys</span>.onLeftPressed: <span class="name">video</span>.<span class="name">seek</span>(<span class="name">video</span>.<span class="name">position</span> <span class="operator">-</span> <span class="number">5000</span>)
<span class="name">Keys</span>.onRightPressed: <span class="name">video</span>.<span class="name">seek</span>(<span class="name">video</span>.<span class="name">position</span> <span class="operator">+</span> <span class="number">5000</span>)
}</pre>
<p><code>Video</code> supports untransformed, stretched, and uniformly scaled video presentation. For a description of stretched uniformly scaled presentation, see the <a href="#fillMode-prop">fillMode</a> property description.</p>
<p><b>See also </b><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a> and <a href="QtMultimedia.VideoOutput.md">VideoOutput</a>.</p>
<!-- @@@Video -->
<h2>Property Documentation</h2>
<!-- $$$audioRole -->
<table class="qmlname"><tr valign="top" id="audioRole-prop"><td class="tblQmlPropNode"><p><span class="name">audioRole</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the role of the audio stream. It can be set to specify the type of audio being played, allowing the system to make appropriate decisions when it comes to volume, routing or post-processing.</p>
<p>The audio role must be set before setting the source property.</p>
<p>Supported values can be retrieved with <a href="#supportedAudioRoles-method">supportedAudioRoles()</a>.</p>
<p>The value can be one of:</p>
<ul>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.UnknownRole - the role is unknown or undefined.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.MusicRole - music.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.VideoRole - soundtrack from a movie or a video.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.VoiceCommunicationRole - voice communications, such as telephony.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.AlarmRole - alarm.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.NotificationRole - notification, such as an incoming e-mail or a chat request.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.RingtoneRole - ringtone.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.AccessibilityRole - for accessibility, such as with a screen reader.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.SonificationRole - sonification, such as with user interface sounds.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.GameRole - game audio.</li>
</ul>
<p>This QML property was introduced in  Qt 5.6.</p>
<!-- @@@audioRole -->
<br/>
<!-- $$$autoLoad -->
<table class="qmlname"><tr valign="top" id="autoLoad-prop"><td class="tblQmlPropNode"><p><span class="name">autoLoad</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates if loading of media should begin immediately.</p>
<p>Defaults to true, if false media will not be loaded until playback is started.</p>
<!-- @@@autoLoad -->
<br/>
<!-- $$$autoPlay -->
<table class="qmlname"><tr valign="top" id="autoPlay-prop"><td class="tblQmlPropNode"><p><span class="name">autoPlay</span> : <span class="type">bool</span></p></td></tr></table><p>This property determines whether the media should begin playback automatically.</p>
<p>Setting to <code>true</code> also sets <a href="#autoLoad-prop">autoLoad</a> to <code>true</code>. The default is <code>false</code>.</p>
<!-- @@@autoPlay -->
<br/>
<!-- $$$availability -->
<table class="qmlname"><tr valign="top" id="availability-prop"><td class="tblQmlPropNode"><p><span class="name">availability</span> : <span class="type">enumeration</span></p></td></tr></table><p>Returns the availability state of the video instance.</p>
<p>This is one of:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td ><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.Available</td><td >The video player is available to use.</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.Busy</td><td >The video player is usually available, but some other process is utilizing the hardware necessary to play media.</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.Unavailable</td><td >There are no supported video playback facilities.</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.ResourceMissing</td><td >There is one or more resources missing, so the video player cannot be used. It may be possible to try again at a later time.</td></tr>
</table>
<!-- @@@availability -->
<br/>
<!-- $$$bufferProgress -->
<table class="qmlname"><tr valign="top" id="bufferProgress-prop"><td class="tblQmlPropNode"><p><span class="name">bufferProgress</span> : <span class="type">real</span></p></td></tr></table><p>This property holds how much of the data buffer is currently filled, from 0.0 (empty) to 1.0 (full).</p>
<!-- @@@bufferProgress -->
<br/>
<!-- $$$duration -->
<table class="qmlname"><tr valign="top" id="duration-prop"><td class="tblQmlPropNode"><p><span class="name">duration</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the duration of the media in milliseconds.</p>
<p>If the media doesn't have a fixed duration (a live stream for example) this will be 0.</p>
<!-- @@@duration -->
<br/>
<!-- $$$error -->
<table class="qmlname"><tr valign="top" id="error-prop"><td class="tblQmlPropNode"><p><span class="name">error</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the error state of the video. It can be one of:</p>
<ul>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.NoError - there is no current error.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.ResourceError - the video cannot be played due to a problem allocating resources.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.FormatError - the video format is not supported.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.NetworkError - the video cannot be played due to network issues.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.AccessDenied - the video cannot be played due to insufficient permissions.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.ServiceMissing - the video cannot be played because the media service could not be instantiated.</li>
</ul>
<!-- @@@error -->
<br/>
<!-- $$$errorString -->
<table class="qmlname"><tr valign="top" id="errorString-prop"><td class="tblQmlPropNode"><p><span class="name">errorString</span> : <span class="type">string</span></p></td></tr></table><p>This property holds a string describing the current error condition in more detail.</p>
<!-- @@@errorString -->
<br/>
<!-- $$$fillMode -->
<table class="qmlname"><tr valign="top" id="fillMode-prop"><td class="tblQmlPropNode"><p><span class="name">fillMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>Set this property to define how the video is scaled to fit the target area.</p>
<ul>
<li><a href="QtMultimedia.VideoOutput.md">VideoOutput</a>.Stretch - the video is scaled to fit</li>
<li><a href="QtMultimedia.VideoOutput.md">VideoOutput</a>.PreserveAspectFit - the video is scaled uniformly to fit without cropping</li>
<li><a href="QtMultimedia.VideoOutput.md">VideoOutput</a>.PreserveAspectCrop - the video is scaled uniformly to fill, cropping if necessary</li>
</ul>
<p>Because this type is for convenience in QML, it does not support enumerations directly, so enumerations from <code>VideoOutput</code> are used to access the available fill modes.</p>
<p>The default fill mode is preserveAspectFit.</p>
<!-- @@@fillMode -->
<br/>
<!-- $$$hasAudio -->
<table class="qmlname"><tr valign="top" id="hasAudio-prop"><td class="tblQmlPropNode"><p><span class="name">hasAudio</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the current media has audio content.</p>
<!-- @@@hasAudio -->
<br/>
<!-- $$$hasVideo -->
<table class="qmlname"><tr valign="top" id="hasVideo-prop"><td class="tblQmlPropNode"><p><span class="name">hasVideo</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the current media has video content.</p>
<!-- @@@hasVideo -->
<br/>
<!-- $$$metaData -->
<table class="qmlname"><tr valign="top" id="metaData-prop"><td class="tblQmlPropNode"><p><span class="name">metaData</span> : <span class="type">object</span></p></td></tr></table><p>This property holds the meta data for the current media.</p>
<p>See MediaPlayer.metaData for details about each meta data key.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData -->
<br/>
<!-- $$$muted -->
<table class="qmlname"><tr valign="top" id="muted-prop"><td class="tblQmlPropNode"><p><span class="name">muted</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the audio output is muted.</p>
<!-- @@@muted -->
<br/>
<!-- $$$orientation -->
<table class="qmlname"><tr valign="top" id="orientation-prop"><td class="tblQmlPropNode"><p><span class="name">orientation</span> : <span class="type">int</span></p></td></tr></table><p>The orientation of the <code>Video</code> in degrees. Only multiples of 90 degrees is supported, that is 0, 90, 180, 270, 360, etc.</p>
<!-- @@@orientation -->
<br/>
<!-- $$$playbackRate -->
<table class="qmlname"><tr valign="top" id="playbackRate-prop"><td class="tblQmlPropNode"><p><span class="name">playbackRate</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the rate at which video is played at as a multiple of the normal rate.</p>
<!-- @@@playbackRate -->
<br/>
<!-- $$$playbackState -->
<table class="qmlname"><tr valign="top" id="playbackState-prop"><td class="tblQmlPropNode"><p><span class="name">playbackState</span> : <span class="type">enumeration</span></p></td></tr></table><p>This read only property indicates the playback state of the media.</p>
<ul>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.PlayingState - the media is playing</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.PausedState - the media is paused</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.StoppedState - the media is stopped</li>
</ul>
<p>The default state is <a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.StoppedState.</p>
<!-- @@@playbackState -->
<br/>
<!-- $$$playlist -->
<table class="qmlname"><tr valign="top" id="playlist-prop"><td class="tblQmlPropNode"><p><span class="name">playlist</span> : <span class="type"><a href="QtMultimedia.Playlist.md">Playlist</a></span></p></td></tr></table><p>This property holds the playlist used by the media player.</p>
<p>Setting the playlist property resets the <a href="#source-prop">source</a> to an empty string.</p>
<p>This QML property was introduced in  Qt 5.6.</p>
<!-- @@@playlist -->
<br/>
<!-- $$$position -->
<table class="qmlname"><tr valign="top" id="position-prop"><td class="tblQmlPropNode"><p><span class="name">position</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the current playback position in milliseconds.</p>
<p>To change this position, use the <a href="#seek-method">seek()</a> method.</p>
<p><b>See also </b><a href="#seek-method">seek()</a>.</p>
<!-- @@@position -->
<br/>
<!-- $$$seekable -->
<table class="qmlname"><tr valign="top" id="seekable-prop"><td class="tblQmlPropNode"><p><span class="name">seekable</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the playback position of the video can be changed.</p>
<p>If true, calling the <a href="#seek-method">seek()</a> method will cause playback to seek to the new position.</p>
<!-- @@@seekable -->
<br/>
<!-- $$$source -->
<table class="qmlname"><tr valign="top" id="source-prop"><td class="tblQmlPropNode"><p><span class="name">source</span> : <span class="type">url</span></p></td></tr></table><p>This property holds the source URL of the media.</p>
<p>Setting the source property clears the current <a href="#playlist-prop">playlist</a>, if any.</p>
<!-- @@@source -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the status of media loading. It can be one of:</p>
<ul>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.NoMedia - no media has been set.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.Loading - the media is currently being loaded.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.Loaded - the media has been loaded.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.Buffering - the media is buffering data.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.Stalled - playback has been interrupted while the media is buffering data.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.Buffered - the media has buffered data.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.EndOfMedia - the media has played to the end.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.InvalidMedia - the media cannot be played.</li>
<li><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a>.UnknownStatus - the status of the media cannot be determined.</li>
</ul>
<!-- @@@status -->
<br/>
<!-- $$$volume -->
<table class="qmlname"><tr valign="top" id="volume-prop"><td class="tblQmlPropNode"><p><span class="name">volume</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the volume of the audio output, from 0.0 (silent) to 1.0 (maximum volume).</p>
<!-- @@@volume -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$paused -->
<table class="qmlname"><tr valign="top" id="paused-signal"><td class="tblQmlFuncNode"><p><span class="name">paused</span>()</p></td></tr></table><p>This signal is emitted when playback is paused.</p>
<p>The corresponding handler is <code>onPaused</code>.</p>
<!-- @@@paused -->
<br/>
<!-- $$$playing -->
<table class="qmlname"><tr valign="top" id="playing-signal"><td class="tblQmlFuncNode"><p><span class="name">playing</span>()</p></td></tr></table><p>This signal is emitted when playback is started or continued.</p>
<p>The corresponding handler is <code>onPlaying</code>.</p>
<!-- @@@playing -->
<br/>
<!-- $$$stopped -->
<table class="qmlname"><tr valign="top" id="stopped-signal"><td class="tblQmlFuncNode"><p><span class="name">stopped</span>()</p></td></tr></table><p>This signal is emitted when playback is stopped.</p>
<p>The corresponding handler is <code>onStopped</code>.</p>
<!-- @@@stopped -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$pause -->
<table class="qmlname"><tr valign="top" id="pause-method"><td class="tblQmlFuncNode"><p><span class="name">pause</span>()</p></td></tr></table><p>Pauses playback of the media.</p>
<!-- @@@pause -->
<br/>
<!-- $$$play -->
<table class="qmlname"><tr valign="top" id="play-method"><td class="tblQmlFuncNode"><p><span class="name">play</span>()</p></td></tr></table><p>Starts playback of the media.</p>
<!-- @@@play -->
<br/>
<!-- $$$seek -->
<table class="qmlname"><tr valign="top" id="seek-method"><td class="tblQmlFuncNode"><p><span class="name">seek</span>(<i> offset</i>)</p></td></tr></table><p>If the <a href="#seekable-prop">seekable</a> property is true, seeks the current playback position to <i>offset</i>.</p>
<p>Seeking may be asynchronous, so the <a href="#position-prop">position</a> property may not be updated immediately.</p>
<p><b>See also </b><a href="#seekable-prop">seekable</a> and <a href="#position-prop">position</a>.</p>
<!-- @@@seek -->
<br/>
<!-- $$$stop -->
<table class="qmlname"><tr valign="top" id="stop-method"><td class="tblQmlFuncNode"><p><span class="name">stop</span>()</p></td></tr></table><p>Stops playback of the media.</p>
<!-- @@@stop -->
<br/>
<!-- $$$supportedAudioRoles -->
<table class="qmlname"><tr valign="top" id="supportedAudioRoles-method"><td class="tblQmlFuncNode"><p><span class="name">supportedAudioRoles</span>()</p></td></tr></table><p>Returns a list of supported audio roles.</p>
<p>If setting the audio role is not supported, an empty list is returned.</p>
<p>This QML method was introduced in  Qt 5.6.</p>
<p><b>See also </b><a href="#audioRole-prop">audioRole</a>.</p>
<!-- @@@supportedAudioRoles -->
<br/>
