---
Title: Ubuntu.Components.Captions
---
        
Captions
========

<span class="subtitle"></span>
Container providing captionStyles for a twin-label column that can be used in RowLayout or GridLayout. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |
| Since:            | Ubuntu.Components 1.2        |

<span id="properties"></span>
Properties
----------

-   ****[captionStyle](#captionStyle-prop)**** : int
-   ****[subtitle](#subtitle-prop)**** : Label
-   ****[title](#title-prop)**** : Label

<span id="details"></span>
Detailed Description
--------------------

The labels are placed in a column and can be accessed through [title](#title-prop) and [subtitle](#subtitle-prop) properties. The default spacing between the labels is 0.5 grid units.

The container only shows the labels which has its text property set to a valid string. The labels not having any text set are not occupying the space. When embedded in a positioner or in a RowLayout, the container is aligned vertically centered. It is recommended to be used in context with RowLayout or GridLayout, however can be used with any component.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
ListItem {
    RowLayout {
         Captions {
             title.text: "Caption"
             subtitle.text: "Subtitle text"
             // attached properties of an Item type property
             // can be changed only with assignment
             Component.onCompleted: subtitle.Layout.alignment = Qt.AlignRight
         }
         Captions {
             captionStyle: Ubuntu.SummaryCaptionStyle
             title.text: "Text"
             subtitle.text: "Text"
         }
    }
}
```

Additional items can also be added to the layout after the two labels.

``` qml
Captions {
    title.text: "Caption"
    subtitle.text: "Subtitle"
    Label {
        text: "third line"
        textSize: Label.XxSmall
    }
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="captionStyle-prop"></span><span class="name">captionStyle</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

The property configures the arrangement and font sizes of the Labels in the component. It can take the following values:

-   **Ubuntu.TitleCaptionStyle** - (default) typical configuration for a left aligned twin-label setup, where the text covers the remaining area on a list layout.
-   **Ubuntu.SummaryCaptionStyle** - configuration for a right-aligned twin label setup, with 6 grid units width.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="subtitle-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">subtitle</span> : <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span></p></td>
</tr>
</tbody>
</table>

Label occupying the bottom area of the container.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="title-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">title</span> : <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span></p></td>
</tr>
</tbody>
</table>

Label occupying the top area of the container.

