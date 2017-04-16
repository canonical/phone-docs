---
Title: Ubuntu.Components.Scrollbar
---

# Ubuntu.Components.Scrollbar

<span class="subtitle"></span>
<!-- $$$Scrollbar-brief -->
<p>The Scrollbar component provides scrolling functionality for scrollable views (i.e&#x2e; Flickable, ListView). More...</p>
<!-- @@@Scrollbar -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#align-prop">align</a></b></b> : int</li>
<li class="fn"><b><b><a href="#flickableItem-prop">flickableItem</a></b></b> : Flickable</li>
</ul>
<!-- $$$Scrollbar-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><b>NOTE</b>: the Scrollbar component was revamped for OTA9 and used for the implementation of <a href="Ubuntu.Components.ScrollView.md">ScrollView</a>. Apps targeting system version OTA9 (or newer) should use <a href="Ubuntu.Components.ScrollView.md">ScrollView</a> instead of Scrollbar, as it features convergent-ready features, such as (but not limited to) keyboard input handling.</p>
<p>The Scrollbar can be set to any flickable and has built-in anchoring setup to the attached flickable's front, rear, top or bottom. The scrollbar can also be aligned using anchors, however the built-in align functionality makes sure to have the proper alignemt applied based on theme and layout direction (RTL or LTR).</p>
<p>The content position is driven through the attached Flickable. Therefore every style implementation should drive the position through contentX/contentY properties, depending on whether the orientation is vertical or horizontal.</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="../sdk-14.10/QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">list</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">37</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">37</span>)
<span class="name">model</span>: <span class="number">30</span>
<span class="name">delegate</span>: <span class="name">Rectangle</span> {
<span class="name">width</span>: <span class="name">ListView</span>.<span class="name">view</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
<span class="type"><a href="../sdk-14.10/QtQuick.Text.md">Text</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Item &quot;</span> <span class="operator">+</span> <span class="name">modelData</span>
}
}
}
<span class="type"><a href="index.html">Scrollbar</a></span> {
<span class="name">flickableItem</span>: <span class="name">list</span>
<span class="name">align</span>: <span class="name">Qt</span>.<span class="name">AlignTrailing</span>
}
}</pre>
<h2 id="vertical-scrollbar-and-flickable-behaviour">Vertical Scrollbar and Flickable behaviour</h2>
<p>Since Flickable's topMargin and bottomMargin are modified by Ubuntu components such as <a href="Ubuntu.Components.BottomEdgeHint.md">BottomEdgeHint</a> and <a href="Ubuntu.Components.Header.md">Header</a> in their positioning logic, the Scrollbar component uses the value of those properties to its top and bottom anchors margins, by default. This is to prevent any overlap with <a href="Ubuntu.Components.BottomEdgeHint.md">BottomEdgeHint</a> or Header (see <a href="#vertical-scrollbar-and-header-behaviour">Vertical Scrollbar and Header behaviour</a> for more info about that). In case you need to specify custom Flickable content margins (note: we're talking about content margins, not anchors ones), you will also have to override the top and bottom anchors margins of the Scrollbar accordingly.</p>
<h2 id="vertical-scrollbar-and-header-behaviour">Vertical Scrollbar and Header behaviour</h2>
<p>The thumb of the Scrollbar should not move or resize unexpectedly. It would be confusing, for instance, if it moved under the user's finger (or pointer) while he's dragging it.</p>
<p>Because the size and position of the thumb in a scrollbar is related to the size of the trough (or track) it slides in, it is important that the trough does not resize or move while the user is interacting with the component.</p>
<p>In the context of a <a href="Ubuntu.Components.Page.md">Page</a> with a <a href="Ubuntu.Components.Header.md">Header</a> that slides in and out dynamically when the user flicks the surface (see <a href="Ubuntu.Components.Header.md#flickable-prop">Header::flickable</a>), a vertical Scrollbar that is linked to the same flickable surface as the Header behaves as described below:</p>
<ul>
<li>- when the Header is exposed, the Scrollbar component sits right below it, thus avoiding overlaps;</li>
<li>- when the Header hides due to the user either flicking the surface or dragging the thumb, the trough of the Scrollbar does not resize or move, thus avoiding unexpected changes in thumb's position or size. As a side effect, the space above the Scrollbar, previously occupied by Header, stays empty until the Header is exposed again.</li>
</ul>
<p><br />
This behaviour is intended and makes for a less confusing User Experience.</p>
<!-- @@@Scrollbar -->
<h2>Property Documentation</h2>
<!-- $$$align -->
<table class="qmlname"><tr valign="top" id="align-prop"><td class="tblQmlPropNode"><p><span class="name">align</span> : <span class="type">int</span></p></td></tr></table><p>The property defines the alignment of the scrollbar to the <a href="#flickableItem-prop">flickableItem</a>. The implementation handles the alignment as follows:</p>
<ul>
<li>Qt.AlignLeading anchors to the left on LTR and to the right on RTL layouts</li>
<li>Qt.AlignTrailing anchors to the right on LTR and to the left on RTL layouts</li>
<li>Qt.AlignTop anchors to the top</li>
<li>Qt.AlignBottom anchors to the bottom</li>
</ul>
<p>The default value is <b>Qt.AlignTrailing</b>.</p>
<!-- @@@align -->
<br/>
<!-- $$$flickableItem -->
<table class="qmlname"><tr valign="top" id="flickableItem-prop"><td class="tblQmlPropNode"><p><span class="name">flickableItem</span> : <span class="type"><a href="../sdk-14.10/QtQuick.Flickable.md">Flickable</a></span></p></td></tr></table><p>This property holds the flickable item (Flickable, <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a> or <a href="../sdk-14.10/QtQuick.qtquick-draganddrop-example.md#gridview">GridView</a>) the Scrollbar is attached to.</p>
<!-- @@@flickableItem -->
<br/>
