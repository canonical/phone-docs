---
Title: QtLocation.ContactDetails
---

# QtLocation.ContactDetails

<span class="subtitle"></span>
<!-- $$$ContactDetails-brief -->
<p>The ContactDetails type holds contact details for a Place. More...</p>
<!-- @@@ContactDetails -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">variant <b><b><a href="QtLocation.ContactDetails.md#keys-method">keys</a></b></b>()</li>
</ul>
<!-- $$$ContactDetails-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="QtLocation.ContactDetails.md">ContactDetails</a> type is a map of <a href="QtLocation.ContactDetail.md">ContactDetail</a> objects. To access contact details in the map use the <a href="QtLocation.ContactDetails.md#keys-method">keys()</a> method to get the list of keys stored in the map and then use the <code>[]</code> operator to access the <a href="QtLocation.ContactDetail.md">ContactDetail</a> items.</p>
<p>The following keys are defined in the API. <a href="QtLocation.location-places-qml.md#plugin">Plugin</a> implementations are free to define additional keys.</p>
<ul>
<li>phone</li>
<li>fax</li>
<li>email</li>
<li>website</li>
</ul>
<p><a href="QtLocation.ContactDetails.md">ContactDetails</a> instances are only ever used in the context of <a href="QtLocation.location-cpp-qml.md#place">Places</a>. It is not possible to create a <a href="QtLocation.ContactDetails.md">ContactDetails</a> instance directly or re-assign <a href="QtLocation.ContactDetails.md">ContactDetails</a> instances to <a href="QtLocation.location-cpp-qml.md#place">Places</a>. Modification of <a href="QtLocation.ContactDetails.md">ContactDetails</a> can only be accomplished via Javascript.</p>
<h2 id="examples">Examples</h2>
<p>The following example shows how to access all <a href="QtLocation.ContactDetail.md">ContactDetails</a> and print them to the console:</p>
<pre class="qml">import QtPositioning 5.2
import QtLocation 5.3
<span class="keyword">function</span> <span class="name">printContactDetails</span>(<span class="name">contactDetails</span>) {
var <span class="name">keys</span> = <span class="name">contactDetails</span>.<span class="name">keys</span>();
<span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">i</span> = <span class="number">0</span>; <span class="name">i</span> <span class="operator">&lt;</span> <span class="name">keys</span>.<span class="name">length</span>; ++<span class="name">i</span>) {
var <span class="name">contactList</span> = <span class="name">contactDetails</span>[<span class="name">keys</span>[<span class="name">i</span>]];
<span class="keyword">for</span> (<span class="keyword">var</span> <span class="name">j</span> = <span class="number">0</span>; <span class="name">j</span> <span class="operator">&lt;</span> <span class="name">contactList</span>.<span class="name">length</span>; ++<span class="name">j</span>) {
<span class="name">console</span>.<span class="name">log</span>(<span class="name">contactList</span>[<span class="name">j</span>].<span class="name">label</span> <span class="operator">+</span> <span class="string">&quot;: &quot;</span> <span class="operator">+</span> <span class="name">contactList</span>[<span class="name">j</span>].<span class="name">value</span>);
}
}
}</pre>
<p>The returned list of contact details is an object list and so can be used directly as a data model. For example, the following demonstrates how to display a list of contact phone numbers in a list view:</p>
<pre class="qml">import QtQuick 2.0
import QtPositioning 5.2
import QtLocation 5.3
<span class="type">ListView</span> {
<span class="name">model</span>: <span class="name">place</span>.<span class="name">contactDetails</span>.<span class="name">phone</span>;
<span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="name">modelData</span>.<span class="name">label</span> <span class="operator">+</span> <span class="string">&quot;: &quot;</span> <span class="operator">+</span> <span class="name">modelData</span>.<span class="name">value</span> }
}</pre>
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
<!-- @@@ContactDetails -->
<h2>Method Documentation</h2>
<!-- $$$keys -->
<table class="qmlname"><tr valign="top" id="keys-method"><td class="tblQmlFuncNode"><p><span class="type">variant</span> <span class="name">keys</span>()</p></td></tr></table><p>Returns an array of contact detail keys currently stored in the map.</p>
<!-- @@@keys -->
<br/>
