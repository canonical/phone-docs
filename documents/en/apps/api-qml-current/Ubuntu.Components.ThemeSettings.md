---
Title: Ubuntu.Components.ThemeSettings
---

# Ubuntu.Components.ThemeSettings

<span class="subtitle"></span>
<!-- $$$ThemeSettings-brief -->
<p>The ThemeSettings class provides facilities to define the theme of a StyledItem. More...</p>
<!-- @@@ThemeSettings -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#palette-prop">palette</a></b></b> : Palette</li>
<li class="fn"><b><b><a href="#parentTheme-prop">parentTheme</a></b></b> : ThemeSettings</li>
</ul>
<!-- $$$ThemeSettings-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A global instance is exposed as the <b>theme</b> context property.</p>
<p>The theme defines the visual aspect of the Ubuntu components. An application can use one or more theme the same time. The <a href="index.html">ThemeSettings</a> component provides abilities to change the theme used by the component and all its child components.</p>
<p>Changing the theme of the entire application can be achieved by changing the name of the root <a href="Ubuntu.Components.StyledItem.md">StyledItem</a>'s, i.e&#x2e; <a href="Ubuntu.Components.MainView.md">MainView</a>'s current theme.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="name">theme</span>.name: <span class="string">&quot;Ubuntu.Components.Themes.Ambiance&quot;</span>
}</pre>
<p>By default, styled items inherit the theme they use from their closest styled item ancestor. In case the application uses <a href="Ubuntu.Components.MainView.md">MainView</a>, all components will inherit the theme from the <a href="Ubuntu.Components.MainView.md">MainView</a>.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">title</span>: <span class="string">&quot;Style test&quot;</span>
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="name">theme</span>.<span class="name">name</span> <span class="operator">==</span> <span class="string">&quot;Ubuntu.Components.Themes.Ambiance&quot;</span> ?
<span class="string">&quot;SuruDark&quot;</span> : <span class="string">&quot;Ambiance&quot;</span>
<span class="name">onClicked</span>: <span class="name">theme</span>.<span class="name">name</span> <span class="operator">=</span> (<span class="name">text</span> <span class="operator">==</span> <span class="string">&quot;Ambiance&quot;</span> ?
<span class="string">&quot;Ubuntu.Components.Themes.SuruDark&quot;</span> :
<span class="string">&quot;Ubuntu.Components.Themes.Ambiance&quot;</span>)
}
}
}</pre>
<p><b>Note: </b>In the example above the Button inherits the theme from Page, which inherits it from <a href="Ubuntu.Components.MainView.md">MainView</a>. Therefore changing the theme name in this way will result in a change of the inherited theme. In case a different theme is desired, a new instance of the <a href="index.html">ThemeSettings</a> must be created on the styled item desired.</p><pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">title</span>: <span class="string">&quot;Style test&quot;</span>
<span class="name">theme</span>: <span class="name">ThemeSettings</span>{}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="name">theme</span>.<span class="name">name</span> <span class="operator">==</span> <span class="string">&quot;Ubuntu.Components.Themes.Ambiance&quot;</span> ?
<span class="string">&quot;SuruDark&quot;</span> : <span class="string">&quot;Ambiance&quot;</span>
<span class="name">onClicked</span>: <span class="name">theme</span>.<span class="name">name</span> <span class="operator">=</span> (<span class="name">text</span> <span class="operator">==</span> <span class="string">&quot;Ambiance&quot;</span> ?
<span class="string">&quot;Ubuntu.Components.Themes.SuruDark&quot;</span> :
<span class="string">&quot;Ubuntu.Components.Themes.Ambiance&quot;</span>)
}
}
}</pre>
<p>The style can be set on a <a href="Ubuntu.Components.StyledItem.md">StyledItem</a> either using <a href="Ubuntu.Components.StyledItem.md#styleName-prop">StyledItem::styleName</a> or <a href="Ubuntu.Components.StyledItem.md#style-prop">StyledItem::style</a> properties. When set through <a href="Ubuntu.Components.StyledItem.md#styleName-prop">StyledItem::styleName</a>, the component will load the style from the current theme set, and must be a QML document. The <a href="Ubuntu.Components.StyledItem.md#style-prop">StyledItem::style</a> property is a Component which can be declared local, or loaded with a Loader or created using Qt.createComponent() function. The following example will create the style with the inherited theme.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></span> {
<span class="name">styleName</span>: <span class="string">&quot;MyItemStyle&quot;</span>
}</pre>
<p>All styled toolkit components such as <a href="Ubuntu.Components.Button.md">Button</a>, <a href="Ubuntu.Components.CheckBox.md">CheckBox</a>, <a href="Ubuntu.Components.Switch.md">Switch</a>, etc. create their style in this way. Note that the style component must be part of the theme, otherwise the style creation will fail.</p>
<p><b>See also </b><a href="Ubuntu.Components.StyledItem.md">StyledItem</a>.</p>
<!-- @@@ThemeSettings -->
<h2>Property Documentation</h2>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>The name of the current theme in dotted format i.e&#x2e; &quot;Ubuntu.Components.Themes.Ambiance&quot;.</p>
<!-- @@@name -->
<br/>
<!-- $$$palette -->
<table class="qmlname"><tr valign="top" id="palette-prop"><td class="tblQmlPropNode"><p><span class="name">palette</span> : <span class="type">Palette</span></p></td></tr></table><p>The palette of the current theme. When set, only the valid palette values will be taken into account, which will override the theme defined palette values. The following example will set the system's default theme palette normal background color to Ubuntu blue. All other palette values will be untouched.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Themes 1.0
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="comment">// your code</span>
<span class="name">theme</span>.palette: <span class="name">Palette</span> {
<span class="name">normal</span>.background: <span class="name">UbuntuColors</span>.<span class="name">blue</span>
}
}</pre>
<p><b>Note: </b>Palette values applied on inherited themes will be rolled back once the component declaring the palette is unloaded. This can be demonstracted using a Loader element:</p><pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Themes 1.0
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="type"><a href="QtQuick.Loader.md">Loader</a></span> {
<span class="name">id</span>: <span class="name">loader</span>
<span class="name">onItemChanged</span>: <span class="keyword">if</span> (<span class="name">item</span>) <span class="name">button</span>.<span class="name">theme</span>.<span class="name">palette</span> <span class="operator">=</span> <span class="name">item</span>
}
<span class="type"><a href="QtQml.Component.md">Component</a></span> {
<span class="name">id</span>: <span class="name">dynamicPalette</span>
<span class="type">Palette</span> {
<span class="name">normal</span>.background: <span class="name">UbuntuColors</span>.<span class="name">blue</span>
}
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">button</span>
<span class="name">text</span>: <span class="string">&quot;Toggle palette&quot;</span>
<span class="name">onClicked</span>: {
<span class="keyword">if</span> (<span class="name">loader</span>.<span class="name">item</span>) {
<span class="name">loader</span>.<span class="name">sourceComponent</span> <span class="operator">=</span> <span class="name">undefined</span>;
} <span class="keyword">else</span> {
<span class="name">loader</span>.<span class="name">sourceComponent</span> <span class="operator">=</span> <span class="name">dynamicPalette</span>;
}
}
}
}</pre>
<p>The palette doesn't need to be reset as it automatically resets when the palette used for configuration is destroyed.</p>
<!-- @@@palette -->
<br/>
<!-- $$$parentTheme -->
<table class="qmlname"><tr valign="top" id="parentTheme-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">parentTheme</span> : <span class="type"><a href="index.html">ThemeSettings</a></span></p></td></tr></table><p>The property specifies the parent <a href="index.html">ThemeSettings</a> instance.</p>
<!-- @@@parentTheme -->
<br/>
