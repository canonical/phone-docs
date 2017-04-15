---
Title: QtOrganizer.DetailFilter
---
        
DetailFilter
============

<span class="subtitle"></span>
The DetailFilter element provides a filter based around a detail value criterion. More...

|                   |                        |
|-------------------|------------------------|
| Import Statement: | import QtOrganizer 5.0 |

<span id="properties"></span>
Properties
----------

-   ****[detail](#detail-prop)**** : Detail

<span id="signals"></span>
Signals
-------

-   ****[onFilterChanged](#onFilterChanged-signal)****()

<span id="details"></span>
Detailed Description
--------------------

Simple example how to utilize [DetailFilter](index.html) element together with [OrganizerModel](../QtOrganizer.OrganizerModel.md) and ListView elements:

``` cpp
Rectangle {
    height: 400; width: 400;
    OrganizerModel{
        id: organizer
        startPeriod: "2009-01-01"
        endPeriod: "2012-12-31"
        filter: todoFilter
    }
    Type {
        id: typeDetailToMatch
        type: Type.Todo
    }
    DetailFilter {
        id: todoFilter
        detail: typeDetailToMatch
    }
    ListView {
        width: parent.width; height: parent.height;
        model: organizer.items
        delegate: Text {text: displayLabel}
    }
}
```

**See also** QOrganizerItemDetailFilter.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="detail-prop"></span><span class="name">detail</span> : <span class="type"><a href="QtOrganizer.Detail.md">Detail</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the detail instance used by this filter for matching.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onFilterChanged-signal"></span><span class="name">onFilterChanged</span>()</p></td>
</tr>
</tbody>
</table>

**See also** [QtOrganizer5::Filter::onFilterChanged](../QtOrganizer.Filter.md#onFilterChanged-signal).

