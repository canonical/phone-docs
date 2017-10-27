---
Title: QtMultimedia.changes
---

# QtMultimedia.changes

<span class="subtitle"></span>
<!-- $$$changes.html-description -->
<p>The Qt Multimedia module in Qt 5 combines (and replaces) two older modules, namely the Qt Multimedia module from Qt 4.x, and Qt Multimedia Kit module from Qt Mobility. Existing code that uses Qt Multimedia from Qt 4 can be ported with minimal effort, but porting code that uses Qt Multimedia Kit may be a more involved process. The <a href="#changed-features">changed features</a> section highlights changes relevant to porting.</p>
<p>Also, note that widget-based classes, such as QVideoWidget, are now in a separate module called Qt Multimedia Widgets.</p>
<h2 id="new-features-in-qt-5-0">New features in Qt 5.0</h2>
<p>There are a number of new features in Qt Multimedia:</p>
<ul>
<li>Expanded QML API</li>
<li>In addition to the <a href="QtMultimedia.qml-multimedia.md#video">Video</a> QML type, there is now the option of using <a href="QtMultimedia.MediaPlayer.md">MediaPlayer</a> and <a href="QtMultimedia.VideoOutput.md">VideoOutput</a> together</li>
<li>QML <a href="QtMultimedia.Torch.md">Torch</a> class</li>
<li>New QAudioRecorder class</li>
<li>Volume support for QAudioOutput and QAudioInput</li>
<li>More examples and documentation</li>
<li>QSound moved from Qt GUI to Qt Multimedia</li>
<li>QSoundEffect available to C++ now, as well as QML</li>
<li>FM Radio Data System classes and types now available (QRadioData, RadioData)</li>
<li>Various other API improvements and bugfixes</li>
</ul>
<h2 id="removed-features">Removed features</h2>
<p>A number of classes or features previously offered in Qt Multimedia or Qt Multimedia Kit have been removed.</p>
<table class="generic" width="70%">
<thead><tr class="qt-style"><th >Removed feature</th><th >Notes</th></tr></thead>
<tr valign="top"><td >QMediaImageViewer</td><td >This class (and related controls and services) were removed since their functionality was not suitable for many applications</td></tr>
</table>
<h2 id="changed-features">Changed features</h2>
<p>A number of classes previously offered in Qt Multimedia or Qt Multimedia Kit have changed in ways that may affect previously written code. This table highlights such changes.</p>
<table class="generic" width="70%">
<thead><tr class="qt-style"><th >Changed feature</th><th >Notes</th></tr></thead>
<tr valign="top"><td ><code>qmake</code> project file changes</td><td >Previously, to use Qt Multimedia Kit, the <code>qmake</code> project file must contain<pre class="cpp">CONFIG <span class="operator">+</span><span class="operator">=</span> mobility
MOBILITY <span class="operator">+</span><span class="operator">=</span> multimedia</pre>
<p>Now, you only need to write</p>
<pre class="cpp">QT <span class="operator">+</span><span class="operator">=</span> multimedia</pre>
<p>Or, if you want to use the widget classes,</p>
<pre class="cpp">QT <span class="operator">+</span><span class="operator">=</span> multimedia multimediawidgets</pre>
</td></tr>
<tr valign="top"><td >Namespaces</td><td >The <code>QtMultimediaKit</code> namespace has been renamed to QMultimedia. This affects a few enumerations, namely <code>SupportEstimate</code>, <code>EncodingQuality</code>, <code>EncodingMode</code> and <code>AvailabilityStatus</code>. Searching and replacing <code>QtMultimediaKit</code> with <code>QMultimedia</code> will greatly aid porting efforts. Metadata have been split off into their own namespace, QMediaMetaData.</td></tr>
<tr valign="top"><td >Metadata types</td><td >In Qt Multimedia Kit, pre-defined metadata keys were enumerations in the <code>QtMultimediaKit</code> namespace. These pre-defined keys have been changed to string literals in the <code>QMediaMetaData</code> namespace, for consistency with extended keys.</td></tr>
<tr valign="top"><td >Metadata accessor methods</td><td >In Qt Multimedia Kit, there were two different families of methods to access metadata. Functions such as <code>QMediaObject::metaData()</code> operated on pre-defined metadata using enumerated keys, while functions such as <code>QMediaObject::extendedMetaData()</code> operated on extended metadata using string keys. Qt 5 combines both families into one (e.g&#x2e; QMediaObject::metaData()), which can operate on both pre-defined and extended metadata, using string keys.</td></tr>
<tr valign="top"><td >Qt Metatype registration</td><td >Qt 5 registers many more classes and types with the meta-object system than before. If you have previously applied Q_DECLARE_METATYPE macros to any Qt Multimedia class, you will probably need to remove them.</td></tr>
<tr valign="top"><td >QSoundEffect availability</td><td >The SoundEffect QML type was publicly accessible in Qt Multimeda Kit, and now the C++ version is officially public too. If your code contains the previously undocumented QSoundEffect, you may need to update it.</td></tr>
<tr valign="top"><td >Camera controls</td><td >A large number of the camera controls (QCameraImageProcessingControl, QCameraFocusControl, etc.) have been updated to address a number of design flaws. In particular, a number of discrete accessor methods have been collapsed into parametrized methods, and the ranges or data types of some parameters have been adjusted.</td></tr>
</table>
<!-- @@@changes.html -->
