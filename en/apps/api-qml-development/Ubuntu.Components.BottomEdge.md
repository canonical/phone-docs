---
Title: Ubuntu.Components.BottomEdge
---
        
BottomEdge
==========

<span class="subtitle"></span>
A component to handle bottom edge gesture and content. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components 1.3</td>
</tr>
<tr class="even">
<td>Since:</td>
<td>Ubuntu.Components 1.3</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[activeRegion](#activeRegion-prop)**** : BottomEdgeRegion
-   ****[contentComponent](#contentComponent-prop)**** : Component
-   ****[contentItem](#contentItem-prop)**** : Item
-   ****[contentUrl](#contentUrl-prop)**** : url
-   ****[dragDirection](#dragDirection-prop)**** : DragDirection
-   ****[dragProgress](#dragProgress-prop)**** : real
-   ****[hint](#hint-prop)**** : BottomEdgeHint
-   ****[preloadContent](#preloadContent-prop)**** : bool
-   ****[regions](#regions-prop)**** : list&lt;BottomEdgeRegion&gt;
-   ****[status](#status-prop)**** : Status

<span id="signals"></span>
Signals
-------

-   ****[collapseCompleted](#collapseCompleted-signal)****()
-   ****[collapseStarted](#collapseStarted-signal)****()
-   ****[commitCompleted](#commitCompleted-signal)****()
-   ****[commitStarted](#commitStarted-signal)****()

<span id="methods"></span>
Methods
-------

-   void ****[collapse](#collapse-method)****()
-   void ****[commit](#commit-method)****()

<span id="details"></span>
Detailed Description
--------------------

The component provides bottom edge content handling. The bottom egde feature is typically composed of a hint and some content. The [contentUrl](#contentUrl-prop) is committed (i.e. fully shown) when the drag is completed after it has been dragged for a certain amount, that is 30% of the height of the [BottomEdge](index.html). The [contentUrl](#contentUrl-prop) can be anything, defined by [contentUrl](#contentUrl-prop) or [contentComponent](#contentComponent-prop).

As the name suggests, the component automatically anchors to the bottom of its parent and takes the width of the parent. The drag is detected within the parent area, and the height drives till what extent the bottom edge content should be exposed on [commit](#commit-method) call. The content is centered into a panel which is dragged from the bottom of the [BottomEdge](index.html). The content must specify its width and height.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(40)
    height: units.gu(70)
    Page {
        id: page
        title: "BottomEdge"
        BottomEdge {
            height: parent.height - units.gu(20)
            hint.text: "My bottom edge"
            contentComponent: Rectangle {
                width: page.width
                height: page.height
                color: UbuntuColors.green
            }
        }
    }
}
```

**Note:** The content is specified either through [contentUrl](#contentUrl-prop) or [contentComponent](#contentComponent-prop), where [contentComponent](#contentComponent-prop) has precedence over [contentUrl](#contentUrl-prop).

There can be situations when the content depends on the progress of the drag. There are two possibilities to follow this, depending on the use case. The [dragProgress](#dragProgress-prop) provides live updates about the fraction of the drag.

``` qml
BottomEdge {
    id: bottomEdge
    height: parent.height
    hint.text: "progression"
    contentComponent: Rectangle {
        width: bottomEdge.width
        height: bottomEdge.height
        color: Qt.rgba(0.5, 1, bottomEdge.dragProgress, 1);
    }
}
```

The other use case is when the content needs to be completely different in certain regions of the area. These regions can be defined through [BottomEdgeRegion](../Ubuntu.Components.BottomEdgeRegion.md) elements listed in the [regions](#regions-prop) property.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(40)
    height: units.gu(70)
    Page {
        title: "BottomEdge"
        BottomEdge {
            id: bottomEdge
            height: parent.height - units.gu(20)
            hint.text: "My bottom edge"
            contentComponent: Rectangle {
                width: bottomEdge.width
                height: bottomEdge.height
                color: bottomEdge.activeRegion ?
                         bottomEdge.activeRegion.color : UbuntuColors.green
            }
            regions: [
                BottomEdgeRegion {
                    from: 0.4
                    to: 0.6
                    property color color: UbuntuColors.red
                },
                BottomEdgeRegion {
                    from: 0.6
                    to: 1.0
                    property color color: UbuntuColors.silk
                }
            ]
        }
    }
}
```

**Note:** Custom regions override the default declared ones. Therefore there must be one region which has its [to](../Ubuntu.Components.BottomEdgeRegion.md#to-prop) limit set to 1.0 otherwise the content will not be committed at all.

**Note:** Regions can also be declared as child elements the same way as resources.

The [BottomEdge](index.html) takes ownership over the custom BottomEdgeRegions, therefore we cannot 'reuse' regions declared in other [BottomEdge](index.html) components, as those will be destroyed together with the reusing [BottomEdge](index.html) component. The following scenario only works if the *customRegion* is not used in any other regions.

``` qml
Page {
    BottomEdge {
        id: bottomEdge
        hint.text: "reusing regions"
        // put your content and setup here
        regions: [customRegion]
    }
    BottomEdgeRegion {
        id: customRegion
        from: 0.2
    }
}
```

<span id="page-as-content"></span>
### Page As Content

[BottomEdge](index.html) accepts any component to be set as content. Also it can detect whether the content has a [PageHeader](../Ubuntu.Components.PageHeader.md) component declared, and will inject a collapse navigation action automatically. In case the content has no header, the collapse must be provided by the content itself by calling the [collapse](#collapse-method) function.

``` qml
BottomEdge {
    id: bottomEdge
    height: parent.height
    hint.text: "Sample collapse"
    contentComponent: Rectangle {
        width: bottomEdge.width
        height: bottomEdge.height
        color: Qt.rgba(0.5, 1, bottomEdge.dragProgress, 1);
        Button {
            text: "Collapse"
            onClicked: bottomEdge.collapse()
        }
    }
}
```

Alternatively you can put a [PageHeader](../Ubuntu.Components.PageHeader.md) component in your custom content as follows:

``` qml
BottomEdge {
    id: bottomEdge
    height: parent.height
    hint.text: "Injected collapse"
    contentComponent: Rectangle {
        width: bottomEdge.width
        height: bottomEdge.height
        color: Qt.rgba(0.5, 1, bottomEdge.dragProgress, 1);
        PageHeader {
            title: "Fancy content"
        }
    }
}
```

<span id="styling"></span>
### Styling

Similar to the other components the default style is expected to be defined in the theme's *BottomEdgeStyle*. However the style is not parented to the [BottomEdge](index.html) itself, but to the [BottomEdge](index.html)'s parent item. When loaded, the style does not fill the parent but its bottom anchor is set to the bottom of the [BottomEdge](index.html). Beside this the hint is also parented to the style instance. Custom styles are expected to implement the BottomEgdeStyle API.

**See also** [BottomEdgeRegion](../Ubuntu.Components.BottomEdgeRegion.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="activeRegion-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">activeRegion</span> : <span class="type"><a href="Ubuntu.Components.BottomEdgeRegion.md">BottomEdgeRegion</a></span></p></td>
</tr>
</tbody>
</table>

Specifies the current active region.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentComponent-prop"></span><span class="name">contentComponent</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the component defining the content of the bottom edge. The property behaves the same way as Loader's *sourceComponent* property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentItem-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">contentItem</span> : <span class="type"><a href="QtQuick.Item.md">Item</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the item created either from [contentUrl](#contentUrl-prop) or [contentComponent](#contentComponent-prop) properties.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contentUrl-prop"></span><span class="name">contentUrl</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-url.html">url</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the url to the document defining the content of the bottom edge. The property behaves the same way as Loader's *source* property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragDirection-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">dragDirection</span> : <span class="type">DragDirection</span></p></td>
</tr>
</tbody>
</table>

The property reports the current direction of the drag. The direction is flipped when the drag passes the drag threshold.

| DragDirection | Description                                                                                                                  |
|---------------|------------------------------------------------------------------------------------------------------------------------------|
| Undefined     | Default. The drag is not performed or the direction is not detected.                                                         |
| Upwards       | The drag is performed from bottom up or it passed the drag threshold from from the last point the drag was going downwards.  |
| Downwards     | The drag is performed from up to bottom or it passed the drag threshold from from the last point the drag was going upwards. |

Defaults to *Undefined*

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragProgress-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">dragProgress</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The property specifies the proggress of the drag within \[0..1\] interval.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hint-prop"></span><span class="name">hint</span> : <span class="type"><a href="Ubuntu.Components.BottomEdgeHint.md">BottomEdgeHint</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the component to display the hint for the bottom edge element.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="preloadContent-prop"></span><span class="name">preloadContent</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If set, all the contents set in the component and in regions will be loaded in the background, so it will be available before it is revealed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="regions-prop"></span><span class="name">regions</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.BottomEdgeRegion.md">BottomEdgeRegion</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

The property holds the custom regions configured for the [BottomEdge](index.html). The default configuration contains one region, which commits the content when reached. The defaults can be restored by setting an empty list to the property or by calling regions.clear(). See [BottomEdgeRegion](../Ubuntu.Components.BottomEdgeRegion.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="status-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">status</span> : <span class="type">Status</span></p></td>
</tr>
</tbody>
</table>

The property reports the actual state of the bottom edge. It can have the following values:

| Status    | Description                                                                                                                  |
|-----------|------------------------------------------------------------------------------------------------------------------------------|
| Hidden    | The bottom edge is hidden. This does not contain the hint states.                                                            |
| Revealed  | The Bottom edge content is revealed. The state can be reached only if the [hint](#hint-prop) is in "Active" state. |
| Committed | The bottom edge content is fully exposed.                                                                                    |

**Note:** Once *Commited* status is set, no further draging is possible on the content.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="collapseCompleted-signal"></span><span class="name">collapseCompleted</span>()</p></td>
</tr>
</tbody>
</table>

Signal emitted when the content collapse is completed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="collapseStarted-signal"></span><span class="name">collapseStarted</span>()</p></td>
</tr>
</tbody>
</table>

Signal emitted when the content collapse is started.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="commitCompleted-signal"></span><span class="name">commitCompleted</span>()</p></td>
</tr>
</tbody>
</table>

Signal emitted when the content commit is completed.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="commitStarted-signal"></span><span class="name">commitStarted</span>()</p></td>
</tr>
</tbody>
</table>

Signal emitted when the content commit is started.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="collapse-method"></span><span class="type">void</span> <span class="name">collapse</span>()</p></td>
</tr>
</tbody>
</table>

The function forces the bottom edge content to be hidden. Emits [collapseStarted](#collapseStarted-signal) and [collapseCompleted](#collapseCompleted-signal) signals to notify the start and the completion of the collapse operation.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="commit-method"></span><span class="type">void</span> <span class="name">commit</span>()</p></td>
</tr>
</tbody>
</table>

The function forces the bottom edge content to be fully exposed. Emits [commitStarted](#commitStarted-signal) and [commitCompleted](#commitCompleted-signal) signals to notify the start and the completion of the commit operation. It is safe to call commit() multiple times.

