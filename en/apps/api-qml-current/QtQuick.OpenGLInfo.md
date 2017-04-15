---
Title: QtQuick.OpenGLInfo
---
        
OpenGLInfo
==========

<span class="subtitle"></span>
Provides information about the used OpenGL version More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |
| Since:            | Qt 5.4             |

<span id="properties"></span>
Properties
----------

-   ****[majorVersion](#majorVersion-prop)**** : int
-   ****[minorVersion](#minorVersion-prop)**** : int
-   ****[profile](#profile-prop)**** : enumeration
-   ****[renderableType](#renderableType-prop)**** : enumeration

<span id="details"></span>
Detailed Description
--------------------

The [OpenGLInfo](index.html) attached type provides information about the OpenGL version being used to render the surface of the attachee item.

If the attachee item is not currently associated with any graphical surface, the properties are set to the values of the default surface format. When it becomes associated with a surface, all properties will update.

**See also** [ShaderEffect](../QtQuick.ShaderEffect.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="majorVersion-prop"></span><span class="name">majorVersion</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the major OpenGL version.

The default version is `2.0`.

**See also** [minorVersion](#minorVersion-prop) and [profile](#profile-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minorVersion-prop"></span><span class="name">minorVersion</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the minor OpenGL version.

The default version is `2.0`.

**See also** [majorVersion](#majorVersion-prop) and [profile](#profile-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="profile-prop"></span><span class="name">profile</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the configured OpenGL context profile.

The possible values are:

-   [OpenGLInfo](index.html).NoProfile (default) - OpenGL version is lower than 3.2.
-   [OpenGLInfo](index.html).CoreProfile - Functionality deprecated in OpenGL version 3.0 is not available.
-   [OpenGLInfo](index.html).CompatibilityProfile - Functionality from earlier OpenGL versions is available.

Reusable QML components will typically use this property in bindings in order to choose between core and non core profile compatible shader sources.

**See also** [majorVersion](#majorVersion-prop) and [minorVersion](#minorVersion-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="renderableType-prop"></span><span class="name">renderableType</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the renderable type.

The possible values are:

-   [OpenGLInfo](index.html).Unspecified (default) - Unspecified rendering method
-   [OpenGLInfo](index.html).OpenGL - Desktop OpenGL rendering
-   [OpenGLInfo](index.html).OpenGLES - OpenGL ES rendering

