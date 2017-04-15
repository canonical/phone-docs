---
Title: QtMultimedia.Playlist
---
        
Playlist
========

<span class="subtitle"></span>
For specifying a list of media to be played. More...

|                   |                         |
|-------------------|-------------------------|
| Import Statement: | import QtMultimedia 5.4 |

<span id="properties"></span>
Properties
----------

-   ****[currentIndex](#currentIndex-prop)**** : int
-   ****[currentItemsource](#currentItemsource-prop)**** : url
-   ****[error](#error-prop)**** : enumeration
-   ****[errorString](#errorString-prop)**** : string
-   ****[itemCount](#itemCount-prop)**** : int
-   ****[playbackMode](#playbackMode-prop)**** : enumeration
-   ****[readOnly](#readOnly-prop)**** : bool

<span id="methods"></span>
Methods
-------

-   bool ****[addItem](#addItem-method)****(source)
-   bool ****[addItems](#addItems-method)****(sources)
-   bool ****[clear](#clear-method)****()
-   bool ****[insertItem](#insertItem-method)****(index, source)
-   url ****[itemSource](#itemSource-method)****(index)
-   ****[load](#load-method)****(location, format)
-   bool ****[moveItem](#moveItem-method)****(from, to)
-   ****[next](#next-method)****()
-   int ****[nextIndex](#nextIndex-method)****(steps)
-   ****[previous](#previous-method)****()
-   int ****[previousIndex](#previousIndex-method)****(steps)
-   bool ****[removeItem](#removeItem-method)****(index)
-   bool ****[removeItems](#removeItems-method)****(int *start*, int *end*)
-   bool ****[save](#save-method)****(location, format)
-   ****[shuffle](#shuffle-method)****()

<span id="details"></span>
Detailed Description
--------------------

**`\backported`**from 5.6

The Playlist type provides a way to play a list of media with the [MediaPlayer](../QtMultimedia.MediaPlayer.md), Audio and Video types. It can be used as a data source for view elements (such as ListView) and other elements that interact with model data (such as Repeater). When used as a data model, each playlist item's source URL can be accessed using the `source` role.

``` qml
import QtQuick 2.0
import QtMultimedia 5.4
Item {
    width: 400;
    height: 300;
    Audio {
        id: player;
        playlist: Playlist {
            id: playlist
            PlaylistItem { source: "song1.ogg"; }
            PlaylistItem { source: "song2.ogg"; }
            PlaylistItem { source: "song3.ogg"; }
        }
    }
    ListView {
        model: playlist;
        delegate: Text {
            font.pixelSize: 16;
            text: source;
        }
    }
    MouseArea {
        anchors.fill: parent;
        onPressed: {
            if (player.playbackState != Audio.PlayingState) {
                player.play();
            } else {
                player.pause();
            }
        }
    }
}
```

**See also** [MediaPlayer](../QtMultimedia.MediaPlayer.md), [Audio](../QtMultimedia.qml-multimedia.md#audio), and [Video](../QtMultimedia.qml-multimedia.md#video).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentIndex-prop"></span><span class="name">currentIndex</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the position of the current item in the playlist.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currentItemsource-prop"></span><span class="name">currentItemsource</span> : <span class="type">url</span></p></td>
</tr>
</tbody>
</table>

This property holds the source URL of the current item in the playlist.

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

This property holds the error condition of the playlist.

| Value                   | Description           |
|-------------------------|-----------------------|
| NoError                 | No errors             |
| FormatError             | Format error.         |
| FormatNotSupportedError | Format not supported. |
| NetworkError            | Network error.        |
| AccessDeniedError       | Access denied error.  |

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

This property holds a string describing the current error condition of the playlist.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemCount-prop"></span><span class="name">itemCount</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the number of items in the playlist.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="playbackMode-prop"></span><span class="name">playbackMode</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the order in which items in the playlist are played.

| Value             | Description                                                                                                                                                                            |
|-------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| CurrentItemOnce   | The current item is played only once.                                                                                                                                                  |
| CurrentItemInLoop | The current item is played repeatedly in a loop.                                                                                                                                       |
| Sequential        | Playback starts from the current and moves through each successive item until the last is reached and then stops. The next item is a null item when the last one is currently playing. |
| Loop              | Playback restarts at the first item after the last has finished playing.                                                                                                               |
| Random            | Play items in random order.                                                                                                                                                            |

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="readOnly-prop"></span><span class="name">readOnly</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property indicates if the playlist can be modified.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addItem-method"></span><span class="type">bool</span> <span class="name">addItem</span>(<span class="type">source</span>)</p></td>
</tr>
</tbody>
</table>

Appends the *source* URL to the playlist.

Returns true if the *source* is added successfully.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="addItems-method"></span><span class="type">bool</span> <span class="name">addItems</span>(<span class="type">sources</span>)</p></td>
</tr>
</tbody>
</table>

Appends *source* URLs to the playlist.

Returns true if the *sources* are added successfully.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="clear-method"></span><span class="type">bool</span> <span class="name">clear</span>()</p></td>
</tr>
</tbody>
</table>

Removes all the items from the playlist.

Returns true if the operation is successful.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="insertItem-method"></span><span class="type">bool</span> <span class="name">insertItem</span>(<span class="type">index</span>, <span class="type">source</span>)</p></td>
</tr>
</tbody>
</table>

Inserts the *source* URL to the playlist at the given *index*.

Returns true if the *source* is added successfully.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="itemSource-method"></span><span class="type">url</span> <span class="name">itemSource</span>(<span class="type">index</span>)</p></td>
</tr>
</tbody>
</table>

Returns the source URL of the item at the given *index* in the playlist.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="load-method"></span><span class="name">load</span>(<span class="type">location</span>, <span class="type">format</span>)</p></td>
</tr>
</tbody>
</table>

Loads a playlist from the given *location*. If *format* is specified, it is used, otherwise the format is guessed from the location name and the data.

New items are appended to the playlist.

`onloaded()` is emitted if the playlist loads successfully, otherwise `onLoadFailed()` is emitted with [error](#error-prop) and [errorString](#errorString-prop) defined accordingly.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moveItem-method"></span><span class="type">bool</span> <span class="name">moveItem</span>(<span class="type">from</span>, <span class="type">to</span>)</p></td>
</tr>
</tbody>
</table>

Moves the item at the first given *index* to the second given *index*.

Returns true if the *source* is moved successfully.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="next-method"></span><span class="name">next</span>()</p></td>
</tr>
</tbody>
</table>

Advances to the next item in the playlist.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="nextIndex-method"></span><span class="type">int</span> <span class="name">nextIndex</span>(<span class="type">steps</span>)</p></td>
</tr>
</tbody>
</table>

Returns the index of the item in the playlist which would be current after calling [next()](#next-method) *steps* times.

Returned value depends on the size of the playlist, the current position and the playback mode.

**See also** [playbackMode](#playbackMode-prop) and [previousIndex()](#previousIndex-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="previous-method"></span><span class="name">previous</span>()</p></td>
</tr>
</tbody>
</table>

Returns to the previous item in the playlist.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="previousIndex-method"></span><span class="type">int</span> <span class="name">previousIndex</span>(<span class="type">steps</span>)</p></td>
</tr>
</tbody>
</table>

Returns the index of the item in the playlist which would be current after calling [previous()](#previous-method) *steps* times.

Returned value depends on the size of the playlist, the current position and the playback mode.

**See also** [playbackMode](#playbackMode-prop) and [nextIndex()](#nextIndex-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeItem-method"></span><span class="type">bool</span> <span class="name">removeItem</span>(<span class="type">index</span>)</p></td>
</tr>
</tbody>
</table>

Removed the item at the given *index* from the playlist.

Returns true if the *source* is removed successfully.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="removeItems-method"></span><span class="type">bool</span> <span class="name">removeItems</span>(<span class="type">int</span> <em>start</em>, <span class="type">int</span> <em>end</em>)</p></td>
</tr>
</tbody>
</table>

Removes items in the playlist from *start* to **`\end`** inclusive.

Returns true if the items are removed successfully.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="save-method"></span><span class="type">bool</span> <span class="name">save</span>(<span class="type">location</span>, <span class="type">format</span>)</p></td>
</tr>
</tbody>
</table>

Saves the playlist to the given *location*. If *format* is specified, it is used, otherwise the format is guessed from the location name.

Returns true if the playlist is saved successfully.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="shuffle-method"></span><span class="name">shuffle</span>()</p></td>
</tr>
</tbody>
</table>

Shuffles items in the playlist.

