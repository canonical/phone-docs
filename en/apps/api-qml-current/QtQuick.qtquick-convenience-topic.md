---
Title: QtQuick.qtquick-convenience-topic
---

# QtQuick.qtquick-convenience-topic

<span class="subtitle"></span>
<!-- $$$qtquick-convenience-topic.html-description -->
<p>In a highly dynamic user interface, the application developer will often wish to react to events and trigger various response logic. QML has built-in support for these concepts through bindings, signals and signal handlers, and dynamic object instantiation, but Qt Quick expands upon the support provided by the language with various convenience types.</p>
<h2 id="dynamic-object-instantiation">Dynamic Object Instantiation</h2>
<p>QML provides a number of ways to dynamically create and manage QML objects.</p>
<p>Objects can be created dynamically from within imperative JavaScript code in various ways. See Dynamic QML object creation from JavaScript for more details.</p>
<p>Qt Quick provides the <a href="QtQuick.Loader.md">Loader</a>, <a href="QtQuick.Repeater.md">Repeater</a>, <a href="QtQuick.ListView.md">ListView</a>, <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.draganddrop/#gridview">GridView</a> and <a href="QtQuick.PathView.md">PathView</a> types which also support dynamic object management, and provide a declarative API.</p>
<p>Please see the performance guide for more information on using dynamic instantiation and lazy initialization to improve application performance.</p>
<h2 id="dynamic-bindings">Dynamic Bindings</h2>
<p>Property bindings are a fundamental feature of QML. Typically, a property is initialized with its binding. However, the Binding type and Qt.binding() function allows the client to dynamically bind properties from any object at run-time, and modify the binding target when required (or when it becomes available).</p>
<h2 id="dynamic-signal-connections">Dynamic Signal Connections</h2>
<p>QML supports dynamic signal connections through a signal's <code>connect()</code> method. The <a href="QtQuick.qtquick-index.md">Qt Quick</a> module provides the convenience Connections type which allows setting up a signal connection involving an object which isn't part of the static object hierarchy. It also allows the connection to be dynamically retargeted at runtime, which allows an application to process different signal notifications with different functions depending on the program state.</p>
<p>By declaring a Connections instance, the client can dynamically cause signals emitted by one object to trigger methods of another object, and can modify the connection target when required (or when it becomes available).</p>
<h2 id="timer-based-events">Timer-Based Events</h2>
<p>Another common use-case is to trigger functionality some specified period of time after a particular event occurs. These sort of timer-based triggers are supported in Qt Quick through the Timer type. Both single-shot and recurring timers are supported.</p>
<!-- @@@qtquick-convenience-topic.html -->
