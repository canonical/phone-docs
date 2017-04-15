---
Title: QtQuick.PauseAnimation
---
        
PauseAnimation
==============

<span class="subtitle"></span>
Provides a pause for an animation More...

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
<td><p><a href="QtQuick.Animation.md">Animation</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[duration](#duration-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

When used in a [SequentialAnimation](../QtQuick.SequentialAnimation.md), [PauseAnimation](index.html) is a step when nothing happens, for a specified duration.

A 500ms animation sequence, with a 100ms pause between two animations:

``` cpp
SequentialAnimation {
    NumberAnimation { ... duration: 200 }
    PauseAnimation { duration: 100 }
    NumberAnimation { ... duration: 200 }
}
```

**See also** [Animation and Transitions in Qt Quick](../QtQuick.qtquick-statesanimations-animations.md) and [Qt Quick Examples - Animation](https://developer.ubuntu.comapps/qml/sdk-15.04.5/QtQuick.animation/).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="duration-prop"></span><span class="name">duration</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the duration of the pause in milliseconds

The default value is 250.

