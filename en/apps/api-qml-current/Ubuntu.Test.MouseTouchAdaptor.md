---
Title: Ubuntu.Test.MouseTouchAdaptor
---

# Ubuntu.Test.MouseTouchAdaptor

<span class="subtitle"></span>
<!-- $$$MouseTouchAdaptor-brief -->
<p>Singleton type turning mouse events into single finger touch events. More...</p>
<!-- @@@MouseTouchAdaptor -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Test .</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="..//Ubuntu.Test.MouseTouchAdaptor.md#enabled-prop">enabled</a></b></b> : bool</li>
</ul>
<!-- $$$MouseTouchAdaptor-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>When enabled, mouse events will be translated into single finger touch events. Being a singleton, the feature must be enabled explicitly either on component completion or through a binding.</p>
<pre class="qml"><span class="type"><a href="../sdk-14.10/QtQml.Binding.md">Binding</a></span> {
<span class="name">target</span>: <span class="name">MouseTouchAdaptor</span>
<span class="name">property</span>: <span class="string">&quot;enabled&quot;</span>
<span class="name">value</span>: <span class="number">true</span>
}</pre>
<!-- @@@MouseTouchAdaptor -->
<h2>Property Documentation</h2>
<!-- $$$enabled -->
<table class="qmlname"><tr valign="top" id="enabled-prop"><td class="tblQmlPropNode"><p><span class="name">enabled</span> : <span class="type">bool</span></p></td></tr></table><p>Enables the mouse to touch conversion functionality. Defaults to true.</p>
<!-- @@@enabled -->
<br/>
