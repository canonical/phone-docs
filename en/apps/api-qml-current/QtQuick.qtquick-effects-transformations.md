---
Title: QtQuick.qtquick-effects-transformations
---
        
Qt Quick Transformation Types
=============================

<span class="subtitle"></span>
<span id="details"></span>
Transformations are applied to child hierarchies and also will also transform mouse and touch input so coordinates in event handlers behave as expected.

<span id="item-properties"></span>
Item Properties
---------------

The [Item](../QtQuick.Item.md) contains a number of convenience properties, covering the most common types of transformations.

-   `x` and `y`; Translates the item.
-   `scale`; Applies a uniform scale factor to the item.
-   `rotation`; Applies a counterclockwise rotation of the item.
-   `transformOrigin`; Used in conjunction with scale and rotation to change the origin of the transformation.

<span id="transform-list"></span>
Transform List
--------------

In addition to the convenience types, it is possible to define more comprehensive transformations using a list of [Scale](../QtQuick.Scale.md), [Rotation](../QtQuick.Rotation.md), and [Translate](../QtQuick.Translate.md) objects to the `transform` property of the [Item](../QtQuick.Item.md).

