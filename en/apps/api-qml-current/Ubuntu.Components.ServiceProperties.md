---
Title: Ubuntu.Components.ServiceProperties
---

# Ubuntu.Components.ServiceProperties

<span class="subtitle"></span>
<!-- $$$ServiceProperties-brief -->
<p>The component enables accessing service properties from QML. More...</p>
<!-- @@@ServiceProperties -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Ubuntu.Components 1.1</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#adaptorInterface-prop">adaptorInterface</a></b></b> : string</li>
<li class="fn"><b><b><a href="#error-prop">error</a></b></b> : string</li>
<li class="fn"><b><b><a href="#path-prop">path</a></b></b> : string</li>
<li class="fn"><b><b><a href="#service-prop">service</a></b></b> : string</li>
<li class="fn"><b><b><a href="#serviceInterface-prop">serviceInterface</a></b></b> : string</li>
<li class="fn"><b><b><a href="#status-prop">status</a></b></b> : enum</li>
<li class="fn"><b><b><a href="#type-prop">type</a></b></b> : enum</li>
</ul>
<!-- $$$ServiceProperties-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The services accessed by the component are ones providing their interfaces through DBus. The component is specialized to read properties exposed by these services, andf to keep these property values up to date. It is not meant to access signals or slots exposed, nor to change the values of the properties watched.</p>
<p>Properties watched should be declared within the body of the component like any other QML property, preferably defining a default value for them. The component will enumerate these properties and will ask the service to provide values for those. When enumerating properties, each property will be checked twice, with the case specified as well as with the first letter capitalized.</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
<span class="type"><a href="index.html">ServiceProperties</a></span> {
<span class="name">service</span>: <span class="string">&quot;org.freenode.AccountsService&quot;</span>
<span class="name">path</span>: <span class="string">&quot;/org/freenode/AccountsService&quot;</span>
<span class="name">serviceInterface</span>: <span class="string">&quot;org.freenode.AccountsService&quot;</span>
<span class="name">adaptorInterface</span>: <span class="string">&quot;com.ubuntu.touch.Accounts.Sound&quot;</span>
<span class="comment">// listing properties to watch</span>
<span class="comment">// each property name existence will be checked against the current case</span>
<span class="comment">// as well as with first character capitalized</span>
property <span class="type">bool</span> <span class="name">incomingCallVibrate</span>: <span class="number">true</span>
}</pre>
<p>Note that there are few properties which must be set in order the component to work. These are <a href="#service-prop">service</a>, <a href="#path-prop">path</a> and <a href="#adaptorInterface-prop">adaptorInterface</a>. Also, once specified, <a href="#service-prop">service</a>, <a href="#serviceInterface-prop">serviceInterface</a> and <a href="#adaptorInterface-prop">adaptorInterface</a> values should not be changed as it cannot be guaranteed that properties watched will be available on those service. Therefore any change on these properties after the component completion will be ignored. Property bindings on properties watched will be ignored as well, as service will report changes in these property values.</p>
<p>The service is connected once the component gets completed (Component.onCompleted). The <a href="#error-prop">error</a> property specifies any error occured during connection, and the <a href="#status-prop">status</a> property notifies whether the connection to the service is active or not.</p>
<p><b>Note: </b>Pay attention when chosing the service watched, and set your application's AppArmor rights to ensure a successful service connection.</p><!-- @@@ServiceProperties -->
<h2>Property Documentation</h2>
<!-- $$$adaptorInterface -->
<table class="qmlname"><tr valign="top" id="adaptorInterface-prop"><td class="tblQmlPropNode"><p><span class="name">adaptorInterface</span> : <span class="type">string</span></p></td></tr></table><p>The proeprty specifies the dbus adaptor interface which provides the properties watched. This can be a different interface that the one specified in <a href="#serviceInterface-prop">serviceInterface</a>, and in the same way, it can be empty, in which case all the properties from all interfaces of the service will be watched.</p>
<!-- @@@adaptorInterface -->
<br/>
<!-- $$$error -->
<table class="qmlname"><tr valign="top" id="error-prop"><td class="tblQmlPropNode"><p><span class="name">error</span> : <span class="type">string</span></p></td></tr></table><p>The property is set with a human readablestring each time an error occurrs during the service connection. Empty string means no error.</p>
<!-- @@@error -->
<br/>
<!-- $$$path -->
<table class="qmlname"><tr valign="top" id="path-prop"><td class="tblQmlPropNode"><p><span class="name">path</span> : <span class="type">string</span></p></td></tr></table><p>The property specifies the DBus service connection path. It is mandatory to be specified.</p>
<!-- @@@path -->
<br/>
<!-- $$$service -->
<table class="qmlname"><tr valign="top" id="service-prop"><td class="tblQmlPropNode"><p><span class="name">service</span> : <span class="type">string</span></p></td></tr></table><p>The proeprty specifies the DBus service URI. It is mandatory to be specified.</p>
<!-- @@@service -->
<br/>
<!-- $$$serviceInterface -->
<table class="qmlname"><tr valign="top" id="serviceInterface-prop"><td class="tblQmlPropNode"><p><span class="name">serviceInterface</span> : <span class="type">string</span></p></td></tr></table><p>The property specifies the service intertface. If it is an empty string, the component will refer to the merging of all interfaces found in the service.</p>
<!-- @@@serviceInterface -->
<br/>
<!-- $$$status -->
<table class="qmlname"><tr valign="top" id="status-prop"><td class="tblQmlPropNode"><p><span class="name">status</span> : <span class="type">enum</span></p></td></tr></table><p>The property presents the status of the component.</p>
<ul>
<li>- <i>ServiceProperties.Inactive</i> - the component is inactive, initial state</li>
<li>- <i>ServiceProperties.ConnectionError</i> - there was a connection error, the <a href="#error-prop">error</a> contains the error string.</li>
<li>- <i>ServiceProperties.Synchronizing</i> - the connection to the service succeeded, and the properties are being synchronized;</li>
<li>- <i>ServiceProperties.Active</i> - the service watcher is active and initial property synchronization completed.</li>
</ul>
<p><b>Note: </b>While the status is set to <i>Synchronizing</i>, the properties are checked against their existence in the service. Each proeprty will be checked as declared as well with capital first letter. If neither of these exists in the service, it will be reported in the <a href="#error-prop">error</a> property separately.</p><!-- @@@status -->
<br/>
<!-- $$$type -->
<table class="qmlname"><tr valign="top" id="type-prop"><td class="tblQmlPropNode"><p><span class="name">type</span> : <span class="type">enum</span></p></td></tr></table><p>Specifies the DBus connection session type. It can get the following values:</p>
<ul>
<li>- <i>ServiceProperties.System</i> when system bus is used (default)</li>
<li>- <i>ServiceProperties.Session</i> when session bus is used</li>
</ul>
<!-- @@@type -->
<br/>
