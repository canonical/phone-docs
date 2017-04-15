---
Title: Ubuntu.Components.ActionManager
---
        
ActionManager
=============

<span class="subtitle"></span>
ActionManager manages actions and action contexts withion an application. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[actions](#actions-prop)**** : list&lt;Action&gt;
-   ****[globalContext](#globalContext-prop)**** : ActionContext
-   ****[localContexts](#localContexts-prop)**** : list&lt;ActionContext&gt;

<span id="details"></span>
Detailed Description
--------------------

Acts as an interface between the application and external components. Maintains the global context action registration.

There can be many [ActionManager](index.html) instances in an application, and all instances will have the ActionContexts shared between each other. If individual [ActionManager](index.html) instances add more Action objects, those will be published as well.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="actions-prop"></span><span class="qmldefault">[default] </span><span class="name">actions</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.Action.md">Action</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

A list of actions in the global context.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="globalContext-prop"></span><span class="name">globalContext</span> : <span class="type"><a href="Ubuntu.Components.ActionContext.md">ActionContext</a></span></p></td>
</tr>
</tbody>
</table>

The globalContext of the Application.

**Note:** Setting the [ActionContext::active](../Ubuntu.Components.ActionContext.md#active-prop) on the global context has no effect.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="localContexts-prop"></span><span class="name">localContexts</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.ActionContext.md">ActionContext</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

List of local contexts.

