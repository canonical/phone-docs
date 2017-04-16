---
Title: QtQml.String
---

# QtQml.String

<span class="subtitle"></span>
<!-- $$$String-brief -->
<p>The String object represents a string value More...</p>
<!-- @@@String -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml 2.2</td></tr></table><ul>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">string <b><b><a href="#arg-method">arg</a></b></b>(value)</li>
</ul>
<!-- $$$String-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The QML String object extends the JS String object with the <a href="#arg-method">arg()</a> function.</p>
<p><b>See also </b><a href="http://www.ecma-international.org/publications/standards/Ecma-262.htm">ECMAScript Language Specification</a>.</p>
<!-- @@@String -->
<h2>Method Documentation</h2>
<!-- $$$arg -->
<table class="qmlname"><tr valign="top" id="arg-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">arg</span>(<span class="type">value</span>)</p></td></tr></table><p>Returns a copy of this string with the lowest numbered place marker replaced by value, i.e&#x2e;, %1, %2, ..&#x2e;, %99. The following example prints &quot;There are 20 items&quot;</p>
<pre class="cpp">var message <span class="operator">=</span> <span class="string">&quot;There are %1 items&quot;</span>
var count <span class="operator">=</span> <span class="number">20</span>
console<span class="operator">.</span>log(message<span class="operator">.</span>arg(count))</pre>
<!-- @@@arg -->
<br/>
