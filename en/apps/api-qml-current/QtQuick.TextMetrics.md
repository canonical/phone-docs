---
Title: QtQuick.TextMetrics
---

# QtQuick.TextMetrics

<span class="subtitle"></span>
<!-- $$$TextMetrics-brief -->
<p>Provides metrics for a given font and text More...</p>
<!-- @@@TextMetrics -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#advanceWidth-prop">advanceWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#boundingRect-prop">boundingRect</a></b></b> : rect</li>
<li class="fn"><b><b><a href="#elide-prop">elide</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#elideWidth-prop">elideWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#font-prop">font</a></b></b> : font</li>
<li class="fn"><b><b><a href="#height-prop">height</a></b></b> : real</li>
<li class="fn"><b><b><a href="#text-prop">text</a></b></b> : string</li>
<li class="fn"><b><b><a href="#tightBoundingRect-prop">tightBoundingRect</a></b></b> : rect</li>
<li class="fn"><b><b><a href="#width-prop">width</a></b></b> : real</li>
</ul>
<!-- $$$TextMetrics-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">TextMetrics</a> calculates various properties of a given string of text for a particular font.</p>
<p>It provides a declarative API for the functions in QFontMetricsF which take arguments.</p>
<pre class="cpp">TextMetrics {
id: textMetrics
font<span class="operator">.</span>family: <span class="string">&quot;Arial&quot;</span>
elide: Text<span class="operator">.</span>ElideMiddle
elideWidth: <span class="number">100</span>
text: <span class="string">&quot;Hello World&quot;</span>
}
MyItem {
text: textMetrics<span class="operator">.</span>elidedText
}</pre>
<p><b>See also </b>QFontMetricsF and <a href="QtQuick.FontMetrics.md">FontMetrics</a>.</p>
<!-- @@@TextMetrics -->
<h2>Property Documentation</h2>
<!-- $$$advanceWidth -->
<table class="qmlname"><tr valign="top" id="advanceWidth-prop"><td class="tblQmlPropNode"><p><span class="name">advanceWidth</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the advance in pixels of the characters in <a href="QtQuick.qtquick-releasenotes.md#text">text</a>. This is the distance from the position of the string to where the next string should be drawn.</p>
<p><b>See also </b>QFontMetricsF::width().</p>
<!-- @@@advanceWidth -->
<br/>
<!-- $$$boundingRect -->
<table class="qmlname"><tr valign="top" id="boundingRect-prop"><td class="tblQmlPropNode"><p><span class="name">boundingRect</span> : <span class="type">rect</span></p></td></tr></table><p>This property holds the bounding rectangle of the characters in the string specified by <a href="QtQuick.qtquick-releasenotes.md#text">text</a>.</p>
<p><b>See also </b>QFontMetricsF::boundingRect() and <a href="#tightBoundingRect-prop">tightBoundingRect</a>.</p>
<!-- @@@boundingRect -->
<br/>
<!-- $$$elide -->
<table class="qmlname"><tr valign="top" id="elide-prop"><td class="tblQmlPropNode"><p><span class="name">elide</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the elide mode of the text. This determines the position in which the string is elided. The possible values are:</p>
<ul>
<li><code>Qt::ElideNone</code> - No eliding; this is the default value.</li>
<li><code>Qt::ElideLeft</code> - For example: &quot;..&#x2e;World&quot;</li>
<li><code>Qt::ElideMiddle</code> - For example: &quot;He..&#x2e;ld&quot;</li>
<li><code>Qt::ElideRight</code> - For example: &quot;Hello..&#x2e;&quot;</li>
</ul>
<p><b>See also </b><a href="#elideWidth-prop">elideWidth</a> and elidedText.</p>
<!-- @@@elide -->
<br/>
<!-- $$$elideWidth -->
<table class="qmlname"><tr valign="top" id="elideWidth-prop"><td class="tblQmlPropNode"><p><span class="name">elideWidth</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the largest width the text can have (in pixels) before eliding will occur.</p>
<p><b>See also </b><a href="#elide-prop">elide</a> and elidedText.</p>
<!-- @@@elideWidth -->
<br/>
<!-- $$$font -->
<table class="qmlname"><tr valign="top" id="font-prop"><td class="tblQmlPropNode"><p><span class="name">font</span> : <span class="type"><a href="#font-prop">font</a></span></p></td></tr></table><p>This property holds the font used for the metrics calculations.</p>
<!-- @@@font -->
<br/>
<!-- $$$height -->
<table class="qmlname"><tr valign="top" id="height-prop"><td class="tblQmlPropNode"><p><span class="name">height</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the height of the bounding rectangle of the characters in the string specified by <a href="QtQuick.qtquick-releasenotes.md#text">text</a>. It is equivalent to:</p>
<pre class="cpp">textMetrics<span class="operator">.</span>boundingRect<span class="operator">.</span>height</pre>
<p><b>See also </b><a href="#boundingRect-prop">boundingRect</a>.</p>
<!-- @@@height -->
<br/>
<!-- $$$text -->
<table class="qmlname"><tr valign="top" id="text-prop"><td class="tblQmlPropNode"><p><span class="name">text</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the text used for the metrics calculations.</p>
<!-- @@@text -->
<br/>
<!-- $$$tightBoundingRect -->
<table class="qmlname"><tr valign="top" id="tightBoundingRect-prop"><td class="tblQmlPropNode"><p><span class="name">tightBoundingRect</span> : <span class="type">rect</span></p></td></tr></table><p>This property holds a tight bounding rectangle around the characters in the string specified by <a href="QtQuick.qtquick-releasenotes.md#text">text</a>.</p>
<p><b>See also </b>QFontMetricsF::tightBoundingRect() and <a href="#boundingRect-prop">boundingRect</a>.</p>
<!-- @@@tightBoundingRect -->
<br/>
<!-- $$$width -->
<table class="qmlname"><tr valign="top" id="width-prop"><td class="tblQmlPropNode"><p><span class="name">width</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the width of the bounding rectangle of the characters in the string specified by <a href="QtQuick.qtquick-releasenotes.md#text">text</a>. It is equivalent to:</p>
<pre class="cpp">textMetrics<span class="operator">.</span>boundingRect<span class="operator">.</span>width</pre>
<p><b>See also </b><a href="#boundingRect-prop">boundingRect</a>.</p>
<!-- @@@width -->
<br/>
