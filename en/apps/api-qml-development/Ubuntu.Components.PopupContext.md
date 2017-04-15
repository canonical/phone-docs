---
Title: Ubuntu.Components.PopupContext
---
        
PopupContext
============

<span class="subtitle"></span>
A special ActionContext used in Dialogs and Popups. More...

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
<td>Since:</td>
<td>Ubuntu.Components 1.3</td>
</tr>
<tr class="odd">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.ActionContext.md">ActionContext</a></p></td>
</tr>
</tbody>
</table>

<span id="details"></span>
Detailed Description
--------------------

A [PopupContext](index.html) is similar to the [ActionContext](../Ubuntu.Components.ActionContext.md), with the only difference being that there can be only one [PopupContext](index.html) active at a time in an application. A [PopupContext](index.html) can have several active [ActionContext](../Ubuntu.Components.ActionContext.md) children declared, however when deactivated all child contexts will be deactivated as well, and no Action declared in these contexts will be available through shortcuts.

The toolkit provides this kind of contexts in [MainView](../Ubuntu.Components.MainView.md), Popup and Dialog. It is highly recommended for applications to have a [PopupContext](index.html) defined in their rootItem.

