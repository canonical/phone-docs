---
Title: UbuntuUserInterfaceToolkit.ubuntu-theming-styles
---

# UbuntuUserInterfaceToolkit.ubuntu-theming-styles

<span class="subtitle"></span>
<!-- $$$ubuntu-theming-styles.html-description -->
<h3 >Naming conventions</h3>
<p>With few exception, each toolkit component is having <a href="Ubuntu.Components.StyledItem.md">StyledItem</a> as its base component. The component is aimed to be the base component for all styled elements in the toolkit. Modules providing additional components to UI Toolkit can also use this component as base, especially if they want to provide styling capabilities.</p>
<p>As mentioned, each styled component is having a style pair in a theme which is implemented in a document named using the component name adding the <i>Style</i> word. The <a href="Ubuntu.Components.Button.md">Button</a>'s style is implemented by <code>ButtonStyle.qml</code> document in the theme, and <a href="Ubuntu.Components.Button.md">Button</a> is loading this style from the theme:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.AbstractButton.md">AbstractButton</a></span> {
<span class="name">id</span>: <span class="name">button</span>
<span class="comment">// [...]</span>
<span class="name">styleName</span>: <span class="string">&quot;ButtonStyle&quot;</span>
}</pre>
<p>Developers can override the style in two ways, depending on how they want to style the component:</p>
<ul>
<li>1. by overriding the style using an other style component from the theme, or</li>
<li>2. by overriding the style with a custom style component.</li>
</ul>
<p>But let's see first how the styles are implemented.</p>
<h3 >Creating styles</h3>
<p>As mentioned before, styles are not restricted to only provide visuals to a component or set of components, but can have also logic which drives the component functionality. These kind of styles must implement the given component's style API, listed in <code>Ubuntu.Components.Styles</code> module.</p>
<p>A good example of such a style is the <a href="Ubuntu.Components.Styles.ListItemStyle.md">ListItemStyle</a>. The <a href="Ubuntu.Components.ListItem.md">ListItem</a> drives the style animation through the <a href="Ubuntu.Components.Styles.ListItemStyle.md#animatePanels-prop">ListItemStyle::animatePanels</a> property, value being false when the style is loaded during component creation, i.e&#x2e; when the component requires some visuals to be present at creation time. Also, <a href="Ubuntu.Components.ListItem.md">ListItem</a> informs the style when to execute leading or trailing panel <a href="Ubuntu.Components.Styles.ListItemStyle.md#rebound-method">rebound</a>s and provides the style the ability to overrule the <a href="Ubuntu.Components.Styles.ListItemStyle.md#swipeEvent-method">swipe</a> coordinates calculated by the <a href="Ubuntu.Components.ListItem.md">ListItem</a>. On the other hand, the style must inform the component about the position of the <a href="Ubuntu.Components.Styles.ListItemStyle.md#dragPanel-prop">drag panel</a> so the dragging (reordering of list items in a <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a>) hot spot can be detected. A style implementation must use the API provided by <a href="Ubuntu.Components.Styles.ListItemStyle.md">ListItemStyle</a>, otherwise <a href="Ubuntu.Components.ListItem.md">ListItem</a> will fail to function properly.</p>
<p>Other styles are requested to provide additional <i>content</i> elements, which are then positioned by the styled component separately from the main visuals given by the style. A typical example of such a style API is the <a href="Ubuntu.Components.PullToRefresh.md">PullToRefresh</a> component's style:</p>
<pre class="qml"><span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="comment">/*!
The property holds the style provided default content component. The value
is assigned to the \l PullToRefresh::content property.
*/</span>
property <span class="type"><a href="../sdk-14.10/QtQml.Component.md">Component</a></span> <span class="name">defaultContent</span>
<span class="comment">/*!
The property holds the threshold value when the component should enter
into \a ready-to-refresh state when dragged manually. The default value
is the height of the component styled.
*/</span>
property <span class="type">real</span> <span class="name">activationThreshold</span>: <span class="name">styledItem</span>.<span class="name">height</span>
<span class="comment">/*!
The property informs the component when a manual refresh can be triggered.
Style implementations (themes) can decide when to flip the component to be
ready to trigger reftesh signal.
*/</span>
property <span class="type">bool</span> <span class="name">releaseToRefresh</span>: <span class="number">false</span>
}</pre>
<p>The default style implementation can be found under Ubuntu.Components.Themes.Ambiance theme <a href="http://bazaar.launchpad.net/~ubuntu-sdk-team/ubuntu-ui-toolkit/trunk/view/head:/src/Ubuntu/Components/Themes/Ambiance/1.3/PullToRefreshStyle.qml">PullToRefreshStyle.qml</a>.</p>
<p>Beside these, component styles may provide default values for colors, fonts, widths, margins, thicknesses.</p>
<p>Each style component has a <code>styledItem</code> context property defined by the <a href="Ubuntu.Components.StyledItem.md">StyledItem</a>, which points to the <a href="Ubuntu.Components.StyledItem.md">StyledItem</a> instance that uses the style. Style implementations can access the actual styled item through this property.</p>
<h3 >Overriding the default component style</h3>
<h4 >Override with a different style from the theme</h4>
<p>Returning back to the ways to override a component's style, overriding by using a different style from the theme can simply be done by assigning the document name to the <a href="Ubuntu.Components.StyledItem.md#styleName-prop">StyledItem.styleName</a> property as follows:</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">button</span>
<span class="name">styleName</span>: <span class="string">&quot;SquaryButtonStyle&quot;</span>
}</pre>
<p><b>Note: </b>The document extension doesn't have to be specified, the style creation will automatically append the .qml extension to it. This kind of style override assumes that the <code>SquaryButtonStyle.qml</code> document is present in the theme. This type of component styling makes sure the style will always have theme specific implementation or coloring, however it also requires the style document to be present in all the themes used by the application.</p>
<h4 >Override with a custom component</h4>
<p>The other way is to override the style with a local component not present in any theme. The style component can be in-source (Component) or declared in a separate document, loaded dynamically with Loader or Qt.createComponent(). This kind of override will make sure the component will use the custom style no matter of the theme used. These styles however can still use the theme palette to be in sync with the theme coloring.</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">button</span>
<span class="name">style</span>: <span class="name">Rectangle</span> {
<span class="name">implicitWidth</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">12</span>)
<span class="name">implicitHeight</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
<span class="name">color</span>: <span class="name">styledItem</span>.<span class="name">color</span>
<span class="type">border</span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">dp</span>(<span class="number">1</span>)
<span class="name">color</span>: <span class="name">styledItem</span>.<span class="name">strokeColor</span>
}
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="name">styledItem</span>.<span class="name">text</span>
<span class="name">font</span>: <span class="name">styledItem</span>.<span class="name">font</span>
}
}
}</pre>
<p><b>Note: </b>Specifying a component for the <a href="Ubuntu.Components.StyledItem.md#style-prop">StyledItem.style</a> has precedence over the <a href="Ubuntu.Components.StyledItem.md#styleName-prop">StyledItem::styleName</a>. When both set, the stlke specified <code>style</code> property will be used. When this property is set to undefined or null, the style specified in <code>styleName</code> will be used. Obviously, when both properties are invalid, no style will be used.</p>
<!-- @@@ubuntu-theming-styles.html -->
<p class="naviNextPrevious footerNavi">
<li><a class="prevPage" href="UbuntuUserInterfaceToolkit.ubuntu-theming.md">Introduction</a></li>
<li><a class="nextPage" href="UbuntuUserInterfaceToolkit.ubuntu-theming-themes.md">Themes</a></li>
</p>
