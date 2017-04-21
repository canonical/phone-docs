---
Title: Ubuntu.Components.StyleHints
---

# Ubuntu.Components.StyleHints

<span class="subtitle"></span>
<!-- $$$StyleHints-brief -->
<p>Component holding style specific properties to configure a particular StyledItem's style runtime. More...</p>
<!-- @@@StyleHints -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import  .</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#ignoreUnknownProperties-prop">ignoreUnknownProperties</a></b></b> : bool</li>
</ul>
<!-- $$$StyleHints-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">StyleHints</a> is a custom parser, meaning style properties can be listed without any property declaration, same way as in <a href="QtQuick.PropertyChanges.md">PropertyChanges</a> or Connections, which are similar custom parsers. Properties enumerated do not have to be present in the component's style as default, behavior which can be chenged by setting <a href="#ignoreUnknownProperties-prop">ignoreUnknownProperties</a> to true. In this case properties not found in the style will be displayed as warnings.</p>
<p>In the following example the Button will be drawn as white when not pressed, and colored as blue when pressed.</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">button</span>
<span class="type"><a href="index.html">StyleHints</a></span> {
<span class="name">defaultColor</span>: <span class="name">button</span>.<span class="name">pressed</span> ? <span class="string">&quot;blue&quot;</span> : <span class="string">&quot;white&quot;</span>
}
}</pre>
<p><a href="index.html">StyleHints</a> does not support signal properties (i.e signal handlers) and object declarations as property values.</p>
<p><a href="index.html">StyleHints</a> can be only declared in a <a href="Ubuntu.Components.StyledItem.md">StyledItem</a> or as a derivate of it.</p>
<!-- @@@StyleHints -->
<h2>Property Documentation</h2>
<!-- $$$ignoreUnknownProperties -->
<table class="qmlname"><tr valign="top" id="ignoreUnknownProperties-prop"><td class="tblQmlPropNode"><p><span class="name">ignoreUnknownProperties</span> : <span class="type">bool</span></p></td></tr></table><p>The property drives whether component should warn on properties not found in the component's style. The default setting is not to warn.</p>
<!-- @@@ignoreUnknownProperties -->
<br/>
