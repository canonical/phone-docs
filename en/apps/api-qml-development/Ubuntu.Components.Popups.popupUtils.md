---
Title: Ubuntu.Components.Popups.popupUtils
---
        
popupUtils
==========

<span class="subtitle"></span>
Popover utility functions. More...

|                   |                                     |
|-------------------|-------------------------------------|
| Import Statement: | import Ubuntu.Components.Popups 1.3 |

<span id="methods"></span>
Methods
-------

-   ****[close](#close-method)****(popupObject)
-   ****[open](#open-method)****(popup, caller, params)

<span id="details"></span>
Detailed Description
--------------------

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="close-method"></span><span class="name">close</span>(<span class="type">popupObject</span>)</p></td>
</tr>
</tbody>
</table>

Closes (hides and destroys) the given popup.

``` qml
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3
Button {
    onClicked: PopupUtils.close(popup)
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="open-method"></span><span class="name">open</span>(<span class="type">popup</span>, <span class="type">caller</span>, <span class="type">params</span>)</p></td>
</tr>
</tbody>
</table>

The function creates and shows a popup object from either a **Component** or URL of a QML document. The caller drives the placement of the popup as well as the pointer's. The third parameter (param) can hold a series of properties configuring the popup to be opened. This can be any property defined by the popups and additional custom ones defined in derived popups.

*caller* should be given when a [ComposerSheet](https://developer.ubuntu.comapps/qml/sdk-15.04.6/Ubuntu.Components.Popups.ComposerSheet/) or [Dialog](../Ubuntu.Components.Popups.Dialog.md) is specified using a URL and opened inside a **Window**. If not, the application's root item will be the dismiss area.

Returns a popop object, which can be closed using [close](#close-method).

``` qml
import Ubuntu.Components 1.3
import Ubuntu.Components.Popups 1.3
Button {
    onClicked: PopupUtils.open(popoverComponent, popoverButton, { 'dummy': true } )
}
```

See [Popover](../Ubuntu.Components.Popups.Popover.md), [ComposerSheet](https://developer.ubuntu.comapps/qml/sdk-15.04.6/Ubuntu.Components.Popups.ComposerSheet/) and [Dialog](../Ubuntu.Components.Popups.Dialog.md) for their respective documentation and more examples.

