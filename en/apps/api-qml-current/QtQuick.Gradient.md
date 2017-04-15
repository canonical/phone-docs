---
Title: QtQuick.Gradient
---
        
Gradient
========

<span class="subtitle"></span>
Defines a gradient fill More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[stops](#stops-prop)**** : list&lt;GradientStop&gt;

<span id="details"></span>
Detailed Description
--------------------

A gradient is defined by two or more colors, which will be blended seamlessly.

The colors are specified as a set of [GradientStop](../QtQuick.GradientStop.md) child items, each of which defines a position on the gradient from 0.0 to 1.0 and a color. The position of each [GradientStop](../QtQuick.GradientStop.md) is defined by setting its [position](../QtQuick.GradientStop.md#position-prop) property; its color is defined using its [color](../QtQuick.GradientStop.md#color-prop) property.

A gradient without any gradient stops is rendered as a solid white fill.

Note that this item is not a visual representation of a gradient. To display a gradient, use a visual item (like [Rectangle](../QtQuick.Rectangle.md)) which supports the use of gradients.

<span id="example-usage"></span>
Example Usage
-------------

![](https://developer.ubuntu.com/static/devportal_uploaded/72eac74e-0961-47f9-be8d-ef2e3aa156f5-api/apps/qml/sdk-15.04.5/QtQuick.Gradient/images/qml-gradient.png)

The following example declares a [Rectangle](../QtQuick.Rectangle.md) item with a gradient starting with red, blending to yellow at one third of the height of the rectangle, and ending with green:

``` qml
Rectangle {
    width: 100; height: 100
    gradient: Gradient {
        GradientStop { position: 0.0; color: "red" }
        GradientStop { position: 0.33; color: "yellow" }
        GradientStop { position: 1.0; color: "green" }
    }
}
```

<span id="performance-and-limitations"></span>
Performance and Limitations
---------------------------

Calculating gradients can be computationally expensive compared to the use of solid color fills or images. Consider using gradients for static items in a user interface.

In Qt 5.0, only vertical, linear gradients can be applied to items. If you need to apply different orientations of gradients, a combination of rotation and clipping will need to be applied to the relevant items. This can introduce additional performance requirements for your application.

The use of animations involving gradient stops may not give the desired result. An alternative way to animate gradients is to use pre-generated images or SVG drawings containing gradients.

**See also** [GradientStop](../QtQuick.GradientStop.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stops-prop"></span><span class="qmldefault">[default] </span><span class="name">stops</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.GradientStop.md">GradientStop</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

This property holds the gradient stops describing the gradient.

By default, this property contains an empty list.

To set the gradient stops, define them as children of the Gradient.

