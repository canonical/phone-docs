---
Title: Ubuntu.Components.Pickers.Picker
---

# Ubuntu.Components.Pickers.Picker

<span class="subtitle"></span>
<!-- $$$Picker-brief -->
<p>Picker is a slot-machine style value selection component. More...</p>
<!-- @@@Picker -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components.Pickers 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#circular-prop">circular</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#delegate-prop">delegate</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#itemHeight-prop">itemHeight</a></b></b> : real</li>
<li class="fn"><b><b><a href="#live-prop">live</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#model-prop">model</a></b></b> : var</li>
<li class="fn"><b><b><a href="#moving-prop">moving</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#selectedIndex-prop">selectedIndex</a></b></b> : int</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#positionViewAtIndex-method">positionViewAtIndex</a></b></b>(<i>index</i>)</li>
</ul>
<!-- $$$Picker-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Picker lists the elements specified by the <a href="#model-prop">model</a> using the <a href="#delegate-prop">delegate</a> vertically using a slot-machine tumbler-like list. The selected item is always the one in the center of the component, and it is represented by the <a href="#selectedIndex-prop">selectedIndex</a> property.</p>
<p>The elements can be either in a circular list or in a normal list.</p>
<p>Delegates must be composed using <a href="Ubuntu.Components.Pickers.PickerDelegate.md">PickerDelegate</a>.</p>
<p>Example:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Pickers 1.0
<span class="type"><a href="index.html">Picker</a></span> {
<span class="name">model</span>: [<span class="string">&quot;Jan&quot;</span>, <span class="string">&quot;Feb&quot;</span>, <span class="string">&quot;Mar&quot;</span>, <span class="string">&quot;Apr&quot;</span>, <span class="string">&quot;May&quot;</span>, <span class="string">&quot;Jun&quot;</span>, <span class="string">&quot;Jul&quot;</span>, <span class="string">&quot;Aug&quot;</span>, <span class="string">&quot;Sept&quot;</span>, <span class="string">&quot;Oct&quot;</span>, <span class="string">&quot;Nov&quot;</span>, <span class="string">&quot;Dec&quot;</span>]
<span class="name">delegate</span>: <span class="name">PickerDelegate</span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="name">modelData</span>
}
}
<span class="name">selectedIndex</span>: <span class="number">5</span>
<span class="name">onSelectedIndexChanged</span>: {
<span class="name">print</span>(<span class="string">&quot;selected month: &quot;</span> <span class="operator">+</span> <span class="name">selectedIndex</span>);
}
}</pre>
<p><b>Note</b>: the <a href="#selectedIndex-prop">selectedIndex</a> must be set explicitly to the desired index if the model is set, filled or changed after the component is complete. In the following example the selected item must be set after the model is set.</p>
<pre class="qml"><span class="type"><a href="index.html">Picker</a></span> {
<span class="name">selectedIndex</span>: <span class="number">5</span> <span class="comment">// this will be set to 0 at the model completion</span>
<span class="name">delegate</span>: <span class="name">PickerDelegate</span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="name">modelData</span>
}
}
<span class="name">Component</span>.onCompleted: {
var <span class="name">stack</span> = [];
<span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&lt;</span> <span class="number">10</span>; i++) {
<span class="name">stack</span>.<span class="name">push</span>(<span class="string">&quot;Line &quot;</span> <span class="operator">+</span> <span class="name">i</span>);
}
<span class="name">model</span> <span class="operator">=</span> <span class="name">stack</span>;
<span class="comment">// selectedIndex must be set explicitly</span>
<span class="name">selectedIndex</span> <span class="operator">=</span> <span class="number">3</span>;
}
}</pre>
<h4 >Known issues</h4>
<ul>
<li>[1] Circular picker does not react on touch generated flicks (on touch enabled devices) when nested into a Flickable - <a href="https://bugreports.qt-project.org/browse/QTBUG-30840">https://bugreports.qt-project.org/browse/QTBUG-30840</a></li>
<li>[2] Circular picker sets <a href="#selectedIndex-prop">selectedIndex</a> to 0 when the model is cleared, contrary to linear one, which sets it to -1 - <a href="https://bugreports.qt-project.org/browse/QTBUG-35400">https://bugreports.qt-project.org/browse/QTBUG-35400</a></li>
</ul>
<!-- @@@Picker -->
<h2>Property Documentation</h2>
<!-- $$$circular -->
<table class="qmlname"><tr valign="top" id="circular-prop"><td class="tblQmlPropNode"><p><span class="name">circular</span> : <span class="type">bool</span></p></td></tr></table><p>Property specifying whether the tumbler list is wrap-around (<i>true</i>), or normal (<i>false</i>). Default value is true.</p>
<!-- @@@circular -->
<br/>
<!-- $$$delegate -->
<table class="qmlname"><tr valign="top" id="delegate-prop"><td class="tblQmlPropNode"><p><span class="name">delegate</span> : <span class="type"><a href="../sdk-14.10/QtQml.Component.md">Component</a></span></p></td></tr></table><p>The delegate visualizing the model elements. Any kind of component can be used as delegate, however it is recommended to use <a href="Ubuntu.Components.Pickers.PickerDelegate.md">PickerDelegate</a>, which integrates selection functionality into the Picker.</p>
<!-- @@@delegate -->
<br/>
<!-- $$$itemHeight -->
<table class="qmlname"><tr valign="top" id="itemHeight-prop"><td class="tblQmlPropNode"><p><span class="name">itemHeight</span> : <span class="type">real</span></p></td></tr></table><p>The property specifies the defautl height of the PickerDelegates. It is recommended to change the delegate height through this property rather than changing it from the delegate itself.</p>
<p>This QML property was introduced in  Ubuntu.Components.Pickers 1.3.</p>
<!-- @@@itemHeight -->
<br/>
<!-- $$$live -->
<table class="qmlname"><tr valign="top" id="live-prop"><td class="tblQmlPropNode"><p><span class="name">live</span> : <span class="type">bool</span></p></td></tr></table><p>Defines whether the <a href="#selectedIndex-prop">selectedIndex</a> should be updated while the tumbler changes the selected item during draggingm or only when the tumbler's motion ends. The default behavior is non-live update.</p>
<!-- @@@live -->
<br/>
<!-- $$$model -->
<table class="qmlname"><tr valign="top" id="model-prop"><td class="tblQmlPropNode"><p><span class="name">model</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td></tr></table><p>Specifies the model listing the content of the picker.</p>
<!-- @@@model -->
<br/>
<!-- $$$moving -->
<table class="qmlname"><tr valign="top" id="moving-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">moving</span> : <span class="type">bool</span></p></td></tr></table><p>The property holds whether the picker's view is moving due to the user interaction either by dragging, flicking or due to the manual change of the <a href="#selectedIndex-prop">selectedIndex</a> property.</p>
<!-- @@@moving -->
<br/>
<!-- $$$selectedIndex -->
<table class="qmlname"><tr valign="top" id="selectedIndex-prop"><td class="tblQmlPropNode"><p><span class="name">selectedIndex</span> : <span class="type">int</span></p></td></tr></table><p>The property holds the index of the selected item</p>
<!-- @@@selectedIndex -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$positionViewAtIndex -->
<table class="qmlname"><tr valign="top" id="positionViewAtIndex-method"><td class="tblQmlFuncNode"><p><span class="name">positionViewAtIndex</span>(<i> index</i>)</p></td></tr></table><p>The function positions the picker's view to the given index without animating the view. The component must be ready when calling the function, e.g&#x2e; to make sure the Picker shows up at the given index, do the following:</p>
<pre class="qml"><span class="type"><a href="index.html">Picker</a></span> {
<span class="name">model</span>: <span class="number">120</span>
<span class="name">delegate</span>: <span class="name">PickerDelegate</span> {
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">verticalCenter</span>: <span class="name">Text</span>.<span class="name">AlignVCenter</span>
<span class="name">text</span>: <span class="name">modelData</span>
}
}
<span class="name">Component</span>.onCompleted: <span class="name">positionViewAtIndex</span>(<span class="number">10</span>)
}</pre>
<!-- @@@positionViewAtIndex -->
<br/>
