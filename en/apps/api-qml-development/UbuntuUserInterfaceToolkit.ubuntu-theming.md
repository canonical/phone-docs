---
Title: UbuntuUserInterfaceToolkit.ubuntu-theming
---

# UbuntuUserInterfaceToolkit.ubuntu-theming

<span class="subtitle"></span>
<!-- $$$ubuntu-theming.html-description -->
<p>Table of contents:</p>
<ul>
<li><a href="index.html">Introduction</a></li>
<li><a href="UbuntuUserInterfaceToolkit.ubuntu-theming-styles.md">Styles</a></li>
<li><a href="UbuntuUserInterfaceToolkit.ubuntu-theming-themes.md">Themes</a></li>
<li><a href="UbuntuUserInterfaceToolkit.ubuntu-theming-subtheming.md">Sub-theming</a></li>
</ul>
<h3 >Introduction</h3>
<p>The <a href="UbuntuUserInterfaceToolkit.ubuntu-theming-styles.md">style</a> defines the visuals, the implicit size of the component and may provide additional logic for a given component. Some components have fixed style API the component relies on, and yet some others do not have any restriction on what the style contains or does. Components relying on a well defined API provide these interfaces through Ubuntu.Components.Styles module, and styles must implement these interfaces.</p>
<p>The implicit size of a component is driven by the style as well, but it is not mandatory for a style to provide those values, and components can override these values at any time. However each style component is anchor filled to the styled component and positioned to be under child components declared within the component itself.</p>
<p>Styles can be declared as Components (like delegates), in a separate document loaded dynamically using a Loader or Qt.createComponent(), or can be grouped in <a href="UbuntuUserInterfaceToolkit.ubuntu-theming-themes.md">themes</a>. When declared in themes, with some exceptions, each component's style document name is compound of the component name having the <i>Style</i> word as postfix, followed by the typical QML file name extension. In this way the Button component's style is ButtonStyle. In addition to styles, themes can also provide custom palette values. There are two themes in Ubuntu, Ambiance and SuruDark themes, Ambiance being the default theme. Both themes are declared in separate modules, in <code>Ubuntu.Components.Themes.Ambiance</code> as well as <code>Ubuntu.Components.Themes.SuruDark</code>. Application should define the theme name using this dotted name format.</p>
<p>Applications can decide which theme they want to use or they can provide their own themes. Also, applications can use multiple themes or set custom palette values.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.MainView.md">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>,<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">71</span>)
<span class="name">theme</span>.name: <span class="string">&quot;Ubuntu.Components.Themes.SuruDark&quot;</span>
}</pre>
<!-- @@@ubuntu-theming.html -->
<p class="naviNextPrevious footerNavi">
<li><a class="nextPage" href="UbuntuUserInterfaceToolkit.ubuntu-theming-styles.md">Styles</a></li>
</p>
