---
Title: QtQml.ObjectModel
---

# QtQml.ObjectModel

<span class="subtitle"></span>
<!-- $$$ObjectModel-brief -->
<p>Defines a set of items to be used as a model More...</p>
<!-- @@@ObjectModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml.Models 2.1</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#count-prop">count</a></b></b> : int</li>
</ul>
<h2 id="attached-properties">Attached Properties</h2>
<ul>
<li class="fn"><b><b><a href="#index-attached-prop">index</a></b></b> : int</li>
</ul>
<!-- $$$ObjectModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A <a href="index.html">ObjectModel</a> contains the visual items to be used in a view. When a <a href="index.html">ObjectModel</a> is used in a view, the view does not require a delegate since the <a href="index.html">ObjectModel</a> already contains the visual delegate (items).</p>
<p>An item can determine its index within the model via the <a href="#index-attached-prop">index</a> attached property.</p>
<p>The example below places three colored rectangles in a ListView.</p>
<pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
import <span class="type">QtQml</span><span class="operator">.</span>Models <span class="number">2.1</span>
Rectangle {
ObjectModel {
id: itemModel
Rectangle { height: <span class="number">30</span>; width: <span class="number">80</span>; color: <span class="string">&quot;red&quot;</span> }
Rectangle { height: <span class="number">30</span>; width: <span class="number">80</span>; color: <span class="string">&quot;green&quot;</span> }
Rectangle { height: <span class="number">30</span>; width: <span class="number">80</span>; color: <span class="string">&quot;blue&quot;</span> }
}
ListView {
anchors<span class="operator">.</span>fill: parent
model: itemModel
}
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/238e28cc-ec83-4a27-a127-02d7deef747d-../QtQml.ObjectModel/images/visualitemmodel.png" alt="" /></p><p><b>See also </b>Qt Quick Examples - Views.</p>
<!-- @@@ObjectModel -->
<h2>Property Documentation</h2>
<!-- $$$count -->
<table class="qmlname"><tr valign="top" id="count-prop"><td class="tblQmlPropNode"><p><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>The number of items in the model. This property is readonly.</p>
<!-- @@@count -->
<br/>
<h2>Attached Property Documentation</h2>
<!-- $$$index -->
<table class="qmlname"><tr valign="top" id="index-attached-prop"><td class="tblQmlPropNode"><p><span class="name">ObjectModel.index</span> : <span class="type">int</span></p></td></tr></table><p>This attached property holds the index of this delegate's item within the model.</p>
<p>It is attached to each instance of the delegate.</p>
<!-- @@@index -->
<br/>
