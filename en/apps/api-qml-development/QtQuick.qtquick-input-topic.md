---
Title: QtQuick.qtquick-input-topic
---
        
Important Concepts In Qt Quick - User Input
===========================================

<span class="subtitle"></span>
<span id="details"></span>
Being able to respond to user-input is a fundamental part of user-interface design. Depending on the use-case that an application solves, and the form-factor of the device that the application runs on, the best way to receive user-input may be different.

<span id="touch"></span>
Touch
-----

Allowing users to physically touch a screen to interact with an application is a popular user-interface paradigm on portable devices like smartphones and tablets.

Qt Quick was designed specifically with touch-driven user-interfaces in mind, and thus touch events are supported in various visual object types, from [Flickable](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.touchinteraction/#flickable) lists to the generic [MultiPointTouchArea](../QtQuick.MultiPointTouchArea.md) type, as well as in the [MouseArea](../QtQuick.MouseArea.md) type (which will be documented thoroughly in a proceeding section).

<span id="mouse"></span>
Mouse
-----

Mouse input is another important user input for user interfaces. Detecting and reacting to clicks and presses according to the mouse cursor position is a fundamental concept in user-interface design.

Qt Quick provides the [MouseArea](../QtQuick.MouseArea.md) visual object type which automatically receives mouse events (including clicks and wheel events) which allows developers to create custom user-interface objects to handle mouse input. Please see the documentation about [mouse events in Qt Quick](../QtQuick.qtquick-input-mouseevents.md) for more information on the topic.

<span id="keyboard-input-and-keyboard-focus"></span>
Keyboard Input and Keyboard Focus
---------------------------------

Supporting input from a keyboard is a vital component of the user interface of many applications.

Any visual item can receive keyboard input through the [Keys](../QtQuick.Keys.md) attached type. Additionally, the issue of *keyboard focus* arises when multiple items are required to receive key events, as these events must be passed to the correct item. See the documentation about [Keyboard focus in Qt Quick](../QtQuick.qtquick-input-focus.md) for more information on this topic.

Qt Quick also provides visual text items which automatically receive keyboard events and key-presses, and displays the appropriate text. See the documentation about [text input](../QtQuick.qtquick-input-textinput.md) for in-depth information on the topic.

<span id="device-motion-gestures"></span>
Device Motion Gestures
----------------------

Detecting device gestures with an accelerometer, or through camera-based gesture recognition, can allow users to interact with an application without requiring their full and undevided attention. It can also provide a more interactive and engaging experience.

Qt Quick itself does not offer first-class support for physical device motion gestures; however, the Qt Sensors module provides QML types with support for such gestures. See the Qt Sensors module documentation for more information on the topic.

