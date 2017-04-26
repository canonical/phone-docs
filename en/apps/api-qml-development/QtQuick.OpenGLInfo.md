---
Title: QtQuick.OpenGLInfo
---

# QtQuick.OpenGLInfo

<span class="subtitle"></span>
<!-- $$$OpenGLInfo-brief -->
<p>Provides information about the used OpenGL version More...</p>
<!-- @@@OpenGLInfo -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#majorVersion-prop">majorVersion</a></b></b> : int</li>
<li class="fn"><b><b><a href="#minorVersion-prop">minorVersion</a></b></b> : int</li>
<li class="fn"><b><b><a href="#profile-prop">profile</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#renderableType-prop">renderableType</a></b></b> : enumeration</li>
</ul>
<!-- $$$OpenGLInfo-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">OpenGLInfo</a> attached type provides information about the OpenGL version being used to render the surface of the attachee item.</p>
<p>If the attachee item is not currently associated with any graphical surface, the properties are set to the values of the default surface format. When it becomes associated with a surface, all properties will update.</p>
<p><b>See also </b><a href="QtQuick.ShaderEffect.md">ShaderEffect</a>.</p>
<!-- @@@OpenGLInfo -->
<h2>Property Documentation</h2>
<!-- $$$majorVersion -->
<table class="qmlname"><tr valign="top" id="majorVersion-prop"><td class="tblQmlPropNode"><p><span class="name">majorVersion</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the major OpenGL version.</p>
<p>The default version is <code>2.0</code>.</p>
<p><b>See also </b><a href="#minorVersion-prop">minorVersion</a> and <a href="#profile-prop">profile</a>.</p>
<!-- @@@majorVersion -->
<br/>
<!-- $$$minorVersion -->
<table class="qmlname"><tr valign="top" id="minorVersion-prop"><td class="tblQmlPropNode"><p><span class="name">minorVersion</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the minor OpenGL version.</p>
<p>The default version is <code>2.0</code>.</p>
<p><b>See also </b><a href="#majorVersion-prop">majorVersion</a> and <a href="#profile-prop">profile</a>.</p>
<!-- @@@minorVersion -->
<br/>
<!-- $$$profile -->
<table class="qmlname"><tr valign="top" id="profile-prop"><td class="tblQmlPropNode"><p><span class="name">profile</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the configured OpenGL context profile.</p>
<p>The possible values are:</p>
<ul>
<li><a href="index.html">OpenGLInfo</a>.NoProfile (default) - OpenGL version is lower than 3.2&#x2e;</li>
<li><a href="index.html">OpenGLInfo</a>.CoreProfile - Functionality deprecated in OpenGL version 3.0 is not available.</li>
<li><a href="index.html">OpenGLInfo</a>.CompatibilityProfile - Functionality from earlier OpenGL versions is available.</li>
</ul>
<p>Reusable QML components will typically use this property in bindings in order to choose between core and non core profile compatible shader sources.</p>
<p><b>See also </b><a href="#majorVersion-prop">majorVersion</a> and <a href="#minorVersion-prop">minorVersion</a>.</p>
<!-- @@@profile -->
<br/>
<!-- $$$renderableType -->
<table class="qmlname"><tr valign="top" id="renderableType-prop"><td class="tblQmlPropNode"><p><span class="name">renderableType</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the renderable type.</p>
<p>The possible values are:</p>
<ul>
<li><a href="index.html">OpenGLInfo</a>.Unspecified (default) - Unspecified rendering method</li>
<li><a href="index.html">OpenGLInfo</a>.OpenGL - Desktop OpenGL rendering</li>
<li><a href="index.html">OpenGLInfo</a>.OpenGLES - OpenGL ES rendering</li>
</ul>
<!-- @@@renderableType -->
<br/>
