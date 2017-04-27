---
Title: QtMultimedia.qtmultimedia-declarative-camera-example
---

# QtMultimedia.qtmultimedia-declarative-camera-example

<span class="subtitle"></span>
<!-- $$$declarative-camera-description -->
<p class="centerAlign"><img src="../../../media/qml-camera.png" alt="" /></p><p>This example demonstrates how to use the Qt Multimedia QML API to access camera functions. It shows how to change settings and to capture images.</p>
<h2 id="running-the-example">Running the Example</h2>
<p>To run the example from Qt Creator, open the <b>Welcome</b> mode and select the example from <b>Examples</b>. For more information, visit Building and Running an Example.</p>
<h2 id="application-structure">Application Structure</h2>
<p>Most of the QML code supports the user interface for this application with the camera types being mostly found in <i>declarative-camera.qml</i> and <i>CaptureControls.qml</i>.</p>
<p>CaptureControls, which is implemented in <i>CaptureControls.qml</i>, generates a column on the right hand side of the screen which includes control buttons for focus (not initially visible), capture, flash modes, white balance, exposure compensation, and if a preview is available, a preview button. The last button exits from the application.</p>
<p>Files:</p>
<ul>
<li>declarative-camera/CameraButton.qml</li>
<li>declarative-camera/CameraListButton.qml</li>
<li>declarative-camera/CameraListPopup.qml</li>
<li>declarative-camera/CameraPropertyButton.qml</li>
<li>declarative-camera/CameraPropertyPopup.qml</li>
<li>declarative-camera/FocusButton.qml</li>
<li>declarative-camera/PhotoCaptureControls.qml</li>
<li>declarative-camera/PhotoPreview.qml</li>
<li>declarative-camera/Popup.qml</li>
<li>declarative-camera/VideoCaptureControls.qml</li>
<li>declarative-camera/VideoPreview.qml</li>
<li>declarative-camera/ZoomControl.qml</li>
<li>declarative-camera/declarative-camera.qml</li>
<li>declarative-camera/qmlcamera.cpp</li>
<li>declarative-camera/declarative-camera.pro</li>
<li>declarative-camera/declarative-camera.qmlproject</li>
<li>declarative-camera/declarative-camera.qrc</li>
</ul>
<p>Images:</p>
<ul>
<li>declarative-camera/images/camera_auto_mode.png</li>
<li>declarative-camera/images/camera_camera_setting.png</li>
<li>declarative-camera/images/camera_flash_auto.png</li>
<li>declarative-camera/images/camera_flash_fill.png</li>
<li>declarative-camera/images/camera_flash_off.png</li>
<li>declarative-camera/images/camera_flash_redeye.png</li>
<li>declarative-camera/images/camera_white_balance_cloudy.png</li>
<li>declarative-camera/images/camera_white_balance_flourescent.png</li>
<li>declarative-camera/images/camera_white_balance_incandescent.png</li>
<li>declarative-camera/images/camera_white_balance_sunny.png</li>
<li>declarative-camera/images/toolbutton.png</li>
</ul>
<!-- @@@declarative-camera -->
