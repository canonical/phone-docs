---
Title: Ubuntu.Components.Theme
---

# Ubuntu.Components.Theme

<span class="subtitle"></span>
<!-- $$$Theme-brief -->
<p>The Theme class provides facilities to interact with the current theme. More...</p>
<!-- @@@Theme -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#palette-prop">palette</a></b></b> : Palette</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">Component <b><b><a href="#createStyleComponent-method">createStyleComponent</a></b></b>(string <i>styleName</i>, object <i>parent</i>)</li>
</ul>
<!-- $$$Theme-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A global instance is exposed as the <b>Theme</b> context property.</p>
<p>The theme defines the visual aspect of the Ubuntu components.</p>
<p>Example changing the current theme:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">onClicked</span>: <span class="name">Theme</span>.<span class="name">name</span> <span class="operator">=</span> <span class="string">&quot;Ubuntu.Components.Themes.Ambiance&quot;</span>
}
}</pre>
<p>Example creating a style component:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></span> {
<span class="name">id</span>: <span class="name">myItem</span>
<span class="name">style</span>: <span class="name">Theme</span>.<span class="name">createStyleComponent</span>(<span class="string">&quot;MyItemStyle.qml&quot;</span>, <span class="name">myItem</span>)
}</pre>
<p><b>See also </b><a href="Ubuntu.Components.StyledItem.md">StyledItem</a>.</p>
<!-- @@@Theme -->
<h2>Property Documentation</h2>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>The name of the current theme.</p>
<!-- @@@name -->
<br/>
<!-- $$$palette -->
<table class="qmlname"><tr valign="top" id="palette-prop"><td class="tblQmlPropNode"><p><span class="name">palette</span> : <span class="type">Palette</span></p></td></tr></table><p>The palette of the current theme.</p>
<!-- @@@palette -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$createStyleComponent -->
<table class="qmlname"><tr valign="top" id="createStyleComponent-method"><td class="tblQmlFuncNode"><p><span class="type"><a href="../sdk-14.10/QtQml.Component.md">Component</a></span> <span class="name">createStyleComponent</span>(<span class="type">string</span><i> styleName</i>, <span class="type">object</span><i> parent</i>)</p></td></tr></table><p>Returns an instance of the style component named <i>styleName</i>.</p>
<!-- @@@createStyleComponent -->
<br/>
