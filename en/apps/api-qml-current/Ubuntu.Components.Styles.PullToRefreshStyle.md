---
Title: Ubuntu.Components.Styles.PullToRefreshStyle
---
        
PullToRefreshStyle
==================

<span class="subtitle"></span>
Style API for PullToRefresh component. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components.Styles 1.3</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="../../sdk-14.10/QtQuick.Item.md">Item</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[activationThreshold](#activationThreshold-prop)**** : real
-   ****[defaultContent](#defaultContent-prop)**** : Component
-   ****[releaseToRefresh](#releaseToRefresh-prop)**** : bool

<span id="details"></span>
Detailed Description
--------------------

The component defines the style API for the [PullToRefresh](../Ubuntu.Components.PullToRefresh.md) component.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="activationThreshold-prop"></span><span class="name">activationThreshold</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

The property holds the threshold value when the component should enter into *ready-to-refresh* state when dragged manually. The default value is the height of the component styled.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultContent-prop"></span><span class="name">defaultContent</span> : <span class="type"><a href="../../sdk-14.10/QtQml.Component.md">Component</a></span></p></td>
</tr>
</tbody>
</table>

The property holds the style provided default content component. The value is assigned to the [PullToRefresh::content](../Ubuntu.Components.PullToRefresh.md#content-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="releaseToRefresh-prop"></span><span class="name">releaseToRefresh</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property informs the component when a manual refresh can be triggered. Style implementations (themes) can decide when to flip the component to be ready to trigger reftesh signal.

