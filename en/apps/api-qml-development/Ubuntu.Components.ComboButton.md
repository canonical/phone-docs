---
Title: Ubuntu.Components.ComboButton
---

# Ubuntu.Components.ComboButton

<span class="subtitle"></span>
<!-- $$$ComboButton-brief -->
<p>Ubuntu button providing a drop-down panel visualizing custom options. More...</p>
<!-- @@@ComboButton -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.AbstractButton.md">AbstractButton</a></p>
</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#collapsedHeight-prop">collapsedHeight</a></b></b> : real</li>
<li class="fn"><b><b><a href="#comboList-prop">comboList</a></b></b> : list&lt;Item&gt;</li>
<li class="fn"><b><b><a href="#comboListHeight-prop">comboListHeight</a></b></b> : real</li>
<li class="fn"><b><b><a href="#expanded-prop">expanded</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#expandedHeight-prop">expandedHeight</a></b></b> : real</li>
<li class="fn"><b><b><a href="#font-prop">font</a></b></b> : font</li>
<li class="fn"><b><b><a href="#iconPosition-prop">iconPosition</a></b></b> : string</li>
</ul>
<!-- $$$ComboButton-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The component is composed of three main blocks: <b>main button</b>, <b>dropdown</b> and <b>combo list</b>.</p>
<p>The <i>main button</i> holds the main functionailty of the component, and it is located at the left-top side of the expanded button. The <i>clicked()</i> signal is triggered only when this button is pressed.</p>
<p>The <i>dropdown</i> is a button located on the right of the main button. Its functionality is to drive the component's expanded state.</p>
<p>The <i>combo list</i> is a panel showing the content specified in <a href="#comboList-prop">comboList</a> property when expanded. The content is stretched horizontally to the component's width, and its height is controlled by the <a href="#expandedHeight-prop">expandedHeight</a> property as follows:</p>
<ul>
<li>If the content height is smaller than the value of <a href="#expandedHeight-prop">expandedHeight</a>, the combo list will be expanded only to the height of the content.<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="index.html">ComboButton</a></span> {
<span class="name">text</span>: <span class="string">&quot;smaller content&quot;</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>) <span class="comment">// smaller than the default expandedHeight</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
}
}</pre>
</li>
<li>If the content height is greater than <a href="#expandedHeight-prop">expandedHeight</a>, the combo list will expand till the height specified by the property and the content will be scrolled; in case the combo list content is one single Flickable, <a href="QtQuick.ListView.md">ListView</a>, <a href="../sdk-14.10/QtQuick.qtquick-draganddrop-example.md#gridview">GridView</a> or <a href="QtQuick.PathView.md">PathView</a>, the content scrolling will be provided by the content itself.<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="index.html">ComboButton</a></span> {
<span class="name">text</span>: <span class="string">&quot;long scrolled content&quot;</span>
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="QtQuick.Repeater.md">Repeater</a></span> {
<span class="name">model</span>: <span class="number">5</span>
<span class="name">spacing</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
}
}
}
}</pre>
</li>
<li>In case the content is a single Flickable, <a href="QtQuick.ListView.md">ListView</a>, <a href="../sdk-14.10/QtQuick.qtquick-draganddrop-example.md#gridview">GridView</a> or <a href="QtQuick.PathView.md">PathView</a>, the content will be filling the entire combo list area defined.<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3
<span class="type"><a href="index.html">ComboButton</a></span> {
<span class="name">text</span>: <span class="string">&quot;listview&quot;</span>
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">model</span>: <span class="number">10</span>
<span class="name">delegate</span>: <span class="name">Standard</span> {
<span class="name">text</span>: <span class="string">&quot;Item #&quot;</span> <span class="operator">+</span> <span class="name">modelData</span>
}
}
}</pre>
</li>
<li>Vertical anchoring of combo list content to its parent is not possible as the expansion calculation is done based on the combo list content height. If the content wants to take the size of the entire combo list, it should bind its height to the <a href="#comboListHeight-prop">comboListHeight</a> property.<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="index.html">ComboButton</a></span> {
<span class="name">id</span>: <span class="name">combo</span>
<span class="name">text</span>: <span class="string">&quot;smaller content&quot;</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">height</span>: <span class="name">combo</span>.<span class="name">comboListHeight</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
}
}</pre>
</li>
<li>In case the expansion needs to be the size of the combo list content, the <a href="#expandedHeight-prop">expandedHeight</a> should be set to -1.<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="index.html">ComboButton</a></span> {
<span class="name">text</span>: <span class="string">&quot;auto-sized content&quot;</span>
<span class="name">expandedHeight</span>: -<span class="number">1</span>
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="type"><a href="QtQuick.Repeater.md">Repeater</a></span> {
<span class="name">model</span>: <span class="number">5</span>
<span class="name">spacing</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">1</span>)
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Button #&quot;</span> <span class="operator">+</span> <span class="name">modelData</span>
}
}
}
}</pre>
</li>
</ul>
<p>The combo list can be expanded/collapsed either through the <a href="#expanded-prop">expanded</a> property or by clicking on the dropdown button. It is not collapsed when pressing the main button or clicking on the combo list. In order to do an auto-collapsing button you must reset the expanded property (set it to false) when the main button is clicked or when a selection is taken from the combo list content. The following example illustrates a possible implementation.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="index.html">ComboButton</a></span> {
<span class="name">id</span>: <span class="name">combo</span>
<span class="name">text</span>: <span class="string">&quot;Auto closing&quot;</span>
<span class="name">expanded</span>: <span class="number">true</span>
<span class="name">expandedHeight</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="name">onClicked</span>: <span class="name">expanded</span> <span class="operator">=</span> <span class="number">false</span>
<span class="type"><a href="Ubuntu.Components.UbuntuListView.md">UbuntuListView</a></span> {
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">combo</span>.<span class="name">comboListHeight</span>
<span class="name">model</span>: <span class="number">20</span>
<span class="name">delegate</span>: <span class="name">Standard</span> {
<span class="name">text</span>: <span class="string">&quot;Action #&quot;</span> <span class="operator">+</span> <span class="name">modelData</span>
<span class="name">onClicked</span>: {
<span class="name">combo</span>.<span class="name">text</span> <span class="operator">=</span> <span class="name">text</span>;
<span class="name">combo</span>.<span class="name">expanded</span> <span class="operator">=</span> <span class="number">false</span>;
}
}
}
}</pre>
<h3 >Styling</h3>
<p>The style of the component is defined in <a href="Ubuntu.Components.Styles.ComboButtonStyle.md">ComboButtonStyle</a>.</p>
<!-- @@@ComboButton -->
<h2>Property Documentation</h2>
<!-- $$$collapsedHeight -->
<table class="qmlname"><tr valign="top" id="collapsedHeight-prop"><td class="tblQmlPropNode"><p><span class="name">collapsedHeight</span> : <span class="type">real</span></p></td></tr></table><p>The property holds the height of the component when collapsed. By default the value is the implicit height of the component.</p>
<!-- @@@collapsedHeight -->
<br/>
<!-- $$$comboList -->
<table class="qmlname"><tr valign="top" id="comboList-prop"><td class="tblQmlPropNode"><p><span class="qmldefault">[default] </span><span class="name">comboList</span> : <span class="type">list</span>&lt;<span class="type"><a href="QtQuick.Item.md">Item</a></span>&gt;</p></td></tr></table><p>Property holding the list of items to be shown in the combo list. Being a default property children items declared will land in the combo list.</p>
<p><b>Note: </b>The component is not responsible for layouting the content. It only provides scrolling abilities for the case the content exceeds the defined expanded height.</p><!-- @@@comboList -->
<br/>
<!-- $$$comboListHeight -->
<table class="qmlname"><tr valign="top" id="comboListHeight-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">comboListHeight</span> : <span class="type">real</span></p></td></tr></table><p>The property holds the maximum combo list height allowed based on the <a href="#expandedHeight-prop">expandedHeight</a> and <a href="#collapsedHeight-prop">collapsedHeight</a> values. It is a convenience property that can be used to size the combo list content.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.ListItems 1.3
<span class="type"><a href="index.html">ComboButton</a></span> {
<span class="name">id</span>: <span class="name">combo</span>
<span class="name">text</span>: <span class="string">&quot;Full comboList size&quot;</span>
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
}
<span class="name">height</span>: <span class="name">combo</span>.<span class="name">comboListHeight</span>
<span class="name">model</span>: <span class="number">20</span>
<span class="name">delegate</span>: <span class="name">Standard</span> {
<span class="name">text</span>: <span class="string">&quot;Action #&quot;</span> <span class="operator">+</span> <span class="name">modelData</span>
}
}
}</pre>
<p><b>See also </b><a href="#collapsedHeight-prop">collapsedHeight</a> and <a href="#expandedHeight-prop">expandedHeight</a>.</p>
<!-- @@@comboListHeight -->
<br/>
<!-- $$$expanded -->
<table class="qmlname"><tr valign="top" id="expanded-prop"><td class="tblQmlPropNode"><p><span class="name">expanded</span> : <span class="type">bool</span></p></td></tr></table><p>Specifies whether the combo list is expanded or not. The default falue is false.</p>
<!-- @@@expanded -->
<br/>
<!-- $$$expandedHeight -->
<table class="qmlname"><tr valign="top" id="expandedHeight-prop"><td class="tblQmlPropNode"><p><span class="name">expandedHeight</span> : <span class="type">real</span></p></td></tr></table><p>The property holds the maximum height value the component should expand. When setting the property, remember to take into account the <a href="#collapsedHeight-prop">collapsedHeight</a> value. The best practice is to use bind it with <a href="#collapsedHeight-prop">collapsedHeight</a>.</p>
<pre class="qml"><span class="type"><a href="index.html">ComboButton</a></span> {
<span class="name">text</span>: <span class="string">&quot;altered expandedHeight&quot;</span>
<span class="name">expandedHeight</span>: <span class="name">collapsedHeight</span> <span class="operator">+</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">25</span>)
}</pre>
<p>A value of -1 will instruct the component to expand the combo list as much as its content height is.</p>
<p>The default value is <a href="#collapsedHeight-prop">collapsedHeight</a> + 19.5 GU, so at least 3 ListItems can fit in the combo list.</p>
<p><b>See also </b><a href="#collapsedHeight-prop">collapsedHeight</a>.</p>
<!-- @@@expandedHeight -->
<br/>
<!-- $$$font -->
<table class="qmlname"><tr valign="top" id="font-prop"><td class="tblQmlPropNode"><p><span class="name">font</span> : <span class="type"><a href="#font-prop">font</a></span></p></td></tr></table><p>The font used for the button's text.</p>
<!-- @@@font -->
<br/>
<!-- $$$iconPosition -->
<table class="qmlname"><tr valign="top" id="iconPosition-prop"><td class="tblQmlPropNode"><p><span class="name">iconPosition</span> : <span class="type">string</span></p></td></tr></table><p>The position of the icon relative to the text. Options are &quot;left&quot; and &quot;right&quot;. The default value is &quot;left&quot;.</p>
<p>If only text or only an icon is defined, this property is ignored and the text or icon is centered horizontally and vertically in the button.</p>
<p>Currently this is a string value. We are waiting for support for enums: https://bugreports.qt-project.org/browse/QTBUG-14861</p>
<!-- @@@iconPosition -->
<br/>
