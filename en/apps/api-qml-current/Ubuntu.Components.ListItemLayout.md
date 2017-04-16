---
Title: Ubuntu.Components.ListItemLayout
---

# Ubuntu.Components.ListItemLayout

<span class="subtitle"></span>
<!-- $$$ListItemLayout-brief -->
<p>ListItemLayout provides an easy way to create list items which follow Ubuntu design standards, thus making them visually appealing and consistent with the rest of the platform without effort. More...</p>
<!-- @@@ListItemLayout -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.SlotsLayout.md">SlotsLayout</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#subtitle-prop">subtitle</a></b></b> : Label</li>
<li class="fn"><b><b><a href="#summary-prop">summary</a></b></b> : Label</li>
<li class="fn"><b><b><a href="#title-prop">title</a></b></b> : Label</li>
</ul>
<!-- $$$ListItemLayout-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">ListItemLayout</a> is essentially a <a href="Ubuntu.Components.SlotsLayout.md">SlotsLayout</a> with a predefined <a href="Ubuntu.Components.SlotsLayout.md#mainSlot-prop">SlotsLayout::mainSlot</a> that provides (up to) 3 Labels automatically laid out according to our UI guidelines. This main slot has been optimized to cover most of the usecases without compromising performance (read more in <a href="#optimizing-memory-consumption">Optimizing memory consumption</a>).</p>
<p>We're aware there could be usecases which the <a href="Ubuntu.Components.SlotsLayout.md#mainSlot-prop">SlotsLayout::mainSlot</a> provided by <a href="index.html">ListItemLayout</a> doesn't cover. If that is the case, please use <a href="Ubuntu.Components.SlotsLayout.md">SlotsLayout</a> instead of <a href="index.html">ListItemLayout</a> and provide your own <a href="Ubuntu.Components.SlotsLayout.md#mainSlot-prop">SlotsLayout::mainSlot</a>.</p>
<p><a href="index.html">ListItemLayout</a> works similarly to <a href="http://doc.qt.io/qt-5/qtquick-qmlmodule.html">QtQuick</a>'s Row, but while Row just positions its children in a horizontal formation, <a href="index.html">ListItemLayout</a> also tweaks their vertical position to ensure a clean layout.</p>
<p>We will call <a href="index.html">ListItemLayout</a>'s visual children &quot;slots&quot;. <a href="index.html">ListItemLayout</a> positions its slots automatically, following the visual rules specified by the Ubuntu Design team. Because we think flexibility is an important value of our UI components, we made it possible to tweak the position of each slot by modifying its attached properties (see <a href="Ubuntu.Components.SlotsLayout.md#advanced-layout-tweaks">Advanced layout tweaks</a>).</p>
<p>If you need a progression symbol in your list item, just add <a href="Ubuntu.Components.ProgressionSlot.md">ProgressionSlot</a> as a child of your <a href="index.html">ListItemLayout</a>. No manual positioning is needed, the layout will handle it for you.</p>
<p>To read more about advanced slots positioning or how to handle input (mouse or touch) in <a href="index.html">ListItemLayout</a>, see <a href="Ubuntu.Components.SlotsLayout.md">SlotsLayout</a> documentation.</p>
<p>If you don't need the features provided by <a href="Ubuntu.Components.ListItem.md">ListItem</a> (such as the swiping actions), you can also use <a href="index.html">ListItemLayout</a> directly as root of your list view delegate or inside a <a href="../sdk-14.10/QtQuick.MouseArea.md">MouseArea</a>, as explained in <a href="Ubuntu.Components.SlotsLayout.md#input-handling">Input handling</a>.</p>
<p>The following code example shows how easy it is to create even non trivial list items using <a href="Ubuntu.Components.ListItem.md">ListItem</a> and <a href="index.html">ListItemLayout</a>:</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span> {
<span class="name">height</span>: <span class="name">layout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
<span class="type"><a href="index.html">ListItemLayout</a></span> {
<span class="name">id</span>: <span class="name">layout</span>
<span class="name">title</span>.text: <span class="string">&quot;Hello developers!&quot;</span>
<span class="name">subtitle</span>.text: <span class="string">&quot;I'm a subtitle, I'm tiny!&quot;</span>
<span class="name">summary</span>.text: <span class="string">&quot;Ubuntu!&quot;</span>
<span class="type"><a href="Ubuntu.Components.CheckBox.md">CheckBox</a></span> { <span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Leading</span> }
<span class="type"><a href="Ubuntu.Components.Icon.md">Icon</a></span> {
<span class="name">name</span>: <span class="string">&quot;message&quot;</span>
<span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Trailing</span>;
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
}
}
}</pre>
<p>Although <a href="index.html">ListItemLayout</a> covers most of the usecases, there might be times where you might want to tweak the position of one or more slots. The following example shows one way to implement a list item with a trailing slot holding two labels. What is special about this example is that we want the baseline of one label inside the trailing slot to align to <a href="#title-prop">title</a>'s baseline and the baseline of the other label to align to <a href="#subtitle-prop">subtitle</a>'s baseline.</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span> {
<span class="name">id</span>: <span class="name">listItem</span>
<span class="name">height</span>: <span class="name">layout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
<span class="type"><a href="index.html">ListItemLayout</a></span> {
<span class="name">id</span>: <span class="name">layout</span>
<span class="name">title</span>.text: <span class="string">&quot;Hello...&quot;</span>
<span class="name">title</span>.color: <span class="name">UbuntuColors</span>.<span class="name">Orange</span>
<span class="name">subtitle</span>.text: <span class="string">&quot;...world!&quot;</span>
<span class="type"><a href="../sdk-14.10/QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">SlotsLayout</span>.position: <span class="name">SlotsLayout</span>.<span class="name">Leading</span>
<span class="name">color</span>: <span class="string">&quot;pink&quot;</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">6</span>)
<span class="name">width</span>: <span class="name">height</span>
}
<span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">slot</span>
<span class="name">width</span>: <span class="name">secondLabel</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
<span class="comment">//as we want to position labels to align with title and subtitle</span>
<span class="name">SlotsLayout</span>.overrideVerticalPositioning: <span class="number">true</span>
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">id</span>: <span class="name">firstLabel</span>
<span class="name">anchors</span>.right: <span class="name">secondLabel</span>.<span class="name">right</span>
<span class="name">text</span>: <span class="string">&quot;19:17&quot;</span>
<span class="name">fontSize</span>: <span class="string">&quot;small&quot;</span>
<span class="name">y</span>: <span class="name">layout</span>.<span class="name">mainSlot</span>.<span class="name">y</span> <span class="operator">+</span> <span class="name">layout</span>.<span class="name">title</span>.<span class="name">y</span>
<span class="operator">+</span> <span class="name">layout</span>.<span class="name">title</span>.<span class="name">baselineOffset</span> <span class="operator">-</span> <span class="name">baselineOffset</span>
}
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">id</span>: <span class="name">secondLabel</span>
<span class="name">text</span>: <span class="string">&quot;Outgoing&quot;</span>
<span class="name">fontSize</span>: <span class="string">&quot;small&quot;</span>
<span class="name">y</span>: <span class="name">layout</span>.<span class="name">mainSlot</span>.<span class="name">y</span> <span class="operator">+</span> <span class="name">layout</span>.<span class="name">subtitle</span>.<span class="name">y</span>
<span class="operator">+</span> <span class="name">layout</span>.<span class="name">subtitle</span>.<span class="name">baselineOffset</span> <span class="operator">-</span> <span class="name">baselineOffset</span>
}
}
}
}</pre>
<h2 id="labels-layout">Labels layout</h2>
<p>The labels in <a href="index.html">ListItemLayout</a>'s default <a href="Ubuntu.Components.SlotsLayout.md#mainSlot-prop">SlotsLayout::mainSlot</a> are laid out in a column. The <a href="#title-prop">title</a> is positioned at the top, followed by <a href="#subtitle-prop">subtitle</a> and <a href="#summary-prop">summary</a>, respectively.</p>
<p>The <a href="#subtitle-prop">subtitle</a> has its top anchored to <a href="#title-prop">title</a>'s bottom, with a margin of 2 DPs.</p>
<p>The <a href="#summary-prop">summary</a> has its top tightly anchored to <a href="#subtitle-prop">subtitle</a>'s bottom.</p>
<p>The height of the default <a href="Ubuntu.Components.SlotsLayout.md#mainSlot-prop">SlotsLayout::mainSlot</a> provided with <a href="index.html">ListItemLayout</a> is the minimum height required to accomodate the <b>visible</b> and <b>non-empty</b> labels it holds. If only <a href="#title-prop">title</a> is visible and has a non-empty text set, for instance, the height of the main slot will be <code>title.height</code>.</p>
<p>If you wish to have the layout process accomodate a label which doesn't have a defined text yet, you should set its text property to &quot; &quot;, as shown in the following example:</p>
<pre class="qml"><span class="type"><a href="index.html">ListItemLayout</a></span> {
<span class="name">title</span>.text: <span class="string">&quot;Hello developers!&quot;</span>
<span class="comment">//NOTE: the whitespace</span>
<span class="name">subtitle</span>.text: <span class="string">&quot; &quot;</span>
}</pre>
<p>That will make sure <a href="Ubuntu.Components.SlotsLayout.md#mainSlot-prop">SlotsLayout::mainSlot</a> is resized to accomodate the (currently empty) subtitle.</p>
<p>This is useful, for instance, if you want all list items in a list view to have the same height even without having to fill <a href="#subtitle-prop">subtitle</a>'s (or summary's) text with dummy content.</p>
<h2 id="optimizing-memory-consumption">Optimizing memory consumption</h2>
<p>In order to minimize memory consumption, the Labels in the <a href="Ubuntu.Components.SlotsLayout.md#mainSlot-prop">SlotsLayout::mainSlot</a> are only allocated in memory on demand, i.e&#x2e; the first time one of their properties is queried.</p>
<pre class="qml"><span class="type"><a href="index.html">ListItemLayout</a></span> {
<span class="comment">//NOTE: querying subtitle.text triggers allocation of subtitle Label</span>
<span class="name">Component</span>.onCompleted: <span class="name">console</span>.<span class="name">log</span>(<span class="name">subtitle</span>.<span class="name">text</span>)
<span class="name">title</span>.text: <span class="string">&quot;Hello developers!&quot;</span>
}</pre>
<p>In the example above, querying subtitle.text will trigger the allocation in memory of the subtitle Label, which we don't actually use. We <b>recommend</b> avoiding querying properties of labels that we don't plan to use in the layout, in order to minimize memory consumption and maximize the scrolling performance of our list views.</p>
<pre class="qml"><span class="type"><a href="index.html">ListItemLayout</a></span> {
<span class="comment">//no extra labels created</span>
<span class="name">title</span>.text: <span class="string">&quot;Hello developers!&quot;</span>
}</pre>
<h2 id="about-aliasing-labels-properties">About aliasing labels properties</h2>
<p>Due to the way ListItemsLayout's labels are created (see <a href="#optimizing-memory-consumption">Optimizing memory consumption</a>) it is not possible to directly alias their properties. It is still possible, however, to expose an API that gives indirect read-write access to those properties. The following code:</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span> {
property <span class="type">alias</span> <span class="name">titleText</span>: <span class="name">layout</span>.<span class="name">title</span>.<span class="name">text</span>
<span class="type"><a href="index.html">ListItemLayout</a></span> {
<span class="name">id</span>: <span class="name">layout</span>
}
}</pre>
<p>will return the error &quot;Invalid alias location&quot;, because the title object does not yet exist at time when the alias is created.</p>
<p>If you need to expose an API for your component that allows changing the properties of the labels, we recommend aliasing the labels themselves. Let's assume you want to create a QML component to use as a delegate of many list views inside your application: you will probably have a qml file holding the definition of the that delegate, and the content of that file will be similar to:</p>
<pre class="qml"><span class="comment">//Content of CustomListItem.qml</span>
import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span> {
<span class="name">id</span>: <span class="name">listitem</span>
property <span class="type">alias</span> <span class="name">title</span>: <span class="name">layout</span>.<span class="name">title</span>
property <span class="type">alias</span> <span class="name">iconName</span>: <span class="name">icon</span>.<span class="name">name</span>
<span class="name">height</span>: <span class="name">layout</span>.<span class="name">height</span> <span class="operator">+</span> (<span class="name">divider</span>.<span class="name">visible</span> ? <span class="name">divider</span>.<span class="name">height</span> : <span class="number">0</span>)
<span class="type"><a href="index.html">ListItemLayout</a></span> {
<span class="name">id</span>: <span class="name">layout</span>
<span class="type"><a href="Ubuntu.Components.Icon.md">Icon</a></span> {
<span class="name">id</span>: <span class="name">icon</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">2</span>)
}
}
}</pre>
<p>As you can see, we alias the label item itself instead of its properties. This also has the advantage of only exposing one alias instead of one for each property, thus making your QML app a bit more performant. Once your delegate is defined, you can use it in your ListViews like usual.</p>
<pre class="qml"><span class="comment">//other UI code...</span>
<span class="type"><a href="../sdk-14.10/QtQuick.ListView.md">ListView</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="name">ListModel</span> {
<span class="name">id</span>: <span class="name">listViewModel</span>
<span class="type"><a href="../sdk-14.10/QtQml.ListElement.md">ListElement</a></span> { <span class="name">titleText</span>: <span class="string">&quot;Hello1&quot;</span>; <span class="name">icon</span>: <span class="string">&quot;message&quot;</span> }
<span class="type"><a href="../sdk-14.10/QtQml.ListElement.md">ListElement</a></span> { <span class="name">titleText</span>: <span class="string">&quot;Hello2&quot;</span>; <span class="name">icon</span>: <span class="string">&quot;email&quot;</span> }
<span class="type"><a href="../sdk-14.10/QtQml.ListElement.md">ListElement</a></span> { <span class="name">titleText</span>: <span class="string">&quot;Hello3&quot;</span>; <span class="name">icon</span>: <span class="string">&quot;email&quot;</span> }
<span class="type"><a href="../sdk-14.10/QtQml.ListElement.md">ListElement</a></span> { <span class="name">titleText</span>: <span class="string">&quot;Hello4&quot;</span>; <span class="name">icon</span>: <span class="string">&quot;message&quot;</span> }
}
<span class="name">delegate</span>: <span class="name">CustomListItem</span> {
<span class="name">title</span>.text: <span class="name">model</span>.<span class="name">titleText</span>
<span class="name">iconName</span>: <span class="name">model</span>.<span class="name">icon</span>
}
}</pre>
<p>Note how title's properties are all accessible via the &quot;title&quot; identifier.</p>
<p><b>See also </b><a href="Ubuntu.Components.SlotsLayout.md">SlotsLayout</a> and <a href="Ubuntu.Components.ProgressionSlot.md">ProgressionSlot</a>.</p>
<!-- @@@ListItemLayout -->
<h2>Property Documentation</h2>
<!-- $$$subtitle -->
<table class="qmlname"><tr valign="top" id="subtitle-prop"><td class="tblQmlPropNode"><p><span class="name">subtitle</span> : <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span></p></td></tr></table><p>This property defines the subtitle label and its properties. Styling and font properties can be set by using the prefix <code>subtitle.</code> in a similar way as shown in <a href="#title-prop">title</a>.</p>
<!-- @@@subtitle -->
<br/>
<!-- $$$summary -->
<table class="qmlname"><tr valign="top" id="summary-prop"><td class="tblQmlPropNode"><p><span class="name">summary</span> : <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span></p></td></tr></table><p>This property defines the subtitle label and its properties. Styling and font properties can be set by using the prefix <code>summary.</code> in a similar way as shown in <a href="#title-prop">title</a>.</p>
<!-- @@@summary -->
<br/>
<!-- $$$title -->
<table class="qmlname"><tr valign="top" id="title-prop"><td class="tblQmlPropNode"><p><span class="name">title</span> : <span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span></p></td></tr></table><p>This property defines the title label and its properties. Styling and font properties can be set just like on any other Text component, as shown in the following example:</p>
<pre class="qml"><span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="index.html">ListItemLayout</a></span> {
<span class="name">title</span>.text: <span class="string">&quot;Hello&quot;</span>
<span class="name">title</span>.color: <span class="string">&quot;yellow&quot;</span>
}
}</pre>
<!-- @@@title -->
<br/>
