---
Title: QtLocation.Ratings
---
        
Ratings
=======

<span class="subtitle"></span>
The Ratings type holds place rating information. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import QtLocation 5.3 |
| Since:            | Qt Location 5.0       |

<span id="properties"></span>
Properties
----------

-   ****[average](../../sdk-15.04.1/QtLocation.Ratings.md#average-prop)**** : real
-   ****[count](../../sdk-15.04.1/QtLocation.Ratings.md#count-prop)**** : int
-   ****[maximum](../../sdk-15.04.1/QtLocation.Ratings.md#maximum-prop)**** : real
-   ****[ratings](../../sdk-15.04.1/QtLocation.Ratings.md#ratings-prop)**** : QPlaceRatings

<span id="details"></span>
Detailed Description
--------------------

Rating information is used to describe how *good* a place is conceived to be. Typically this information is visualized as a number of stars. The [average](../../sdk-15.04.1/QtLocation.Ratings.md#average-prop) property gives an aggregated ratings value out of a possible maximum as given by the [maximum](../../sdk-15.04.1/QtLocation.Ratings.md#maximum-prop) property.

``` qml
import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
Text {
    text: "This place is rated " + place.ratings.average + " out of " + place.ratings.maximum + " stars."
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="average-prop"></span><span class="name">average</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the average of the individual ratings.

**See also** [maximum](../../sdk-15.04.1/QtLocation.Ratings.md#maximum-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="count-prop"></span><span class="name">count</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the total number of individual user ratings used in determining the overall ratings [average](../../sdk-15.04.1/QtLocation.Ratings.md#average-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximum-prop"></span><span class="name">maximum</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the maximum rating value.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="ratings-prop"></span><span class="name">ratings</span> : <span class="type">QPlaceRatings</span></p></td>
</tr>
</tbody>
</table>

For details on how to use this property to interface between C++ and QML see "Interfaces between C++ and QML Code".

