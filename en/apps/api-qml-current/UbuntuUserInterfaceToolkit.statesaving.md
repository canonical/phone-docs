---
Title: UbuntuUserInterfaceToolkit.statesaving
---
        
Automatic State Saving
======================

<span class="subtitle"></span>
<span id="details"></span>
During application development it is often required to start an application from a view which depends on the previous application runs. Like a web browser should remember the number of opened tabs, their content or the browsing history, or a news reader application should continue from the last news the application was opened on, preferably from the same position.

Ubuntu UI toolkit provides a simple way to save the state of any component within an application, by using the attached component [StateSaver](../Ubuntu.Components.StateSaver.md). By simply attaching this component to any [QtQuick](http://doc.qt.io/qt-5/qtquick-qmlmodule.html) component and specifying the [properties](../Ubuntu.Components.StateSaver.md#properties-prop) to be saved, applications can be restored to any previous state they were before being closed.

Consider the following simple [QtQuick](http://doc.qt.io/qt-5/qtquick-qmlmodule.html) application, which on button press randomly changes its background.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.2
Rectangle {
    id: root
    width: units.gu(40)
    height: units.gu(71)
    color: "green"
    StateSaver.properties: "color"
    Button {
        text: "Change color"
        anchors.centerIn: parent
        onClicked: {
            root.color = Qt.rgba(Math.random(1), Math.random(1), Math.random(1), 1);
        }
    }
}
```

But let's see what else is neded to properly save an application's components proeprties.

<a href="UbuntuUserInterfaceToolkit.statesaving1.md" class="nextPage">Application name, IDs</a>

