---
Title: QtQuick.UniformAnimator
---

# QtQuick.UniformAnimator

<span class="subtitle"></span>
<!-- $$$UniformAnimator-brief -->
<p>The UniformAnimator type animates a uniform of a ShaderEffect. More...</p>
<!-- @@@UniformAnimator -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.2</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#uniform-prop">uniform</a></b></b> : string</li>
</ul>
<!-- $$$UniformAnimator-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="QtQuick.Animator.md">Animator</a> types are different from normal Animation types. When using an Animator, the animation can be run in the render thread and the property value will jump to the end when the animation is complete.</p>
<p>The value of the QML property defining the uniform is updated after the animation has finished.</p>
<p>The following snippet shows how to use a <a href="index.html">UniformAnimator</a> together with a <a href="QtQuick.ShaderEffect.md">ShaderEffect</a> item.</p>
<pre class="qml"><span class="type"><a href="QtQuick.ShaderEffect.md">ShaderEffect</a></span> {
<span class="name">id</span>: <span class="name">shader</span>
<span class="name">width</span>: <span class="number">50</span>
<span class="name">height</span>: <span class="number">50</span>
property <span class="type">variant</span> <span class="name">t</span>;
<span class="type"><a href="index.html">UniformAnimator</a></span> {
<span class="name">target</span>: <span class="name">shader</span>
<span class="name">uniform</span>: <span class="string">&quot;t&quot;</span>
<span class="name">from</span>: <span class="number">0</span>
<span class="name">to</span>: <span class="number">1</span>
<span class="name">duration</span>: <span class="number">1000</span>
<span class="name">running</span>: <span class="number">true</span>
}
<span class="name">fragmentShader</span>:
<span class="string">&quot;
uniform lowp float t;
varying highp vec2 qt_TexCoord0;
void main() {
lowp float c = qt_TexCoord0.y;
gl_FragColor = vec4(0, 0, c * t, 1);
}
&quot;</span>
}</pre>
<p>It is also possible to use the <code>on</code> keyword to tie the <a href="index.html">UniformAnimator</a> directly to a uniform of a <a href="QtQuick.ShaderEffect.md">ShaderEffect</a> instance.</p>
<pre class="qml"><span class="type"><a href="QtQuick.ShaderEffect.md">ShaderEffect</a></span> {
<span class="name">width</span>: <span class="number">50</span>
<span class="name">height</span>: <span class="number">50</span>
property <span class="type">variant</span> <span class="name">t</span>;
UniformAnimator on <span class="name">t</span> {
<span class="name">from</span>: <span class="number">0</span>
<span class="name">to</span>: <span class="number">1</span>
<span class="name">duration</span>: <span class="number">1000</span>
}
<span class="name">fragmentShader</span>:
<span class="string">&quot;
uniform lowp float t;
varying highp vec2 qt_TexCoord0;
void main() {
lowp float c = qt_TexCoord0.y;
gl_FragColor = vec4(c * t, 0, 0, 1);
}
&quot;</span>
}</pre>
<p><b>See also </b><a href="QtQuick.ShaderEffect.md">ShaderEffect</a> and <a href="QtQuick.ShaderEffectSource.md">ShaderEffectSource</a>.</p>
<!-- @@@UniformAnimator -->
<h2>Property Documentation</h2>
<!-- $$$uniform -->
<table class="qmlname"><tr valign="top" id="uniform-prop"><td class="tblQmlPropNode"><p><span class="name">uniform</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the uniform to animate.</p>
<p>The value of the uniform must correspond to both a property on the target <a href="QtQuick.ShaderEffect.md">ShaderEffect</a> and must be a uniform of type <code>float</code> in the fragment or vertex shader.</p>
<!-- @@@uniform -->
<br/>
