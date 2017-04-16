---
Title: QtMultimedia.MediaPlayer
---

# QtMultimedia.MediaPlayer

<span class="subtitle"></span>
<!-- $$$MediaPlayer-brief -->
<p>Add media playback to a scene. More...</p>
<!-- @@@MediaPlayer -->
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
<li class="fn"><b><b><a href="#hasAudio-prop">hasAudio</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#hasVideo-prop">hasVideo</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#loops-prop">loops</a></b></b> : int</li>
<li class="fn"><b><b><a href="#metaData.albumArtist-prop">metaData.albumArtist</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.albumTitle-prop">metaData.albumTitle</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.audioBitRate-prop">metaData.audioBitRate</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.audioCodec-prop">metaData.audioCodec</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.author-prop">metaData.author</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.averageLevel-prop">metaData.averageLevel</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.category-prop">metaData.category</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.channelCount-prop">metaData.channelCount</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.chapterNumber-prop">metaData.chapterNumber</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.comment-prop">metaData.comment</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.composer-prop">metaData.composer</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.conductor-prop">metaData.conductor</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.contributingArtist-prop">metaData.contributingArtist</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.copyright-prop">metaData.copyright</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.coverArtUrlLarge-prop">metaData.coverArtUrlLarge</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.coverArtUrlSmall-prop">metaData.coverArtUrlSmall</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.date-prop">metaData.date</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.description-prop">metaData.description</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.director-prop">metaData.director</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.genre-prop">metaData.genre</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.keywords-prop">metaData.keywords</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.language-prop">metaData.language</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.leadPerformer-prop">metaData.leadPerformer</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.lyrics-prop">metaData.lyrics</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.mediaType-prop">metaData.mediaType</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.mood-prop">metaData.mood</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.parentalRating-prop">metaData.parentalRating</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.peakValue-prop">metaData.peakValue</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.pixelAspectRatio-prop">metaData.pixelAspectRatio</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.posterUrl-prop">metaData.posterUrl</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.publisher-prop">metaData.publisher</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.ratingOrganization-prop">metaData.ratingOrganization</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.resolution-prop">metaData.resolution</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.sampleRate-prop">metaData.sampleRate</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.size-prop">metaData.size</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.subTitle-prop">metaData.subTitle</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.title-prop">metaData.title</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.trackCount-prop">metaData.trackCount</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.trackNumber-prop">metaData.trackNumber</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.userRating-prop">metaData.userRating</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.videoBitRate-prop">metaData.videoBitRate</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.videoCodec-prop">metaData.videoCodec</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.videoFrameRate-prop">metaData.videoFrameRate</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.writer-prop">metaData.writer</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.year-prop">metaData.year</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#muted-prop">muted</a></b></b> : bool</li>
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
<li class="fn"><b><b><a href="#error-signal">error</a></b></b>(error, errorString)</li>
<li class="fn"><b><b><a href="#paused-signal">paused</a></b></b>()</li>
<li class="fn"><b><b><a href="#playbackStateChanged-signal">playbackStateChanged</a></b></b>()</li>
<li class="fn"><b><b><a href="#playing-signal">playing</a></b></b>()</li>
<li class="fn"><b><b><a href="#stopped-signal">stopped</a></b></b>()</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#pause-method">pause</a></b></b>()</li>
<li class="fn"><b><b><a href="#play-method">play</a></b></b>()</li>
<li class="fn"><b><b><a href="#seek-method">seek</a></b></b>(offset)</li>
<li class="fn"><b><b><a href="#stop-method">stop</a></b></b>()</li>
<li class="fn">list&lt;int&gt; <b><b><a href="#supportedAudioRoles-method">supportedAudioRoles</a></b></b>()</li>
</ul>
<!-- $$$MediaPlayer-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>MediaPlayer is part of the <b>QtMultimedia 5.0</b> module.</p>
<pre class="qml">import QtQuick 2.0
import QtMultimedia 5.0
<span class="type">Text</span> {
<span class="name">text</span>: <span class="string">&quot;Click Me!&quot;</span>;
<span class="name">font</span>.pointSize: <span class="number">24</span>;
<span class="name">width</span>: <span class="number">150</span>; <span class="name">height</span>: <span class="number">50</span>;
<span class="type"><a href="index.html">MediaPlayer</a></span> {
<span class="name">id</span>: <span class="name">playMusic</span>
<span class="name">source</span>: <span class="string">&quot;music.wav&quot;</span>
}
<span class="type">MouseArea</span> {
<span class="name">id</span>: <span class="name">playArea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onPressed</span>:  { <span class="name">playMusic</span>.<span class="name">play</span>() }
}
}</pre>
<p>You can use <a href="index.html">MediaPlayer</a> by itself to play audio content (like <a href="QtMultimedia.qml-multimedia.md#audio">Audio</a>), or you can use it in conjunction with a <a href="QtMultimedia.VideoOutput.md">VideoOutput</a> for rendering video.</p>
<pre class="qml">import QtQuick 2.0
import QtMultimedia 5.0
<span class="type">Item</span> {
<span class="type"><a href="index.html">MediaPlayer</a></span> {
<span class="name">id</span>: <span class="name">mediaplayer</span>
<span class="name">source</span>: <span class="string">&quot;groovy_video.mp4&quot;</span>
}
<span class="type"><a href="QtMultimedia.VideoOutput.md">VideoOutput</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">source</span>: <span class="name">mediaplayer</span>
}
<span class="type">MouseArea</span> {
<span class="name">id</span>: <span class="name">playArea</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onPressed</span>: <span class="name">mediaplayer</span>.<span class="name">play</span>();
}
}</pre>
<p><b>See also </b><a href="QtMultimedia.VideoOutput.md">VideoOutput</a>.</p>
<!-- @@@MediaPlayer -->
<h2>Property Documentation</h2>
<!-- $$$audioRole -->
<table class="qmlname"><tr valign="top" id="audioRole-prop"><td class="tblQmlPropNode"><p><span class="name">audioRole</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the role of the audio stream. It can be set to specify the type of audio being played, allowing the system to make appropriate decisions when it comes to volume, routing or post-processing.</p>
<p>The audio role must be set before setting the source property.</p>
<p>Supported values can be retrieved with <a href="#supportedAudioRoles-method">supportedAudioRoles()</a>.</p>
<p>The value can be one of:</p>
<ul>
<li>UnknownRole - the role is unknown or undefined.</li>
<li>MusicRole - music.</li>
<li>VideoRole - soundtrack from a movie or a video.</li>
<li>VoiceCommunicationRole - voice communications, such as telephony.</li>
<li>AlarmRole - alarm.</li>
<li>NotificationRole - notification, such as an incoming e-mail or a chat request.</li>
<li>RingtoneRole - ringtone.</li>
<li>AccessibilityRole - for accessibility, such as with a screen reader.</li>
<li>SonificationRole - sonification, such as with user interface sounds.</li>
<li>GameRole - game audio.</li>
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
<table class="qmlname"><tr valign="top" id="autoPlay-prop"><td class="tblQmlPropNode"><p><span class="name">autoPlay</span> : <span class="type">bool</span></p></td></tr></table><p>This property controls whether the media will begin to play on start up.</p>
<p>Defaults to <code>false</code>. If set to <code>true</code>, the value of <a href="#autoLoad-prop">autoLoad</a> will be overwritten to <code>true</code>.</p>
<!-- @@@autoPlay -->
<br/>
<!-- $$$availability -->
<table class="qmlname"><tr valign="top" id="availability-prop"><td class="tblQmlPropNode"><p><span class="name">availability</span> : <span class="type">enumeration</span></p></td></tr></table><p>Returns the availability state of the media player.</p>
<p>This is one of:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >Available</td><td >The media player is available to use.</td></tr>
<tr valign="top"><td >Busy</td><td >The media player is usually available, but some other process is utilizing the hardware necessary to play media.</td></tr>
<tr valign="top"><td >Unavailable</td><td >There are no supported media playback facilities.</td></tr>
<tr valign="top"><td >ResourceMissing</td><td >There is one or more resources missing, so the media player cannot be used. It may be possible to try again at a later time.</td></tr>
</table>
<!-- @@@availability -->
<br/>
<!-- $$$bufferProgress -->
<table class="qmlname"><tr valign="top" id="bufferProgress-prop"><td class="tblQmlPropNode"><p><span class="name">bufferProgress</span> : <span class="type">real</span></p></td></tr></table><p>This property holds how much of the data buffer is currently filled, from <code>0.0</code> (empty) to <code>1.0</code> (full).</p>
<p>Playback can start or resume only when the buffer is entirely filled, in which case the status is <code>MediaPlayer.Buffered</code> or <code>MediaPlayer.Buffering</code>. A value lower than <code>1.0</code> implies that the status is <code>MediaPlayer.Stalled</code>.</p>
<p><b>See also </b><a href="#status-prop">status</a>.</p>
<!-- @@@bufferProgress -->
<br/>
<!-- $$$duration -->
<table class="qmlname"><tr valign="top" id="duration-prop"><td class="tblQmlPropNode"><p><span class="name">duration</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the duration of the media in milliseconds.</p>
<p>If the media doesn't have a fixed duration (a live stream for example) this will be 0.</p>
<!-- @@@duration -->
<br/>
<!-- $$$error -->
<table class="qmlname"><tr valign="top" id="error-prop"><td class="tblQmlPropNode"><p><span class="name">error</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the error state of the audio. It can be one of:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >NoError</td><td >There is no current error.</td></tr>
<tr valign="top"><td >ResourceError</td><td >The audio cannot be played due to a problem allocating resources.</td></tr>
<tr valign="top"><td >FormatError</td><td >The audio format is not supported.</td></tr>
<tr valign="top"><td >NetworkError</td><td >The audio cannot be played due to network issues.</td></tr>
<tr valign="top"><td >AccessDenied</td><td >The audio cannot be played due to insufficient permissions.</td></tr>
<tr valign="top"><td >ServiceMissing</td><td >The audio cannot be played because the media service could not be instantiated.</td></tr>
</table>
<!-- @@@error -->
<br/>
<!-- $$$errorString -->
<table class="qmlname"><tr valign="top" id="errorString-prop"><td class="tblQmlPropNode"><p><span class="name">errorString</span> : <span class="type">string</span></p></td></tr></table><p>This property holds a string describing the current error condition in more detail.</p>
<!-- @@@errorString -->
<br/>
<!-- $$$hasAudio -->
<table class="qmlname"><tr valign="top" id="hasAudio-prop"><td class="tblQmlPropNode"><p><span class="name">hasAudio</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the media contains audio.</p>
<!-- @@@hasAudio -->
<br/>
<!-- $$$hasVideo -->
<table class="qmlname"><tr valign="top" id="hasVideo-prop"><td class="tblQmlPropNode"><p><span class="name">hasVideo</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the media contains video.</p>
<!-- @@@hasVideo -->
<br/>
<!-- $$$loops -->
<table class="qmlname"><tr valign="top" id="loops-prop"><td class="tblQmlPropNode"><p><span class="name">loops</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the number of times the media is played. A value of <code>0</code> or <code>1</code> means the media will be played only once; set to <code>MediaPlayer.Infinite</code> to enable infinite looping.</p>
<p>The value can be changed while the media is playing, in which case it will update the remaining loops to the new value.</p>
<p>The default is <code>1</code>.</p>
<!-- @@@loops -->
<br/>
<!-- $$$metaData.albumArtist -->
<table class="qmlname"><tr valign="top" id="metaData.albumArtist-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.albumArtist</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the name of the principal artist of the album the media belongs to.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.albumArtist -->
<br/>
<!-- $$$metaData.albumTitle -->
<table class="qmlname"><tr valign="top" id="metaData.albumTitle-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.albumTitle</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the title of the album the media belongs to.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.albumTitle -->
<br/>
<!-- $$$metaData.audioBitRate -->
<table class="qmlname"><tr valign="top" id="metaData.audioBitRate-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.audioBitRate</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the bit rate of the media's audio stream in bits per second.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.audioBitRate -->
<br/>
<!-- $$$metaData.audioCodec -->
<table class="qmlname"><tr valign="top" id="metaData.audioCodec-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.audioCodec</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the encoding of the media audio stream.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.audioCodec -->
<br/>
<!-- $$$metaData.author -->
<table class="qmlname"><tr valign="top" id="metaData.author-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.author</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the author of the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.author -->
<br/>
<!-- $$$metaData.averageLevel -->
<table class="qmlname"><tr valign="top" id="metaData.averageLevel-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.averageLevel</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the average volume level of the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.averageLevel -->
<br/>
<!-- $$$metaData.category -->
<table class="qmlname"><tr valign="top" id="metaData.category-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.category</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the category of the media</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.category -->
<br/>
<!-- $$$metaData.channelCount -->
<table class="qmlname"><tr valign="top" id="metaData.channelCount-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.channelCount</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the number of channels in the media's audio stream.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.channelCount -->
<br/>
<!-- $$$metaData.chapterNumber -->
<table class="qmlname"><tr valign="top" id="metaData.chapterNumber-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.chapterNumber</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the chapter number of the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.chapterNumber -->
<br/>
<!-- $$$metaData.comment -->
<table class="qmlname"><tr valign="top" id="metaData.comment-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.comment</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds a user comment about the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.comment -->
<br/>
<!-- $$$metaData.composer -->
<table class="qmlname"><tr valign="top" id="metaData.composer-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.composer</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the composer of the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.composer -->
<br/>
<!-- $$$metaData.conductor -->
<table class="qmlname"><tr valign="top" id="metaData.conductor-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.conductor</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the conductor of the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.conductor -->
<br/>
<!-- $$$metaData.contributingArtist -->
<table class="qmlname"><tr valign="top" id="metaData.contributingArtist-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.contributingArtist</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the names of artists contributing to the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.contributingArtist -->
<br/>
<!-- $$$metaData.copyright -->
<table class="qmlname"><tr valign="top" id="metaData.copyright-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.copyright</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the media's copyright notice.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.copyright -->
<br/>
<!-- $$$metaData.coverArtUrlLarge -->
<table class="qmlname"><tr valign="top" id="metaData.coverArtUrlLarge-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.coverArtUrlLarge</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the URL of a large cover art image.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.coverArtUrlLarge -->
<br/>
<!-- $$$metaData.coverArtUrlSmall -->
<table class="qmlname"><tr valign="top" id="metaData.coverArtUrlSmall-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.coverArtUrlSmall</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the URL of a small cover art image.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.coverArtUrlSmall -->
<br/>
<!-- $$$metaData.date -->
<table class="qmlname"><tr valign="top" id="metaData.date-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.date</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the date of the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.date -->
<br/>
<!-- $$$metaData.description -->
<table class="qmlname"><tr valign="top" id="metaData.description-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.description</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds a description of the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.description -->
<br/>
<!-- $$$metaData.director -->
<table class="qmlname"><tr valign="top" id="metaData.director-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.director</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the director of the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.director -->
<br/>
<!-- $$$metaData.genre -->
<table class="qmlname"><tr valign="top" id="metaData.genre-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.genre</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the genre of the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.genre -->
<br/>
<!-- $$$metaData.keywords -->
<table class="qmlname"><tr valign="top" id="metaData.keywords-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.keywords</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds a list of keywords describing the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.keywords -->
<br/>
<!-- $$$metaData.language -->
<table class="qmlname"><tr valign="top" id="metaData.language-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.language</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the language of the media, as an ISO 639-2 code.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.language -->
<br/>
<!-- $$$metaData.leadPerformer -->
<table class="qmlname"><tr valign="top" id="metaData.leadPerformer-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.leadPerformer</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the lead performer in the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.leadPerformer -->
<br/>
<!-- $$$metaData.lyrics -->
<table class="qmlname"><tr valign="top" id="metaData.lyrics-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.lyrics</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the lyrics to the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.lyrics -->
<br/>
<!-- $$$metaData.mediaType -->
<table class="qmlname"><tr valign="top" id="metaData.mediaType-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.mediaType</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the type of the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.mediaType -->
<br/>
<!-- $$$metaData.mood -->
<table class="qmlname"><tr valign="top" id="metaData.mood-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.mood</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the mood of the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.mood -->
<br/>
<!-- $$$metaData.parentalRating -->
<table class="qmlname"><tr valign="top" id="metaData.parentalRating-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.parentalRating</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the parental rating of the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.parentalRating -->
<br/>
<!-- $$$metaData.peakValue -->
<table class="qmlname"><tr valign="top" id="metaData.peakValue-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.peakValue</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the peak volume of media's audio stream.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.peakValue -->
<br/>
<!-- $$$metaData.pixelAspectRatio -->
<table class="qmlname"><tr valign="top" id="metaData.pixelAspectRatio-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.pixelAspectRatio</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the pixel aspect ratio of an image or video.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.pixelAspectRatio -->
<br/>
<!-- $$$metaData.posterUrl -->
<table class="qmlname"><tr valign="top" id="metaData.posterUrl-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.posterUrl</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the URL of a poster image.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.posterUrl -->
<br/>
<!-- $$$metaData.publisher -->
<table class="qmlname"><tr valign="top" id="metaData.publisher-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.publisher</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the publisher of the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.publisher -->
<br/>
<!-- $$$metaData.ratingOrganization -->
<table class="qmlname"><tr valign="top" id="metaData.ratingOrganization-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.ratingOrganization</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the name of the rating organization responsible for the parental rating of the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.ratingOrganization -->
<br/>
<!-- $$$metaData.resolution -->
<table class="qmlname"><tr valign="top" id="metaData.resolution-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.resolution</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the dimension of an image or video.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.resolution -->
<br/>
<!-- $$$metaData.sampleRate -->
<table class="qmlname"><tr valign="top" id="metaData.sampleRate-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.sampleRate</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the sample rate of the media's audio stream in hertz.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.sampleRate -->
<br/>
<!-- $$$metaData.size -->
<table class="qmlname"><tr valign="top" id="metaData.size-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.size</span> : <span class="type">variant</span></p></td></tr></table><p>This property property holds the size of the media in bytes.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.size -->
<br/>
<!-- $$$metaData.subTitle -->
<table class="qmlname"><tr valign="top" id="metaData.subTitle-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.subTitle</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the sub-title of the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.subTitle -->
<br/>
<!-- $$$metaData.title -->
<table class="qmlname"><tr valign="top" id="metaData.title-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.title</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the title of the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.title -->
<br/>
<!-- $$$metaData.trackCount -->
<table class="qmlname"><tr valign="top" id="metaData.trackCount-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.trackCount</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the number of tracks on the album containing the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.trackCount -->
<br/>
<!-- $$$metaData.trackNumber -->
<table class="qmlname"><tr valign="top" id="metaData.trackNumber-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.trackNumber</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the track number of the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.trackNumber -->
<br/>
<!-- $$$metaData.userRating -->
<table class="qmlname"><tr valign="top" id="metaData.userRating-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.userRating</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds a user rating of the media in the range of 0 to 100.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.userRating -->
<br/>
<!-- $$$metaData.videoBitRate -->
<table class="qmlname"><tr valign="top" id="metaData.videoBitRate-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.videoBitRate</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the bit rate of the media's video stream in bits per second.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.videoBitRate -->
<br/>
<!-- $$$metaData.videoCodec -->
<table class="qmlname"><tr valign="top" id="metaData.videoCodec-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.videoCodec</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the encoding of the media's video stream.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.videoCodec -->
<br/>
<!-- $$$metaData.videoFrameRate -->
<table class="qmlname"><tr valign="top" id="metaData.videoFrameRate-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.videoFrameRate</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the frame rate of the media's video stream.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.videoFrameRate -->
<br/>
<!-- $$$metaData.writer -->
<table class="qmlname"><tr valign="top" id="metaData.writer-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.writer</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the writer of the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.writer -->
<br/>
<!-- $$$metaData.year -->
<table class="qmlname"><tr valign="top" id="metaData.year-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.year</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the year of release of the media.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.year -->
<br/>
<!-- $$$muted -->
<table class="qmlname"><tr valign="top" id="muted-prop"><td class="tblQmlPropNode"><p><span class="name">muted</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether the audio output is muted.</p>
<p>Defaults to false.</p>
<!-- @@@muted -->
<br/>
<!-- $$$playbackRate -->
<table class="qmlname"><tr valign="top" id="playbackRate-prop"><td class="tblQmlPropNode"><p><span class="name">playbackRate</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the rate at which audio is played at as a multiple of the normal rate.</p>
<p>Defaults to 1.0&#x2e;</p>
<!-- @@@playbackRate -->
<br/>
<!-- $$$playbackState -->
<table class="qmlname"><tr valign="top" id="playbackState-prop"><td class="tblQmlPropNode"><p><span class="name">playbackState</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the state of media playback. It can be one of:</p>
<ul>
<li>PlayingState - the media is currently playing.</li>
<li>PausedState - playback of the media has been suspended.</li>
<li>StoppedState - playback of the media is yet to begin.</li>
</ul>
<!-- @@@playbackState -->
<br/>
<!-- $$$playlist -->
<table class="qmlname"><tr valign="top" id="playlist-prop"><td class="tblQmlPropNode"><p><span class="name">playlist</span> : <span class="type"><a href="QtMultimedia.Playlist.md">Playlist</a></span></p></td></tr></table><p>This property holds the playlist used by the media player.</p>
<p>Setting the playlist property resets the <a href="#source-prop">source</a> to an empty string.</p>
<!-- @@@playlist -->
<br/>
<!-- $$$position -->
<table class="qmlname"><tr valign="top" id="position-prop"><td class="tblQmlPropNode"><p><span class="name">position</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the current playback position in milliseconds.</p>
<p>To change this position, use the <a href="#seek-method">seek()</a> method.</p>
<p><b>See also </b><a href="#seek-method">seek()</a>.</p>
<!-- @@@position -->
<br/>
<!-- $$$seekable -->
<table class="qmlname"><tr valign="top" id="seekable-prop"><td class="tblQmlPropNode"><p><span class="name">seekable</span> : <span class="type">bool</span></p></td></tr></table><p>This property holds whether position of the audio can be changed.</p>
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
<li>NoMedia - no media has been set.</li>
<li>Loading - the media is currently being loaded.</li>
<li>Loaded - the media has been loaded.</li>
<li>Buffering - the media is buffering data.</li>
<li>Stalled - playback has been interrupted while the media is buffering data.</li>
<li>Buffered - the media has buffered data.</li>
<li>EndOfMedia - the media has played to the end.</li>
<li>InvalidMedia - the media cannot be played.</li>
<li>UnknownStatus - the status of the media is unknown.</li>
</ul>
<!-- @@@status -->
<br/>
<!-- $$$volume -->
<table class="qmlname"><tr valign="top" id="volume-prop"><td class="tblQmlPropNode"><p><span class="name">volume</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the volume of the audio output, from 0.0 (silent) to 1.0 (maximum volume).</p>
<p>Defaults to 1.0&#x2e;</p>
<!-- @@@volume -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$error -->
<table class="qmlname"><tr valign="top" id="error-signal"><td class="tblQmlFuncNode"><p><span class="name">error</span>(<span class="type">error</span>, <span class="type">errorString</span>)</p></td></tr></table><p>This signal is emitted when an error has occurred. The errorString parameter may contain more detailed information about the error.</p>
<p>The corresponding handler is <code>onError</code>.</p>
<!-- @@@error -->
<br/>
<!-- $$$paused -->
<table class="qmlname"><tr valign="top" id="paused-signal"><td class="tblQmlFuncNode"><p><span class="name">paused</span>()</p></td></tr></table><p>This signal is emitted when playback is paused.</p>
<p>The corresponding handler is <code>onPaused</code>.</p>
<!-- @@@paused -->
<br/>
<!-- $$$playbackStateChanged -->
<table class="qmlname"><tr valign="top" id="playbackStateChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">playbackStateChanged</span>()</p></td></tr></table><p>This signal is emitted when the <a href="#playbackState-prop">playbackState</a> property is altered.</p>
<p>The corresponding handler is <code>onPlaybackStateChanged</code>.</p>
<!-- @@@playbackStateChanged -->
<br/>
<!-- $$$playing -->
<table class="qmlname"><tr valign="top" id="playing-signal"><td class="tblQmlFuncNode"><p><span class="name">playing</span>()</p></td></tr></table><p>This signal is emitted when playback is started or resumed.</p>
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
<p>Sets the <a href="#playbackState-prop">playbackState</a> property to PausedState.</p>
<!-- @@@pause -->
<br/>
<!-- $$$play -->
<table class="qmlname"><tr valign="top" id="play-method"><td class="tblQmlFuncNode"><p><span class="name">play</span>()</p></td></tr></table><p>Starts playback of the media.</p>
<p>Sets the <a href="#playbackState-prop">playbackState</a> property to PlayingState.</p>
<!-- @@@play -->
<br/>
<!-- $$$seek -->
<table class="qmlname"><tr valign="top" id="seek-method"><td class="tblQmlFuncNode"><p><span class="name">seek</span>(<span class="type">offset</span>)</p></td></tr></table><p>If the <a href="#seekable-prop">seekable</a> property is true, seeks the current playback position to <i>offset</i>.</p>
<p>Seeking may be asynchronous, so the <a href="#position-prop">position</a> property may not be updated immediately.</p>
<p><b>See also </b><a href="#seekable-prop">seekable</a> and <a href="#position-prop">position</a>.</p>
<!-- @@@seek -->
<br/>
<!-- $$$stop -->
<table class="qmlname"><tr valign="top" id="stop-method"><td class="tblQmlFuncNode"><p><span class="name">stop</span>()</p></td></tr></table><p>Stops playback of the media.</p>
<p>Sets the <a href="#playbackState-prop">playbackState</a> property to StoppedState.</p>
<!-- @@@stop -->
<br/>
<!-- $$$supportedAudioRoles -->
<table class="qmlname"><tr valign="top" id="supportedAudioRoles-method"><td class="tblQmlFuncNode"><p><span class="type">list</span>&lt;<span class="type">int</span>&gt; <span class="name">supportedAudioRoles</span>()</p></td></tr></table><p>Returns a list of supported audio roles.</p>
<p>If setting the audio role is not supported, an empty list is returned.</p>
<p>This QML method was introduced in  Qt 5.6.</p>
<p><b>See also </b><a href="#audioRole-prop">audioRole</a>.</p>
<!-- @@@supportedAudioRoles -->
<br/>
