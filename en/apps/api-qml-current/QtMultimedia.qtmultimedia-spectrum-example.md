---
Title: QtMultimedia.qtmultimedia-spectrum-example
---

# QtMultimedia.qtmultimedia-spectrum-example

<span class="subtitle"></span>
<!-- $$$spectrum-description -->
<p><i>Spectrum</i> demonstrates how the <a href="QtMultimedia.qtmultimedia-index.md">Qt Multimedia</a> module can be used to analyze an audio stream while recording it, and also play the recorded stream.</p>
<p class="centerAlign"><img src="../../../../media/spectrum-demo.png" alt="" /></p><p>Because Qt Multimedia allows the application to access the raw audio stream, the data can either be inspected or modified by the application. The Spectrum Analyzer example displays three pieces of information while audio is being either captured or played back:</p>
<ul>
<li>Information about the raw audio stream, shown in the uppermost widget:<ul>
<li>The amount of data currently in the buffer, shown in blue</li>
<li>The segment of data which was most recently analysed to compute the frequency spectrum, shown in green</li>
<li>The raw audio waveform, shown in white and scrolling from right to left</li>
</ul>
</li>
<li>A representation of the frequency spectrum, shown at the lower left</li>
<li>The current RMS level of the audio stream, and the recent 'high watermark' level, shown at the lower right</li>
</ul>
<p>Spectrum analysis is performed by calculating the Fast Fourier Transform (FFT) of a segment of audio data. An open-source library, <a href="http://ldesoras.free.fr/prod.html">FFTReal</a>, against which the application is dynamically linked, is used to compute the transform.</p>
<h2 id="running-the-example">Running the Example</h2>
<p>To run the example from Qt Creator, open the <b>Welcome</b> mode and select the example from <b>Examples</b>. For more information, visit Building and Running an Example.</p>
<p>Files:</p>
<ul>
<li>spectrum/3rdparty/fftreal/Array.h</li>
<li>spectrum/3rdparty/fftreal/DynArray.h</li>
<li>spectrum/3rdparty/fftreal/FFTReal.h</li>
<li>spectrum/3rdparty/fftreal/FFTRealFixLen.h</li>
<li>spectrum/3rdparty/fftreal/FFTRealFixLenParam.h</li>
<li>spectrum/3rdparty/fftreal/FFTRealPassDirect.h</li>
<li>spectrum/3rdparty/fftreal/FFTRealPassInverse.h</li>
<li>spectrum/3rdparty/fftreal/FFTRealSelect.h</li>
<li>spectrum/3rdparty/fftreal/FFTRealUseTrigo.h</li>
<li>spectrum/3rdparty/fftreal/OscSinCos.h</li>
<li>spectrum/3rdparty/fftreal/TestAccuracy.h</li>
<li>spectrum/3rdparty/fftreal/TestHelperFixLen.h</li>
<li>spectrum/3rdparty/fftreal/TestHelperNormal.h</li>
<li>spectrum/3rdparty/fftreal/TestSpeed.h</li>
<li>spectrum/3rdparty/fftreal/TestWhiteNoiseGen.h</li>
<li>spectrum/3rdparty/fftreal/def.h</li>
<li>spectrum/3rdparty/fftreal/fftreal_wrapper.cpp</li>
<li>spectrum/3rdparty/fftreal/fftreal_wrapper.h</li>
<li>spectrum/3rdparty/fftreal/test.cpp</li>
<li>spectrum/3rdparty/fftreal/test_fnc.h</li>
<li>spectrum/3rdparty/fftreal/test_settings.h</li>
<li>spectrum/3rdparty/fftreal/stopwatch/ClockCycleCounter.cpp</li>
<li>spectrum/3rdparty/fftreal/stopwatch/ClockCycleCounter.h</li>
<li>spectrum/3rdparty/fftreal/stopwatch/Int64.h</li>
<li>spectrum/3rdparty/fftreal/stopwatch/StopWatch.cpp</li>
<li>spectrum/3rdparty/fftreal/stopwatch/StopWatch.h</li>
<li>spectrum/3rdparty/fftreal/stopwatch/def.h</li>
<li>spectrum/3rdparty/fftreal/stopwatch/fnc.h</li>
<li>spectrum/app/engine.cpp</li>
<li>spectrum/app/engine.h</li>
<li>spectrum/app/frequencyspectrum.cpp</li>
<li>spectrum/app/frequencyspectrum.h</li>
<li>spectrum/app/levelmeter.cpp</li>
<li>spectrum/app/levelmeter.h</li>
<li>spectrum/app/mainwidget.cpp</li>
<li>spectrum/app/mainwidget.h</li>
<li>spectrum/app/progressbar.cpp</li>
<li>spectrum/app/progressbar.h</li>
<li>spectrum/app/settingsdialog.cpp</li>
<li>spectrum/app/settingsdialog.h</li>
<li>spectrum/app/spectrograph.cpp</li>
<li>spectrum/app/spectrograph.h</li>
<li>spectrum/app/spectrum.h</li>
<li>spectrum/app/spectrumanalyser.cpp</li>
<li>spectrum/app/spectrumanalyser.h</li>
<li>spectrum/app/tonegenerator.cpp</li>
<li>spectrum/app/tonegenerator.h</li>
<li>spectrum/app/tonegeneratordialog.cpp</li>
<li>spectrum/app/tonegeneratordialog.h</li>
<li>spectrum/app/utils.cpp</li>
<li>spectrum/app/utils.h</li>
<li>spectrum/app/waveform.cpp</li>
<li>spectrum/app/waveform.h</li>
<li>spectrum/app/wavfile.cpp</li>
<li>spectrum/app/wavfile.h</li>
<li>spectrum/app/main.cpp</li>
<li>spectrum/spectrum.pro</li>
<li>spectrum/3rdparty/fftreal/fftreal.pro</li>
<li>spectrum/app/app.pro</li>
<li>spectrum/app/spectrum.qrc</li>
</ul>
<!-- @@@spectrum -->
