---
Title: QtSensors.determining-the-default-sensor-for-a-type
---

# QtSensors.determining-the-default-sensor-for-a-type

<span class="subtitle"></span>
<!-- $$$determining-the-default-sensor-for-a-type.html-description -->
<h2 id="multiple-sensors-can-exist-for-a-type">Multiple Sensors Can Exist for a Type</h2>
<p>Sensors was designed so that multiple sensors could exist for a given type. Why? Consider this example.</p>
<p>The N900 has an accelerometer built-in. It also features bluetooth and can pair with a gaming controller that features an accelerometer. To a developer writing a game these two devices are conceptually the same type.</p>
<h2 id="default-sensor-for-a-type">Default Sensor for a Type</h2>
<p>To avoid the need to know (or check) what the default sensor for a type is, the system will use the default sensor for a type. Most of the time this is what the app developer wants to do. If the app developer wants to select a specific sensor, he needs to call the QSensor::setIdentifier() method before starting the sensor so that the appropriate backend is used.</p>
<p>From a system perspective though, selecting which sensor should be the default gets tricky. The sensors library uses the first registered identifier as the default. This means that the order in which the sensor backends are registered, is important so the system will allow a config file to determine the default instead.</p>
<h2 id="sensors-conf">Sensors.conf</h2>
<p>The config file that determines the default sensor for a type is called Sensors.conf. If present, it is located in /etc/xdg/QtProject. It has the standard formatting of an ini file.</p>
<p>The settings live in the Default group and the general format is:</p>
<pre class="cpp">type <span class="operator">=</span> identifier</pre>
<p>An example: Sensors.conf ensures that the N900 accelerometer is used by default, not considering the order in which backends were registered.</p>
<pre class="cpp"><span class="operator">[</span>Default<span class="operator">]</span>
<span class="type">QAccelerometer</span> <span class="operator">=</span> n900<span class="operator">.</span>accelerometer</pre>
<p>If Sensors.conf specifies an identifier that is not registered, the system will fall back to the first registered identifier as the default.</p>
<p>Note that there is a special case logic to prevent the generic plugin's backends from becoming the default when another backend is registered for the same type. This logic means that a backend identifier starting with <code>generic.</code> will only be the default if no other backends have been registered for that type, or if it is specified in <code>Sensors.conf</code>.</p>
<!-- @@@determining-the-default-sensor-for-a-type.html -->
