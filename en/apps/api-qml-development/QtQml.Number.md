---
Title: QtQml.Number
---

# QtQml.Number

<span class="subtitle"></span>
<!-- $$$Number-brief -->
<p>The Number object provides represents a number value More...</p>
<!-- @@@Number -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml 2.2</td></tr></table><ul>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">string <b><b><a href="#fromLocaleString-method">fromLocaleString</a></b></b>(locale, number)</li>
<li class="fn">string <b><b><a href="#toLocaleCurrencyString-method">toLocaleCurrencyString</a></b></b>(locale, symbol)</li>
<li class="fn">string <b><b><a href="#toLocaleString-method">toLocaleString</a></b></b>(locale, format, precision)</li>
</ul>
<!-- $$$Number-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The QML Number object extends the JS Number object with locale aware functions.</p>
<p><b>See also </b><a href="QtQml.Locale.md">Locale</a>.</p>
<!-- @@@Number -->
<h2>Method Documentation</h2>
<!-- $$$fromLocaleString -->
<table class="qmlname"><tr valign="top" id="fromLocaleString-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">fromLocaleString</span>(<span class="type">locale</span>, <span class="type">number</span>)</p></td></tr></table><p>Returns a Number by parsing <i>number</i> using the conventions of the supplied <i>locale</i>.</p>
<p>If <i>locale</i> is not supplied the default locale will be used.</p>
<p>For example, using the German locale:</p>
<pre class="cpp">var german <span class="operator">=</span> <span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale(<span class="string">&quot;de_DE&quot;</span>);
var d;
d <span class="operator">=</span> Number<span class="operator">.</span>fromLocaleString(german<span class="operator">,</span> <span class="string">&quot;1234,56)   // d == 1234.56
d = Number.fromLocaleString(german, &quot;</span><span class="number">1.234</span><span class="operator">,</span><span class="number">56</span><span class="string">&quot;) // d == 1234.56
d = Number.fromLocaleString(german, &quot;</span><span class="number">1234.56</span><span class="string">&quot;)  // throws exception
d = Number.fromLocaleString(german, &quot;</span><span class="number">1.234</span><span class="string">&quot;)    // d == 1234.0
</span></pre>
<!-- @@@fromLocaleString -->
<br/>
<!-- $$$toLocaleCurrencyString -->
<table class="qmlname"><tr valign="top" id="toLocaleCurrencyString-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">toLocaleCurrencyString</span>(<span class="type">locale</span>, <span class="type">symbol</span>)</p></td></tr></table><p>Converts the Number to a currency using the currency and conventions of the specified <i>locale</i>. If <i>symbol</i> is specified it will be used as the currency symbol.</p>
<p><b>See also </b><a href="QtQml.Locale.md#currencySymbol-method">Locale::currencySymbol()</a>.</p>
<!-- @@@toLocaleCurrencyString -->
<br/>
<!-- $$$toLocaleString -->
<table class="qmlname"><tr valign="top" id="toLocaleString-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">toLocaleString</span>(<span class="type">locale</span>, <span class="type">format</span>, <span class="type">precision</span>)</p></td></tr></table><p>Converts the Number to a string suitable for the specified <i>locale</i> in the specified <i>format</i>, with the specified <i>precision</i>.</p>
<p>Valid formats are:</p>
<ul>
<li>'f' Decimal floating point, e.g&#x2e; 248.65</li>
<li>'e' Scientific notation using e character, e.g&#x2e; 2.4865e+2</li>
<li>'E' Scientific notation using E character, e.g&#x2e; 2.4865E+2</li>
<li>'g' Use the shorter of e or f</li>
<li>'G' Use the shorter of E or f</li>
</ul>
<p>If precision is not specified, the precision will be 2.</p>
<p>If the format is not specified 'f' will be used.</p>
<p>If <i>locale</i> is not specified, the default locale will be used.</p>
<p>The following example shows a number formatted for the German locale:</p>
<pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
Text {
text: <span class="string">&quot;The value is: &quot;</span> <span class="operator">+</span>  Number(<span class="number">4742378.423</span>)<span class="operator">.</span>toLocaleString(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale(<span class="string">&quot;de_DE&quot;</span>))
}</pre>
<p>You can apply toLocaleString() directly to constants, provided the decimal is included in the constant, e.g&#x2e;</p>
<pre class="cpp"><span class="number">123.0.toLocaleString</span>(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale(<span class="string">&quot;de_DE&quot;</span>)) <span class="comment">// OK</span>
<span class="number">123..toLocaleString</span>(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale(<span class="string">&quot;de_DE&quot;</span>))  <span class="comment">// OK</span>
<span class="number">123.toLocaleString</span>(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale(<span class="string">&quot;de_DE&quot;</span>))   <span class="comment">// fails</span></pre>
<!-- @@@toLocaleString -->
<br/>
