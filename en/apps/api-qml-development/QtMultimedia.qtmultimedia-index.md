---
Title: QtMultimedia.qtmultimedia-index
---
        
Qt Multimedia
=============

<span class="subtitle"></span>
<span id="details"></span>
Qt Multimedia is an essential module that provides a rich set of QML types and C++ classes to handle multimedia content. It also provides necessary APIs to access the camera and radio functionality. The included Qt Audio Engine provides types for 3D positional audio playback and management.

The Qt Multimedia Widgets module provides widget based multimedia classes.

<span id="getting-started"></span>
Getting Started
---------------

The QML types can be imported into your applciation using the following import statement in your `.qml` file.

``` cpp
import QtMultimedia 5.4
```

If you intend to use the C++ classes in your application, include the C++ definitions using the following directive:

``` cpp
 #include <QtMultimedia>
```

**Note:** If you are using a few classes from this module, we recommend including those specific classes only instead of the module.

To link against the corresponding C++ libraries, add the following to your `qmake` project file:

``` cpp
QT += multimedia
```

<span id="qml-types-and-c-classes"></span>
QML Types and C++ Classes
-------------------------

The following is a list of important QML types and C++ classes provided by this module:

| Type                                                  | Description                                                                                                                                                                                                         |
|-------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Audio](../QtMultimedia.Audio.md)             | Add audio playback functionality to a scene                                                                                                                                                                         |
| [Playlist](../QtMultimedia.Playlist.md)       | Add playlist functionality                                                                                                                                                                                          |
| [Camera](../QtMultimedia.Camera.md)           | Access camera viewfinder frames                                                                                                                                                                                     |
| [MediaPlayer](../QtMultimedia.MediaPlayer.md) | Add media playback functionality to a scene. It is same as Audio type, but can be used for video playback with the [VideoOutput](../QtMultimedia.VideoOutput.md) type.                                      |
| [Radio](../QtMultimedia.Radio.md)             | Access radio functionality                                                                                                                                                                                          |
| [Video](../QtMultimedia.Video.md)             | Add Video playback functionality to a scene. It uses [MediaPlayer](../QtMultimedia.MediaPlayer.md) and [VideoOutput](../QtMultimedia.VideoOutput.md) types to provide video playback functionality. |

| Class                 | Description                                                             |
|-----------------------|-------------------------------------------------------------------------|
| QAudioOutput          | Sends audio data to an audio output device                              |
| QCamera               | Access camera viewfinder.                                               |
| QCameraImageCapture   | Record media content. Intended to be used with QCamera to record media. |
| QMediaPlayer          | Playback media from a source.                                           |
| QMediaPlaylist        | List of media to be played.                                             |
| QRadioTuner           | Access radio device.                                                    |
| QVideoRendererControl | Control video data.                                                     |

<span id="related-information"></span>
Related Information
-------------------

<span id="guides"></span>
### Guides

-   [Multimedia](../QtMultimedia.multimediaoverview.md) - overview of multimedia support in Qt
-   [Audio Overview](../QtMultimedia.audiooverview.md)
-   [Video Overview](../QtMultimedia.videooverview.md)
-   [Camera Overview](../QtMultimedia.cameraoverview.md)
-   [Radio Overview](../QtMultimedia.radiooverview.md)

<span id="platform-notes"></span>
### Platform Notes

-   [BlackBerry](../QtMultimedia.blackberry.md)
-   [Windows](../QtMultimedia.qtmultimedia-windows.md)

<span id="reference"></span>
### Reference

-   Qt Multimedia
    -   QML Types
    -   C++ Classes

<!-- -->

-   Qt Audio Engine
    -   QML Types

<span id="examples"></span>
### Examples

-   Qt Multimedia Examples

