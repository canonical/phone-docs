---
Title: QtQuick.FontMetrics
---

# QtQuick.FontMetrics

<span class="subtitle"></span>
<!-- $$$FontMetrics-brief -->
<p>Provides metrics for a given font More...</p>
<!-- @@@FontMetrics -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 5.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#ascent-prop">ascent</a></b></b> : real</li>
<li class="fn"><b><b><a href="#averageCharacterWidth-prop">averageCharacterWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#descent-prop">descent</a></b></b> : real</li>
<li class="fn"><b><b><a href="#font-prop">font</a></b></b> : font</li>
<li class="fn"><b><b><a href="#height-prop">height</a></b></b> : real</li>
<li class="fn"><b><b><a href="#leading-prop">leading</a></b></b> : real</li>
<li class="fn"><b><b><a href="#lineSpacing-prop">lineSpacing</a></b></b> : real</li>
<li class="fn"><b><b><a href="#lineWidth-prop">lineWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#maximumCharacterWidth-prop">maximumCharacterWidth</a></b></b> : real</li>
<li class="fn"><b><b><a href="#minimumLeftBearing-prop">minimumLeftBearing</a></b></b> : real</li>
<li class="fn"><b><b><a href="#minimumRightBearing-prop">minimumRightBearing</a></b></b> : real</li>
<li class="fn"><b><b><a href="#overlinePosition-prop">overlinePosition</a></b></b> : real</li>
<li class="fn"><b><b><a href="#strikeOutPosition-prop">strikeOutPosition</a></b></b> : real</li>
<li class="fn"><b><b><a href="#underlinePosition-prop">underlinePosition</a></b></b> : real</li>
<li class="fn"><b><b><a href="#xHeight-prop">xHeight</a></b></b> : real</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">qreal <b><b><a href="#advanceWidth-method">advanceWidth</a></b></b>(string <i>text</i>)</li>
<li class="fn">rect <b><b><a href="#boundingRect-method">boundingRect</a></b></b>(string <i>text</i>)</li>
<li class="fn">string <b><b><a href="#elidedText-method">elidedText</a></b></b>(string <i>text</i>)</li>
<li class="fn">rect <b><b><a href="#tightBoundingRect-method">tightBoundingRect</a></b></b>(string <i>text</i>)</li>
</ul>
<!-- $$$FontMetrics-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">FontMetrics</a> calculates the size of characters and strings for a given font.</p>
<p>It provides a subset of the C++ QFontMetricsF API, with the added ability to change the font that is used for calculations via the <a href="#font-prop">font</a> property.</p>
<pre class="cpp">FontMetrics {
id: fontMetrics
font<span class="operator">.</span>family: <span class="string">&quot;Arial&quot;</span>
}
Rectangle {
width: fontMetrics<span class="operator">.</span>height <span class="operator">*</span> <span class="number">4</span>
height: fontMetrics<span class="operator">.</span>height <span class="operator">*</span> <span class="number">2</span>
}</pre>
<p><b>See also </b>QFontMetricsF and <a href="QtQuick.TextMetrics.md">TextMetrics</a>.</p>
<!-- @@@FontMetrics -->
<h2>Property Documentation</h2>
<!-- $$$ascent -->
<table class="qmlname"><tr valign="top" id="ascent-prop"><td class="tblQmlPropNode"><p><span class="name">ascent</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the ascent of the font.</p>
<p><b>See also </b>QFontMetricsF::ascent(), <a href="#descent-prop">descent</a>, and <a href="#height-prop">height</a>.</p>
<!-- @@@ascent -->
<br/>
<!-- $$$averageCharacterWidth -->
<table class="qmlname"><tr valign="top" id="averageCharacterWidth-prop"><td class="tblQmlPropNode"><p><span class="name">averageCharacterWidth</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the average width of glyphs in the font.</p>
<p><b>See also </b>QFontMetricsF::averageCharWidth().</p>
<!-- @@@averageCharacterWidth -->
<br/>
<!-- $$$descent -->
<table class="qmlname"><tr valign="top" id="descent-prop"><td class="tblQmlPropNode"><p><span class="name">descent</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the descent of the font.</p>
<p><b>See also </b>QFontMetricsF::descent(), <a href="#ascent-prop">ascent</a>, and <a href="#height-prop">height</a>.</p>
<!-- @@@descent -->
<br/>
<!-- $$$font -->
<table class="qmlname"><tr valign="top" id="font-prop"><td class="tblQmlPropNode"><p><span class="name">font</span> : <span class="type"><a href="#font-prop">font</a></span></p></td></tr></table><p>This property holds the font used for the metrics calculations.</p>
<!-- @@@font -->
<br/>
<!-- $$$height -->
<table class="qmlname"><tr valign="top" id="height-prop"><td class="tblQmlPropNode"><p><span class="name">height</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the height of the font.</p>
<p><b>See also </b>QFontMetricsF::height().</p>
<!-- @@@height -->
<br/>
<!-- $$$leading -->
<table class="qmlname"><tr valign="top" id="leading-prop"><td class="tblQmlPropNode"><p><span class="name">leading</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the leading of the font.</p>
<p><b>See also </b>QFontMetricsF::leading().</p>
<!-- @@@leading -->
<br/>
<!-- $$$lineSpacing -->
<table class="qmlname"><tr valign="top" id="lineSpacing-prop"><td class="tblQmlPropNode"><p><span class="name">lineSpacing</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the distance from one base line to the next.</p>
<p><b>See also </b>QFontMetricsF::lineSpacing().</p>
<!-- @@@lineSpacing -->
<br/>
<!-- $$$lineWidth -->
<table class="qmlname"><tr valign="top" id="lineWidth-prop"><td class="tblQmlPropNode"><p><span class="name">lineWidth</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the width of the underline and strikeout lines, adjusted for the point size of the font.</p>
<p><b>See also </b>QFontMetricsF::lineWidth().</p>
<!-- @@@lineWidth -->
<br/>
<!-- $$$maximumCharacterWidth -->
<table class="qmlname"><tr valign="top" id="maximumCharacterWidth-prop"><td class="tblQmlPropNode"><p><span class="name">maximumCharacterWidth</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the width of the widest character in the font.</p>
<p><b>See also </b>QFontMetricsF::maxWidth().</p>
<!-- @@@maximumCharacterWidth -->
<br/>
<!-- $$$minimumLeftBearing -->
<table class="qmlname"><tr valign="top" id="minimumLeftBearing-prop"><td class="tblQmlPropNode"><p><span class="name">minimumLeftBearing</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the minimum left bearing of the font.</p>
<p><b>See also </b>QFontMetricsF::minLeftBearing().</p>
<!-- @@@minimumLeftBearing -->
<br/>
<!-- $$$minimumRightBearing -->
<table class="qmlname"><tr valign="top" id="minimumRightBearing-prop"><td class="tblQmlPropNode"><p><span class="name">minimumRightBearing</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the minimum right bearing of the font.</p>
<p><b>See also </b>QFontMetricsF::minRightBearing().</p>
<!-- @@@minimumRightBearing -->
<br/>
<!-- $$$overlinePosition -->
<table class="qmlname"><tr valign="top" id="overlinePosition-prop"><td class="tblQmlPropNode"><p><span class="name">overlinePosition</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the distance from the base line to where an overline should be drawn.</p>
<p><b>See also </b>QFontMetricsF::overlinePos(), <a href="#underlinePosition-prop">underlinePosition</a>, and <a href="#strikeOutPosition-prop">strikeOutPosition</a>.</p>
<!-- @@@overlinePosition -->
<br/>
<!-- $$$strikeOutPosition -->
<table class="qmlname"><tr valign="top" id="strikeOutPosition-prop"><td class="tblQmlPropNode"><p><span class="name">strikeOutPosition</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the distance from the base line to where the strikeout line should be drawn.</p>
<p><b>See also </b>QFontMetricsF::strikeOutPos(), <a href="#overlinePosition-prop">overlinePosition</a>, and <a href="#underlinePosition-prop">underlinePosition</a>.</p>
<!-- @@@strikeOutPosition -->
<br/>
<!-- $$$underlinePosition -->
<table class="qmlname"><tr valign="top" id="underlinePosition-prop"><td class="tblQmlPropNode"><p><span class="name">underlinePosition</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the distance from the base line to where an underscore should be drawn.</p>
<p><b>See also </b>QFontMetricsF::underlinePos(), <a href="#overlinePosition-prop">overlinePosition</a>, and <a href="#strikeOutPosition-prop">strikeOutPosition</a>.</p>
<!-- @@@underlinePosition -->
<br/>
<!-- $$$xHeight -->
<table class="qmlname"><tr valign="top" id="xHeight-prop"><td class="tblQmlPropNode"><p><span class="name">xHeight</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the 'x' height of the font.</p>
<p><b>See also </b>QFontMetricsF::xHeight().</p>
<!-- @@@xHeight -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$advanceWidth -->
<table class="qmlname"><tr valign="top" id="advanceWidth-method"><td class="tblQmlFuncNode"><p><span class="type">qreal</span> <span class="name">advanceWidth</span>(<span class="type">string</span><i> text</i>)</p></td></tr></table><p>This method returns the advance in pixels of the characters in <i>text</i>. This is the distance from the position of the string to where the next string should be drawn.</p>
<p>This method is offered as an imperative alternative to the advanceWidth property of TextMetrics.</p>
<p><b>See also </b>QFontMetricsF::width() and height().</p>
<!-- @@@advanceWidth -->
<br/>
<!-- $$$boundingRect -->
<table class="qmlname"><tr valign="top" id="boundingRect-method"><td class="tblQmlFuncNode"><p><span class="type">rect</span> <span class="name">boundingRect</span>(<span class="type">string</span><i> text</i>)</p></td></tr></table><p>This method returns the bounding rectangle of the characters in the string specified by <i>text</i>.</p>
<p>This method is offered as an imperative alternative to the boundingRect property of TextMetrics.</p>
<p><b>See also </b>QFontMetricsF::boundingRect() and <a href="#tightBoundingRect-method">tightBoundingRect()</a>.</p>
<!-- @@@boundingRect -->
<br/>
<!-- $$$elidedText -->
<table class="qmlname"><tr valign="top" id="elidedText-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">elidedText</span>(<span class="type">string</span><i> text</i>)</p></td></tr></table><!-- @@@elidedText -->
<br/>
<!-- $$$tightBoundingRect -->
<table class="qmlname"><tr valign="top" id="tightBoundingRect-method"><td class="tblQmlFuncNode"><p><span class="type">rect</span> <span class="name">tightBoundingRect</span>(<span class="type">string</span><i> text</i>)</p></td></tr></table><p>This method returns a tight bounding rectangle around the characters in the string specified by <i>text</i>.</p>
<p>This method is offered as an imperative alternative to the tightBoundingRect property of TextMetrics.</p>
<p><b>See also </b>QFontMetricsF::tightBoundingRect() and <a href="#boundingRect-method">boundingRect()</a>.</p>
<!-- @@@tightBoundingRect -->
<br/>
