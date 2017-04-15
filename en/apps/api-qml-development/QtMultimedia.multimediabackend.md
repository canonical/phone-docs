---
Title: QtMultimedia.multimediabackend
---
        
Multimedia Backend Development
==============================

<span class="subtitle"></span>
details
Overview
--------

A multimedia backend provides the glue between platform specific libraries, and Qt Multimedia. In some cases the available cross-platform Multimedia APIs or implementations are not sufficient, or not immediately available on a certain platform. Alternatively, the multimedia implementation on a platform might expose certain extra properties or functionality that other platforms do not, or a finer degree of control might be possible. For these cases, it is possible to use extended controls directly.

In addition, if you plan to port the Qt Multimedia APIs to a new platform, you do this by implementing certain control and service classes, as detailed below.

<span id="extending-the-api"></span>
Extending the API
-----------------

For the developer who wishes to extend the functionality of the Qt Multimedia classes there are several classes of particular importance. The classes providing default functionality are QMediaService, QMediaServiceProvider and QMediaControl. Some of these classes are not in the public API since they are very seldom useful to application developers.

To extend the Multimedia API you would use the following three classes or classes derived from them.

-   QMediaServiceProvider is used by the top level client class to request a service. The top level class knowing what kind of service it needs.
-   QMediaService provides a service and when asked by the top level object, say a component, will return a QMediaControl object.
-   QMediaControl allows the control of the service using a known interface.

Consider a developer creating, for example, a media player class called MyPlayer. It may have special requirements beyond ordinary media players and so may need a custom service and a custom control. We can subclass QMediaServiceProvider to create our MyServiceProvider class. Also we will create a MyMediaService, and the MyMediaControl to manipulate the media service.

The MyPlayer object calls MyServiceProvider::requestService() to get an instance of MyMediaService. Then the MyPlayer object calls this service object it has just received and calling requestControl() it will receive the control object derived from QMediaControl.

Now we have all the parts necessary for our media application. We have the service provider, the service it provides and the control used to manipulate the service. Since our MyPlayer object has instances of the service and its control then it would be possible for these to be used by associated classes that could do additional actions, perhaps with their own control since the parameter to requestControl() is a zero-terminated string, *const char \**, for the interface.

<span id="adding-a-media-service-provider"></span>
### Adding a Media Service Provider

In general, adding a new media service provider is outside the scope of this documentation. For best results, consult the existing provider source code, and seek assistance on the relevant mailing lists and IRC channels.

<span id="classes-for-service-implementers"></span>
### Classes for service implementers.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>QAudioDecoderControl</p></td>
<td><p>Access to the audio decoding functionality of a QMediaService</p></td>
</tr>
<tr class="even">
<td><p>QAudioEncoderSettingsControl</p></td>
<td><p>Access to the settings of a media service that performs audio encoding</p></td>
</tr>
<tr class="odd">
<td><p>QAudioInputSelectorControl</p></td>
<td><p>Audio input selector media control</p></td>
</tr>
<tr class="even">
<td><p>QAudioOutputSelectorControl</p></td>
<td><p>Audio output selector media control</p></td>
</tr>
<tr class="odd">
<td><p>QAudioRoleControl</p></td>
<td><p>Control over the audio role of a media object</p></td>
</tr>
<tr class="even">
<td><p>QCameraCaptureBufferFormatControl</p></td>
<td><p>Control for setting the capture buffer format</p></td>
</tr>
<tr class="odd">
<td><p>QCameraCaptureDestinationControl</p></td>
<td><p>Control for setting capture destination</p></td>
</tr>
<tr class="even">
<td><p>QCameraControl</p></td>
<td><p>Abstract base class for classes that control still cameras or video cameras</p></td>
</tr>
<tr class="odd">
<td><p>QCameraExposureControl</p></td>
<td><p>Allows controlling camera exposure parameters</p></td>
</tr>
<tr class="even">
<td><p>QCameraFeedbackControl</p></td>
<td><p>Allows controlling feedback (sounds etc) during camera operation</p></td>
</tr>
<tr class="odd">
<td><p>QCameraFlashControl</p></td>
<td><p>Allows controlling a camera's flash</p></td>
</tr>
<tr class="even">
<td><p>QCameraFocusControl</p></td>
<td><p>Supplies control for focusing related camera parameters</p></td>
</tr>
<tr class="odd">
<td><p>QCameraImageCaptureControl</p></td>
<td><p>Control interface for image capture services</p></td>
</tr>
<tr class="even">
<td><p>QCameraImageProcessingControl</p></td>
<td><p>Abstract class for controlling image processing parameters, like white balance, contrast, saturation, sharpening and denoising</p></td>
</tr>
<tr class="odd">
<td><p>QCameraInfoControl</p></td>
<td><p>Camera info media control</p></td>
</tr>
<tr class="even">
<td><p>QCameraLocksControl</p></td>
<td><p>Abstract base class for classes that control still cameras or video cameras</p></td>
</tr>
<tr class="odd">
<td><p>QCameraViewfinderSettingsControl</p></td>
<td><p>Abstract class for controlling camera viewfinder parameters</p></td>
</tr>
<tr class="even">
<td><p>QCameraZoomControl</p></td>
<td><p>Supplies control for optical and digital camera zoom</p></td>
</tr>
<tr class="odd">
<td><p>QImageEncoderControl</p></td>
<td><p>Access to the settings of a media service that performs image encoding</p></td>
</tr>
<tr class="even">
<td><p>QMediaAudioProbeControl</p></td>
<td><p>Allows control over probing audio data in media objects</p></td>
</tr>
<tr class="odd">
<td><p>QMediaAvailabilityControl</p></td>
<td><p>Supplies a control for reporting availability of a service</p></td>
</tr>
<tr class="even">
<td><p>QMediaContainerControl</p></td>
<td><p>Access to the output container format of a QMediaService</p></td>
</tr>
<tr class="odd">
<td><p>QMediaControl</p></td>
<td><p>Base interface for media service controls</p></td>
</tr>
<tr class="even">
<td><p>QMediaGaplessPlaybackControl</p></td>
<td><p>Access to the gapless playback related control of a QMediaService</p></td>
</tr>
<tr class="odd">
<td><p>QMediaNetworkAccessControl</p></td>
<td><p>Allows the setting of the Network Access Point for media related activities</p></td>
</tr>
<tr class="even">
<td><p>QMediaPlayerControl</p></td>
<td><p>Access to the media playing functionality of a QMediaService</p></td>
</tr>
<tr class="odd">
<td><p>QMediaRecorderControl</p></td>
<td><p>Access to the recording functionality of a QMediaService</p></td>
</tr>
<tr class="even">
<td><p>QMediaService</p></td>
<td><p>Common base class for media service implementations</p></td>
</tr>
<tr class="odd">
<td><p>QMediaStreamsControl</p></td>
<td><p>Media stream selection control</p></td>
</tr>
<tr class="even">
<td><p>QMediaVideoProbeControl</p></td>
<td><p>Allows control over probing video frames in media objects</p></td>
</tr>
<tr class="odd">
<td><p>QMetaDataReaderControl</p></td>
<td><p>Read access to the meta-data of a QMediaService's media</p></td>
</tr>
<tr class="even">
<td><p>QMetaDataWriterControl</p></td>
<td><p>Write access to the meta-data of a QMediaService's media</p></td>
</tr>
<tr class="odd">
<td><p>QRadioDataControl</p></td>
<td><p>Access to the RDS functionality of the radio in the QMediaService</p></td>
</tr>
<tr class="even">
<td><p>QRadioTunerControl</p></td>
<td><p>Access to the radio tuning functionality of a QMediaService</p></td>
</tr>
<tr class="odd">
<td><p>QVideoDeviceSelectorControl</p></td>
<td><p>Video device selector media control</p></td>
</tr>
<tr class="even">
<td><p>QVideoEncoderSettingsControl</p></td>
<td><p>Access to the settings of a media service that performs video encoding</p></td>
</tr>
<tr class="odd">
<td><p>QVideoRendererControl</p></td>
<td><p>Media control for rendering video to a QAbstractVideoSurface</p></td>
</tr>
<tr class="even">
<td><p>QVideoWindowControl</p></td>
<td><p>Media control for rendering video to a window</p></td>
</tr>
</tbody>
</table>

