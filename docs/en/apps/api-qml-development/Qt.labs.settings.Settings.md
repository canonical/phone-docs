---
Title: Qt.labs.settings.Settings
---

# Qt.labs.settings.Settings

<span class="subtitle"></span>
<!-- $$$Settings-brief -->
<p>Provides persistent platform-independent application settings. More...</p>
<!-- @@@Settings -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Qt.labs.settings 1.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#category-prop">category</a></b></b> : string</li>
</ul>
<!-- $$$Settings-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Settings type provides persistent platform-independent application settings.</p>
<p><b>Note: </b>This type is made available by importing the <b>Qt.labs.settings</b> module. <i>Types in the Qt.labs module are not guaranteed to remain compatible in future versions.</i></p><p>Users normally expect an application to remember its settings (window sizes and positions, options, etc.) across sessions. The Settings type enables you to save and restore such application settings with the minimum of effort.</p>
<p>Individual setting values are specified by declaring properties within a Settings element. All basic type properties are supported. The recommended approach is to use property aliases in order to get automatic property updates both ways. The following example shows how to use Settings to store and restore the geometry of a window.</p>
<pre class="qml">import QtQuick.Window 2.1
import Qt.labs.settings 1.0
<span class="type"><a href="QtQuick.Window.Window.md">Window</a></span> {
<span class="name">id</span>: <span class="name">window</span>
<span class="name">width</span>: <span class="number">800</span>
<span class="name">height</span>: <span class="number">600</span>
<span class="type"><a href="index.html">Settings</a></span> {
property <span class="type">alias</span> <span class="name">x</span>: <span class="name">window</span>.<span class="name">x</span>
property <span class="type">alias</span> <span class="name">y</span>: <span class="name">window</span>.<span class="name">y</span>
property <span class="type">alias</span> <span class="name">width</span>: <span class="name">window</span>.<span class="name">width</span>
property <span class="type">alias</span> <span class="name">height</span>: <span class="name">window</span>.<span class="name">height</span>
}
}</pre>
<p>At first application startup, the window gets default dimensions specified as 800x600. Notice that no default position is specified - we let the window manager handle that. Later when the window geometry changes, new values will be automatically stored to the persistent settings. The second application run will get initial values from the persistent settings, bringing the window back to the previous position and size.</p>
<p>A fully declarative syntax, achieved by using property aliases, comes at the cost of storing persistent settings whenever the values of aliased properties change. Normal properties can be used to gain more fine-grained control over storing the persistent settings. The following example illustrates how to save a setting on component destruction.</p>
<pre class="qml">import QtQuick 2.1
import Qt.labs.settings 1.0
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">page</span>
<span class="name">state</span>: <span class="name">settings</span>.<span class="name">state</span>
<span class="name">states</span>: [
<span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">&quot;active&quot;</span>
<span class="comment">// ...</span>
},
<span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">&quot;inactive&quot;</span>
<span class="comment">// ...</span>
}
]
<span class="type"><a href="index.html">Settings</a></span> {
<span class="name">id</span>: <span class="name">settings</span>
property <span class="type">string</span> <span class="name">state</span>: <span class="string">&quot;active&quot;</span>
}
<span class="name">Component</span>.onDestruction: {
<span class="name">settings</span>.<span class="name">state</span> <span class="operator">=</span> <span class="name">page</span>.<span class="name">state</span>
}
}</pre>
<p>Notice how the default value is now specified in the persistent setting property, and the actual property is bound to the setting in order to get the initial value from the persistent settings.</p>
<h2 id="application-identifiers">Application Identifiers</h2>
<p>Application specific settings are identified by providing application name, organization and domain.</p>
<pre class="cpp"><span class="preprocessor">#include &lt;QGuiApplication&gt;</span>
<span class="preprocessor">#include &lt;QQmlApplicationEngine&gt;</span>
<span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span>argv<span class="operator">[</span><span class="operator">]</span>)
{
<span class="type">QGuiApplication</span> app(argc<span class="operator">,</span> argv);
app<span class="operator">.</span>setOrganizationName(<span class="string">&quot;Some Company&quot;</span>);
app<span class="operator">.</span>setOrganizationDomain(<span class="string">&quot;somecompany.com&quot;</span>);
app<span class="operator">.</span>setApplicationName(<span class="string">&quot;Amazing Application&quot;</span>);
<span class="type">QQmlApplicationEngine</span> engine(<span class="string">&quot;main.qml&quot;</span>);
<span class="keyword">return</span> app<span class="operator">.</span>exec();
}</pre>
<p>These are typically specified in C++ in the beginning of <code>main()</code>, but can also be controlled in QML via the following properties:</p>
<ul>
<li>Qt.application.name,</li>
<li>Qt.application.organization and</li>
<li>Qt.application.domain.</li>
</ul>
<h2 id="categories">Categories</h2>
<p>Application settings may be divided into logical categories by specifying a category name via the <a href="#category-prop">category</a> property. Using logical categories not only provides a cleaner settings structure, but also prevents possible conflicts between setting keys.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">panel</span>
<span class="name">visible</span>: <span class="number">true</span>
<span class="type"><a href="index.html">Settings</a></span> {
<span class="name">category</span>: <span class="string">&quot;OutputPanel&quot;</span>
property <span class="type">alias</span> <span class="name">visible</span>: <span class="name">panel</span>.<span class="name">visible</span>
<span class="comment">// ...</span>
}
}</pre>
<p>Instead of ensuring that all settings in the application have unique names, the settings can be divided into unique categories that may then contain settings using the same names that are used in other categories - without a conflict.</p>
<h2 id="notes">Notes</h2>
<p>The current implementation is based on QSettings. This imposes certain limitations, such as missing change notifications. Writing a setting value using one instance of Settings does not update the value in another Settings instance, even if they are referring to the same setting in the same category.</p>
<p>The information is stored in the system registry on Windows, and in XML preferences files on OS X. On other Unix systems, in the absence of a standard, INI text files are used. See QSettings documentation for more details.</p>
<p><b>See also </b>QSettings.</p>
<!-- @@@Settings -->
<h2>Property Documentation</h2>
<!-- $$$category -->
<table class="qmlname"><tr valign="top" id="category-prop"><td class="tblQmlPropNode"><p><span class="name">category</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the name of the settings category.</p>
<p>Categories can be used to group related settings together.</p>
<!-- @@@category -->
<br/>
