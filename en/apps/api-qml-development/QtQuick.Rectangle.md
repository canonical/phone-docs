---
Title: QtQuick.Rectangle
---
        
Rectangle
=========

<span class="subtitle"></span>
Paints a filled rectangle with an optional border More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import QtQuick 2.4</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[antialiasing](#antialiasing-prop)**** : bool
-   ****[border](#border-prop)****
    -   ****[border.width](#border.width-prop)**** : int
    -   ****[border.color](#border.color-prop)**** : color
-   ****[color](#color-prop)**** : color
-   ****[gradient](#gradient-prop)**** : Gradient
-   ****[radius](#radius-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

Rectangle items are used to fill areas with solid color or gradients, and/or to provide a rectangular border.

<span id="appearance"></span>
Appearance
----------

Each Rectangle item is painted using either a solid fill color, specified using the [color](#color-prop) property, or a gradient, defined using a Gradient type and set using the [gradient](#gradient-prop) property. If both a color and a gradient are specified, the gradient is used.

You can add an optional border to a rectangle with its own color and thickness by setting the [border.color](#border.color-prop) and [border.width](#border.width-prop) properties. Set the color to "transparent" to paint a border without a fill color.

You can also create rounded rectangles using the [radius](#radius-prop) property. Since this introduces curved edges to the corners of a rectangle, it may be appropriate to set the [Item::antialiasing](../QtQuick.Item.md#antialiasing-prop) property to improve its appearance.

<span id="example-usage"></span>
Example Usage
-------------

![](https://developer.ubuntu.com/static/devportal_uploaded/cbe85ccf-d820-4921-811d-26f0d022cf77-api/apps/qml/sdk-15.04.6/QtQuick.Rectangle/images/declarative-rect.png)

The following example shows the effects of some of the common properties on a Rectangle item, which in this case is used to create a square:

``` qml
import QtQuick 2.0
Rectangle {
    width: 100
    height: 100
    color: "red"
    border.color: "black"
    border.width: 5
    radius: 10
}
```

<span id="performance"></span>
Performance
-----------

Using the [Item::antialiasing](../QtQuick.Item.md#antialiasing-prop) property improves the appearance of a rounded rectangle at the cost of rendering performance. You should consider unsetting this property for rectangles in motion, and only set it when they are stationary.

**See also** [Image](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQuick.imageelements/#image).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="antialiasing-prop"></span><span class="name">antialiasing</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Used to decide if the Rectangle should use antialiasing or not. [Antialiasing](../QtQuick.qtquick-visualcanvas-scenegraph-renderer.md#antialiasing) provides information on the performance implications of this property.

The default is true for Rectangles with a radius, and false otherwise.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th><p><span id="border-prop"></span><strong>border group</strong></p></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><span id="border.width-prop"></span><span class="name">border.width</span> : <span class="type">int</span></p></td>
</tr>
<tr class="even">
<td><p><span id="border.color-prop"></span><span class="name">border.color</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

The width and color used to draw the border of the rectangle.

A width of 1 creates a thin line. For no line, use a width of 0 or a transparent color.

**Note:** The width of the rectangle's border does not affect the geometry of the rectangle itself or its position relative to other items if anchors are used.

The border is rendered within the rectangle's boundaries.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="color-prop"></span><span class="name">color</span> : <span class="type">color</span></p></td>
</tr>
</tbody>
</table>

This property holds the color used to fill the rectangle.

The default color is white.

![](https://developer.ubuntu.com/static/devportal_uploaded/c9adc075-25e5-4324-9682-d1a461edcf26-api/apps/qml/sdk-15.04.6/QtQuick.Rectangle/images/rect-color.png)

The following example shows rectangles with colors specified using hexadecimal and named color notation:

``` qml
Rectangle {
    color: "#00B000"
    width: 80; height: 80
}
Rectangle {
    color: "steelblue"
    y: 100; width: 80; height: 80
}
```

If both a gradient and a color are specified, the gradient will be used.

**See also** [gradient](#gradient-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="gradient-prop"></span><span class="name">gradient</span> : <span class="type"><a href="QtQuick.Gradient.md">Gradient</a></span></p></td>
</tr>
</tbody>
</table>

The gradient to use to fill the rectangle.

This property allows for the construction of simple vertical gradients. Other gradients may by formed by adding rotation to the rectangle.

![](https://developer.ubuntu.com/static/devportal_uploaded/03b72274-79bc-4aac-91c4-1b662e85c1a0-api/apps/qml/sdk-15.04.6/QtQuick.Rectangle/images/declarative-rect_gradient.png)

``` qml
Rectangle {
    y: 0; width: 80; height: 80
    color: "lightsteelblue"
}
Rectangle {
    y: 100; width: 80; height: 80
    gradient: Gradient {
        GradientStop { position: 0.0; color: "lightsteelblue" }
        GradientStop { position: 1.0; color: "blue" }
    }
}
Rectangle {
    y: 200; width: 80; height: 80
    rotation: 90
    gradient: Gradient {
        GradientStop { position: 0.0; color: "lightsteelblue" }
        GradientStop { position: 1.0; color: "blue" }
    }
}
```

If both a gradient and a color are specified, the gradient will be used.

**See also** [Gradient](../QtQuick.Gradient.md) and [color](#color-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="radius-prop"></span><span class="name">radius</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the corner radius used to draw a rounded rectangle.

If radius is non-zero, the rectangle will be painted as a rounded rectangle, otherwise it will be painted as a normal rectangle. The same radius is used by all 4 corners; there is currently no way to specify different radii for different corners.

