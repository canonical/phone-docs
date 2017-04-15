---
Title: UbuntuUserInterfaceToolkit.ubuntu-layouts4
---
        
Layouts - Lay out a single item differently from others
=======================================================

<span class="subtitle"></span>
<span id="details"></span>
As mentioned, [ItemLayout](../Ubuntu.Layouts.ItemLayout.md) has control over the size, anchors and visibility of the hosted element. Therefore we can have the blue button with a different size than the other two. Let's have the blue button's width set to 10 GUs and its height to 10 GUs less than the positioner's height.

The code will look as follows:

``` qml
ConditionalLayout {
    name: "row"
    when: layouts.width > units.gu(50)
    Row {
        anchors.fill: parent
        ItemLayout {
            item: "blue"
            width: units.gu(10)
            height: parent.height - units.gu(10)
        }
        ItemLayout {
            item: "red"
            width: parent.width / 3
            anchors {
                top: parent.top
                bottom: parent.bottom
            }
        }
        ItemLayout {
            item: "green"
            width: parent.width / 3
            anchors {
                top: parent.top
                bottom: parent.bottom
            }
        }
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/37c57edc-3dc4-4ae0-9e22-256840f8746b-api/apps/qml/sdk-15.04.5/ubuntu-layouts4/images/layout3.png)

<a href="UbuntuUserInterfaceToolkit.ubuntu-layouts5.md" class="nextPage">Layouts - Hiding elements, showing more</a>

