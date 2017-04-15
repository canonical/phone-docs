---
Title: Ubuntu.Web.WebView
---
        
WebView
=======

<span class="subtitle"></span>
A webview that can be used to render web content in an application. More...

|                   |                       |
|-------------------|-----------------------|
| Import Statement: | import Ubuntu.Web 0.2 |

-   Obsolete members

<span id="properties"></span>
Properties
----------

-   ****[alertDialog](../../sdk-15.04.4/Ubuntu.Web.WebView.md#alertDialog-prop)**** : component
-   ****[beforeUnloadDialog](../../sdk-15.04.4/Ubuntu.Web.WebView.md#beforeUnloadDialog-prop)**** : component
-   ****[canGoBack](../../sdk-15.04.4/Ubuntu.Web.WebView.md#canGoBack-prop)**** : bool
-   ****[canGoForward](../../sdk-15.04.4/Ubuntu.Web.WebView.md#canGoForward-prop)**** : bool
-   ****[confirmDialog](../../sdk-15.04.4/Ubuntu.Web.WebView.md#confirmDialog-prop)**** : component
-   ****[context](../../sdk-15.04.4/Ubuntu.Web.WebView.md#context-prop)**** : WebContext
-   ****[contextModel](../../sdk-15.04.4/Ubuntu.Web.WebView.md#contextModel-prop)**** : QtObject
-   ****[contextualActions](../../sdk-15.04.4/Ubuntu.Web.WebView.md#contextualActions-prop)**** : ActionList
-   ****[filePicker](../../sdk-15.04.4/Ubuntu.Web.WebView.md#filePicker-prop)**** : component
-   ****[fullscreen](../../sdk-15.04.4/Ubuntu.Web.WebView.md#fullscreen-prop)**** : bool
-   ****[icon](../../sdk-15.04.4/Ubuntu.Web.WebView.md#icon-prop)**** : url
-   ****[incognito](../../sdk-15.04.4/Ubuntu.Web.WebView.md#incognito-prop)**** : bool
-   ****[loadProgress](../../sdk-15.04.4/Ubuntu.Web.WebView.md#loadProgress-prop)**** : int
-   ****[loading](../../sdk-15.04.4/Ubuntu.Web.WebView.md#loading-prop)**** : bool
-   ****[navigationHistory](../../sdk-15.04.4/Ubuntu.Web.WebView.md#navigationHistory-prop)**** : list
-   ****[promptDialog](../../sdk-15.04.4/Ubuntu.Web.WebView.md#promptDialog-prop)**** : component
-   ****[title](../../sdk-15.04.4/Ubuntu.Web.WebView.md#title-prop)**** : string
-   ****[url](../../sdk-15.04.4/Ubuntu.Web.WebView.md#url-prop)**** : url

<span id="methods"></span>
Methods
-------

-   void ****[goBack](../../sdk-15.04.4/Ubuntu.Web.WebView.md#goBack-method)****()
-   void ****[goForward](../../sdk-15.04.4/Ubuntu.Web.WebView.md#goForward-method)****()
-   void ****[loadHtml](../../sdk-15.04.4/Ubuntu.Web.WebView.md#loadHtml-method)****(string *html*, url *baseUrl*)
-   void ****[reload](../../sdk-15.04.4/Ubuntu.Web.WebView.md#reload-method)****()
-   void ****[stop](../../sdk-15.04.4/Ubuntu.Web.WebView.md#stop-method)****()

<span id="details"></span>
Detailed Description
--------------------

Here is a very simple example of how to use a [WebView](../../sdk-15.04.4/Ubuntu.Web.WebView.md) to render a web page:

``` qml
import QtQuick 2.4
import Ubuntu.Web 0.2
WebView {
    url: "http://ubuntu.com"
}
```

The `WebView` component defaults to using a [shared `WebContext`](../../sdk-15.04.4/Ubuntu.Web.SharedWebContext.md) that is shared across all `WebView` instances in a given application.

**See also** [SharedWebContext](../../sdk-15.04.4/Ubuntu.Web.SharedWebContext.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="alertDialog-prop"></span><span class="name">alertDialog</span> : <span class="type">component</span></p></td>
</tr>
</tbody>
</table>

The QML component that will be instantiated to display a JavaScript alert dialog.

**See also** [confirmDialog](../../sdk-15.04.4/Ubuntu.Web.WebView.md#confirmDialog-prop), [promptDialog](../../sdk-15.04.4/Ubuntu.Web.WebView.md#promptDialog-prop), and [beforeUnloadDialog](../../sdk-15.04.4/Ubuntu.Web.WebView.md#beforeUnloadDialog-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="beforeUnloadDialog-prop"></span><span class="name">beforeUnloadDialog</span> : <span class="type">component</span></p></td>
</tr>
</tbody>
</table>

The QML component that will be instantiated to display a JavaScript confirmation when the user initiates a navigation away from the current page, if the page has defined an `onBeforeUnload` handler.

**See also** [alertDialog](../../sdk-15.04.4/Ubuntu.Web.WebView.md#alertDialog-prop), [confirmDialog](../../sdk-15.04.4/Ubuntu.Web.WebView.md#confirmDialog-prop), and [promptDialog](../../sdk-15.04.4/Ubuntu.Web.WebView.md#promptDialog-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="canGoBack-prop"></span><span class="name">canGoBack</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the navigation history has a previous entry to navigate back.

**See also** [goBack](../../sdk-15.04.4/Ubuntu.Web.WebView.md#goBack-method) and [canGoForward](../../sdk-15.04.4/Ubuntu.Web.WebView.md#canGoForward-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="canGoForward-prop"></span><span class="name">canGoForward</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the navigation history has a next entry to navigate forward.

**See also** [goForward](../../sdk-15.04.4/Ubuntu.Web.WebView.md#goForward-method) and [canGoBack](../../sdk-15.04.4/Ubuntu.Web.WebView.md#canGoBack-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="confirmDialog-prop"></span><span class="name">confirmDialog</span> : <span class="type">component</span></p></td>
</tr>
</tbody>
</table>

The QML component that will be instantiated to display a JavaScript confirmation dialog.

**See also** [alertDialog](../../sdk-15.04.4/Ubuntu.Web.WebView.md#alertDialog-prop), [promptDialog](../../sdk-15.04.4/Ubuntu.Web.WebView.md#promptDialog-prop), and [beforeUnloadDialog](../../sdk-15.04.4/Ubuntu.Web.WebView.md#beforeUnloadDialog-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="context-prop"></span><span class="name">context</span> : <span class="type"><a href="../../sdk-15.04.4/Ubuntu.Web.WebContext.md">WebContext</a></span></p></td>
</tr>
</tbody>
</table>

The web context associated to this [WebView](../../sdk-15.04.4/Ubuntu.Web.WebView.md). By default a [shared context](../../sdk-15.04.4/Ubuntu.Web.SharedWebContext.md) is used which should fit most use cases, do not override unless you really need a finer control over the context.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contextModel-prop"></span><span class="name">contextModel</span> : <span class="type">QtObject</span></p></td>
</tr>
</tbody>
</table>

An object that holds the contextual data associated with the current context menu, as well as methods to interact with this data. User-defined [contextual actions](../../sdk-15.04.4/Ubuntu.Web.WebView.md#contextualActions-prop) can use this data to process it when triggered.

It has the following properties:

-   linkUrl (url): the full URI of the hyperlink, if any
-   srcUrl (url): the full URI of the image/media, if any
-   mediaType (int): the type of media (one of Oxide.[WebView](../../sdk-15.04.4/Ubuntu.Web.WebView.md).MediaTypeNone, Oxide.[WebView](../../sdk-15.04.4/Ubuntu.Web.WebView.md).MediaTypeImage, Oxide.[WebView](../../sdk-15.04.4/Ubuntu.Web.WebView.md).MediaTypeCanvas, Oxide.[WebView](../../sdk-15.04.4/Ubuntu.Web.WebView.md).MediaTypeAudio, Oxide.[WebView](../../sdk-15.04.4/Ubuntu.Web.WebView.md).MediaTypeVideo)
-   isEditable (bool): whether the current element is editable
-   editFlags (int): for editable elements, an OR-combined list of flags that define the current editing capabilities (Oxide.[WebView](../../sdk-15.04.4/Ubuntu.Web.WebView.md).UndoCapability, Oxide.[WebView](../../sdk-15.04.4/Ubuntu.Web.WebView.md).RedoCapability, Oxide.[WebView](../../sdk-15.04.4/Ubuntu.Web.WebView.md).CutCapability, Oxide.[WebView](../../sdk-15.04.4/Ubuntu.Web.WebView.md).CopyCapability, Oxide.[WebView](../../sdk-15.04.4/Ubuntu.Web.WebView.md).PasteCapability, Oxide.[WebView](../../sdk-15.04.4/Ubuntu.Web.WebView.md).EraseCapability, Oxide.[WebView](../../sdk-15.04.4/Ubuntu.Web.WebView.md).SelectAllCapability)

It has the following methods:

-   saveLink(): initiates a download request for the resource pointed to by the hyperlink, if any
-   saveMedia(): initiates a download request for the media (image, canvas, audio, video), if any

When there is no active context menu, `contextModel` is null.

**See also** [contextualActions](../../sdk-15.04.4/Ubuntu.Web.WebView.md#contextualActions-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contextualActions-prop"></span><span class="name">contextualActions</span> : <span class="type">ActionList</span></p></td>
</tr>
</tbody>
</table>

A list of actions that the user will be presented with when invoking a context menu (by way of a right click on desktop, or a long press on a touch-enabled device, on an image or a hyperlink). By default the list is empty, and no menu is shown. User-defined actions can access the [context model](../../sdk-15.04.4/Ubuntu.Web.WebView.md#contextModel-prop).

Example of user-defined actions:

``` cpp
import Ubuntu.Components 1.3
import Ubuntu.Web 0.2
WebView {
    contextualActions: ActionList {
        Action {
            text: i18n.tr("Open link in browser")
            enabled: contextModel && contextModel.linkUrl.toString()
            onTriggered: Qt.openUrlExternally(contextModel.linkUrl)
        }
    }
}
```

**See also** [contextModel](../../sdk-15.04.4/Ubuntu.Web.WebView.md#contextModel-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="filePicker-prop"></span><span class="name">filePicker</span> : <span class="type">component</span></p></td>
</tr>
</tbody>
</table>

The QML component that will be instantiated to let the user select files when the user clicks an `<input type="file">` element on the current page.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fullscreen-prop"></span><span class="name">fullscreen</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the current page requested fullscreen display.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="icon-prop"></span><span class="name">icon</span> : <span class="type"><a href="../../sdk-15.04.4/Ubuntu.Web.WebView.md#url-prop">url</a></span></p></td>
</tr>
</tbody>
</table>

The URL of the favicon of the current page.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="incognito-prop"></span><span class="name">incognito</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the [WebView](../../sdk-15.04.4/Ubuntu.Web.WebView.md) is being used in private browsing mode, where no data is persisted across sessions.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="loadProgress-prop"></span><span class="name">loadProgress</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The load progress of the current page (as a integer value between 0 and 100).

**See also** [loading](../../sdk-15.04.4/Ubuntu.Web.WebView.md#loading-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="loading-prop"></span><span class="name">loading</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether the current page is loading.

**See also** [loadProgress](../../sdk-15.04.4/Ubuntu.Web.WebView.md#loadProgress-prop), [stop](../../sdk-15.04.4/Ubuntu.Web.WebView.md#stop-method), and [reload](../../sdk-15.04.4/Ubuntu.Web.WebView.md#reload-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="navigationHistory-prop"></span><span class="name">navigationHistory</span> : <span class="type">list</span></p></td>
</tr>
</tbody>
</table>

The navigation history (back/forward entries) stored as a list model with a `currentIndex` property. Each entry exposes the URL and title of the corresponding page, as well as a timestamp of when it was visited.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="promptDialog-prop"></span><span class="name">promptDialog</span> : <span class="type">component</span></p></td>
</tr>
</tbody>
</table>

The QML component that will be instantiated to display a JavaScript prompt dialog.

**See also** [alertDialog](../../sdk-15.04.4/Ubuntu.Web.WebView.md#alertDialog-prop), [confirmDialog](../../sdk-15.04.4/Ubuntu.Web.WebView.md#confirmDialog-prop), and [beforeUnloadDialog](../../sdk-15.04.4/Ubuntu.Web.WebView.md#beforeUnloadDialog-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="title-prop"></span><span class="name">title</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The title of the current page.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="url-prop"></span><span class="name">url</span> : <span class="type"><a href="../../sdk-15.04.4/Ubuntu.Web.WebView.md#url-prop">url</a></span></p></td>
</tr>
</tbody>
</table>

The URL of the current page.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="goBack-method"></span><span class="type">void</span> <span class="name">goBack</span>()</p></td>
</tr>
</tbody>
</table>

Go back one entry in the navigation history.

**See also** [canGoBack](../../sdk-15.04.4/Ubuntu.Web.WebView.md#canGoBack-prop) and [goForward](../../sdk-15.04.4/Ubuntu.Web.WebView.md#goForward-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="goForward-method"></span><span class="type">void</span> <span class="name">goForward</span>()</p></td>
</tr>
</tbody>
</table>

Go forward one entry in the navigation history.

**See also** [canGoForward](../../sdk-15.04.4/Ubuntu.Web.WebView.md#canGoForward-prop) and [goBack](../../sdk-15.04.4/Ubuntu.Web.WebView.md#goBack-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="loadHtml-method"></span><span class="type">void</span> <span class="name">loadHtml</span>(<span class="type">string</span> <em>html</em>, <span class="type"><a href="../../sdk-15.04.4/Ubuntu.Web.WebView.md#url-prop">url</a></span> <em>baseUrl</em>)</p></td>
</tr>
</tbody>
</table>

Load HTML content from memory instead of loading it from a URL. The `baseUrl` argument is used to resolve relative URLs in the provided content.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="reload-method"></span><span class="type">void</span> <span class="name">reload</span>()</p></td>
</tr>
</tbody>
</table>

Reload the current page.

**See also** [stop](../../sdk-15.04.4/Ubuntu.Web.WebView.md#stop-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="stop-method"></span><span class="type">void</span> <span class="name">stop</span>()</p></td>
</tr>
</tbody>
</table>

Stop loading the current page. Does nothing if there is no page currently loading.

**See also** [reload](../../sdk-15.04.4/Ubuntu.Web.WebView.md#reload-method) and [loading](../../sdk-15.04.4/Ubuntu.Web.WebView.md#loading-prop).

