---
Title: QtMultimedia.CameraRecorder
---
        
CameraRecorder
==============

<span class="subtitle"></span>
Controls video recording with the Camera. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[actualLocation](#actualLocation-prop)**** : string
-   ****[audioBitRate](#audioBitRate-prop)**** : int
-   ****[audioChannels](#audioChannels-prop)**** : int
-   ****[audioCodec](#audioCodec-prop)**** : string
-   ****[audioEncodingMode](#audioEncodingMode-prop)**** : enumeration
-   ****[audioSampleRate](#audioSampleRate-prop)**** : int
-   ****[duration](#duration-prop)**** : int
-   ****[errorCode](#errorCode-prop)**** : enumeration
-   ****[errorString](#errorString-prop)**** : string
-   ****[frameRate](#frameRate-prop)**** : qreal
-   ****[mediaContainer](#mediaContainer-prop)**** : string
-   ****[muted](#muted-prop)**** : bool
-   ****[outputLocation](#outputLocation-prop)**** : string
-   ****[recorderState](#recorderState-prop)**** : enumeration
-   ****[recorderStatus](#recorderStatus-prop)**** : enumeration
-   ****[resolution](#resolution-prop)**** : size
-   ****[videoBitRate](#videoBitRate-prop)**** : int
-   ****[videoCodec](#videoCodec-prop)**** : string
-   ****[videoEncodingMode](#videoEncodingMode-prop)**** : enumeration

<span id="methods"></span>
Methods
-------

-   ****[record](#record-method)****()
-   ****[setMetadata](#setMetadata-method)****(key, value)
-   ****[stop](#stop-method)****()

<span id="details"></span>
Detailed Description
--------------------

[CameraRecorder](index.html) allows recording camera streams to files, and adjusting recording settings and metadata for videos.

It should not be constructed separately, instead the `videoRecorder` property of a [Camera](../QtMultimedia.qml-multimedia.md#camera) should be used.

``` qml
Camera {
    videoRecorder.audioEncodingMode: CameraRecorder.ConstantBitrateEncoding;
    videoRecorder.audioBitRate: 128000
    videoRecorder.mediaContainer: "mp4"
    // ...
}
```

There are many different settings for each part of the recording process (audio, video, and output formats), as well as control over muting and where to store the output file.

**See also** QAudioEncoderSettings and QVideoEncoderSettings.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actualLocation-prop"></span><span class="name">actualLocation</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the actual location of the last saved media content. The actual location is usually available after the recording starts, and reset when new location is set or the new recording starts.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="audioBitRate-prop"></span><span class="name">audioBitRate</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the audio bit rate (in bits per second) to be used for recording video.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="audioChannels-prop"></span><span class="name">audioChannels</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property indicates the number of audio channels to be encoded while recording video (1 is mono, 2 is stereo).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="audioCodec-prop"></span><span class="name">audioCodec</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the audio codec to be used for recording video. Typically this is `aac` or `amr-wb`.

**See also** [whileBalanceMode](../QtMultimedia.CameraImageProcessing.md#whiteBalanceMode-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="audioEncodingMode-prop"></span><span class="name">audioEncodingMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

The type of encoding method to use when recording audio.

| Value                   | Description                                                                                                                       |
|-------------------------|-----------------------------------------------------------------------------------------------------------------------------------|
| ConstantQualityEncoding | Encoding will aim to have a constant quality, adjusting bitrate to fit. This is the default. The bitrate setting will be ignored. |
| ConstantBitRateEncoding | Encoding will use a constant bit rate, adjust quality to fit. This is appropriate if you are trying to optimize for space.        |
| AverageBitRateEncoding  | Encoding will try to keep an average bitrate setting, but will use more or less as needed.                                        |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="audioSampleRate-prop"></span><span class="name">audioSampleRate</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the sample rate to be used to encode audio while recording video.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="duration-prop"></span><span class="name">duration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the duration (in miliseconds) of the last recording.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorCode-prop"></span><span class="name">errorCode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the last error code.

| Value           | Description                           |
|-----------------|---------------------------------------|
| NoError         | No Errors                             |
| ResourceError   | Device is not ready or not available. |
| FormatError     | Current format is not supported.      |
| OutOfSpaceError | No space left on device.              |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorString-prop"></span><span class="name">errorString</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the description of the last error.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="frameRate-prop"></span><span class="name">frameRate</span> : <span class="type">qreal</span></p></td>
</tr>
</tbody>
</table>

This property holds the framerate (in frames per second) to be used for recording video.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mediaContainer-prop"></span><span class="name">mediaContainer</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the media container to be used for recording video. Typically this is `mp4`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="muted-prop"></span><span class="name">muted</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates whether the audio input is muted during recording.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="outputLocation-prop"></span><span class="name">outputLocation</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the destination location of the media content. If the location is empty, the recorder uses the system-specific place and file naming scheme.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="recorderState-prop"></span><span class="name">recorderState</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the current state of the camera recorder object.

The state can be one of these two:

| Value          | Description                        |
|----------------|------------------------------------|
| StoppedState   | The camera is not recording video. |
| RecordingState | The camera is recording video.     |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="recorderStatus-prop"></span><span class="name">recorderStatus</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the current status of media recording.

| Value             | Description                                            |
|-------------------|--------------------------------------------------------|
| UnavailableStatus | Recording is not supported by the camera.              |
| UnloadedStatus    | The recorder is available but not loaded.              |
| LoadingStatus     | The recorder is initializing.                          |
| LoadedStatus      | The recorder is initialized and ready to record media. |
| StartingStatus    | Recording is requested but not active yet.             |
| RecordingStatus   | Recording is active.                                   |
| PausedStatus      | Recording is paused.                                   |
| FinalizingStatus  | Recording is stopped with media being finalized.       |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="resolution-prop"></span><span class="name">resolution</span> : <span class="type">size</span></p></td>
</tr>
</tbody>
</table>

This property holds the video frame dimensions to be used for video capture.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="videoBitRate-prop"></span><span class="name">videoBitRate</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the bit rate (in bits per second) to be used for recording video.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="videoCodec-prop"></span><span class="name">videoCodec</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the video codec to be used for recording video. Typically this is `h264`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="videoEncodingMode-prop"></span><span class="name">videoEncodingMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the type of encoding method to be used for recording video.

The following are the different encoding methods used:

| Value                   | Description                                                                                                                       |
|-------------------------|-----------------------------------------------------------------------------------------------------------------------------------|
| ConstantQualityEncoding | Encoding will aim to have a constant quality, adjusting bitrate to fit. This is the default. The bitrate setting will be ignored. |
| ConstantBitRateEncoding | Encoding will use a constant bit rate, adjust quality to fit. This is appropriate if you are trying to optimize for space.        |
| AverageBitRateEncoding  | Encoding will try to keep an average bitrate setting, but will use more or less as needed.                                        |

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="record-method"></span><span class="name">record</span>()</p></td>
</tr>
</tbody>
</table>

Starts recording.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="setMetadata-method"></span><span class="name">setMetadata</span>(<span class="type">key</span>, <span class="type">value</span>)</p></td>
</tr>
</tbody>
</table>

Sets metadata for the next video to be recorder, with the given *key* being associated with *value*.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stop-method"></span><span class="name">stop</span>()</p></td>
</tr>
</tbody>
</table>

Stops recording.

