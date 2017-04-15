---
Title: Ubuntu.Components.BottomEdgeRegion
---
        
BottomEdgeRegion
================

<span class="subtitle"></span>
Defines an active region within the BottomEdge component. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import .</td>
</tr>
<tr class="even">
<td>Since:</td>
<td>Ubuntu.Components 1.3</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="QtQml.QtObject.md">QtObject</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[contentComponent](#contentComponent-prop)**** : Component
-   ****[contentUrl](#contentUrl-prop)**** : url
-   ****[enabled](#enabled-prop)**** : bool
-   ****[from](#from-prop)**** : real
-   ****[to](#to-prop)**** : real

<span id="signals"></span>
Signals
-------

-   void ****[dragEnded](#dragEnded-signal)****()
-   void ****[entered](#entered-signal)****()
-   void ****[exited](#exited-signal)****()

<span id="details"></span>
Detailed Description
--------------------

Bottom edge regions are portions within the bottom edge area which can define different content or action whenever the drag enters in the area. The area is defined by [from](#from-prop) and [to](#to-prop) properties vertically, whereas horizontally is stretched across bottom edge width. Custom content can be defined through [contentUrl](#contentUrl-prop) or [contentComponent](#contentComponent-prop) properties, which will override the [BottomEdge::contentUrl](../Ubuntu.Components.BottomEdge.md#contentUrl-prop) and [BottomEdge::contentComponent](../Ubuntu.Components.BottomEdge.md#contentComponent-prop) properties for the time the gesture is in the section area.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
MainView {
    width: units.gu(40)
    height: units.gu(70)
    Page {
        header: PageHeader {
            title: "BottomEdge regions"
        }
        BottomEdge {
            id: bottomEdge
            height: parent.height - units.gu(20)
            hint: BottomEdgeHint {
                text: "My bottom edge"
            }
            // a fake content till we reach the committable area
            contentComponent: Rectangle {
                width: bottomEdge.width
                height: bottomEdge.height
                color: UbuntuColors.green
            }
            // override bottom edge sections to switch to real content
            BottomEdgeRegion {
                from: 0.33
                contentComponent: Page {
                    width: bottomEdge.width
                    height: bottomEdge.height
                    header: PageHeader {
                        title: "BottomEdge Content"
                    }
                }
            }
        }
    }
}
```

Entering into the section area is signalled by the [entered](#entered-signal) signal and when drag leaves the area the [exited](#exited-signal) signal is emitted. If the drag ends within the section area, the [dragEnded](#dragEnded-signal) signal is emitted. In case the section's [to](#to-prop) property is less than 1.0, the bottom edge content will only be exposed to that value, and the [BottomEdge::status](../Ubuntu.Components.BottomEdge.md#status-prop) will get the *Committed* value. No further drag is possible after reaching *Commited* state.

**Note:** Whereas there is no restriction on making overlapping sections, beware that overlapping sections changing the content through the [contentUrl](#contentUrl-prop) or [contentComponent](#contentComponent-prop) properties will cause unpredictable results.

Property Documentation
----------------------

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

Specifies the component defining the section specific content. This propery will temporarily override the [BottomEdge::contentComponent](../Ubuntu.Components.BottomEdge.md#contentComponent-prop) property value when the drag gesture enters the section area. The orginal value will be restored once the gesture leaves the section area.

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

Specifies the url to the document defining the section specific content. This propery will temporarily override the [BottomEdge::contentUrl](../Ubuntu.Components.BottomEdge.md#contentUrl-prop) property value when the drag gesture enters the section area. The orginal value will be restored once the gesture leaves the section area.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="enabled-prop"></span><span class="name">enabled</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Enables the section. Disabled sections do not trigger nor change the [BottomEdge](../Ubuntu.Components.BottomEdge.md) content. Defaults to false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="from-prop"></span><span class="name">from</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Specifies the starting ratio of the bottom erge area. The value must be bigger or equal to 0 but strictly smaller than [to](#to-prop). Defaults to 0.0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="to-prop"></span><span class="name">to</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

Specifies the ending ratio of the bottom edge area. The value must be bigger than [from](#from-prop) and smaller or equal to 1.0.

**Note:** If the end point is less than 1.0, ending the drag within the section will result in exposing the bottom edge content only till the ration specified by this property.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dragEnded-signal"></span><span class="type">void</span> <span class="name">dragEnded</span>()</p></td>
</tr>
</tbody>
</table>

Signal triggered when the drag ends within the active bottom edge section area.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="entered-signal"></span><span class="type">void</span> <span class="name">entered</span>()</p></td>
</tr>
</tbody>
</table>

Signal triggered when the drag enters into the area defined by the bottom edge section.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exited-signal"></span><span class="type">void</span> <span class="name">exited</span>()</p></td>
</tr>
</tbody>
</table>

Signal triggered when the drag leaves the area defined by the bottom edge section.

