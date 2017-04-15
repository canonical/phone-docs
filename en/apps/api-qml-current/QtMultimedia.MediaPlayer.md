---
Title: QtMultimedia.MediaPlayer
---
        
MediaPlayer
===========

<span class="subtitle"></span>
Add media playback to a scene. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[audioRole](#audioRole-prop)**** : enumeration
-   ****[autoLoad](#autoLoad-prop)**** : bool
-   ****[autoPlay](#autoPlay-prop)**** : bool
-   ****[availability](#availability-prop)**** : enumeration
-   ****[bufferProgress](#bufferProgress-prop)**** : real
-   ****[duration](#duration-prop)**** : int
-   ****[error](#error-prop)**** : enumeration
-   ****[errorString](#errorString-prop)**** : string
-   ****[hasAudio](#hasAudio-prop)**** : bool
-   ****[hasVideo](#hasVideo-prop)**** : bool
-   ****[loops](#loops-prop)**** : int
-   ****[metaData.albumArtist](#metaData.albumArtist-prop)**** : variant
-   ****[metaData.albumTitle](#metaData.albumTitle-prop)**** : variant
-   ****[metaData.audioBitRate](#metaData.audioBitRate-prop)**** : variant
-   ****[metaData.audioCodec](#metaData.audioCodec-prop)**** : variant
-   ****[metaData.author](#metaData.author-prop)**** : variant
-   ****[metaData.averageLevel](#metaData.averageLevel-prop)**** : variant
-   ****[metaData.category](#metaData.category-prop)**** : variant
-   ****[metaData.channelCount](#metaData.channelCount-prop)**** : variant
-   ****[metaData.chapterNumber](#metaData.chapterNumber-prop)**** : variant
-   ****[metaData.comment](#metaData.comment-prop)**** : variant
-   ****[metaData.composer](#metaData.composer-prop)**** : variant
-   ****[metaData.conductor](#metaData.conductor-prop)**** : variant
-   ****[metaData.contributingArtist](#metaData.contributingArtist-prop)**** : variant
-   ****[metaData.copyright](#metaData.copyright-prop)**** : variant
-   ****[metaData.coverArtUrlLarge](#metaData.coverArtUrlLarge-prop)**** : variant
-   ****[metaData.coverArtUrlSmall](#metaData.coverArtUrlSmall-prop)**** : variant
-   ****[metaData.date](#metaData.date-prop)**** : variant
-   ****[metaData.description](#metaData.description-prop)**** : variant
-   ****[metaData.director](#metaData.director-prop)**** : variant
-   ****[metaData.genre](#metaData.genre-prop)**** : variant
-   ****[metaData.keywords](#metaData.keywords-prop)**** : variant
-   ****[metaData.language](#metaData.language-prop)**** : variant
-   ****[metaData.leadPerformer](#metaData.leadPerformer-prop)**** : variant
-   ****[metaData.lyrics](#metaData.lyrics-prop)**** : variant
-   ****[metaData.mediaType](#metaData.mediaType-prop)**** : variant
-   ****[metaData.mood](#metaData.mood-prop)**** : variant
-   ****[metaData.parentalRating](#metaData.parentalRating-prop)**** : variant
-   ****[metaData.peakValue](#metaData.peakValue-prop)**** : variant
-   ****[metaData.pixelAspectRatio](#metaData.pixelAspectRatio-prop)**** : variant
-   ****[metaData.posterUrl](#metaData.posterUrl-prop)**** : variant
-   ****[metaData.publisher](#metaData.publisher-prop)**** : variant
-   ****[metaData.ratingOrganization](#metaData.ratingOrganization-prop)**** : variant
-   ****[metaData.resolution](#metaData.resolution-prop)**** : variant
-   ****[metaData.sampleRate](#metaData.sampleRate-prop)**** : variant
-   ****[metaData.size](#metaData.size-prop)**** : variant
-   ****[metaData.subTitle](#metaData.subTitle-prop)**** : variant
-   ****[metaData.title](#metaData.title-prop)**** : variant
-   ****[metaData.trackCount](#metaData.trackCount-prop)**** : variant
-   ****[metaData.trackNumber](#metaData.trackNumber-prop)**** : variant
-   ****[metaData.userRating](#metaData.userRating-prop)**** : variant
-   ****[metaData.videoBitRate](#metaData.videoBitRate-prop)**** : variant
-   ****[metaData.videoCodec](#metaData.videoCodec-prop)**** : variant
-   ****[metaData.videoFrameRate](#metaData.videoFrameRate-prop)**** : variant
-   ****[metaData.writer](#metaData.writer-prop)**** : variant
-   ****[metaData.year](#metaData.year-prop)**** : variant
-   ****[muted](#muted-prop)**** : bool
-   ****[playbackRate](#playbackRate-prop)**** : real
-   ****[playbackState](#playbackState-prop)**** : enumeration
-   ****[playlist](#playlist-prop)**** : Playlist
-   ****[position](#position-prop)**** : int
-   ****[seekable](#seekable-prop)**** : bool
-   ****[source](#source-prop)**** : url
-   ****[status](#status-prop)**** : enumeration
-   ****[volume](#volume-prop)**** : real

<span id="signals"></span>
Signals
-------

-   ****[error](#error-signal)****(error, errorString)
-   ****[paused](#paused-signal)****()
-   ****[playbackStateChanged](#playbackStateChanged-signal)****()
-   ****[playing](#playing-signal)****()
-   ****[stopped](#stopped-signal)****()

<span id="methods"></span>
Methods
-------

-   ****[pause](#pause-method)****()
-   ****[play](#play-method)****()
-   ****[seek](#seek-method)****(offset)
-   ****[stop](#stop-method)****()
-   list&lt;int&gt; ****[supportedAudioRoles](#supportedAudioRoles-method)****()

<span id="details"></span>
Detailed Description
--------------------

MediaPlayer is part of the **QtMultimedia 5.0** module.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
Text {
    text: "Click Me!";
    font.pointSize: 24;
    width: 150; height: 50;
    MediaPlayer {
        id: playMusic
        source: "music.wav"
    }
    MouseArea {
        id: playArea
        anchors.fill: parent
        onPressed:  { playMusic.play() }
    }
}
```

You can use [MediaPlayer](index.html) by itself to play audio content (like [Audio](../QtMultimedia.qml-multimedia.md#audio)), or you can use it in conjunction with a [VideoOutput](../QtMultimedia.VideoOutput.md) for rendering video.

``` qml
import QtQuick 2.0
import QtMultimedia 5.0
Item {
    MediaPlayer {
        id: mediaplayer
        source: "groovy_video.mp4"
    }
    VideoOutput {
        anchors.fill: parent
        source: mediaplayer
    }
    MouseArea {
        id: playArea
        anchors.fill: parent
        onPressed: mediaplayer.play();
    }
}
```

**See also** [VideoOutput](../QtMultimedia.VideoOutput.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="audioRole-prop"></span><span class="name">audioRole</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the role of the audio stream. It can be set to specify the type of audio being played, allowing the system to make appropriate decisions when it comes to volume, routing or post-processing.

The audio role must be set before setting the source property.

Supported values can be retrieved with [supportedAudioRoles()](#supportedAudioRoles-method).

The value can be one of:

-   UnknownRole - the role is unknown or undefined.
-   MusicRole - music.
-   VideoRole - soundtrack from a movie or a video.
-   VoiceCommunicationRole - voice communications, such as telephony.
-   AlarmRole - alarm.
-   NotificationRole - notification, such as an incoming e-mail or a chat request.
-   RingtoneRole - ringtone.
-   AccessibilityRole - for accessibility, such as with a screen reader.
-   SonificationRole - sonification, such as with user interface sounds.
-   GameRole - game audio.

This QML property was introduced in Qt 5.6.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="autoLoad-prop"></span><span class="name">autoLoad</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates if loading of media should begin immediately.

Defaults to true, if false media will not be loaded until playback is started.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="autoPlay-prop"></span><span class="name">autoPlay</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property controls whether the media will begin to play on start up.

Defaults to `false`. If set to `true`, the value of [autoLoad](#autoLoad-prop) will be overwritten to `true`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="availability-prop"></span><span class="name">availability</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Returns the availability state of the media player.

This is one of:

| Value           | Description                                                                                                                  |
|-----------------|------------------------------------------------------------------------------------------------------------------------------|
| Available       | The media player is available to use.                                                                                        |
| Busy            | The media player is usually available, but some other process is utilizing the hardware necessary to play media.             |
| Unavailable     | There are no supported media playback facilities.                                                                            |
| ResourceMissing | There is one or more resources missing, so the media player cannot be used. It may be possible to try again at a later time. |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="bufferProgress-prop"></span><span class="name">bufferProgress</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds how much of the data buffer is currently filled, from `0.0` (empty) to `1.0` (full).

Playback can start or resume only when the buffer is entirely filled, in which case the status is `MediaPlayer.Buffered` or `MediaPlayer.Buffering`. A value lower than `1.0` implies that the status is `MediaPlayer.Stalled`.

**See also** [status](#status-prop).

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

This property holds the duration of the media in milliseconds.

If the media doesn't have a fixed duration (a live stream for example) this will be 0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="error-prop"></span><span class="name">error</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the error state of the audio. It can be one of:

| Value          | Description                                                                     |
|----------------|---------------------------------------------------------------------------------|
| NoError        | There is no current error.                                                      |
| ResourceError  | The audio cannot be played due to a problem allocating resources.               |
| FormatError    | The audio format is not supported.                                              |
| NetworkError   | The audio cannot be played due to network issues.                               |
| AccessDenied   | The audio cannot be played due to insufficient permissions.                     |
| ServiceMissing | The audio cannot be played because the media service could not be instantiated. |

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

This property holds a string describing the current error condition in more detail.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hasAudio-prop"></span><span class="name">hasAudio</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the media contains audio.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hasVideo-prop"></span><span class="name">hasVideo</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether the media contains video.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="loops-prop"></span><span class="name">loops</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the number of times the media is played. A value of `0` or `1` means the media will be played only once; set to `MediaPlayer.Infinite` to enable infinite looping.

The value can be changed while the media is playing, in which case it will update the remaining loops to the new value.

The default is `1`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.albumArtist-prop"></span><span class="name">metaData.albumArtist</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the principal artist of the album the media belongs to.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.albumTitle-prop"></span><span class="name">metaData.albumTitle</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the title of the album the media belongs to.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.audioBitRate-prop"></span><span class="name">metaData.audioBitRate</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the bit rate of the media's audio stream in bits per second.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.audioCodec-prop"></span><span class="name">metaData.audioCodec</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the encoding of the media audio stream.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.author-prop"></span><span class="name">metaData.author</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the author of the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.averageLevel-prop"></span><span class="name">metaData.averageLevel</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the average volume level of the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.category-prop"></span><span class="name">metaData.category</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the category of the media

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.channelCount-prop"></span><span class="name">metaData.channelCount</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the number of channels in the media's audio stream.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.chapterNumber-prop"></span><span class="name">metaData.chapterNumber</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the chapter number of the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.comment-prop"></span><span class="name">metaData.comment</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds a user comment about the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.composer-prop"></span><span class="name">metaData.composer</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the composer of the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.conductor-prop"></span><span class="name">metaData.conductor</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the conductor of the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.contributingArtist-prop"></span><span class="name">metaData.contributingArtist</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the names of artists contributing to the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.copyright-prop"></span><span class="name">metaData.copyright</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the media's copyright notice.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.coverArtUrlLarge-prop"></span><span class="name">metaData.coverArtUrlLarge</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the URL of a large cover art image.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.coverArtUrlSmall-prop"></span><span class="name">metaData.coverArtUrlSmall</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the URL of a small cover art image.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.date-prop"></span><span class="name">metaData.date</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the date of the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.description-prop"></span><span class="name">metaData.description</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds a description of the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.director-prop"></span><span class="name">metaData.director</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the director of the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.genre-prop"></span><span class="name">metaData.genre</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the genre of the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.keywords-prop"></span><span class="name">metaData.keywords</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds a list of keywords describing the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.language-prop"></span><span class="name">metaData.language</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the language of the media, as an ISO 639-2 code.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.leadPerformer-prop"></span><span class="name">metaData.leadPerformer</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the lead performer in the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.lyrics-prop"></span><span class="name">metaData.lyrics</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the lyrics to the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.mediaType-prop"></span><span class="name">metaData.mediaType</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the type of the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.mood-prop"></span><span class="name">metaData.mood</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the mood of the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.parentalRating-prop"></span><span class="name">metaData.parentalRating</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the parental rating of the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.peakValue-prop"></span><span class="name">metaData.peakValue</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the peak volume of media's audio stream.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.pixelAspectRatio-prop"></span><span class="name">metaData.pixelAspectRatio</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the pixel aspect ratio of an image or video.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.posterUrl-prop"></span><span class="name">metaData.posterUrl</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the URL of a poster image.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.publisher-prop"></span><span class="name">metaData.publisher</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the publisher of the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.ratingOrganization-prop"></span><span class="name">metaData.ratingOrganization</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the rating organization responsible for the parental rating of the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.resolution-prop"></span><span class="name">metaData.resolution</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the dimension of an image or video.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.sampleRate-prop"></span><span class="name">metaData.sampleRate</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the sample rate of the media's audio stream in hertz.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.size-prop"></span><span class="name">metaData.size</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property property holds the size of the media in bytes.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.subTitle-prop"></span><span class="name">metaData.subTitle</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the sub-title of the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.title-prop"></span><span class="name">metaData.title</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the title of the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.trackCount-prop"></span><span class="name">metaData.trackCount</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the number of tracks on the album containing the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.trackNumber-prop"></span><span class="name">metaData.trackNumber</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the track number of the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.userRating-prop"></span><span class="name">metaData.userRating</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds a user rating of the media in the range of 0 to 100.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.videoBitRate-prop"></span><span class="name">metaData.videoBitRate</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the bit rate of the media's video stream in bits per second.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.videoCodec-prop"></span><span class="name">metaData.videoCodec</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the encoding of the media's video stream.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.videoFrameRate-prop"></span><span class="name">metaData.videoFrameRate</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the frame rate of the media's video stream.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.writer-prop"></span><span class="name">metaData.writer</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the writer of the media.

**See also** QMediaMetaData.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metaData.year-prop"></span><span class="name">metaData.year</span> : <span class="type">variant</span></p></td>
</tr>
</tbody>
</table>

This property holds the year of release of the media.

**See also** QMediaMetaData.

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

This property holds whether the audio output is muted.

Defaults to false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="playbackRate-prop"></span><span class="name">playbackRate</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the rate at which audio is played at as a multiple of the normal rate.

Defaults to 1.0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="playbackState-prop"></span><span class="name">playbackState</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the state of media playback. It can be one of:

-   PlayingState - the media is currently playing.
-   PausedState - playback of the media has been suspended.
-   StoppedState - playback of the media is yet to begin.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="playlist-prop"></span><span class="name">playlist</span> : <span class="type"><a href="QtMultimedia.Playlist.md">Playlist</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the playlist used by the media player.

Setting the playlist property resets the [source](#source-prop) to an empty string.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="position-prop"></span><span class="name">position</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the current playback position in milliseconds.

To change this position, use the [seek()](#seek-method) method.

**See also** [seek()](#seek-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="seekable-prop"></span><span class="name">seekable</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property holds whether position of the audio can be changed.

If true, calling the [seek()](#seek-method) method will cause playback to seek to the new position.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

This property holds the source URL of the media.

Setting the source property clears the current [playlist](#playlist-prop), if any.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="name">status</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the status of media loading. It can be one of:

-   NoMedia - no media has been set.
-   Loading - the media is currently being loaded.
-   Loaded - the media has been loaded.
-   Buffering - the media is buffering data.
-   Stalled - playback has been interrupted while the media is buffering data.
-   Buffered - the media has buffered data.
-   EndOfMedia - the media has played to the end.
-   InvalidMedia - the media cannot be played.
-   UnknownStatus - the status of the media is unknown.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="volume-prop"></span><span class="name">volume</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the volume of the audio output, from 0.0 (silent) to 1.0 (maximum volume).

Defaults to 1.0.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="error-signal"></span><span class="name">error</span>(<span class="type">error</span>, <span class="type">errorString</span>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when an error has occurred. The errorString parameter may contain more detailed information about the error.

The corresponding handler is `onError`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="paused-signal"></span><span class="name">paused</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when playback is paused.

The corresponding handler is `onPaused`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="playbackStateChanged-signal"></span><span class="name">playbackStateChanged</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when the [playbackState](#playbackState-prop) property is altered.

The corresponding handler is `onPlaybackStateChanged`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="playing-signal"></span><span class="name">playing</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when playback is started or resumed.

The corresponding handler is `onPlaying`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stopped-signal"></span><span class="name">stopped</span>()</p></td>
</tr>
</tbody>
</table>

This signal is emitted when playback is stopped.

The corresponding handler is `onStopped`.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pause-method"></span><span class="name">pause</span>()</p></td>
</tr>
</tbody>
</table>

Pauses playback of the media.

Sets the [playbackState](#playbackState-prop) property to PausedState.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="play-method"></span><span class="name">play</span>()</p></td>
</tr>
</tbody>
</table>

Starts playback of the media.

Sets the [playbackState](#playbackState-prop) property to PlayingState.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="seek-method"></span><span class="name">seek</span>(<span class="type">offset</span>)</p></td>
</tr>
</tbody>
</table>

If the [seekable](#seekable-prop) property is true, seeks the current playback position to *offset*.

Seeking may be asynchronous, so the [position](#position-prop) property may not be updated immediately.

**See also** [seekable](#seekable-prop) and [position](#position-prop).

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

Stops playback of the media.

Sets the [playbackState](#playbackState-prop) property to StoppedState.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="supportedAudioRoles-method"></span><span class="type">list</span>&lt;<span class="type">int</span>&gt; <span class="name">supportedAudioRoles</span>()</p></td>
</tr>
</tbody>
</table>

Returns a list of supported audio roles.

If setting the audio role is not supported, an empty list is returned.

This QML method was introduced in Qt 5.6.

**See also** [audioRole](#audioRole-prop).

