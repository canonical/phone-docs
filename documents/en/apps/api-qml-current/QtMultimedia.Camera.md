---
Title: QtMultimedia.Camera
---

# QtMultimedia.Camera

<span class="subtitle"></span>
<!-- $$$Camera-brief -->
<p>Access viewfinder frames, and take photos and movies. More...</p>
<!-- @@@Camera -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtMultimedia 5.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#availability-prop">availability</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#cameraState-prop">cameraState</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#cameraStatus-prop">cameraStatus</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#captureMode-prop">captureMode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#deviceId-prop">deviceId</a></b></b> : string</li>
<li class="fn"><b><b><a href="#digitalZoom-prop">digitalZoom</a></b></b> : real</li>
<li class="fn"><b><b><a href="#displayName-prop">displayName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#errorCode-prop">errorCode</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#errorString-prop">errorString</a></b></b> : string</li>
<li class="fn"><b><b><a href="#lockStatus-prop">lockStatus</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#maximumDigitalZoom-prop">maximumDigitalZoom</a></b></b> : real</li>
<li class="fn"><b><b><a href="#maximumOpticalZoom-prop">maximumOpticalZoom</a></b></b> : real</li>
<li class="fn"><b><b><a href="#mediaObject-prop">mediaObject</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData-prop">metaData</a></b></b><ul>
<li class="fn"><b><b><a href="#metaData.gpsLatitude-prop">metaData.gpsLatitude</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.gpsLongitude-prop">metaData.gpsLongitude</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.gpsAltitude-prop">metaData.gpsAltitude</a></b></b> : variant</li>
</ul>
</li>
<li class="fn"><b><b><a href="#metaData.cameraManufacturer-prop">metaData.cameraManufacturer</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.cameraModel-prop">metaData.cameraModel</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.dateTimeOriginal-prop">metaData.dateTimeOriginal</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.event-prop">metaData.event</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.gpsImgDirection-prop">metaData.gpsImgDirection</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.gpsProcessingMethod-prop">metaData.gpsProcessingMethod</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.gpsSpeed-prop">metaData.gpsSpeed</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.gpsTimestamp-prop">metaData.gpsTimestamp</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.gpsTrack-prop">metaData.gpsTrack</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.orientation-prop">metaData.orientation</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#metaData.subject-prop">metaData.subject</a></b></b> : variant</li>
<li class="fn"><b><b><a href="#opticalZoom-prop">opticalZoom</a></b></b> : real</li>
<li class="fn"><b><b><a href="#orientation-prop">orientation</a></b></b> : int</li>
<li class="fn"><b><b><a href="#position-prop">position</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#viewfinder-prop">viewfinder</a></b></b><ul>
<li class="fn"><b><b><a href="#viewfinder.minimumFrameRate-prop">viewfinder.minimumFrameRate</a></b></b> : real</li>
<li class="fn"><b><b><a href="#viewfinder.maximumFrameRate-prop">viewfinder.maximumFrameRate</a></b></b> : real</li>
</ul>
</li>
<li class="fn"><b><b><a href="#viewfinder.resolution-prop">viewfinder.resolution</a></b></b> : size</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#cameraStateChanged-signal">cameraStateChanged</a></b></b>(state)</li>
<li class="fn"><b><b><a href="#digitalZoomChanged-signal">digitalZoomChanged</a></b></b>(zoom)</li>
<li class="fn"><b><b><a href="#error-signal">error</a></b></b>(errorCode, errorString)</li>
<li class="fn"><b><b><a href="#lockStatusChanged-signal">lockStatusChanged</a></b></b>()</li>
<li class="fn"><b><b><a href="#manualWhiteBalanceChanged-signal">manualWhiteBalanceChanged</a></b></b>(qreal)</li>
<li class="fn"><b><b><a href="#maximumDigitalZoomChanged-signal">maximumDigitalZoomChanged</a></b></b>(zoom)</li>
<li class="fn"><b><b><a href="#maximumOpticalZoomChanged-signal">maximumOpticalZoomChanged</a></b></b>(zoom)</li>
<li class="fn"><b><b><a href="#opticalZoomChanged-signal">opticalZoomChanged</a></b></b>(zoom)</li>
<li class="fn"><b><b><a href="#whiteBalanceModeChanged-signal">whiteBalanceModeChanged</a></b></b>(Camera::WhiteBalanceMode)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#searchAndLock-method">searchAndLock</a></b></b>()</li>
<li class="fn"><b><b><a href="#start-method">start</a></b></b>()</li>
<li class="fn"><b><b><a href="#stop-method">stop</a></b></b>()</li>
<li class="fn"><b><b><a href="#unlock-method">unlock</a></b></b>()</li>
</ul>
<!-- $$$Camera-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>You can use <code>Camera</code> to capture images and movies from a camera, and manipulate the capture and processing settings that get applied to the images. To display the viewfinder you can use <a href="QtMultimedia.VideoOutput.md">VideoOutput</a> with the Camera set as the source.</p>
<pre class="qml">import QtQuick 2.0
import QtMultimedia 5.4
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">640</span>
<span class="name">height</span>: <span class="number">360</span>
<span class="type"><a href="index.html">Camera</a></span> {
<span class="name">id</span>: <span class="name">camera</span>
<span class="name">imageProcessing</span>.whiteBalanceMode: <span class="name">CameraImageProcessing</span>.<span class="name">WhiteBalanceFlash</span>
<span class="type">exposure</span> {
<span class="name">exposureCompensation</span>: -<span class="number">1.0</span>
<span class="name">exposureMode</span>: <span class="name">Camera</span>.<span class="name">ExposurePortrait</span>
}
<span class="name">flash</span>.mode: <span class="name">Camera</span>.<span class="name">FlashRedEyeReduction</span>
<span class="type">imageCapture</span> {
<span class="name">onImageCaptured</span>: {
<span class="name">photoPreview</span>.<span class="name">source</span> <span class="operator">=</span> <span class="name">preview</span>  <span class="comment">// Show the preview in an Image</span>
}
}
}
<span class="type"><a href="QtMultimedia.VideoOutput.md">VideoOutput</a></span> {
<span class="name">source</span>: <span class="name">camera</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">focus</span> : <span class="name">visible</span> <span class="comment">// to receive focus and capture key events when visible</span>
}
<span class="type">Image</span> {
<span class="name">id</span>: <span class="name">photoPreview</span>
}
}</pre>
<p>If multiple cameras are available, you can select which one to use by setting the <a href="#deviceId-prop">deviceId</a> property to a value from <a href="QtMultimedia.QtMultimedia.md#availableCameras-prop">QtMultimedia.availableCameras</a>. On a mobile device, you can conveniently switch between front-facing and back-facing cameras by setting the <a href="#position-prop">position</a> property.</p>
<p>The various settings and functionality of the Camera stack is spread across a few different child properties of Camera.</p>
<table class="generic">
<thead><tr class="qt-style"><th >Property</th><th >Description</th></tr></thead>
<tr valign="top"><td ><a href="QtMultimedia.CameraCapture.md">imageCapture</a></td><td >Methods and properties for capturing still images.</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.CameraRecorder.md">videoRecording</a></td><td >Methods and properties for capturing movies.</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.CameraExposure.md">exposure</a></td><td >Methods and properties for adjusting exposure (aperture, shutter speed etc).</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.CameraFocus.md">focus</a></td><td >Methods and properties for adjusting focus and providing feedback on autofocus progress.</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.CameraFlash.md">flash</a></td><td >Methods and properties for controlling the camera flash.</td></tr>
<tr valign="top"><td ><a href="QtMultimedia.CameraImageProcessing.md">imageProcessing</a></td><td >Methods and properties for adjusting camera image processing parameters.</td></tr>
</table>
<p>Basic camera state management, error reporting, and simple zoom properties are available in the Camera itself. For integration with C++ code, the <a href="#mediaObject-prop">mediaObject</a> property allows you to access the standard Qt Multimedia camera controls.</p>
<p>Many of the camera settings may take some time to apply, and might be limited to certain supported values depending on the hardware. Some camera settings may be set manually or automatically. These settings properties contain the current set value. For example, when autofocus is enabled the focus zones are exposed in the <a href="QtMultimedia.CameraFocus.md">focus</a> property.</p>
<p>For additional information, read also the <a href="QtMultimedia.cameraoverview.md">camera overview</a>.</p>
<!-- @@@Camera -->
<h2>Property Documentation</h2>
<!-- $$$availability -->
<table class="qmlname"><tr valign="top" id="availability-prop"><td class="tblQmlPropNode"><p><span class="name">availability</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the availability state of the camera.</p>
<p>The availability states can be one of the following:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >Available</td><td >The camera is available to use</td></tr>
<tr valign="top"><td >Busy</td><td >The camera is busy at the moment as it is being used by another process.</td></tr>
<tr valign="top"><td >Unavailable</td><td >The camera is not available to use (there may be no camera hardware)</td></tr>
<tr valign="top"><td >ResourceMissing</td><td >The camera cannot be used because of missing resources. It may be possible to try again at a later time.</td></tr>
</table>
<!-- @@@availability -->
<br/>
<!-- $$$cameraState -->
<table class="qmlname"><tr valign="top" id="cameraState-prop"><td class="tblQmlPropNode"><p><span class="name">cameraState</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the camera object's current state, which can be one of the following:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >UnloadedState</td><td >The initial camera state, with the camera not loaded. The camera capabilities (with the exception of supported capture modes) are unknown. This state saves the most power, but takes the longest time to be ready for capture.<p>While the supported settings are unknown in this state, you can still set the camera capture settings like codec, resolution, or frame rate.</p>
</td></tr>
<tr valign="top"><td >LoadedState</td><td >The camera is loaded and ready to be configured.<p>In the Idle state you can query camera capabilities, set capture resolution, codecs, and so on.</p>
<p>The viewfinder is not active in the loaded state.</p>
</td></tr>
<tr valign="top"><td >ActiveState</td><td >In the active state the viewfinder frames are available and the camera is ready for capture.</td></tr>
</table>
<p>The default camera state is ActiveState.</p>
<!-- @@@cameraState -->
<br/>
<!-- $$$cameraStatus -->
<table class="qmlname"><tr valign="top" id="cameraStatus-prop"><td class="tblQmlPropNode"><p><span class="name">cameraStatus</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the camera object's current status, which can be one of the following:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >ActiveStatus</td><td >The camera has been started and can produce data, viewfinder displays video frames.<p>Depending on backend, changing camera settings such as capture mode, codecs, or resolution in ActiveState may lead to changing the status to LoadedStatus and StartingStatus while the settings are applied, and back to ActiveStatus when the camera is ready.</p>
</td></tr>
<tr valign="top"><td >StartingStatus</td><td >The camera is starting as a result of state transition to Camera.ActiveState. The camera service is not ready to capture yet.</td></tr>
<tr valign="top"><td >StoppingStatus</td><td >The camera is stopping as a result of state transition from Camera.ActiveState to Camera.LoadedState or Camera.UnloadedState.</td></tr>
<tr valign="top"><td >StandbyStatus</td><td >The camera is in the power saving standby mode. The camera may enter standby mode after some time of inactivity in the Camera.LoadedState state.</td></tr>
<tr valign="top"><td >LoadedStatus</td><td >The camera is loaded and ready to be configured. This status indicates the camera device is opened and it's possible to query for supported image and video capture settings such as resolution, frame rate, and codecs.</td></tr>
<tr valign="top"><td >LoadingStatus</td><td >The camera device loading as a result of state transition from Camera.UnloadedState to Camera.LoadedState or Camera.ActiveState.</td></tr>
<tr valign="top"><td >UnloadingStatus</td><td >The camera device is unloading as a result of state transition from Camera.LoadedState or Camera.ActiveState to Camera.UnloadedState.</td></tr>
<tr valign="top"><td >UnloadedStatus</td><td >The initial camera status, with camera not loaded. The camera capabilities including supported capture settings may be unknown.</td></tr>
<tr valign="top"><td >UnavailableStatus</td><td >The camera or camera backend is not available.</td></tr>
</table>
<!-- @@@cameraStatus -->
<br/>
<!-- $$$captureMode -->
<table class="qmlname"><tr valign="top" id="captureMode-prop"><td class="tblQmlPropNode"><p><span class="name">captureMode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the camera capture mode, which can be one of the following:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >CaptureViewfinder</td><td >Camera is only configured to display viewfinder.</td></tr>
<tr valign="top"><td >CaptureStillImage</td><td >Prepares the Camera for capturing still images.</td></tr>
<tr valign="top"><td >CaptureVideo</td><td >Prepares the Camera for capturing video.</td></tr>
</table>
<p>The default capture mode is <code>CaptureStillImage</code>.</p>
<!-- @@@captureMode -->
<br/>
<!-- $$$deviceId -->
<table class="qmlname"><tr valign="top" id="deviceId-prop"><td class="tblQmlPropNode"><p><span class="name">deviceId</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the unique identifier for the camera device being used. It may not be human-readable.</p>
<p>You can get all available device IDs from <a href="QtMultimedia.QtMultimedia.md#availableCameras-prop">QtMultimedia.availableCameras</a>. If no value is provided or if set to an empty string, the system's default camera will be used.</p>
<p>If possible, <a href="#cameraState-prop">cameraState</a>, <a href="#captureMode-prop">captureMode</a>, <a href="#digitalZoom-prop">digitalZoom</a> and other camera parameters are preserved when changing the camera device.</p>
<p>This QML property was introduced in  QtMultimedia 5.4.</p>
<p><b>See also </b><a href="#displayName-prop">displayName</a> and <a href="#position-prop">position</a>.</p>
<!-- @@@deviceId -->
<br/>
<!-- $$$digitalZoom -->
<table class="qmlname"><tr valign="top" id="digitalZoom-prop"><td class="tblQmlPropNode"><p><span class="name">digitalZoom</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the current digital zoom factor.</p>
<!-- @@@digitalZoom -->
<br/>
<!-- $$$displayName -->
<table class="qmlname"><tr valign="top" id="displayName-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">displayName</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the human-readable name of the camera.</p>
<p>You can use this property to display the name of the camera in a user interface.</p>
<p>This QML property was introduced in  QtMultimedia 5.4.</p>
<p><b>See also </b><a href="#deviceId-prop">deviceId</a>.</p>
<!-- @@@displayName -->
<br/>
<!-- $$$errorCode -->
<table class="qmlname"><tr valign="top" id="errorCode-prop"><td class="tblQmlPropNode"><p><span class="name">errorCode</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the last error code.</p>
<p><b>See also </b><a href="#error-signal">error</a> and <a href="#errorString-prop">errorString</a>.</p>
<!-- @@@errorCode -->
<br/>
<!-- $$$errorString -->
<table class="qmlname"><tr valign="top" id="errorString-prop"><td class="tblQmlPropNode"><p><span class="name">errorString</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the last error string, if any.</p>
<p><b>See also </b><a href="#error-signal">error</a> and <a href="#errorCode-prop">errorCode</a>.</p>
<!-- @@@errorString -->
<br/>
<!-- $$$lockStatus -->
<table class="qmlname"><tr valign="top" id="lockStatus-prop"><td class="tblQmlPropNode"><p><span class="name">lockStatus</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the status of all the requested camera locks.</p>
<p>The status can be one of the following values:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >Unlocked</td><td >The application is not interested in camera settings value. The camera may keep this parameter without changes, which is common with camera focus, or adjust exposure and white balance constantly to keep the viewfinder image nice.</td></tr>
<tr valign="top"><td >Searching</td><td >The application has requested the camera focus, exposure, or white balance lock with <a href="#searchAndLock-method">searchAndLock()</a>. This state indicates the camera is focusing or calculating exposure and white balance.</td></tr>
<tr valign="top"><td >Locked</td><td >The camera focus, exposure, or white balance is locked. The camera is ready to capture, and the application may check the exposure parameters.<p>The locked state usually means the requested parameter stays the same, except in cases where the parameter is requested to be updated constantly. For example in continuous focusing mode, the focus is considered locked as long as the object is in focus, even while the actual focusing distance may be constantly changing.</p>
</td></tr>
</table>
<!-- @@@lockStatus -->
<br/>
<!-- $$$maximumDigitalZoom -->
<table class="qmlname"><tr valign="top" id="maximumDigitalZoom-prop"><td class="tblQmlPropNode"><p><span class="name">maximumDigitalZoom</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the maximum digital zoom factor supported, or 1.0 if digital zoom is not supported.</p>
<!-- @@@maximumDigitalZoom -->
<br/>
<!-- $$$maximumOpticalZoom -->
<table class="qmlname"><tr valign="top" id="maximumOpticalZoom-prop"><td class="tblQmlPropNode"><p><span class="name">maximumOpticalZoom</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the maximum optical zoom factor supported, or 1.0 if optical zoom is not supported.</p>
<!-- @@@maximumOpticalZoom -->
<br/>
<!-- $$$mediaObject -->
<table class="qmlname"><tr valign="top" id="mediaObject-prop"><td class="tblQmlPropNode"><p><span class="name">mediaObject</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the media object for the camera.</p>
<!-- @@@mediaObject -->
<br/>
<!-- $$$metaData -->
<table class="qmlname"><tr valign="top" id="metaData-prop"><th class="centerAlign"><p><b>metaData group</b></p></th></tr><tr valign="top" id="metaData.gpsLatitude-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.gpsLatitude</span> : <span class="type">variant</span></p></td></tr><tr valign="top" id="metaData.gpsLongitude-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.gpsLongitude</span> : <span class="type">variant</span></p></td></tr><tr valign="top" id="metaData.gpsAltitude-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.gpsAltitude</span> : <span class="type">variant</span></p></td></tr></table><p>These properties hold the the geographic position in decimal degrees of the camera at time of capture.</p>
<p>This property group was introduced in  Qt 5.4.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData -->
<br/>
<!-- $$$metaData.cameraManufacturer -->
<table class="qmlname"><tr valign="top" id="metaData.cameraManufacturer-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.cameraManufacturer</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the name of the manufacturer of the camera.</p>
<p>This QML property was introduced in  Qt 5.4.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.cameraManufacturer -->
<br/>
<!-- $$$metaData.cameraModel -->
<table class="qmlname"><tr valign="top" id="metaData.cameraModel-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.cameraModel</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the name of the model of the camera.</p>
<p>This QML property was introduced in  Qt 5.4.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.cameraModel -->
<br/>
<!-- $$$metaData.dateTimeOriginal -->
<table class="qmlname"><tr valign="top" id="metaData.dateTimeOriginal-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.dateTimeOriginal</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the initial time at which the photo or video is captured.</p>
<p>This QML property was introduced in  Qt 5.4.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.dateTimeOriginal -->
<br/>
<!-- $$$metaData.event -->
<table class="qmlname"><tr valign="top" id="metaData.event-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.event</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the event during which the photo or video is to be captured.</p>
<p>This QML property was introduced in  Qt 5.4.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.event -->
<br/>
<!-- $$$metaData.gpsImgDirection -->
<table class="qmlname"><tr valign="top" id="metaData.gpsImgDirection-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.gpsImgDirection</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds direction the camera is facing at the time of capture. It is measured in degrees clockwise from north.</p>
<p>This QML property was introduced in  Qt 5.4.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.gpsImgDirection -->
<br/>
<!-- $$$metaData.gpsProcessingMethod -->
<table class="qmlname"><tr valign="top" id="metaData.gpsProcessingMethod-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.gpsProcessingMethod</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the name of the method for determining the GPS position data.</p>
<p>This QML property was introduced in  Qt 5.4.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.gpsProcessingMethod -->
<br/>
<!-- $$$metaData.gpsSpeed -->
<table class="qmlname"><tr valign="top" id="metaData.gpsSpeed-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.gpsSpeed</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the velocity in kilometers per hour of the camera at time of capture.</p>
<p>This QML property was introduced in  Qt 5.4.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.gpsSpeed -->
<br/>
<!-- $$$metaData.gpsTimestamp -->
<table class="qmlname"><tr valign="top" id="metaData.gpsTimestamp-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.gpsTimestamp</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the timestamp of the GPS position data.</p>
<p>This QML property was introduced in  Qt 5.4.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.gpsTimestamp -->
<br/>
<!-- $$$metaData.gpsTrack -->
<table class="qmlname"><tr valign="top" id="metaData.gpsTrack-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.gpsTrack</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds direction of movement of the camera at the time of capture. It is measured in degrees clockwise from north.</p>
<p>This QML property was introduced in  Qt 5.4.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.gpsTrack -->
<br/>
<!-- $$$metaData.orientation -->
<table class="qmlname"><tr valign="top" id="metaData.orientation-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.orientation</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the clockwise rotation of the camera at time of capture.</p>
<p>This QML property was introduced in  Qt 5.4.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.orientation -->
<br/>
<!-- $$$metaData.subject -->
<table class="qmlname"><tr valign="top" id="metaData.subject-prop"><td class="tblQmlPropNode"><p><span class="name">metaData.subject</span> : <span class="type">variant</span></p></td></tr></table><p>This property holds the name of the subject of the capture or recording.</p>
<p>This QML property was introduced in  Qt 5.4.</p>
<p><b>See also </b>QMediaMetaData.</p>
<!-- @@@metaData.subject -->
<br/>
<!-- $$$opticalZoom -->
<table class="qmlname"><tr valign="top" id="opticalZoom-prop"><td class="tblQmlPropNode"><p><span class="name">opticalZoom</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the current optical zoom factor.</p>
<!-- @@@opticalZoom -->
<br/>
<!-- $$$orientation -->
<table class="qmlname"><tr valign="top" id="orientation-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">orientation</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the physical orientation of the camera sensor.</p>
<p>The value is the orientation angle (clockwise, in steps of 90 degrees) of the camera sensor in relation to the display in its natural orientation.</p>
<p>For example, suppose a mobile device which is naturally in portrait orientation. The back-facing camera is mounted in landscape. If the top side of the camera sensor is aligned with the right edge of the screen in natural orientation, <code>orientation</code> returns <code>270</code>. If the top side of a front-facing camera sensor is aligned with the right edge of the screen, <code>orientation</code> returns <code>90</code>.</p>
<p>This QML property was introduced in  QtMultimedia 5.4.</p>
<p><b>See also </b><a href="QtMultimedia.VideoOutput.md#orientation-prop">VideoOutput::orientation</a>.</p>
<!-- @@@orientation -->
<br/>
<!-- $$$position -->
<table class="qmlname"><tr valign="top" id="position-prop"><td class="tblQmlPropNode"><p><span class="name">position</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the physical position of the camera on the hardware system.</p>
<p>The position can be one of the following:</p>
<ul>
<li><code>Camera.UnspecifiedPosition</code> - the camera position is unspecified or unknown.</li>
<li><code>Camera.BackFace</code> - the camera is on the back face of the system hardware. For example on a mobile device, it means it is on the opposite side to that of the screem.</li>
<li><code>Camera.FrontFace</code> - the camera is on the front face of the system hardware. For example on a mobile device, it means it is on the same side as that of the screen. Viewfinder frames of front-facing cameras are mirrored horizontally, so the users can see themselves as looking into a mirror. Captured images or videos are not mirrored.</li>
</ul>
<p>On a mobile device it can be used to easily choose between front-facing and back-facing cameras. If this property is set to <code>Camera.UnspecifiedPosition</code>, the system's default camera will be used.</p>
<p>If possible, <a href="#cameraState-prop">cameraState</a>, <a href="#captureMode-prop">captureMode</a>, <a href="#digitalZoom-prop">digitalZoom</a> and other camera parameters are preserved when changing the camera device.</p>
<p>This QML property was introduced in  QtMultimedia 5.4.</p>
<p><b>See also </b><a href="#deviceId-prop">deviceId</a>.</p>
<!-- @@@position -->
<br/>
<!-- $$$viewfinder -->
<table class="qmlname"><tr valign="top" id="viewfinder-prop"><th class="centerAlign"><p><b>viewfinder group</b></p></th></tr><tr valign="top" id="viewfinder.minimumFrameRate-prop"><td class="tblQmlPropNode"><p><span class="name">viewfinder.minimumFrameRate</span> : <span class="type">real</span></p></td></tr><tr valign="top" id="viewfinder.maximumFrameRate-prop"><td class="tblQmlPropNode"><p><span class="name">viewfinder.maximumFrameRate</span> : <span class="type">real</span></p></td></tr></table><p>These properties hold the limits of the preferred frame rate for the viewfinder in frames per second.</p>
<p>This property group was introduced in  Qt 5.4.</p>
<!-- @@@viewfinder -->
<br/>
<!-- $$$viewfinder.resolution -->
<table class="qmlname"><tr valign="top" id="viewfinder.resolution-prop"><td class="tblQmlPropNode"><p><span class="name">viewfinder.resolution</span> : <span class="type">size</span></p></td></tr></table><p>This property holds the resolution of the camera viewfinder. If no resolution is given the backend will use a default value.</p>
<p>This QML property was introduced in  Qt 5.4.</p>
<!-- @@@viewfinder.resolution -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$cameraStateChanged -->
<table class="qmlname"><tr valign="top" id="cameraStateChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">cameraStateChanged</span>(<span class="type">state</span>)</p></td></tr></table><p>This signal is emitted when the camera state has changed to <i>state</i>. Since the state changes may take some time to occur this signal may arrive sometime after the state change has been requested.</p>
<p>The corresponding handler is <code>onCameraStateChanged</code>.</p>
<!-- @@@cameraStateChanged -->
<br/>
<!-- $$$digitalZoomChanged -->
<table class="qmlname"><tr valign="top" id="digitalZoomChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">digitalZoomChanged</span>(<span class="type">zoom</span>)</p></td></tr></table><p>This signal is emitted when the digital zoom setting has changed to <i>zoom</i>.</p>
<p>The corresponding handler is <code>onDigitalZoomChanged</code>.</p>
<!-- @@@digitalZoomChanged -->
<br/>
<!-- $$$error -->
<table class="qmlname"><tr valign="top" id="error-signal"><td class="tblQmlFuncNode"><p><span class="name">error</span>(<span class="type"><a href="#errorCode-prop">errorCode</a></span>, <span class="type"><a href="#errorString-prop">errorString</a></span>)</p></td></tr></table><p>This signal is emitted when an error occurs. The enumeration value <i>errorCode</i> is one of the values defined below, and a descriptive string value is available in <i>errorString</i>.</p>
<table class="generic">
<thead><tr class="qt-style"><th >Value</th><th >Description</th></tr></thead>
<tr valign="top"><td >NoError</td><td >No errors have occurred.</td></tr>
<tr valign="top"><td >CameraError</td><td >An error has occurred.</td></tr>
<tr valign="top"><td >InvalidRequestError</td><td >System resource doesn't support requested functionality.</td></tr>
<tr valign="top"><td >ServiceMissingError</td><td >No camera service available.</td></tr>
<tr valign="top"><td >NotSupportedFeatureError</td><td >The feature is not supported.</td></tr>
</table>
<p>The corresponding handler is <code>onError</code>.</p>
<p><b>See also </b><a href="#errorCode-prop">errorCode</a> and <a href="#errorString-prop">errorString</a>.</p>
<!-- @@@error -->
<br/>
<!-- $$$lockStatusChanged -->
<table class="qmlname"><tr valign="top" id="lockStatusChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">lockStatusChanged</span>()</p></td></tr></table><p>This signal is emitted when the lock status (focus, exposure etc) changes. This can happen when locking (e.g&#x2e; autofocusing) is complete or has failed.</p>
<p>The corresponding handler is <code>onLockStatusChanged</code>.</p>
<!-- @@@lockStatusChanged -->
<br/>
<!-- $$$manualWhiteBalanceChanged -->
<table class="qmlname"><tr valign="top" id="manualWhiteBalanceChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">manualWhiteBalanceChanged</span>(<span class="type">qreal</span>)</p></td></tr></table><p>This signal is emitted when the <code>manualWhiteBalance</code> property is changed.</p>
<p>The corresponding handler is <code>onManualWhiteBalanceChanged</code>.</p>
<!-- @@@manualWhiteBalanceChanged -->
<br/>
<!-- $$$maximumDigitalZoomChanged -->
<table class="qmlname"><tr valign="top" id="maximumDigitalZoomChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">maximumDigitalZoomChanged</span>(<span class="type">zoom</span>)</p></td></tr></table><p>This signal is emitted when the maximum digital zoom setting has changed to <i>zoom</i>. This can occur when you change between video and still image capture modes, or the capture settings are changed.</p>
<p>The corresponding handler is <code>onMaximumDigitalZoomChanged</code>.</p>
<!-- @@@maximumDigitalZoomChanged -->
<br/>
<!-- $$$maximumOpticalZoomChanged -->
<table class="qmlname"><tr valign="top" id="maximumOpticalZoomChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">maximumOpticalZoomChanged</span>(<span class="type">zoom</span>)</p></td></tr></table><p>This signal is emitted when the maximum optical zoom setting has changed to <i>zoom</i>. This can occur when you change between video and still image capture modes, or the capture settings are changed.</p>
<p>The corresponding handler is <code>onMaximumOpticalZoomChanged</code>.</p>
<!-- @@@maximumOpticalZoomChanged -->
<br/>
<!-- $$$opticalZoomChanged -->
<table class="qmlname"><tr valign="top" id="opticalZoomChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">opticalZoomChanged</span>(<span class="type">zoom</span>)</p></td></tr></table><p>This signal is emitted when the optical zoom setting has changed to <i>zoom</i>.</p>
<p>The corresponding handler is <code>onOpticalZoomChanged</code>.</p>
<!-- @@@opticalZoomChanged -->
<br/>
<!-- $$$whiteBalanceModeChanged -->
<table class="qmlname"><tr valign="top" id="whiteBalanceModeChanged-signal"><td class="tblQmlFuncNode"><p><span class="name">whiteBalanceModeChanged</span>(<span class="type">Camera::WhiteBalanceMode</span>)</p></td></tr></table><p>This signal is emitted when the <code>whiteBalanceMode</code> property is changed.</p>
<p>The corresponding handler is <code>onWhiteBalanceModeChanged</code>.</p>
<!-- @@@whiteBalanceModeChanged -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$searchAndLock -->
<table class="qmlname"><tr valign="top" id="searchAndLock-method"><td class="tblQmlFuncNode"><p><span class="name">searchAndLock</span>()</p></td></tr></table><p>Start focusing, exposure and white balance calculation.</p>
<p>This is appropriate to call when the camera focus button is pressed (or on a camera capture button half-press). If the camera supports autofocusing, information on the focus zones is available through the <a href="QtMultimedia.CameraFocus.md">focus</a> property.</p>
<!-- @@@searchAndLock -->
<br/>
<!-- $$$start -->
<table class="qmlname"><tr valign="top" id="start-method"><td class="tblQmlFuncNode"><p><span class="name">start</span>()</p></td></tr></table><p>Starts the camera. Viewfinder frames will be available and image or movie capture will be possible.</p>
<!-- @@@start -->
<br/>
<!-- $$$stop -->
<table class="qmlname"><tr valign="top" id="stop-method"><td class="tblQmlFuncNode"><p><span class="name">stop</span>()</p></td></tr></table><p>Stops the camera, but leaves the camera stack loaded.</p>
<!-- @@@stop -->
<br/>
<!-- $$$unlock -->
<table class="qmlname"><tr valign="top" id="unlock-method"><td class="tblQmlFuncNode"><p><span class="name">unlock</span>()</p></td></tr></table><p>Unlock focus, exposure and white balance locks.</p>
<!-- @@@unlock -->
<br/>
