---
Title: QtMultimedia.CameraRecorder
---

# QtMultimedia.CameraRecorder

<span class="subtitle"></span>
<!-- $$$CameraRecorder-brief -->
<p>Controls video recording with the Camera. More...</p>
<!-- @@@CameraRecorder -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtMultimedia 5.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#actualLocation-prop">actualLocation</a></b></b> : string</li>
<li class="fn"><b><b><a href="#audioBitRate-prop">audioBitRate</a></b></b> : int</li>
<li class="fn"><b><b><a href="#audioChannels-prop">audioChannels</a></b></b> : int</li>
<li class="fn"><b><b><a href="#audioCodec-prop">audioCodec</a></b></b> : string</li>
<li class="fn"><b><b><a href="#audioEncodingMode-prop">audioEncodingMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#audioSampleRate-prop">audioSampleRate</a></b></b> : int</li>
<li class="fn"><b><b><a href="#duration-prop">duration</a></b></b> : int</li>
<li class="fn"><b><b><a href="#errorCode-prop">errorCode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#errorString-prop">errorString</a></b></b> : string</li>
<li class="fn"><b><b><a href="#frameRate-prop">frameRate</a></b></b> : qreal</li>
<li class="fn"><b><b><a href="#mediaContainer-prop">mediaContainer</a></b></b> : string</li>
<li class="fn"><b><b><a href="#muted-prop">muted</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#outputLocation-prop">outputLocation</a></b></b> : string</li>
<li class="fn"><b><b><a href="#recorderState-prop">recorderState</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#recorderStatus-prop">recorderStatus</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#resolution-prop">resolution</a></b></b> : size</li>
<li class="fn"><b><b><a href="#videoBitRate-prop">videoBitRate</a></b></b> : int</li>
<li class="fn"><b><b><a href="#videoCodec-prop">videoCodec</a></b></b> : string</li>
<li class="fn"><b><b><a href="#videoEncodingMode-prop">videoEncodingMode</a></b></b> : enumeration</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#record-method">record</a></b></b>()</li>
<li class="fn"><b><b><a href="#setMetadata-method">setMetadata</a></b></b>(key, value)</li>
<li class="fn"><b><b><a href="#stop-method">stop</a></b></b>()</li>
</ul>
<!-- $$$CameraRecorder-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">CameraRecorder</a> allows recording camera streams to files, and adjusting recording settings and metadata for videos.</p>
<p>It should not be constructed separately, instead the <code>videoRecorder</code> property of a <a href="QtMultimedia.qml-multimedia.md#camera">Camera</a> should be used.</p>
<pre class="qml"><span class="type"><a href="QtMultimedia.Camera.md">Camera</a></span> {
<span class="name">videoRecorder</span>.audioEncodingMode: <span class="name">CameraRecorder</span>.<span class="name">ConstantBitrateEncoding</span>;
<span class="name">videoRecorder</span>.audioBitRate: <span class="number">128000</span>
<span class="name">videoRecorder</span>.mediaContainer: <span class="string">&quot;mp4&quot;</span>
<span class="comment">// ...</span>
}</pre>
<p>There are many different settings for each part of the recording process (audio, video, and output formats), as well as control over muting and where to store the output file.</p>
<p><b>See also </b>QAudioEncoderSettings and QVideoEncoderSettings.</p>
<!-- @@@CameraRecorder -->
<h2>Property Documentation</h2>
<!-- $$$actualLocation -->
<table class="qmlname"><tr valign="top" id="actualLocation-prop"><td class="tblQmlPropNode"><p><span class="name">actualLocation</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the actual location of the last saved media content. The actual location is usually available after the recording starts, and reset when new location is set or the new recording starts.</p>
<!-- @@@actualLocation -->
<br/>
<!-- $$$audioBitRate -->
<table class="qmlname"><tr valign="top" id="audioBitRate-prop"><td class="tblQmlPropNode"><p><span class="name">audioBitRate</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the audio bit rate (in bits per second) to be used for recording video.</p>
<!-- @@@audioBitRate -->
<br/>
<!-- $$$audioChannels -->
<table class="qmlname"><tr valign="top" id="audioChannels-prop"><td class="tblQmlPropNode"><p><span class="name">audioChannels</span> : <span class="type">int</span></p></td></tr></table><p>This property indicates the number of audio channels to be encoded while recording video (1 is mono, 2 is stereo).</p>
<!-- @@@audioChannels -->
<br/>
<!-- $$$audioCodec -->
<table class="qmlname"><tr valign="top" id="audioCodec-prop"><td class="tblQmlPropNode"><p><span class="name">audioCodec</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the audio codec to be used for recording video. Typically this is <code>aac</code> or <code>amr-wb</code>.</p>
<p><b>See also </b><a href="QtMultimedia.CameraImageProcessing.md#whiteBalanceMode-prop">whileBalanceMode</a>.</p>
<!-- @@@audioCodec -->
<br/>
<!-- $$$audioEncodingMode -->
<table class="qmlname"><tr valign="top" id="audioEncodingMode-prop"><td class="tblQmlPropNode"><p><span class="name">audioEncodingMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>The type of encoding method to use when recording audio.</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >ConstantQualityEncoding</td><td >Encoding will aim to have a constant quality, adjusting bitrate to fit. This is the default. The bitrate setting will be ignored.</td></tr>
<tr valign="top"><td >ConstantBitRateEncoding</td><td >Encoding will use a constant bit rate, adjust quality to fit. This is appropriate if you are trying to optimize for space.</td></tr>
<tr valign="top"><td >AverageBitRateEncoding</td><td >Encoding will try to keep an average bitrate setting, but will use more or less as needed.</td></tr>
</table>
<!-- @@@audioEncodingMode -->
<br/>
<!-- $$$audioSampleRate -->
<table class="qmlname"><tr valign="top" id="audioSampleRate-prop"><td class="tblQmlPropNode"><p><span class="name">audioSampleRate</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the sample rate to be used to encode audio while recording video.</p>
<!-- @@@audioSampleRate -->
<br/>
<!-- $$$duration -->
<table class="qmlname"><tr valign="top" id="duration-prop"><td class="tblQmlPropNode"><p><span class="name">duration</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the duration (in miliseconds) of the last recording.</p>
<!-- @@@duration -->
<br/>
<!-- $$$errorCode -->
<table class="qmlname"><tr valign="top" id="errorCode-prop"><td class="tblQmlPropNode"><p><span class="name">errorCode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the last error code.</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >NoError</td><td >No Errors</td></tr>
<tr valign="top"><td >ResourceError</td><td >Device is not ready or not available.</td></tr>
<tr valign="top"><td >FormatError</td><td >Current format is not supported.</td></tr>
<tr valign="top"><td >OutOfSpaceError</td><td >No space left on device.</td></tr>
</table>
<!-- @@@errorCode -->
<br/>
<!-- $$$errorString -->
<table class="qmlname"><tr valign="top" id="errorString-prop"><td class="tblQmlPropNode"><p><span class="name">errorString</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the description of the last error.</p>
<!-- @@@errorString -->
<br/>
<!-- $$$frameRate -->
<table class="qmlname"><tr valign="top" id="frameRate-prop"><td class="tblQmlPropNode"><p><span class="name">frameRate</span> : <span class="type">qreal</span></p></td></tr></table><p>This property holds the framerate (in frames per second) to be used for recording video.</p>
<!-- @@@frameRate -->
<br/>
<!-- $$$mediaContainer -->
<table class="qmlname"><tr valign="top" id="mediaContainer-prop"><td class="tblQmlPropNode"><p><span class="name">mediaContainer</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the media container to be used for recording video. Typically this is <code>mp4</code>.</p>
<!-- @@@mediaContainer -->
<br/>
<!-- $$$muted -->
<table class="qmlname"><tr valign="top" id="muted-prop"><td class="tblQmlPropNode"><p><span class="name">muted</span> : <span class="type">bool</span></p></td></tr></table><p>This property indicates whether the audio input is muted during recording.</p>
<!-- @@@muted -->
<br/>
<!-- $$$outputLocation -->
<table class="qmlname"><tr valign="top" id="outputLocation-prop"><td class="tblQmlPropNode"><p><span class="name">outputLocation</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the destination location of the media content. If the location is empty, the recorder uses the system-specific place and file naming scheme.</p>
<!-- @@@outputLocation -->
<br/>
<!-- $$$recorderState -->
<table class="qmlname"><tr valign="top" id="recorderState-prop"><td class="tblQmlPropNode"><p><span class="name">recorderState</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the current state of the camera recorder object.</p>
<p>The state can be one of these two:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >StoppedState</td><td >The camera is not recording video.</td></tr>
<tr valign="top"><td >RecordingState</td><td >The camera is recording video.</td></tr>
</table>
<!-- @@@recorderState -->
<br/>
<!-- $$$recorderStatus -->
<table class="qmlname"><tr valign="top" id="recorderStatus-prop"><td class="tblQmlPropNode"><p><span class="name">recorderStatus</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the current status of media recording.</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >UnavailableStatus</td><td >Recording is not supported by the camera.</td></tr>
<tr valign="top"><td >UnloadedStatus</td><td >The recorder is available but not loaded.</td></tr>
<tr valign="top"><td >LoadingStatus</td><td >The recorder is initializing.</td></tr>
<tr valign="top"><td >LoadedStatus</td><td >The recorder is initialized and ready to record media.</td></tr>
<tr valign="top"><td >StartingStatus</td><td >Recording is requested but not active yet.</td></tr>
<tr valign="top"><td >RecordingStatus</td><td >Recording is active.</td></tr>
<tr valign="top"><td >PausedStatus</td><td >Recording is paused.</td></tr>
<tr valign="top"><td >FinalizingStatus</td><td >Recording is stopped with media being finalized.</td></tr>
</table>
<!-- @@@recorderStatus -->
<br/>
<!-- $$$resolution -->
<table class="qmlname"><tr valign="top" id="resolution-prop"><td class="tblQmlPropNode"><p><span class="name">resolution</span> : <span class="type">size</span></p></td></tr></table><p>This property holds the video frame dimensions to be used for video capture.</p>
<!-- @@@resolution -->
<br/>
<!-- $$$videoBitRate -->
<table class="qmlname"><tr valign="top" id="videoBitRate-prop"><td class="tblQmlPropNode"><p><span class="name">videoBitRate</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the bit rate (in bits per second) to be used for recording video.</p>
<!-- @@@videoBitRate -->
<br/>
<!-- $$$videoCodec -->
<table class="qmlname"><tr valign="top" id="videoCodec-prop"><td class="tblQmlPropNode"><p><span class="name">videoCodec</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the video codec to be used for recording video. Typically this is <code>h264</code>.</p>
<!-- @@@videoCodec -->
<br/>
<!-- $$$videoEncodingMode -->
<table class="qmlname"><tr valign="top" id="videoEncodingMode-prop"><td class="tblQmlPropNode"><p><span class="name">videoEncodingMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the type of encoding method to be used for recording video.</p>
<p>The following are the different encoding methods used:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >ConstantQualityEncoding</td><td >Encoding will aim to have a constant quality, adjusting bitrate to fit. This is the default. The bitrate setting will be ignored.</td></tr>
<tr valign="top"><td >ConstantBitRateEncoding</td><td >Encoding will use a constant bit rate, adjust quality to fit. This is appropriate if you are trying to optimize for space.</td></tr>
<tr valign="top"><td >AverageBitRateEncoding</td><td >Encoding will try to keep an average bitrate setting, but will use more or less as needed.</td></tr>
</table>
<!-- @@@videoEncodingMode -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$record -->
<table class="qmlname"><tr valign="top" id="record-method"><td class="tblQmlFuncNode"><p><span class="name">record</span>()</p></td></tr></table><p>Starts recording.</p>
<!-- @@@record -->
<br/>
<!-- $$$setMetadata -->
<table class="qmlname"><tr valign="top" id="setMetadata-method"><td class="tblQmlFuncNode"><p><span class="name">setMetadata</span>(<span class="type">key</span>, <span class="type">value</span>)</p></td></tr></table><p>Sets metadata for the next video to be recorder, with the given <i>key</i> being associated with <i>value</i>.</p>
<!-- @@@setMetadata -->
<br/>
<!-- $$$stop -->
<table class="qmlname"><tr valign="top" id="stop-method"><td class="tblQmlFuncNode"><p><span class="name">stop</span>()</p></td></tr></table><p>Stops recording.</p>
<!-- @@@stop -->
<br/>
