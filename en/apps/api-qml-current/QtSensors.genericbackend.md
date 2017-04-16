---
Title: QtSensors.genericbackend
---

# QtSensors.genericbackend

<span class="subtitle"></span>
<!-- $$$genericbackend.html-description -->
<p>The generic sensor backend provides emulation of some of the sensors that are not supported on the platform. For example, on a platform without a rotation sensor but with an accelerometer, the accelerometer is used to calculate the rotation, thus providing an emulated rotation sensor.</p>
<p>The following generic sensors are supported:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Emulated Sensor</th><th >Source Sensor</th></tr></thead>
<tr valign="top"><td >Ambient Light Sensor</td><td >Light Sensor</td></tr>
<tr valign="top"><td >Orientation Sensor</td><td >Accelerometer</td></tr>
<tr valign="top"><td >Rotation Sensor</td><td >Accelerometer</td></tr>
<tr valign="top"><td >Tilt Sensor</td><td >Accelerometer</td></tr>
</table>
<p>If a platform doesn't support the source sensor, then the sensor cannot be emulated.</p>
<!-- @@@genericbackend.html -->
