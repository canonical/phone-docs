---
Title: QtLocation.ExtendedAttributes
---

# QtLocation.ExtendedAttributes

<span class="subtitle"></span>
<!-- $$$ExtendedAttributes-brief -->
<p>The ExtendedAttributes type holds additional data about a Place. More...</p>
<!-- @@@ExtendedAttributes -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn">void <b><b><a href="..//QtLocation.ExtendedAttributes.md#valueChanged-signal">valueChanged</a></b></b>(string <i>key</i>, variant <i>value</i>)</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">variant <b><b><a href="..//QtLocation.ExtendedAttributes.md#keys-method">keys</a></b></b>()</li>
</ul>
<!-- $$$ExtendedAttributes-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="..//QtLocation.ExtendedAttributes.md">ExtendedAttributes</a> type is a map of <a href="..//QtLocation.location-cpp-qml.md#placeattribute">PlaceAttributes</a>. To access attributes in the map use the <a href="..//QtLocation.ExtendedAttributes.md#keys-method">keys()</a> method to get the list of keys stored in the map and use the <code>[]</code> operator to access the <a href="..//QtLocation.location-cpp-qml.md#placeattribute">PlaceAttribute</a> items.</p>
<p>The following are standard keys that are defined by the API. <a href="..//QtLocation.location-places-qml.md#plugin">Plugin</a> implementations are free to define additional keys. Custom keys should be qualified by a unique prefix to avoid clashes.</p>
<table class="generic">
<thead><tr class="qt-style"><th >key</th><th >description</th></tr></thead>
<tr valign="top"><td >openingHours</td><td >The trading hours of the place</td></tr>
<tr valign="top"><td >payment</td><td >The types of payment the place accepts, for example visa, mastercard.</td></tr>
<tr valign="top"><td >x_provider</td><td >The name of the provider that a place is sourced from</td></tr>
<tr valign="top"><td >x_id_&lt;provider&gt; (for example x_id_nokia)</td><td >An alternative identifier which identifies the place from the perspective of the specified provider.</td></tr>
</table>
<p>Some plugins may not support attributes at all, others may only support a certain set, others still may support a dynamically changing set of attributes over time or even allow attributes to be arbitrarily defined by the client application. The attributes could also vary on a place by place basis, for example one place may have opening hours while another does not. Consult the <a href="..//QtLocation.qtlocation-index.md#plugin-references-and-parameters">plugin references</a> for details.</p>
<p>Some attributes may not be intended to be readable by end users, the label field of such attributes is empty to indicate this fact.</p>
<p><b>Note: </b><a href="..//QtLocation.ExtendedAttributes.md">ExtendedAttributes</a> instances are only ever used in the context of <a href="..//QtLocation.location-cpp-qml.md#place">Place</a>s. It is not possible to create an <a href="..//QtLocation.ExtendedAttributes.md">ExtendedAttributes</a> instance directly or re-assign a <a href="..//QtLocation.location-cpp-qml.md#place">Place</a>'s <a href="..//QtLocation.ExtendedAttributes.md">ExtendedAttributes</a> property. Modification of <a href="..//QtLocation.ExtendedAttributes.md">ExtendedAttributes</a> can only be accomplished via Javascript.</p><p>The following example shows how to access all <a href="..//QtLocation.location-cpp-qml.md#placeattribute">PlaceAttributes</a> and print them to the console:</p>
<pre class="qml">import QtPositioning 5.2
import QtLocation 5.3
<span class="keyword">function</span> <span class="name">printExtendedAttributes</span>(<span class="name">extendedAttributes</span>) {
var <span class="name">keys</span> = <span class="name">extendedAttributes</span>.<span class="name">keys</span>();
<span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&lt;</span> <span class="name">keys</span>.<span class="name">length</span>; ++<span class="name">i</span>) {
var <span class="name">key</span> = <span class="name">keys</span>[<span class="name">i</span>];
<span class="keyword">if</span> (<span class="name">extendedAttributes</span>[<span class="name">key</span>].<span class="name">label</span> <span class="operator">!==</span> <span class="string">&quot;&quot;</span>)
<span class="name">console</span>.<span class="name">log</span>(<span class="name">extendedAttributes</span>[<span class="name">key</span>].<span class="name">label</span> <span class="operator">+</span> <span class="string">&quot;: &quot;</span> <span class="operator">+</span> <span class="name">extendedAttributes</span>[<span class="name">key</span>].<span class="name">text</span>);
}
}</pre>
<p>The following example shows how to assign and modify an attribute:</p>
<pre class="qml"><span class="comment">//assign a new attribute to a place</span>
var <span class="name">smokingAttrib</span> = <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtLocation 5.3; PlaceAttribute {}'</span>, <span class="name">place</span>);
<span class="name">smokingAttrib</span>.<span class="name">label</span> <span class="operator">=</span> <span class="string">&quot;Smoking Allowed&quot;</span>
<span class="name">smokingAttrib</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;No&quot;</span>
<span class="name">place</span>.<span class="name">extendedAttributes</span>.<span class="name">smoking</span> <span class="operator">=</span> <span class="name">smokingAttrib</span>;
<span class="comment">//modify an existing attribute</span>
<span class="name">place</span>.<span class="name">extendedAttributes</span>.<span class="name">smoking</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">&quot;Yes&quot;</span></pre>
<p><b>See also </b><a href="..//QtLocation.location-cpp-qml.md#placeattribute">PlaceAttribute</a> and QQmlPropertyMap.</p>
<!-- @@@ExtendedAttributes -->
<h2>Signal Documentation</h2>
<!-- $$$valueChanged -->
<table class="qmlname"><tr valign="top" id="valueChanged-signal"><td class="tblQmlFuncNode"><p><span class="type">void</span> <span class="name">valueChanged</span>(<span class="type">string</span><i> key</i>, <span class="type">variant</span><i> value</i>)</p></td></tr></table><p>This signal is emitted when the set of attributes changes. <i>key</i> is the key corresponding to the <i>value</i> that was changed.</p>
<p>The corresponding handler is <code>onValueChanged</code>.</p>
<!-- @@@valueChanged -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$keys -->
<table class="qmlname"><tr valign="top" id="keys-method"><td class="tblQmlFuncNode"><p><span class="type">variant</span> <span class="name">keys</span>()</p></td></tr></table><p>Returns an array of place attribute keys currently stored in the map.</p>
<!-- @@@keys -->
<br/>
