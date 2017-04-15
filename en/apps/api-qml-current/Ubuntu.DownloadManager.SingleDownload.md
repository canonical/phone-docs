---
Title: Ubuntu.DownloadManager.SingleDownload
---
        
SingleDownload
==============

<span class="subtitle"></span>
Manage file downloads and tracking the progress. More...

|                   |                                   |
|-------------------|-----------------------------------|
| Import Statement: | import Ubuntu.DownloadManager 1.2 |

<span id="properties"></span>
Properties
----------

-   ****[allowMobileDownload](#allowMobileDownload-prop)**** : bool
-   ****[autoStart](#autoStart-prop)**** : bool
-   ****[downloadId](#downloadId-prop)**** : string
-   ****[downloadInProgress](#downloadInProgress-prop)**** : bool
-   ****[downloading](#downloading-prop)**** : bool
-   ****[errorMessage](#errorMessage-prop)**** : string
-   ****[headers](#headers-prop)**** : QVariantMap
-   ****[isCompleted](#isCompleted-prop)**** : bool
-   ****[metadata](#metadata-prop)**** : Metadata
-   ****[progress](#progress-prop)**** : int
-   ****[throttle](#throttle-prop)**** : long

<span id="signals"></span>
Signals
-------

-   ****[finished](#finished-signal)****(QString *path*)

<span id="methods"></span>
Methods
-------

-   void ****[cancel](#cancel-method)****()
-   void ****[download](#download-method)****(string *url*)
-   void ****[pause](#pause-method)****()
-   void ****[resume](#resume-method)****()
-   void ****[start](#start-method)****()

<span id="details"></span>
Detailed Description
--------------------

[SingleDownload](index.html) provides facilities for downloading a single file, track the process, react to error conditions, etc.

Example usage:

``` qml
import QtQuick 2.0
import Ubuntu.Components 1.2
import Ubuntu.DownloadManager 1.2
Rectangle {
    width: units.gu(100)
    height: units.gu(20)
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
            single.download(text.text);
        }
    }
    ProgressBar {
        minimumValue: 0
        maximumValue: 100
        value: single.progress
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        SingleDownload {
            id: single
        }
    }
}
```

**See also** [DownloadManager](../Ubuntu.DownloadManager.DownloadManager.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="allowMobileDownload-prop"></span><span class="name">allowMobileDownload</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property sets if the download handled by this object will work under mobile data connection.

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

This property sets if the downloads should start automatically, or let the user decide when to start them calling the "[start()](#start-method)" method.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="downloadId-prop"></span><span class="name">downloadId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property provides the unique identifier that represents the download within the download manager.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="downloadInProgress-prop"></span><span class="name">downloadInProgress</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property represents if the download is active, no matter if it's paused or anything. If a download is active, the value will be True. It will become False when the download finished or get canceled.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="downloading-prop"></span><span class="name">downloading</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

This property represents the current state of the download. False if paused or not downloading anything. True if the file is currently being downloaded.

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

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="headers-prop"></span><span class="name">headers</span> : <span class="type">QVariantMap</span></p></td>
</tr>
</tbody>
</table>

This property allows to get and set the headers that will be used to perform the download request. All headers must be strings or at least QVariant should be able to convert them to strings.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isCompleted-prop"></span><span class="name">isCompleted</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The current state of the download. True if the download already finished, False otherwise.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="metadata-prop"></span><span class="name">metadata</span> : <span class="type"><a href="Ubuntu.DownloadManager.Metadata.md">Metadata</a></span></p></td>
</tr>
</tbody>
</table>

This property allows to get and set the metadata that will be linked to the download request.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="progress-prop"></span><span class="name">progress</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property reports the current progress in percentage of the download, from 0 to 100.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="throttle-prop"></span><span class="name">throttle</span> : <span class="type">long</span></p></td>
</tr>
</tbody>
</table>

This property can be used to limit the bandwidth used for the download.

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="finished-signal"></span><span class="name">finished</span>(<span class="type">QString</span> <em>path</em>)</p></td>
</tr>
</tbody>
</table>

This signal is emitted when a download has finished. The downloaded file path is provided via the 'path' paremeter. The corresponding handler is `onFinished`

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="cancel-method"></span><span class="type">void</span> <span class="name">cancel</span>()</p></td>
</tr>
</tbody>
</table>

Cancels a download.

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

Creates the download for the given url and reports the different states through the properties.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pause-method"></span><span class="type">void</span> <span class="name">pause</span>()</p></td>
</tr>
</tbody>
</table>

Pauses the download. An error is returned if the download was already paused.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="resume-method"></span><span class="type">void</span> <span class="name">resume</span>()</p></td>
</tr>
</tbody>
</table>

Resumes and already paused download. An error is returned if the download was already resumed or not paused.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="start-method"></span><span class="type">void</span> <span class="name">start</span>()</p></td>
</tr>
</tbody>
</table>

Starts the download, used when [autoStart](#autoStart-prop) is False.

