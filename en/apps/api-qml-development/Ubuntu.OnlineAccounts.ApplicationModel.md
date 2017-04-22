---
Title: Ubuntu.OnlineAccounts.ApplicationModel
---

# Ubuntu.OnlineAccounts.ApplicationModel

<span class="subtitle"></span>
<!-- $$$ApplicationModel-brief -->
<p>A model of the applications using online accounts. More...</p>
<!-- @@@ApplicationModel -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.OnlineAccounts 0.1</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#count-prop">count</a></b></b> : int</li>
<li class="fn"><b><b><a href="#service-prop">service</a></b></b> : string</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">variant <b><b><a href="#get-method">get</a></b></b>(int <i>row</i>, string <i>roleName</i>)</li>
</ul>
<!-- $$$ApplicationModel-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The <a href="index.html">ApplicationModel</a> is a model representing the applications using online accounts installed on the system.</p>
<p>In the current implementation, the model is valid only if its <a href="#service-prop">ApplicationModel::service</a> property is set to a valid service ID.</p>
<p>The model defines the following roles:</p>
<ul>
<li><code>applicationId</code> is the unique identifier of the application</li>
<li><code>displayName</code> is the application display name</li>
<li><code>iconName</code> is the name of the application icon</li>
<li><code>serviceUsage</code> is a description of how the application uses the service; this is set to a valid value only if the <a href="#service-prop">ApplicationModel::service</a> property is set to a valid service ID.</li>
<li><code>application</code> is the Application object</li>
<li><code>translations</code>, the localization domain for translating the <code>serviceUsage</code> field</li>
</ul>
<!-- @@@ApplicationModel -->
<h2>Property Documentation</h2>
<!-- $$$count -->
<table class="qmlname"><tr valign="top" id="count-prop"><td class="tblQmlPropNode"><p><span class="name">count</span> : <span class="type">int</span></p></td></tr></table><p>The number of items in the model.</p>
<!-- @@@count -->
<br/>
<!-- $$$service -->
<table class="qmlname"><tr valign="top" id="service-prop"><td class="tblQmlPropNode"><p><span class="name">service</span> : <span class="type">string</span></p></td></tr></table><p>If set, the model will list only those applications which can use this specific service.</p>
<!-- @@@service -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$get -->
<table class="qmlname"><tr valign="top" id="get-method"><td class="tblQmlFuncNode"><p><span class="type">variant</span> <span class="name">get</span>(<span class="type">int</span><i> row</i>, <span class="type">string</span><i> roleName</i>)</p></td></tr></table><p>Returns the data at <i>row</i> for the role <i>roleName</i>.</p>
<!-- @@@get -->
<br/>
