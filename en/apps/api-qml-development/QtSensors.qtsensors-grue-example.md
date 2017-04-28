---
Title: QtSensors.qtsensors-grue-example
---

# QtSensors.qtsensors-grue-example

<span class="subtitle"></span>
<!-- $$$grue-description -->
<p class="centerAlign"><img src="../../../media/qtsensors-examples-grue.png" alt="" /></p><p>The Qt Sensors - Grue sensor example demonstrates all the steps from creating a new sensor to using it.</p>
<p>The sensor definition is placed in a library where client apps can access it. The actual implementation lives in a plugin.</p>
<ul>
<li><a href="QtSensors.grue.md#grue-sensor-definition">Grue Sensor Definition</a></li>
<li><a href="QtSensors.grue.md#grue-sensor-implementation">Grue Sensor Implementation</a></li>
</ul>
<p>The sensor can now be used by a C++ application, even if the application does not have access to the definition.</p>
<ul>
<li><a href="QtSensors.grue.md#grue-sensor-console-application">Grue Sensor Console Application</a></li>
</ul>
<p>To make the sensor available to a QML application an import must be created.</p>
<ul>
<li><a href="QtSensors.grue.md#grue-sensor-qml-import">Grue Sensor QML Import</a></li>
<li><a href="QtSensors.grue.md#grue-sensor-qml-application">Grue Sensor QML Application</a></li>
</ul>
<h2 id="grue-sensor-definition">Grue Sensor Definition</h2>
<p>The Grue sensor is defined in a library so that applications can use it. The source code is available in the <code>grue/lib</code> subdirectory.</p>
<p>First up is the sensor type. This is the interface for sensors that report on your likelihood of being eaten by a Grue. Such sensors are very important to adventurers, particularly if they are going into dark places as this is where Grues live.</p>
<p>The interface is a simple one. It provides only 1 piece of information, your chance of being eaten. For the details on how this is property should be interpreted please see the documentation in gruesensor.cpp.</p>
<p>This example was created using the make_sensor.pl script which can be found in src/sensors. As such, it contains some generated code that defines the convenience classes GrueFilter and GrueSensor.</p>
<h2 id="grue-sensor-implementation">Grue Sensor Implementation</h2>
<p>The Grue sensor implementation lives in a plugin that is loaded by the Qt Sensors library. The source code is available in the <code>grue/plugin</code> subdirectory.</p>
<p>The Grue sensor needs a backend before it can be used. The backend provided is rather basic and it relies on some kind of light sensor to work but it gets the job done. If new hardware that can detect the actual presence of Grues becomes available a backend could be created that supports this hardware and applications using the Grue sensor would be able to use it without any changes.</p>
<p>There are a few mandatory parts to a backend. They are the start and stop methods and the setReading call. The start and stop methods are used to start and stop any underlying hardware. In the case of this backend they start and stop a light sensor. In the start method, the backend should be sure to call the sensorStopped() or sensorBusy() methods if it cannot start.</p>
<pre class="cpp">    lightSensor<span class="operator">-</span><span class="operator">&gt;</span>setDataRate(sensor()<span class="operator">-</span><span class="operator">&gt;</span>dataRate());
lightSensor<span class="operator">-</span><span class="operator">&gt;</span>start();
<span class="comment">// If the light sensor doesn't work we don't work either</span>
<span class="keyword">if</span> (<span class="operator">!</span>lightSensor<span class="operator">-</span><span class="operator">&gt;</span>isActive())
sensorStopped();
<span class="keyword">if</span> (lightSensor<span class="operator">-</span><span class="operator">&gt;</span>isBusy())
sensorBusy();</pre>
<p>The setReading method is needed so that the sensors library knows where the readings are coming from. This backend has a local copy of the reading so it passes a pointer to the function.</p>
<pre class="cpp">    <span class="comment">// Register our reading instance</span>
setReading<span class="operator">&lt;</span>GrueSensorReading<span class="operator">&gt;</span>(<span class="operator">&amp;</span>m_reading);</pre>
<p>However it is also possible to pass null to the setReading method in which case the sensors library will create an instance and return a pointer.</p>
<pre class="cpp"><span class="comment">// Create a reading instance for us to use</span>
m_reading <span class="operator">=</span> setReading<span class="operator">&lt;</span>GrueSensorReading<span class="operator">&gt;</span>(<span class="number">0</span>);</pre>
<p>The Grue sensor backend also supplies some metadata.</p>
<p>The backend checks 2 things, how dark it is and how long you have been in the dark. It uses the readingChanged() signal to know when to check the light sensor's value. Once it is dark, it uses a timer to increase your chance of being eaten.</p>
<p>The Grue sensor backend is delivered as a plugin. The plugin has a factory object that registers the types available and does the actual instantiation of the backend.</p>
<h2 id="grue-sensor-console-application">Grue Sensor Console Application</h2>
<p>The Grue sensor console application demonstrates use of the Grue sensor. The source code is available in the <code>grue/console_app</code> subdirectory.</p>
<p>This is a simple commandline application. It demonstrates how to use the generic access feature of Qt Sensors to avoid a link-time dependency on the Grue Sensor library.</p>
<h2 id="grue-sensor-qml-import">Grue Sensor QML Import</h2>
<p>The Grue sensor QML import exports the GrueSensor class as a QML type. The source code is available in the <code>grue/import</code> subdirectory.</p>
<p>This creates the <i>Grue 1.0</i> import.</p>
<h2 id="grue-sensor-qml-application">Grue Sensor QML Application</h2>
<p>The Grue sensor QML application demonstrates the use of GrueSensor QML type.</p>
<p>The application consists of a single QML file and an image. It is built as an exucutable with C++ code that runs the QML, but it can also be launched directly using the <code>qmlscene</code> tool.</p>
<p>You should build the top-level 'grue' project before trying to run this example or it will not be able to find its dependencies.</p>
<pre class="cpp">qmlscene <span class="operator">-</span>I <span class="operator">.</span> grue<span class="operator">.</span>qml</pre>
<p>Above, the <code>-I .</code> parameter adds the current directory as a module import path to locate the Grue QML module.</p>
<p>Files:</p>
<ul>
<li>grue/Makefile.qml</li>
<li>grue/grue.qml</li>
<li>grue/lib/gruesensor.cpp</li>
<li>grue/lib/gruesensor.h</li>
<li>grue/lib/gruesensor_p.h</li>
<li>grue/plugin/gruesensorimpl.cpp</li>
<li>grue/plugin/gruesensorimpl.h</li>
<li>grue/main.cpp</li>
<li>grue/grue.pro</li>
<li>grue/qml.pro</li>
<li>grue/qml.qrc</li>
<li>grue/console_app/console_app.pro</li>
<li>grue/import/import.pro</li>
<li>grue/import/qmldir</li>
<li>grue/lib/lib.pro</li>
<li>grue/plugin/plugin.pro</li>
</ul>
<!-- @@@grue -->
