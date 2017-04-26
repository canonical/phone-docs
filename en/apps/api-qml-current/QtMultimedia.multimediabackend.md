---
Title: QtMultimedia.multimediabackend
---

# QtMultimedia.multimediabackend

<span class="subtitle"></span>
<!-- $$$multimediabackend.html-description -->
<h2 id="overview">Overview</h2>
<p>A multimedia backend provides the glue between platform specific libraries, and Qt Multimedia. In some cases the available cross-platform Multimedia APIs or implementations are not sufficient, or not immediately available on a certain platform. Alternatively, the multimedia implementation on a platform might expose certain extra properties or functionality that other platforms do not, or a finer degree of control might be possible. For these cases, it is possible to use extended controls directly.</p>
<p>In addition, if you plan to port the Qt Multimedia APIs to a new platform, you do this by implementing certain control and service classes, as detailed below.</p>
<h2 id="extending-the-api">Extending the API</h2>
<p>For the developer who wishes to extend the functionality of the Qt Multimedia classes there are several classes of particular importance. The classes providing default functionality are QMediaService, QMediaServiceProvider and QMediaControl. Some of these classes are not in the public API since they are very seldom useful to application developers.</p>
<p>To extend the Multimedia API you would use the following three classes or classes derived from them.</p>
<ul>
<li>QMediaServiceProvider is used by the top level client class to request a service. The top level class knowing what kind of service it needs.</li>
<li>QMediaService provides a service and when asked by the top level object, say a component, will return a QMediaControl object.</li>
<li>QMediaControl allows the control of the service using a known interface.</li>
</ul>
<p>Consider a developer creating, for example, a media player class called MyPlayer. It may have special requirements beyond ordinary media players and so may need a custom service and a custom control. We can subclass QMediaServiceProvider to create our MyServiceProvider class. Also we will create a MyMediaService, and the MyMediaControl to manipulate the media service.</p>
<p>The MyPlayer object calls MyServiceProvider::requestService() to get an instance of MyMediaService. Then the MyPlayer object calls this service object it has just received and calling requestControl() it will receive the control object derived from QMediaControl.</p>
<p>Now we have all the parts necessary for our media application. We have the service provider, the service it provides and the control used to manipulate the service. Since our MyPlayer object has instances of the service and its control then it would be possible for these to be used by associated classes that could do additional actions, perhaps with their own control since the parameter to requestControl() is a zero-terminated string, <i>const char *</i>, for the interface.</p>
<h3 >Adding a Media Service Provider</h3>
<p>In general, adding a new media service provider is outside the scope of this documentation. For best results, consult the existing provider source code, and seek assistance on the relevant mailing lists and IRC channels.</p>
<h3 >Classes for service implementers.</h3>
<table class="annotated">
<tr class="odd topAlign"><td class="tblName"><p>QAudioDecoderControl</p></td><td class="tblDescr"><p>Access to the audio decoding functionality of a QMediaService</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QAudioEncoderSettingsControl</p></td><td class="tblDescr"><p>Access to the settings of a media service that performs audio encoding</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QAudioInputSelectorControl</p></td><td class="tblDescr"><p>Audio input selector media control</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QAudioOutputSelectorControl</p></td><td class="tblDescr"><p>Audio output selector media control</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QAudioRoleControl</p></td><td class="tblDescr"><p>Control over the audio role of a media object</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QCameraCaptureBufferFormatControl</p></td><td class="tblDescr"><p>Control for setting the capture buffer format</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QCameraCaptureDestinationControl</p></td><td class="tblDescr"><p>Control for setting capture destination</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QCameraControl</p></td><td class="tblDescr"><p>Abstract base class for classes that control still cameras or video cameras</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QCameraExposureControl</p></td><td class="tblDescr"><p>Allows controlling camera exposure parameters</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QCameraFeedbackControl</p></td><td class="tblDescr"><p>Allows controlling feedback (sounds etc) during camera operation</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QCameraFlashControl</p></td><td class="tblDescr"><p>Allows controlling a camera's flash</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QCameraFocusControl</p></td><td class="tblDescr"><p>Supplies control for focusing related camera parameters</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QCameraImageCaptureControl</p></td><td class="tblDescr"><p>Control interface for image capture services</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QCameraImageProcessingControl</p></td><td class="tblDescr"><p>Abstract class for controlling image processing parameters, like white balance, contrast, saturation, sharpening and denoising</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QCameraInfoControl</p></td><td class="tblDescr"><p>Camera info media control</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QCameraLocksControl</p></td><td class="tblDescr"><p>Abstract base class for classes that control still cameras or video cameras</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QCameraViewfinderSettingsControl</p></td><td class="tblDescr"><p>Abstract class for controlling camera viewfinder parameters</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QCameraZoomControl</p></td><td class="tblDescr"><p>Supplies control for optical and digital camera zoom</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QImageEncoderControl</p></td><td class="tblDescr"><p>Access to the settings of a media service that performs image encoding</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QMediaAudioProbeControl</p></td><td class="tblDescr"><p>Allows control over probing audio data in media objects</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QMediaAvailabilityControl</p></td><td class="tblDescr"><p>Supplies a control for reporting availability of a service</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QMediaContainerControl</p></td><td class="tblDescr"><p>Access to the output container format of a QMediaService</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QMediaControl</p></td><td class="tblDescr"><p>Base interface for media service controls</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QMediaGaplessPlaybackControl</p></td><td class="tblDescr"><p>Access to the gapless playback related control of a QMediaService</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QMediaNetworkAccessControl</p></td><td class="tblDescr"><p>Allows the setting of the Network Access Point for media related activities</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QMediaPlayerControl</p></td><td class="tblDescr"><p>Access to the media playing functionality of a QMediaService</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QMediaRecorderControl</p></td><td class="tblDescr"><p>Access to the recording functionality of a QMediaService</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QMediaService</p></td><td class="tblDescr"><p>Common base class for media service implementations</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QMediaStreamsControl</p></td><td class="tblDescr"><p>Media stream selection control</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QMediaVideoProbeControl</p></td><td class="tblDescr"><p>Allows control over probing video frames in media objects</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QMetaDataReaderControl</p></td><td class="tblDescr"><p>Read access to the meta-data of a QMediaService's media</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QMetaDataWriterControl</p></td><td class="tblDescr"><p>Write access to the meta-data of a QMediaService's media</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QRadioDataControl</p></td><td class="tblDescr"><p>Access to the RDS functionality of the radio in the QMediaService</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QRadioTunerControl</p></td><td class="tblDescr"><p>Access to the radio tuning functionality of a QMediaService</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QVideoDeviceSelectorControl</p></td><td class="tblDescr"><p>Video device selector media control</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QVideoEncoderSettingsControl</p></td><td class="tblDescr"><p>Access to the settings of a media service that performs video encoding</p></td></tr>
<tr class="odd topAlign"><td class="tblName"><p>QVideoRendererControl</p></td><td class="tblDescr"><p>Media control for rendering video to a QAbstractVideoSurface</p></td></tr>
<tr class="even topAlign"><td class="tblName"><p>QVideoWindowControl</p></td><td class="tblDescr"><p>Media control for rendering video to a window</p></td></tr>
</table>
<!-- @@@multimediabackend.html -->
