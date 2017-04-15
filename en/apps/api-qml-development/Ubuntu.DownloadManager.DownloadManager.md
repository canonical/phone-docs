---
Title: Ubuntu.DownloadManager.DownloadManager
---
        
DownloadManager
===============

<span class="subtitle"></span>
Manage downloads for several files. More...

|                   |                                   |
|-------------------|-----------------------------------|
| Import Statement: | import Ubuntu.DownloadManager 1.2 |

<span id="properties"></span>
Properties
----------

-   ****[autoStart](#autoStart-prop)**** : bool
-   ****[cleanDownloads](#cleanDownloads-prop)**** : bool
-   ****[downloads](#downloads-prop)**** : list
-   ****[errorMessage](#errorMessage-prop)**** : string

<span id="signals"></span>
Signals
-------

-   ****[downloadCanceled](#downloadCanceled-signal)****(SingleDownload *download*)
-   ****[downloadFinished](#downloadFinished-signal)****(SingleDownload *download*, QString *path*)
-   ****[downloadPaused](#downloadPaused-signal)****(SingleDownload *download*)
-   ****[downloadResumed](#downloadResumed-signal)****(SingleDownload *download*)
-   ****[errorFound](#errorFound-signal)****(SingleDownload *download*)

<span id="methods"></span>
Methods
-------

-   void ****[download](#download-method)****(string *url*)

<span id="details"></span>
Detailed Description
--------------------

[DownloadManager](index.html) provides facilities for downloading a several files, connect the downloads property to any Item that works with models, and dynamically update the content of those lists/repeaters/etc to show the current downloads and connect any UI to the [SingleDownload](../Ubuntu.DownloadManager.SingleDownload.md) properties in the delegates.

Example usage:

``` qml
import QtQuick 2.0
import Ubuntu.Components 1.2
import Ubuntu.DownloadManager 1.2
Rectangle {
    width: units.gu(100)
    height: units.gu(80)
    DownloadManager {
        id: manager
    }
    TextField {
        id: text
        placeholderText: "File URL to download..."
        height: 50
        anchors {
            left: parent.left
            right: button.left
            rightMargin: units.gu(2)
        }
    }
    Button {
        id: button
        text: "Download"
        height: 50
        anchors.right: parent.right
        onClicked: {
            manager.download(text.text);
        }
    }
    ListView {
        id: list
        anchors {
            left: parent.left
            right: parent.right
            top: text.bottom
            bottom: parent.bottom
        }
        model: manager.downloads
        delegate: ProgressBar {
            minimumValue: 0
            maximumValue: 100
            value: modelData.progress
        }
    }
}
```

**See also** [SingleDownload](../Ubuntu.DownloadManager.SingleDownload.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="autoStart-prop"></span><span class="name">autoStart</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property sets if the downloads should start automatically, or let the user decide when to start them calling the "start()" method on each download.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cleanDownloads-prop"></span><span class="name">cleanDownloads</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property sets if the model with the list of downloads should be cleaned when a download finish. Removing those completed transfers, and only showing current downloads.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="downloads-prop"></span><span class="name">downloads</span> : <span class="type">list</span></p></td>
</tr>
</tbody>
</table>

This property provides a model that can be used for Lists, Repeaters, etc. To handle those downloads in a UI component that changes automatically when a new download is started, and let a custom delegate how to represent the UI for each download.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorMessage-prop"></span><span class="name">errorMessage</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The error message associated with the current download, if there is any.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="downloadCanceled-signal"></span><span class="name">downloadCanceled</span>(<span class="type"><a href="Ubuntu.DownloadManager.SingleDownload.md">SingleDownload</a></span> <em>download</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a download has been canceled. The canceled download is provided via the 'download' parameter. The corresponding handler is `onDownloadCanceled`

This QML signal was introduced in Ubuntu.DownloadManager 1.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="downloadFinished-signal"></span><span class="name">downloadFinished</span>(<span class="type"><a href="Ubuntu.DownloadManager.SingleDownload.md">SingleDownload</a></span> <em>download</em>, <span class="type">QString</span> <em>path</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a download has finished. The finished download is provided via the 'download' parameter and the downloaded file path is provided via the 'path' paremeter. The corresponding handler is `onDownloadFinished`

This QML signal was introduced in Ubuntu.DownloadManager 1.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="downloadPaused-signal"></span><span class="name">downloadPaused</span>(<span class="type"><a href="Ubuntu.DownloadManager.SingleDownload.md">SingleDownload</a></span> <em>download</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a download has been paused. The paused download is provided via the 'download' parameter. The corresponding handler is `onDownloadPaused`

This QML signal was introduced in Ubuntu.DownloadManager 1.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="downloadResumed-signal"></span><span class="name">downloadResumed</span>(<span class="type"><a href="Ubuntu.DownloadManager.SingleDownload.md">SingleDownload</a></span> <em>download</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a download has been resumed. The resumed download is provided via the 'download' parameter. The corresponding handler is `onDownloadResumed`

This QML signal was introduced in Ubuntu.DownloadManager 1.2.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorFound-signal"></span><span class="name">errorFound</span>(<span class="type"><a href="Ubuntu.DownloadManager.SingleDownload.md">SingleDownload</a></span> <em>download</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when an error occurs in a download. The download in which the error occurred is provided via the 'download' parameter, from which the error message can be accessed via download.[errorMessage](#errorMessage-prop). The corresponding handler is `onErrorFound`

This QML signal was introduced in Ubuntu.DownloadManager 1.2.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="download-method"></span><span class="type">void</span> <span class="name">download</span>(<span class="type">string</span> <em>url</em>)</p></td>
</tr>
</tbody>
</table>

Starts the download for the given url and update the model with the list of the different downloads.

