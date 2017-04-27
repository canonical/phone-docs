---
Title: QtLocation.ReviewModel
---

# QtLocation.ReviewModel

<span class="subtitle"></span>
<!-- $$$ReviewModel-brief -->
<p>Provides access to reviews of a Place. More...</p>
<!-- @@@ReviewModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtLocation 5.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt Location 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#batchSize-prop">batchSize</a></b></b> : int</li>
<li class="fn"><b><b><a href="#place-prop">place</a></b></b> : Place</li>
<li class="fn"><b><b><a href="#totalCount-prop">totalCount</a></b></b> : int</li>
</ul>
<!-- $$$ReviewModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="#totalCount-prop">totalCount</a> property.</p>
<p>To use the <a href="#">ReviewModel</a> model and a delegate.</p>
<pre class="qml">    <span class="type">ListView</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">model</span>: <span class="name">place</span>.<span class="name">reviewModel</span>
<span class="name">delegate</span>: <span class="name">ReviewDelegate</span> { }
}</pre>
<p>The model returns data for the following roles:</p>
<table class="generic">
<thead><tr class="qt-style"><th >Role</th><th >Type</th><th >Description</th></tr></thead>
<tr valign="top"><td >dateTime</td><td >datetime</td><td >The date and time that the review was posted.</td></tr>
<tr valign="top"><td >text</td><td >string</td><td >The review's textual description of the place. It can be either rich (HTML based) text or plain text depending on the provider.</td></tr>
<tr valign="top"><td >language</td><td >string</td><td >The language that the review is written in.</td></tr>
<tr valign="top"><td >rating</td><td >real</td><td >The rating that the reviewer gave to the place.</td></tr>
<tr valign="top"><td >reviewId</td><td >string</td><td >The identifier of the review.</td></tr>
<tr valign="top"><td >title</td><td >string</td><td >The title of the review.</td></tr>
<tr valign="top"><td >supplier</td><td ><a href="QtLocation.Supplier.md">Supplier</a></td><td >The supplier of the review.</td></tr>
<tr valign="top"><td >user</td><td ><a href="QtLocation.User.md">User</a></td><td >The user who contributed the review.</td></tr>
<tr valign="top"><td >attribution</td><td >string</td><td >Attribution text which must be displayed when displaying the review.</td></tr>
</table>
<!-- @@@ReviewModel -->
<h2>Property Documentation</h2>
<!-- $$$batchSize -->
<table class="qmlname"><tr valign="top" id="batchSize-prop"><td class="tblQmlPropNode"><p><span class="name">batchSize</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the batch size to use when fetching more reviews.</p>
<!-- @@@batchSize -->
<br/>
<!-- $$$place -->
<table class="qmlname"><tr valign="top" id="place-prop"><td class="tblQmlPropNode"><p><span class="name">place</span> : <span class="type"><a href="QtLocation.Place.md">Place</a></span></p></td></tr></table><p>This property holds the Place that the reviews are for.</p>
<!-- @@@place -->
<br/>
<!-- $$$totalCount -->
<table class="qmlname"><tr valign="top" id="totalCount-prop"><td class="tblQmlPropNode"><p><span class="name">totalCount</span> : <span class="type">int</span></p></td></tr></table><p>This property holds the total number of reviews for the place.</p>
<!-- @@@totalCount -->
<br/>
