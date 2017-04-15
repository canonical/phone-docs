---
Title: Ubuntu.DownloadManager.Metadata
---
        
Metadata
========

<span class="subtitle"></span>
Provides additional properties for downloads More...

|                   |                                   |
|-------------------|-----------------------------------|
| Import Statement: | import Ubuntu.DownloadManager 1.2 |

<span id="properties"></span>
Properties
----------

-   ****[custom](#custom-prop)**** : array
-   ****[extract](#extract-prop)**** : bool
-   ****[showInIndicator](#showInIndicator-prop)**** : bool
-   ****[title](#title-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

Metadata provides the ability to set a number of special properties on a [SingleDownload](../Ubuntu.DownloadManager.SingleDownload.md), e.g. to display a download in the transfer indicator, or automatically extract a download of a zip file upon completion.

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
            metadata: Metadata {
                showInIndicator: true
                title: "Example download"
            }
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
<td><p><span id="custom-prop"></span><span class="name">custom</span> : <span class="type">array</span></p></td>
</tr>
</tbody>
</table>

Metadata specific to your application that you wish to associate with this download. This metadata will persist across application restarts.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="extract-prop"></span><span class="name">extract</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

When set to True the download manager will attempt to automatically extract zip files when the download finishes. This property defaults to False.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="showInIndicator-prop"></span><span class="name">showInIndicator</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Specifies whether this download should be displayed in the transfers indicator, defaults to False.

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

This sets the name to display in the transfer indicator for this download, this property is only used if [showInIndicator](#showInIndicator-prop) is True.

