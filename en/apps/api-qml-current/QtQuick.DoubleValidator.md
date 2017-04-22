---
Title: QtQuick.DoubleValidator
---

# QtQuick.DoubleValidator

<span class="subtitle"></span>
<!-- $$$DoubleValidator-brief -->
<p>Defines a validator for non-integer numbers More...</p>
<!-- @@@DoubleValidator -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQuick 2.4</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#bottom-prop">bottom</a></b></b> : real</li>
<li class="fn"><b><b><a href="#decimals-prop">decimals</a></b></b> : int</li>
<li class="fn"><b><b><a href="#locale-prop">locale</a></b></b> : string</li>
<li class="fn"><b><b><a href="#notation-prop">notation</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#top-prop">top</a></b></b> : real</li>
</ul>
<!-- $$$DoubleValidator-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">DoubleValidator</a> type provides a validator for non-integer numbers.</p>
<p>Input is accepted if it contains a double that is within the valid range and is in the correct format.</p>
<p>Input is accepected but invalid if it contains a double that is outside the range or is in the wrong format; e.g&#x2e; with too many digits after the decimal point or is empty.</p>
<p>Input is rejected if it is not a double.</p>
<p>Note: If the valid range consists of just positive doubles (e.g&#x2e; 0.0 to 100.0) and input is a negative double then it is rejected. If <a href="#notation-prop">notation</a> is set to <a href="index.html">DoubleValidator</a>.StandardNotation, and the input contains more digits before the decimal point than a double in the valid range may have, it is also rejected. If <a href="#notation-prop">notation</a> is <a href="index.html">DoubleValidator</a>.ScientificNotation, and the input is not in the valid range, it is accecpted but invalid. The value may yet become valid by changing the exponent.</p>
<!-- @@@DoubleValidator -->
<h2>Property Documentation</h2>
<!-- $$$bottom -->
<table class="qmlname"><tr valign="top" id="bottom-prop"><td class="tblQmlPropNode"><p><span class="name">bottom</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the validator's minimum acceptable value. By default, this property contains a value of -infinity.</p>
<!-- @@@bottom -->
<br/>
<!-- $$$decimals -->
<table class="qmlname"><tr valign="top" id="decimals-prop"><td class="tblQmlPropNode"><p><span class="name">decimals</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the validator's maximum number of digits after the decimal point. By default, this property contains a value of 1000.</p>
<!-- @@@decimals -->
<br/>
<!-- $$$locale -->
<table class="qmlname"><tr valign="top" id="locale-prop"><td class="tblQmlPropNode"><p><span class="name">locale</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the locale used to interpret the number.</p>
<p><b>See also </b>Qt.locale().</p>
<!-- @@@locale -->
<br/>
<!-- $$$notation -->
<table class="qmlname"><tr valign="top" id="notation-prop"><td class="tblQmlPropNode"><p><span class="name">notation</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the notation of how a string can describe a number.</p>
<p>The possible values for this property are:</p>
<ul>
<li><a href="index.html">DoubleValidator</a>.StandardNotation</li>
<li><a href="index.html">DoubleValidator</a>.ScientificNotation (default)</li>
</ul>
<p>If this property is set to <a href="index.html">DoubleValidator</a>.ScientificNotation, the written number may have an exponent part (e.g&#x2e; 1.5E-2).</p>
<!-- @@@notation -->
<br/>
<!-- $$$top -->
<table class="qmlname"><tr valign="top" id="top-prop"><td class="tblQmlPropNode"><p><span class="name">top</span> : <span class="type">real</span></p></td></tr></table><p>This property holds the validator's maximum acceptable value. By default, this property contains a value of infinity.</p>
<!-- @@@top -->
<br/>
