---
Title: QtQuick.qtquick-input-topic
---

# QtQuick.qtquick-input-topic

<span class="subtitle"></span>
<!-- $$$qtquick-input-topic.html-description -->
<p>Being able to respond to user-input is a fundamental part of user-interface design. Depending on the use-case that an application solves, and the form-factor of the device that the application runs on, the best way to receive user-input may be different.</p>
<h2 id="touch">Touch</h2>
<p>Allowing users to physically touch a screen to interact with an application is a popular user-interface paradigm on portable devices like smartphones and tablets.</p>
<p>Qt Quick was designed specifically with touch-driven user-interfaces in mind, and thus touch events are supported in various visual object types, from <a href="QtQuick.qtquick-touchinteraction-example.md#flickable">Flickable</a> lists to the generic <a href="QtQuick.MultiPointTouchArea.md">MultiPointTouchArea</a> type, as well as in the <a href="QtQuick.MouseArea.md">MouseArea</a> type (which will be documented thoroughly in a proceeding section).</p>
<h2 id="mouse">Mouse</h2>
<p>Mouse input is another important user input for user interfaces. Detecting and reacting to clicks and presses according to the mouse cursor position is a fundamental concept in user-interface design.</p>
<p>Qt Quick provides the <a href="QtQuick.MouseArea.md">MouseArea</a> visual object type which automatically receives mouse events (including clicks and wheel events) which allows developers to create custom user-interface objects to handle mouse input. Please see the documentation about <a href="QtQuick.qtquick-input-mouseevents.md">mouse events in Qt Quick</a> for more information on the topic.</p>
<h2 id="keyboard-input-and-keyboard-focus">Keyboard Input and Keyboard Focus</h2>
<p>Supporting input from a keyboard is a vital component of the user interface of many applications.</p>
<p>Any visual item can receive keyboard input through the <a href="QtQuick.Keys.md">Keys</a> attached type. Additionally, the issue of <i>keyboard focus</i> arises when multiple items are required to receive key events, as these events must be passed to the correct item. See the documentation about <a href="QtQuick.qtquick-input-focus.md">Keyboard focus in Qt Quick</a> for more information on this topic.</p>
<p>Qt Quick also provides visual text items which automatically receive keyboard events and key-presses, and displays the appropriate text. See the documentation about <a href="QtQuick.qtquick-input-textinput.md">text input</a> for in-depth information on the topic.</p>
<h2 id="device-motion-gestures">Device Motion Gestures</h2>
<p>Detecting device gestures with an accelerometer, or through camera-based gesture recognition, can allow users to interact with an application without requiring their full and undevided attention. It can also provide a more interactive and engaging experience.</p>
<p>Qt Quick itself does not offer first-class support for physical device motion gestures; however, the Qt Sensors module provides QML types with support for such gestures. See the Qt Sensors module documentation for more information on the topic.</p>
<!-- @@@qtquick-input-topic.html -->
