---
Title: QtMultimedia.audiooverview
---

# QtMultimedia.audiooverview

<span class="subtitle"></span>
<!-- $$$audiooverview.html-description -->
<h2 id="audio-features">Audio Features</h2>
<p>Qt Multimedia offers a range of audio classes, covering both low and high level approaches to audio input, output and processing. In addition to traditional audio usage, the Qt Audio Engine QML types offer high level 3D positional audio for QML applications. See that documentation for more information.</p>
<h2 id="audio-implementation-details">Audio Implementation Details</h2>
<h3 >Playing Compressed Audio</h3>
<p>For playing media or audio files that are not simple, uncompressed audio, you can use the QMediaPlayer C++ class, or the Audio and MediaPlayer QML types. The QMediaPlayer class and associated QML types are also capable of playing video, if required. The compressed audio formats supported does depend on the operating system environment, and also what media plugins the user may have installed.</p>
<p>Here is how you play a local file using C++:</p>
<pre class="cpp">player <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QMediaPlayer</span>;
<span class="comment">// ...</span>
player<span class="operator">-</span><span class="operator">&gt;</span>setMedia(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;/Users/me/Music/coolsong.mp3&quot;</span>));
player<span class="operator">-</span><span class="operator">&gt;</span>setVolume(<span class="number">50</span>);
player<span class="operator">-</span><span class="operator">&gt;</span>play();</pre>
<p>You can also put files (even remote URLs) into a playlist:</p>
<pre class="cpp">player <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QMediaPlayer</span>;
playlist <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QMediaPlaylist</span>(player);
playlist<span class="operator">-</span><span class="operator">&gt;</span>addMedia(<span class="type">QUrl</span>(<span class="string">&quot;http://example.com/myfile1.mp3&quot;</span>));
playlist<span class="operator">-</span><span class="operator">&gt;</span>addMedia(<span class="type">QUrl</span>(<span class="string">&quot;http://example.com/myfile2.mp3&quot;</span>));
<span class="comment">// ...</span>
playlist<span class="operator">-</span><span class="operator">&gt;</span>setCurrentIndex(<span class="number">1</span>);
player<span class="operator">-</span><span class="operator">&gt;</span>play();</pre>
<h3 >Recording Audio to a File</h3>
<p>For recording audio to a file, the QAudioRecorder class allows you to compress audio data from an input device and record it.</p>
<pre class="cpp">audioRecorder <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QAudioRecorder</span>;
<span class="type">QAudioEncoderSettings</span> audioSettings;
audioSettings<span class="operator">.</span>setCodec(<span class="string">&quot;audio/amr&quot;</span>);
audioSettings<span class="operator">.</span>setQuality(<span class="type">QMultimedia</span><span class="operator">::</span>HighQuality);
audioRecorder<span class="operator">-</span><span class="operator">&gt;</span>setEncodingSettings(audioSettings);
audioRecorder<span class="operator">-</span><span class="operator">&gt;</span>setOutputLocation(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;test.amr&quot;</span>));
audioRecorder<span class="operator">-</span><span class="operator">&gt;</span>record();</pre>
<h3 >Low Latency Sound Effects</h3>
<p>In addition to the raw access to sound devices described above, the QSoundEffect class (and SoundEffect QML type) offers a slightly higher level way to play sounds. These classes allow you to specify a WAV format file which can then be played with low latency when necessary. Both QSoundEffect and SoundEffect have essentially the same API.</p>
<p>You can adjust the number of loops a sound effect is played, as well as the volume (or muting) of the effect.</p>
<p>For older, Qt 4.x based applications QSound is also available. Applications are recommended to use QSoundEffect where possible.</p>
<h3 >Monitoring Audio Data During Playback or Recording</h3>
<p>The QAudioProbe class allows you to monitor audio data being played or recorded in the higher level classes like QMediaPlayer, QCamera and QAudioRecorder. After creating your high level class, you can simply set the source of the probe to your class, and receive audio buffers as they are processed. This is useful for several audio processing tasks, particularly for visualization or adjusting gain. You cannot modify the buffers, and they may arrive at a slightly different time than the media pipeline processes them.</p>
<p>Here's an example of installing a probe during recording:</p>
<pre class="cpp">audioRecorder <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QAudioRecorder</span>;
<span class="type">QAudioEncoderSettings</span> audioSettings;
audioSettings<span class="operator">.</span>setCodec(<span class="string">&quot;audio/amr&quot;</span>);
audioSettings<span class="operator">.</span>setQuality(<span class="type">QMultimedia</span><span class="operator">::</span>HighQuality);
audioRecorder<span class="operator">-</span><span class="operator">&gt;</span>setEncodingSettings(audioSettings);
audioRecorder<span class="operator">-</span><span class="operator">&gt;</span>setOutputLocation(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;test.amr&quot;</span>));
audioProbe <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QAudioProbe</span>(<span class="keyword">this</span>);
<span class="keyword">if</span> (audioProbe<span class="operator">-</span><span class="operator">&gt;</span>setSource(audioRecorder)) {
<span class="comment">// Probing succeeded, audioProbe-&gt;isValid() should be true.</span>
connect(audioProbe<span class="operator">,</span> SIGNAL(audioBufferProbed(<span class="type">QAudioBuffer</span>))<span class="operator">,</span>
<span class="keyword">this</span><span class="operator">,</span> SLOT(calculateLevel(<span class="type">QAudioBuffer</span>)));
}
audioRecorder<span class="operator">-</span><span class="operator">&gt;</span>record();
<span class="comment">// Now audio buffers being recorded should be signaled</span>
<span class="comment">// by the probe, so we can do things like calculating the</span>
<span class="comment">// audio power level, or performing a frequency transform</span></pre>
<h3 >Low Level Audio Playback and Recording</h3>
<p>Qt Multimedia offers classes for raw access to audio input and output facilities, allowing applications to receive raw data from devices like microphones, and to write raw data to speakers or other devices. Generally these classes do not do any audio decoding, or other processing, but they can support different types of raw audio data.</p>
<p>The QAudioOutput class offers raw audio data output, while QAudioInput offers raw audio data input. Both classes have adjustable buffers and latency, so they are suitable for both low latency use cases (like games or VOIP) and high latency (like music playback). The available hardware determines what audio outputs and inputs are available.</p>
<h4 >Push and Pull</h4>
<p>The low level audio classes can operate in two modes - <code>push</code> and <code>pull</code>. In <code>pull</code> mode, the audio device is started by giving it a QIODevice. For an output device, the QAudioOutput class will pull data from the QIODevice (using QIODevice::read()) when more audio data is required. Conversely, for <code>pull</code> mode with QAudioInput, when audio data is available then the data will be written directly to the QIODevice.</p>
<p>In <code>push</code> mode, the audio device provides a QIODevice instance that can be written or read to as needed. Typically this results in simpler code but more buffering, which may affect latency.</p>
<h3 >Decoding Compressed Audio to Memory</h3>
<p>In some cases you may want to decode a compressed audio file and do further processing yourself (for example, mixing multiple samples or using custom digital signal processing algorithms). QAudioDecoder supports decoding local files or data streams from QIODevice instances.</p>
<p>Here's an example of decoding a local file:</p>
<pre class="cpp"><span class="type">QAudioFormat</span> desiredFormat;
desiredFormat<span class="operator">.</span>setChannelCount(<span class="number">2</span>);
desiredFormat<span class="operator">.</span>setCodec(<span class="string">&quot;audio/x-raw&quot;</span>);
desiredFormat<span class="operator">.</span>setSampleType(<span class="type">QAudioFormat</span><span class="operator">::</span>UnSignedInt);
desiredFormat<span class="operator">.</span>setSampleRate(<span class="number">48000</span>);
desiredFormat<span class="operator">.</span>setSampleSize(<span class="number">16</span>);
<span class="type">QAudioDecoder</span> <span class="operator">*</span>decoder <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QAudioDecoder</span>(<span class="keyword">this</span>);
decoder<span class="operator">-</span><span class="operator">&gt;</span>setAudioFormat(desiredFormat);
decoder<span class="operator">-</span><span class="operator">&gt;</span>setSourceFilename(<span class="string">&quot;level1.mp3&quot;</span>);
connect(decoder<span class="operator">,</span> SIGNAL(bufferReady())<span class="operator">,</span> <span class="keyword">this</span><span class="operator">,</span> SLOT(readBuffer()));
decoder<span class="operator">-</span><span class="operator">&gt;</span>start();
<span class="comment">// Now wait for bufferReady() signal and call decoder-&gt;read()</span></pre>
<h2 id="examples">Examples</h2>
<p>There are both C++ and QML examples available.</p>
<h3 >C++ Examples</h3>
<h2 id="reference-documentation">Reference Documentation</h2>
<h3 >C++ Classes</h3>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p>QAudio</p></td><td class="tblDescr"><p>Contains enums used by the audio classes</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QAudioBuffer</p></td><td class="tblDescr"><p>Represents a collection of audio samples with a specific format and sample rate</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QAudioBuffer::StereoFrame</p></td><td class="tblDescr"><p>Simple wrapper for a stereo audio frame</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QAudioDecoder</p></td><td class="tblDescr"><p>Allows decoding audio</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QAudioDeviceInfo</p></td><td class="tblDescr"><p>Interface to query audio devices and their functionality</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QAudioFormat</p></td><td class="tblDescr"><p>Stores audio stream parameter information</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QAudioInput</p></td><td class="tblDescr"><p>Interface for receiving audio data from an audio input device</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QAudioOutput</p></td><td class="tblDescr"><p>Interface for sending audio data to an audio output device</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QAudioProbe</p></td><td class="tblDescr"><p>Allows you to monitor audio being played or recorded</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QSound</p></td><td class="tblDescr"><p>Method to play .wav sound files</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QSoundEffect</p></td><td class="tblDescr"><p>Way to play low latency sound effects</p></td></tr>
</table>
<h3 >QML Types</h3>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p><a href="QtMultimedia.Audio.md">Audio</a></p></td><td class="tblDescr"><p>Add audio playback to a scene</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a></p></td><td class="tblDescr"><p>Add media playback to a scene</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="QtMultimedia.Playlist.md">Playlist</a></p></td><td class="tblDescr"><p>For specifying a list of media to be played</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p><a href="QtMultimedia.PlaylistItem.md">PlaylistItem</a></p></td><td class="tblDescr"><p>Defines an item in a Playlist</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p><a href="QtMultimedia.SoundEffect.md">SoundEffect</a></p></td><td class="tblDescr"><p>Type provides a way to play sound effects in QML</p></td></tr>
</table>
<!-- @@@audiooverview.html -->
