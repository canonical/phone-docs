---
Title: Ubuntu.Components.StyledItem
---

# Ubuntu.Components.StyledItem

<span class="subtitle"></span>
<!-- $$$StyledItem-brief -->
<p>The StyledItem class allows items to be styled by the theme. More...</p>
<!-- @@@StyledItem -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.1</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherited By:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ActionBar.md">ActionBar</a>, <a href="Ubuntu.Components.BottomEdge.md">BottomEdge</a>, <a href="Ubuntu.Components.Pickers.DatePicker.md">DatePicker</a>, <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/Ubuntu.Components.Pickers.Dialer/">Dialer</a>, <a href="https://developer.ubuntu.comapps/qml/sdk-15.04.5/Ubuntu.Components.Pickers.DialerHand/">DialerHand</a>, <a href="Ubuntu.Components.Header.md">Header</a>, <a href="Ubuntu.Components.MainView.md">MainView</a>, <a href="Ubuntu.Components.Page.md">Page</a>, <a href="Ubuntu.Components.Pickers.Picker.md">Picker</a>, <a href="Ubuntu.Components.PullToRefresh.md">PullToRefresh</a>, <a href="Ubuntu.Components.ScrollView.md">ScrollView</a>, <a href="Ubuntu.Components.Sections.md">Sections</a>, and <a href="Ubuntu.Components.Toolbar.md">Toolbar</a>.</p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#style-prop">style</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#styleName-prop">styleName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#theme-prop">theme</a></b></b> : ThemeSettings</li>
</ul>
<!-- $$$StyledItem-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">StyledItem</a> provides facilities for making an Item stylable by the theme.</p>
<p>In order to make an Item stylable by the theme, it is enough to make the Item inherit from <a href="index.html">StyledItem</a> and set its <a href="#style-prop">style</a> property to be the result of the appropriate call to theme.createStyleComponent().</p>
<p>Example definition of a custom Item MyItem.qml:</p>
<pre class="qml"><span class="type"><a href="index.html">StyledItem</a></span> {
<span class="name">id</span>: <span class="name">myItem</span>
<span class="name">styleName</span>: <span class="string">&quot;MyItemStyle&quot;</span>
}</pre>
<p>The style set on <a href="#styleName-prop">styleName</a> is instantiated and placed below everything else that the Item contains. When the style is defined in this way, the style is taken from the current theme the <a href="index.html">StyledItem</a> is themed with. Another way tpo set the style of a component is to set the <a href="#style-prop">style</a> property. This property expects a component and it has precedence over the <a href="#styleName-prop">styleName</a>, meaning that when both <a href="#styleName-prop">styleName</a> and <a href="#style-prop">style</a> are set, the style will be created from the <a href="#style-prop">style</a> componment.</p>
<p>A reference to the Item being styled is accessible from the style and named 'styledItem'.</p>
<p><b>See also </b><a href="Ubuntu.Components.Theme.md">Theme</a>.</p>
<!-- @@@StyledItem -->
<h2>Property Documentation</h2>
<!-- $$$style -->
<table class="qmlname"><tr valign="top" id="style-prop"><td class="tblQmlPropNode"><p><span class="name">style</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td></tr></table><p>Style component instantiated immediately and placed below everything else. Has precedence over the <a href="#styleName-prop">styleName</a>. When both set, the style will be created from the component given as property value, and can be reset to the theme style when set to null or reset (set to undefined).</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Press to reset&quot;</span>
<span class="name">style</span>: <span class="name">Rectangle</span> {
<span class="name">color</span>: <span class="string">&quot;tan&quot;</span>
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="type">anchors</span> {
<span class="name">fill</span>: <span class="name">parent</span>
<span class="name">margins</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
}
<span class="name">text</span>: <span class="name">styledItem</span>.<span class="name">text</span>
}
}
<span class="name">onClicked</span>: <span class="name">style</span> <span class="operator">=</span> <span class="name">undefined</span>
}</pre>
<!-- @@@style -->
<br/>
<!-- $$$styleName -->
<table class="qmlname"><tr valign="top" id="styleName-prop"><td class="tblQmlPropNode"><p><span class="name">styleName</span> : <span class="type">string</span></p></td></tr></table><p>The property specifies the component style name. The style name is a document in the current theme, and should not contain the qml file extension. If specified an error will be shown.</p>
<pre class="qml"><span class="type"><a href="index.html">StyledItem</a></span> {
<span class="name">id</span>: <span class="name">myItem</span>
<span class="name">styleName</span>: <span class="string">&quot;MyItemStyle&quot;</span>
}</pre>
<p><b>Note: </b><a href="#style-prop">style</a> property has precedence over styleName.</p><!-- @@@styleName -->
<br/>
<!-- $$$theme -->
<table class="qmlname"><tr valign="top" id="theme-prop"><td class="tblQmlPropNode"><p><span class="name">theme</span> : <span class="type"><a href="Ubuntu.Components.ThemeSettings.md">ThemeSettings</a></span></p></td></tr></table><p>The property configures the theme the component and all its sub-components will use. By default it is set to the closest ancestor <a href="index.html">StyledItem</a>'s theme if any, or to the system default theme.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<!-- @@@theme -->
<br/>
