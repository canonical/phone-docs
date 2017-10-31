---
Title: QtMultimedia.qtmultimedia-audiorecorder-example
---

# QtMultimedia.qtmultimedia-audiorecorder-example

<span class="subtitle"></span>
<!-- $$$audiorecorder-description -->
<p><i>Audio Recorder</i> demonstrates how to identify the available devices and supported codecs, and the use of QAudioRecorder class.</p>
<p class="centerAlign"><img src="https://assets.ubuntu.com/v1/d011d6db-audiorecorder.png" alt="" /></p>
<h2 id="running-the-example">Running the Example</h2>
<p>To run the example from Qt Creator, open the <b>Welcome</b> mode and select the example from <b>Examples</b>. For more information, visit Building and Running an Example.</p>
<h2 id="displaying-the-window-and-audio-settings">Displaying the Window and Audio Settings</h2>
<p>We display a window for the user to select the appropriate audio input, codec, container, and sample rate. Allow a setting of either quality or bitrate. Finally, the output file can be selected and recording can be started.</p>
<p>The lists are setup using the audioInputs(), supportedAudioCodecs(), supportedContainers(), supportedContainers(), and supportedAudioSampleRates() methods. The quality slider is setup from 0 (zero) to QMultimedia::VeryHighQuality with a default value of QMultimedia::NormalQuality, while the bitrates are hardcoded into the list.</p>
<h2 id="recording-audio">Recording Audio</h2>
<p>To record audio we simply create a QAudioRecorder object.</p>
<pre class="cpp">audioRecorder <span class="operator">=</span> <span class="keyword">new</span> <span class="type">QAudioRecorder</span>(<span class="keyword">this</span>);</pre>
<p>And setup the lists as described above. The text on the record and pause buttons are toggled depending on the state of the <code>audioRecorder</code> object. This means that if the state is QMediaRecorder::StoppedState then the button text will be &quot;Record&quot; and &quot;Pause&quot;. In QMediaRecorder::RecordingState the record button will have the text &quot;Stop&quot;, and in QMediaRecorder::PausedState the pause button will have the text &quot;Resume&quot;.</p>
<p>Pressing the buttons will also result in a toggle based on the state. If recording is stopped, then pressing the record button will setup the QAudioEncoderSettings based on the values of the selection lists, will set the encoding settings and container on the <code>audioRecorder</code> object, and start recording using the record() method.</p>
<pre class="cpp">    <span class="type">QAudioEncoderSettings</span> settings;
settings<span class="operator">.</span>setCodec(boxValue(ui<span class="operator">-</span><span class="operator">&gt;</span>audioCodecBox)<span class="operator">.</span>toString());
settings<span class="operator">.</span>setSampleRate(boxValue(ui<span class="operator">-</span><span class="operator">&gt;</span>sampleRateBox)<span class="operator">.</span>toInt());
settings<span class="operator">.</span>setBitRate(boxValue(ui<span class="operator">-</span><span class="operator">&gt;</span>bitrateBox)<span class="operator">.</span>toInt());
settings<span class="operator">.</span>setQuality(<span class="type">QMultimedia</span><span class="operator">::</span>EncodingQuality(ui<span class="operator">-</span><span class="operator">&gt;</span>qualitySlider<span class="operator">-</span><span class="operator">&gt;</span>value()));
settings<span class="operator">.</span>setEncodingMode(ui<span class="operator">-</span><span class="operator">&gt;</span>constantQualityRadioButton<span class="operator">-</span><span class="operator">&gt;</span>isChecked() <span class="operator">?</span>
<span class="type">QMultimedia</span><span class="operator">::</span>ConstantQualityEncoding :
<span class="type">QMultimedia</span><span class="operator">::</span>ConstantBitRateEncoding);
<span class="type">QString</span> container <span class="operator">=</span> boxValue(ui<span class="operator">-</span><span class="operator">&gt;</span>containerBox)<span class="operator">.</span>toString();
audioRecorder<span class="operator">-</span><span class="operator">&gt;</span>setEncodingSettings(settings<span class="operator">,</span> <span class="type">QVideoEncoderSettings</span>()<span class="operator">,</span> container);
audioRecorder<span class="operator">-</span><span class="operator">&gt;</span>record();</pre>
<p>While recording, the status bar of the application is updated with duration information from the durationChanged signal from the <code>audioRecorder</code> object.</p>
<pre class="cpp">ui<span class="operator">-</span><span class="operator">&gt;</span>statusbar<span class="operator">-</span><span class="operator">&gt;</span>showMessage(tr(<span class="string">&quot;Recorded %1 sec&quot;</span>)<span class="operator">.</span>arg(duration <span class="operator">/</span> <span class="number">1000</span>));</pre>
<p>Files:</p>
<ul>
<li>audiorecorder/audiorecorder.cpp</li>
<li>audiorecorder/audiorecorder.h</li>
<li>audiorecorder/audiorecorder.ui</li>
<li>audiorecorder/qaudiolevel.cpp</li>
<li>audiorecorder/qaudiolevel.h</li>
<li>audiorecorder/main.cpp</li>
<li>audiorecorder/audiorecorder.pro</li>
</ul>
<!-- @@@audiorecorder -->
