---
Title: Ubuntu.Components.Ubuntu
---
        
Ubuntu
======

<span class="subtitle"></span>
Provides global object with different enums. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |
| Since:            | Ubuntu.Components 1.2        |

<span id="properties"></span>
Properties
----------

-   ****[toolkitVersion](#toolkitVersion-prop)**** : uint16
-   ****[toolkitVersionMajor](#toolkitVersionMajor-prop)**** : uint16
-   ****[toolkitVersionMinor](#toolkitVersionMinor-prop)**** : uint16

<span id="methods"></span>
Methods
-------

-   uint16 ****[version](#version-method)****(int *major*, int *minor*)

<span id="details"></span>
Detailed Description
--------------------

<span id="enums"></span>
### Enums

<span id="captionstyle-enum"></span>
##### CaptionStyle enum

The enumeration configures the Captions component style.

| Enum                | Description                                                                 |
|---------------------|-----------------------------------------------------------------------------|
| TitleCaptionStyle   | The Captions labels are configured to represent caption behavior.           |
| SummaryCaptionStyle | The Captions labels are configured to represent a summary-like description. |

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="toolkitVersion-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">toolkitVersion</span> : <span class="type">uint16</span></p></td>
</tr>
</tbody>
</table>

The property holds the version of the current toolkit imported.

This QML property was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="toolkitVersionMajor-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">toolkitVersionMajor</span> : <span class="type">uint16</span></p></td>
</tr>
</tbody>
</table>

The property holds the major version of the current toolkit imported.

This QML property was introduced in Ubuntu.Components 1.3.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="toolkitVersionMinor-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">toolkitVersionMinor</span> : <span class="type">uint16</span></p></td>
</tr>
</tbody>
</table>

The property holds the minor version of the current toolkit imported.

This QML property was introduced in Ubuntu.Components 1.3.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="version-method"></span><span class="type">uint16</span> <span class="name">version</span>(<span class="type">int</span> <em>major</em>, <span class="type">int</span> <em>minor</em>)</p></td>
</tr>
</tbody>
</table>

The function builds a version identifier using a major and minor components.

This QML method was introduced in Ubuntu.Components 1.3.

