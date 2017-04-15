---
Title: QtQuick.qtquick-quick-accessibility-example
---
        
Qt Quick Examples - Accessibility
=================================

<span class="subtitle"></span>
<span id="details"></span>
*Accessibility* demonstrates QML types that are augmented with meta-data for accessibility systems. For more information, visit the Accessibility page.

<span id="running-the-example"></span>
Running the Example
-------------------

To run the example from Qt Creator, open the **Welcome** mode and select the example from **Examples**. For more information, visit Building and Running an Example.

<span id="implementing-accessible-buttons"></span>
Implementing Accessible Buttons
-------------------------------

The button identifies itself and its functionality to the accessibility system:

``` qml
Accessible.name: text
Accessible.description: "This button does " + text
Accessible.role: Accessible.Button
Accessible.onPressAction: {
    button.clicked()
}
```

Similarly, [Text](../QtQuick.qtquick-releasenotes.md#text) types inside the example also identify themselves:

``` qml
Accessible.role: Accessible.StaticText
Accessible.name: text
```

Files:

-   quick-accessibility/accessibility.qml
-   quick-accessibility/content/Button.qml
-   quick-accessibility/content/Checkbox.qml
-   quick-accessibility/content/Slider.qml
-   quick-accessibility/main.cpp
-   quick-accessibility/accessibility.qmlproject
-   quick-accessibility/accessibility.qrc
-   quick-accessibility/quick-accessibility.pro

