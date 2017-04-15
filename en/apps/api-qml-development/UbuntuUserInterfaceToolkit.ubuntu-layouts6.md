---
Title: UbuntuUserInterfaceToolkit.ubuntu-layouts6
---
        
Layouts - Overlay items in an item host
=======================================

<span class="subtitle"></span>
<span id="details"></span>
There is one more thing you can do with [ItemLayout](../Ubuntu.Layouts.ItemLayout.md) container, which is to define overlay items for certain hosted items on certain layouts. If an [ItemLayout](../Ubuntu.Layouts.ItemLayout.md) has child elements defined, the hosted item will be stacked as topmost element, so all the child elements declared in [ItemLayout](../Ubuntu.Layouts.ItemLayout.md) will be rendered as overlay on top of the hosted item.

![](https://developer.ubuntu.com/static/devportal_uploaded/e8f29d42-5943-482a-ae85-547ff21283df-api/apps/qml/sdk-15.04.6/ubuntu-layouts6/images/layout7.png)

``` qml
ConditionalLayout {
    name: "row"
    when: layouts.width > units.gu(50)
    Row {
        anchors.fill: parent
        ItemLayout {
            item: "red"
            width: parent.width / 2
            height: units.gu(20)
            Rectangle {
                anchors{
                    left: parent.left
                    right: parent.right
                    bottom: parent.bottom
                    margins: units.dp(3)
                }
                radius: units.dp(1)
                height: units.gu(8)
                color: "#bbbbbb88"
                Label {
                    anchors.centerIn: parent
                    text: "Overlay item"
                }
            }
        }
        ItemLayout {
            item: "green"
            width: parent.width / 2
            height: units.gu(20)
        }
    }
}
```

<a href="UbuntuUserInterfaceToolkit.ubuntu-layouts7.md" class="nextPage">Layouts - Defining more layouts for different form factors</a>

