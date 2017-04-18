---
Title: QtLocation.PlaceAttribute
---

# QtLocation.PlaceAttribute

<span class="subtitle"></span>
<!-- $$$PlaceAttribute-brief -->
<p>The PlaceAttribute type holds generic place attribute information. More...</p>
<!-- @@@PlaceAttribute -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="..//QtLocation.PlaceAttribute.md#attribute-prop">attribute</a></b></b> : QPlaceAttribute</li>
<li class="fn"><b><b><a href="..//QtLocation.PlaceAttribute.md#label-prop">label</a></b></b> : string</li>
<li class="fn"><b><b><a href="..//QtLocation.PlaceAttribute.md#text-prop">text</a></b></b> : string</li>
</ul>
<!-- $$$PlaceAttribute-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>A place attribute stores an additional piece of information about a <a href="..//QtLocation.location-cpp-qml.md#place">Place</a> that is not otherwise exposed through the <a href="..//QtLocation.location-cpp-qml.md#place">Place</a> type. A <a href="..//QtLocation.location-cpp-qml.md#placeattribute">PlaceAttribute</a> is a textual piece of data, accessible through the <a href="..//QtLocation.PlaceAttribute.md#text-prop">text</a> property, and a <a href="..//QtLocation.PlaceAttribute.md#label-prop">label</a>. Both the <a href="..//QtLocation.PlaceAttribute.md#text-prop">text</a> and <a href="..//QtLocation.PlaceAttribute.md#label-prop">label</a> properties are intended to be displayed to the user. PlaceAttributes are stored in an <a href="..//QtLocation.ExtendedAttributes.md">ExtendedAttributes</a> map with a unique key.</p>
<p>The following example shows how to display all attributes in a list:</p>
<pre class="qml">import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
<span class="type">ListView</span> {
<span class="name">model</span>: <span class="name">place</span>.<span class="name">extendedAttributes</span>.<span class="name">keys</span>()
<span class="name">delegate</span>: <span class="name">Text</span> {
<span class="name">text</span>: <span class="string">&quot;&lt;b&gt;&quot;</span> <span class="operator">+</span> <span class="name">place</span>.<span class="name">extendedAttributes</span>[<span class="name">modelData</span>].<span class="name">label</span> <span class="operator">+</span> <span class="string">&quot;: &lt;/b&gt;&quot;</span> <span class="operator">+</span>
<span class="name">place</span>.<span class="name">extendedAttributes</span>[<span class="name">modelData</span>].<span class="name">text</span>
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
<!-- @@@PlaceAttribute -->
<h2>Property Documentation</h2>
<!-- $$$attribute -->
<table class="qmlname"><tr valign="top" id="attribute-prop"><td class="tblQmlPropNode"><p><span class="name">attribute</span> : <span class="type">QPlaceAttribute</span></p></td></tr></table><p>For details on how to use this property to interface between C++ and QML see &quot;Interfaces between C++ and QML Code&quot;.</p>
<!-- @@@attribute -->
<br/>
<!-- $$$label -->
<table class="qmlname"><tr valign="top" id="label-prop"><td class="tblQmlPropNode"><p><span class="name">label</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the attribute label which is a user visible string describing the attribute.</p>
<!-- @@@label -->
<br/>
<!-- $$$text -->
<table class="qmlname"><tr valign="top" id="text-prop"><td class="tblQmlPropNode"><p><span class="name">text</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the attribute text which can be used to show additional information about the place.</p>
<!-- @@@text -->
<br/>
