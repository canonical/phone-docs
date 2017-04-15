---
Title: UbuntuUserInterfaceToolkit.ubuntu-layouts3
---
        
Layouts - Changing the order
============================

<span class="subtitle"></span>
<span id="details"></span>
So far we have seen how to define the default layout, a conditional layout and how to place items into those.

As mentioned in the [ConditionalLayout](../Ubuntu.Layouts.ConditionalLayout.md) documentation, items hosted by the container are laid out based on the order they are hosted by the [ItemLayout](../Ubuntu.Layouts.ItemLayout.md).

So let's change the order the buttons are laid out so that we have blue, red and green order.

``` qml
ConditionalLayout {
    name: "row"
    when: layouts.width > units.gu(50)
    Row {
        anchors.fill: parent
        ItemLayout {
            item: "blue"
            width: parent.width / 3
            anchors {
                top: parent.top
                bottom: parent.bottom
            }
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

The layout after resizing the window width to exceed 50 GU will look as follows:

![](https://developer.ubuntu.com/static/devportal_uploaded/643dd195-5d90-4465-a6d4-876815ca1eea-api/apps/qml/sdk-15.04.6/ubuntu-layouts3/images/layout2.png)

Note that when resizing the window width to &lt; 50 GU, you will get all your components back to their original (default) positions and anchors.

<a href="UbuntuUserInterfaceToolkit.ubuntu-layouts4.md" class="nextPage">Layouts - Lay out a single item differently from others</a>

