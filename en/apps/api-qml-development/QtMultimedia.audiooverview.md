---
Title: QtMultimedia.audiooverview
---
        
Audio Overview
==============

<span class="subtitle"></span>
details
Audio Features
--------------

Qt Multimedia offers a range of audio classes, covering both low and high level approaches to audio input, output and processing. In addition to traditional audio usage, the Qt Audio Engine QML types offer high level 3D positional audio for QML applications. See that documentation for more information.

<span id="audio-implementation-details"></span>
Audio Implementation Details
----------------------------

<span id="playing-compressed-audio"></span>
### Playing Compressed Audio

For playing media or audio files that are not simple, uncompressed audio, you can use the QMediaPlayer C++ class, or the Audio and MediaPlayer QML types. The QMediaPlayer class and associated QML types are also capable of playing video, if required. The compressed audio formats supported does depend on the operating system environment, and also what media plugins the user may have installed.

Here is how you play a local file using C++:

``` cpp
player = new QMediaPlayer;
// ...
player->setMedia(QUrl::fromLocalFile("/Users/me/Music/coolsong.mp3"));
player->setVolume(50);
player->play();
```

You can also put files (even remote URLs) into a playlist:

``` cpp
player = new QMediaPlayer;
playlist = new QMediaPlaylist(player);
playlist->addMedia(QUrl("http://example.com/myfile1.mp3"));
playlist->addMedia(QUrl("http://example.com/myfile2.mp3"));
// ...
playlist->setCurrentIndex(1);
player->play();
```

<span id="recording-audio-to-a-file"></span>
### Recording Audio to a File

For recording audio to a file, the QAudioRecorder class allows you to compress audio data from an input device and record it.

``` cpp
audioRecorder = new QAudioRecorder;
QAudioEncoderSettings audioSettings;
audioSettings.setCodec("audio/amr");
audioSettings.setQuality(QMultimedia::HighQuality);
audioRecorder->setEncodingSettings(audioSettings);
audioRecorder->setOutputLocation(QUrl::fromLocalFile("test.amr"));
audioRecorder->record();
```

<span id="low-latency-sound-effects"></span>
### Low Latency Sound Effects

In addition to the raw access to sound devices described above, the QSoundEffect class (and SoundEffect QML type) offers a slightly higher level way to play sounds. These classes allow you to specify a WAV format file which can then be played with low latency when necessary. Both QSoundEffect and SoundEffect have essentially the same API.

You can adjust the number of loops a sound effect is played, as well as the volume (or muting) of the effect.

For older, Qt 4.x based applications QSound is also available. Applications are recommended to use QSoundEffect where possible.

<span id="monitoring-audio-data-during-playback-or-recording"></span>
### Monitoring Audio Data During Playback or Recording

The QAudioProbe class allows you to monitor audio data being played or recorded in the higher level classes like QMediaPlayer, QCamera and QAudioRecorder. After creating your high level class, you can simply set the source of the probe to your class, and receive audio buffers as they are processed. This is useful for several audio processing tasks, particularly for visualization or adjusting gain. You cannot modify the buffers, and they may arrive at a slightly different time than the media pipeline processes them.

Here's an example of installing a probe during recording:

``` cpp
audioRecorder = new QAudioRecorder;
QAudioEncoderSettings audioSettings;
audioSettings.setCodec("audio/amr");
audioSettings.setQuality(QMultimedia::HighQuality);
audioRecorder->setEncodingSettings(audioSettings);
audioRecorder->setOutputLocation(QUrl::fromLocalFile("test.amr"));
audioProbe = new QAudioProbe(this);
if (audioProbe->setSource(audioRecorder)) {
    // Probing succeeded, audioProbe->isValid() should be true.
    connect(audioProbe, SIGNAL(audioBufferProbed(QAudioBuffer)),
            this, SLOT(calculateLevel(QAudioBuffer)));
}
audioRecorder->record();
// Now audio buffers being recorded should be signaled
// by the probe, so we can do things like calculating the
// audio power level, or performing a frequency transform
```

<span id="low-level-audio-playback-and-recording"></span>
### Low Level Audio Playback and Recording

Qt Multimedia offers classes for raw access to audio input and output facilities, allowing applications to receive raw data from devices like microphones, and to write raw data to speakers or other devices. Generally these classes do not do any audio decoding, or other processing, but they can support different types of raw audio data.

The QAudioOutput class offers raw audio data output, while QAudioInput offers raw audio data input. Both classes have adjustable buffers and latency, so they are suitable for both low latency use cases (like games or VOIP) and high latency (like music playback). The available hardware determines what audio outputs and inputs are available.

<span id="push-and-pull"></span>
#### Push and Pull

The low level audio classes can operate in two modes - `push` and `pull`. In `pull` mode, the audio device is started by giving it a QIODevice. For an output device, the QAudioOutput class will pull data from the QIODevice (using QIODevice::read()) when more audio data is required. Conversely, for `pull` mode with QAudioInput, when audio data is available then the data will be written directly to the QIODevice.

In `push` mode, the audio device provides a QIODevice instance that can be written or read to as needed. Typically this results in simpler code but more buffering, which may affect latency.

<span id="decoding-compressed-audio-to-memory"></span>
### Decoding Compressed Audio to Memory

In some cases you may want to decode a compressed audio file and do further processing yourself (for example, mixing multiple samples or using custom digital signal processing algorithms). QAudioDecoder supports decoding local files or data streams from QIODevice instances.

Here's an example of decoding a local file:

``` cpp
QAudioFormat desiredFormat;
desiredFormat.setChannelCount(2);
desiredFormat.setCodec("audio/x-raw");
desiredFormat.setSampleType(QAudioFormat::UnSignedInt);
desiredFormat.setSampleRate(48000);
desiredFormat.setSampleSize(16);
QAudioDecoder *decoder = new QAudioDecoder(this);
decoder->setAudioFormat(desiredFormat);
decoder->setSourceFilename("level1.mp3");
connect(decoder, SIGNAL(bufferReady()), this, SLOT(readBuffer()));
decoder->start();
// Now wait for bufferReady() signal and call decoder->read()
```

<span id="examples"></span>
Examples
--------

There are both C++ and QML examples available.

<span id="c-examples"></span>
### C++ Examples

<span id="reference-documentation"></span>
Reference Documentation
-----------------------

<span id="c-classes"></span>
### C++ Classes

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QAudio</p></td>
<td><p>Contains enums used by the audio classes</p></td>
</tr>
<tr class="even">
<td><p>QAudioBuffer</p></td>
<td><p>Represents a collection of audio samples with a specific format and sample rate</p></td>
</tr>
<tr class="odd">
<td><p>QAudioBuffer::StereoFrame</p></td>
<td><p>Simple wrapper for a stereo audio frame</p></td>
</tr>
<tr class="even">
<td><p>QAudioDecoder</p></td>
<td><p>Allows decoding audio</p></td>
</tr>
<tr class="odd">
<td><p>QAudioDeviceInfo</p></td>
<td><p>Interface to query audio devices and their functionality</p></td>
</tr>
<tr class="even">
<td><p>QAudioFormat</p></td>
<td><p>Stores audio stream parameter information</p></td>
</tr>
<tr class="odd">
<td><p>QAudioInput</p></td>
<td><p>Interface for receiving audio data from an audio input device</p></td>
</tr>
<tr class="even">
<td><p>QAudioOutput</p></td>
<td><p>Interface for sending audio data to an audio output device</p></td>
</tr>
<tr class="odd">
<td><p>QAudioProbe</p></td>
<td><p>Allows you to monitor audio being played or recorded</p></td>
</tr>
<tr class="even">
<td><p>QSound</p></td>
<td><p>Method to play .wav sound files</p></td>
</tr>
<tr class="odd">
<td><p>QSoundEffect</p></td>
<td><p>Way to play low latency sound effects</p></td>
</tr>
</tbody>
</table>

<span id="qml-types"></span>
### QML Types

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><a href="QtMultimedia.Audio.md">Audio</a></p></td>
<td><p>Add audio playback to a scene</p></td>
</tr>
<tr class="even">
<td><p><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a></p></td>
<td><p>Add media playback to a scene</p></td>
</tr>
<tr class="odd">
<td><p><a href="QtMultimedia.Playlist.md">Playlist</a></p></td>
<td><p>For specifying a list of media to be played</p></td>
</tr>
<tr class="even">
<td><p><a href="QtMultimedia.PlaylistItem.md">PlaylistItem</a></p></td>
<td><p>Defines an item in a Playlist</p></td>
</tr>
<tr class="odd">
<td><p><a href="QtMultimedia.SoundEffect.md">SoundEffect</a></p></td>
<td><p>Type provides a way to play sound effects in QML</p></td>
</tr>
</tbody>
</table>

