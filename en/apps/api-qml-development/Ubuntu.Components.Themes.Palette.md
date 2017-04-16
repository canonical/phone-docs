---
Title: Ubuntu.Components.Themes.Palette
---

# Ubuntu.Components.Themes.Palette

<span class="subtitle"></span>
<!-- $$$Palette-brief -->
<p>Provides the palette of colors from the theme that widgets use to draw themselves. More...</p>
<!-- @@@Palette -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.Themes 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQml.QtObject.md">QtObject</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#disabled-prop">disabled</a></b></b> : PaletteValues</li>
<li class="fn"><b><b><a href="#focused-prop">focused</a></b></b> : PaletteValues</li>
<li class="fn"><b><b><a href="#highlighted-prop">highlighted</a></b></b> : PaletteValues</li>
<li class="fn"><b><b><a href="#normal-prop">normal</a></b></b> : PaletteValues</li>
<li class="fn"><b><b><a href="#selected-prop">selected</a></b></b> : PaletteValues</li>
<li class="fn"><b><b><a href="#selectedDisabled-prop">selectedDisabled</a></b></b> : PaletteValues</li>
</ul>
<!-- $$$Palette-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Palette provides access to colors defined by the current theme. The actual color palette to use depends on the state of the widget being drawn.</p>
<p>A color palette (<a href="Ubuntu.Components.Themes.PaletteValues.md">PaletteValues</a>) has various roles to choose from depending on what part of the widget is being drawn (the base of the widget, the foreground, etc.)&#x2e;</p>
<p>For each color there is a corresponding 'text' color that is guaranteed to provide good legibility for text or icons placed on top of a background of the corresponding color.</p>
<p>Example of a Text on top of a background Rectangle:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="name">theme</span>.<span class="name">palette</span>.<span class="name">normal</span>.<span class="name">base</span>
}
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">color</span>: <span class="name">theme</span>.<span class="name">palette</span>.<span class="name">normal</span>.<span class="name">baseText</span>
}
}</pre>
<!-- @@@Palette -->
<h2>Property Documentation</h2>
<!-- $$$disabled -->
<table class="qmlname"><tr valign="top" id="disabled-prop"><td class="tblQmlPropNode"><p><span class="name">disabled</span> : <span class="type"><a href="Ubuntu.Components.Themes.PaletteValues.md">PaletteValues</a></span></p></td></tr></table><p>Color palette to use when the widget is in the disabled (enabled: false) state.</p>
<p>This QML property was introduced in  Ubuntu.Components.Themes 1.3.</p>
<!-- @@@disabled -->
<br/>
<!-- $$$focused -->
<table class="qmlname"><tr valign="top" id="focused-prop"><td class="tblQmlPropNode"><p><span class="name">focused</span> : <span class="type"><a href="Ubuntu.Components.Themes.PaletteValues.md">PaletteValues</a></span></p></td></tr></table><p>Color palette to use when the widget is focused.</p>
<!-- @@@focused -->
<br/>
<!-- $$$highlighted -->
<table class="qmlname"><tr valign="top" id="highlighted-prop"><td class="tblQmlPropNode"><p><span class="name">highlighted</span> : <span class="type"><a href="Ubuntu.Components.Themes.PaletteValues.md">PaletteValues</a></span></p></td></tr></table><p>Color palette values to use when the widget is highlighted.</p>
<p>This QML property was introduced in  Ubuntu.Components.Themes 1.3.</p>
<!-- @@@highlighted -->
<br/>
<!-- $$$normal -->
<table class="qmlname"><tr valign="top" id="normal-prop"><td class="tblQmlPropNode"><p><span class="name">normal</span> : <span class="type"><a href="Ubuntu.Components.Themes.PaletteValues.md">PaletteValues</a></span></p></td></tr></table><p>Color palette to use when the widget is in the default state.</p>
<!-- @@@normal -->
<br/>
<!-- $$$selected -->
<table class="qmlname"><tr valign="top" id="selected-prop"><td class="tblQmlPropNode"><p><span class="name">selected</span> : <span class="type"><a href="Ubuntu.Components.Themes.PaletteValues.md">PaletteValues</a></span></p></td></tr></table><p>Color palette to use when the widget is selected, for example when a tab is the current one.</p>
<!-- @@@selected -->
<br/>
<!-- $$$selectedDisabled -->
<table class="qmlname"><tr valign="top" id="selectedDisabled-prop"><td class="tblQmlPropNode"><p><span class="name">selectedDisabled</span> : <span class="type"><a href="Ubuntu.Components.Themes.PaletteValues.md">PaletteValues</a></span></p></td></tr></table><p>Color palette to use when the widget is selected and disabled.</p>
<p>This QML property was introduced in  Ubuntu.Components.Themes 1.3.</p>
<!-- @@@selectedDisabled -->
<br/>
