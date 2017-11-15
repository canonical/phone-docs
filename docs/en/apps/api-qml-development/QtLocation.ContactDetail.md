---
Title: QtLocation.ContactDetail
---

# QtLocation.ContactDetail

<span class="subtitle"></span>
<!-- $$$ContactDetail-brief -->
<p>The ContactDetail type holds a contact detail such as a phone number or a website address. More...</p>
<!-- @@@ContactDetail -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#contactDetail-prop">contactDetail</a></b></b> : QPlaceContactDetail</li>
<li class="fn"><b><b><a href="#label-prop">label</a></b></b> : string</li>
<li class="fn"><b><b><a href="#value-prop">value</a></b></b> : string</li>
</ul>
<!-- $$$ContactDetail-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="#value-prop">value</a> representing the actual contact detail.</p>
<h2 id="examples">Examples</h2>
<p>The following example demonstrates how to assign a single phone number to a place in JavaScript:</p>
<pre class="qml"><span class="keyword">function</span> <span class="name">writeSingle</span>() {
var <span class="name">phoneNumber</span> = <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtLocation 5.3; ContactDetail {}'</span>, <span class="name">place</span>);
<span class="name">phoneNumber</span>.<span class="name">label</span> <span class="operator">=</span> <span class="string">&quot;Phone&quot;</span>;
<span class="name">phoneNumber</span>.<span class="name">value</span> <span class="operator">=</span> <span class="string">&quot;555-5555&quot;</span>
<span class="name">place</span>.<span class="name">contactDetails</span>.<span class="name">phone</span> <span class="operator">=</span> <span class="name">phoneNumber</span>;
}</pre>
<p>The following demonstrates how to assign multiple phone numbers to a place in JavaScript:</p>
<pre class="qml"><span class="keyword">function</span> <span class="name">writeMultiple</span>() {
var <span class="name">bob</span> = <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtLocation 5.3; ContactDetail {}'</span>, <span class="name">place</span>);
<span class="name">bob</span>.<span class="name">label</span> <span class="operator">=</span> <span class="string">&quot;Bob&quot;</span>;
<span class="name">bob</span>.<span class="name">value</span> <span class="operator">=</span> <span class="string">&quot;555-5555&quot;</span>
var <span class="name">alice</span> = <span class="name">Qt</span>.<span class="name">createQmlObject</span>(<span class="string">'import QtLocation 5.3; ContactDetail {}'</span>, <span class="name">place</span>);
<span class="name">alice</span>.<span class="name">label</span> <span class="operator">=</span> <span class="string">&quot;Alice&quot;</span>;
<span class="name">alice</span>.<span class="name">value</span> <span class="operator">=</span> <span class="string">&quot;555-8745&quot;</span>
var <span class="name">numbers</span> = new <span class="name">Array</span>();
<span class="name">numbers</span>.<span class="name">push</span>(<span class="name">bob</span>);
<span class="name">numbers</span>.<span class="name">push</span>(<span class="name">alice</span>);
<span class="name">place</span>.<span class="name">contactDetails</span>.<span class="name">phone</span> <span class="operator">=</span> <span class="name">numbers</span>;
}</pre>
<p>Note, due to limitations of the QQmlPropertyMap, it is not possible to declaratively specify the contact details in QML, it can only be accomplished via JavaScript.</p>
<!-- @@@ContactDetail -->
<h2>Property Documentation</h2>
<!-- $$$contactDetail -->
<table class="qmlname"><tr valign="top" id="contactDetail-prop"><td class="tblQmlPropNode"><p><span class="name">contactDetail</span> : <span class="type">QPlaceContactDetail</span></p></td></tr></table><p>For details on how to use this property to interface between C++ and QML see &quot;Interfaces between C++ and QML Code&quot;.</p>
<!-- @@@contactDetail -->
<br/>
<!-- $$$label -->
<table class="qmlname"><tr valign="top" id="label-prop"><td class="tblQmlPropNode"><p><span class="name">label</span> : <span class="type">string</span></p></td></tr></table><p>This property holds a label describing the contact detail.</p>
<p>The label can potentially be localized. The language is dependent on the entity that sets it, typically this is the <a href="QtLocation.location-places-qml.md#plugin">Plugin</a>. The <a href="QtLocation.Plugin.md#locales-prop">Plugin::locales</a> property defines what language is used.</p>
<!-- @@@label -->
<br/>
<!-- $$$value -->
<table class="qmlname"><tr valign="top" id="value-prop"><td class="tblQmlPropNode"><p><span class="name">value</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the value of the contact detail which may be a phone number, an email address, a website url and so on.</p>
<!-- @@@value -->
<br/>
