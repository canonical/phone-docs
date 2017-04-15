---
Title: Ubuntu.Components.ActionList
---
        
ActionList
==========

<span class="subtitle"></span>
List of Action items More...

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
<td>Inherits:</td>
<td><p><a href="../../sdk-14.10/QtQml.QtObject.md">QtObject</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[actions](#actions-prop)**** : Action
-   ****[children](#children-prop)**** : list&lt;Action&gt;

<span id="details"></span>
Detailed Description
--------------------

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actions-prop"></span><span class="name">actions</span> : <span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span></p></td>
</tr>
</tbody>
</table>

List of already defined actions when not defining them as children of the [ActionList](index.html). Note that when you set this property, the children of the [ActionList](index.html) will be ignored, so do not set the list and define children.

The advantage of setting actions over using the children is that the same [Action](../Ubuntu.Components.Action.md) items can be used in several sets of actions.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="children-prop"></span><span class="qmldefault">[default] </span><span class="name">children</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

Default property to allow adding of children.

