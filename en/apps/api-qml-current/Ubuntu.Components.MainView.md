---
Title: Ubuntu.Components.MainView
---

# Ubuntu.Components.MainView

<span class="subtitle"></span>
<!-- $$$MainView-brief -->
<p>MainView is the root Item that should be used for all applications. More...</p>
<!-- @@@MainView -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
<li>Obsolete members</li>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#actionContext-prop">actionContext</a></b></b> : ActionContext</li>
<li class="fn"><b><b><a href="#anchorToKeyboard-prop">anchorToKeyboard</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#applicationName-prop">applicationName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#backgroundColor-prop">backgroundColor</a></b></b> : color</li>
</ul>
<!-- $$$MainView-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The simplest way to use a <a href="index.html">MainView</a> is to include a single <a href="Ubuntu.Components.Page.md">Page</a> object inside the <a href="index.html">MainView</a>:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="index.html">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">48</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">header</span>: <span class="name">PageHeader</span> {
<span class="name">id</span>: <span class="name">pageHeader</span>
<span class="name">title</span>: <span class="string">&quot;Simple page&quot;</span>
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="type">anchors</span> {
<span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
<span class="name">top</span>: <span class="name">pageHeader</span>.<span class="name">bottom</span>
<span class="name">topMargin</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">5</span>)
}
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">15</span>)
<span class="name">text</span>: <span class="string">&quot;Push me&quot;</span>
<span class="name">onClicked</span>: <span class="name">print</span>(<span class="string">&quot;Click!&quot;</span>)
}
}
}</pre>
<p>It is not required to set the anchors of the <a href="Ubuntu.Components.Page.md">Page</a> as it will automatically fill its parent.</p>
<p>Do not include multiple Pages directly inside the <a href="index.html">MainView</a>, but use <a href="Ubuntu.Components.AdaptivePageLayout.md">AdaptivePageLayout</a> inside <a href="index.html">MainView</a> to navigate between several Pages.</p>
<p>If the <a href="Ubuntu.Components.Page.md">Page</a> inside the <a href="index.html">MainView</a> includes a Flickable, set the flickable property of the <a href="Ubuntu.Components.PageHeader.md">PageHeader</a> to automatically hide and show the header when the user scrolls up or down:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="index.html">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">48</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
<span class="type"><a href="Ubuntu.Components.Page.md">Page</a></span> {
<span class="name">header</span>: <span class="name">PageHeader</span> {
<span class="name">title</span>: <span class="string">&quot;Page with Flickable&quot;</span>
<span class="name">flickable</span>: <span class="name">myFlickable</span>
}
<span class="type"><a href="../sdk-14.10/QtQuick.Flickable.md">Flickable</a></span> {
<span class="name">id</span>: <span class="name">myFlickable</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">contentHeight</span>: <span class="name">column</span>.<span class="name">height</span>
<span class="type"><a href="../sdk-14.10/QtQuick.Column.md">Column</a></span> {
<span class="name">id</span>: <span class="name">column</span>
<span class="type"><a href="../sdk-14.10/QtQuick.Repeater.md">Repeater</a></span> {
<span class="name">model</span>: <span class="number">100</span>
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">text</span>: <span class="string">&quot;line &quot;</span><span class="operator">+</span><span class="name">index</span>
}
}
}
}
}
}</pre>
<p>The same header behavior is automatic when using a <a href="../sdk-14.10/QtQuick.ListView.md">ListView</a> instead of a Flickable in the above example.</p>
<p>The examples above show how to include a single <a href="Ubuntu.Components.Page.md">Page</a> inside a <a href="index.html">MainView</a>, but more advanced application structures are possible using <a href="Ubuntu.Components.AdaptivePageLayout.md">AdaptivePageLayout</a>.</p>
<!-- @@@MainView -->
<h2>Property Documentation</h2>
<!-- $$$actionContext -->
<table class="qmlname"><tr valign="top" id="actionContext-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">actionContext</span> : <span class="type"><a href="Ubuntu.Components.ActionContext.md">ActionContext</a></span></p></td></tr></table><p>The action context of the <a href="index.html">MainView</a>.</p>
<p>This QML property was introduced in  Ubuntu.Components 1.3.</p>
<!-- @@@actionContext -->
<br/>
<!-- $$$anchorToKeyboard -->
<table class="qmlname"><tr valign="top" id="anchorToKeyboard-prop"><td class="tblQmlPropNode"><p><span class="name">anchorToKeyboard</span> : <span class="type">bool</span></p></td></tr></table><p>The property holds if the application should automatically resize the contents when the input method appears</p>
<p>The default value is false.</p>
<!-- @@@anchorToKeyboard -->
<br/>
<!-- $$$applicationName -->
<table class="qmlname"><tr valign="top" id="applicationName-prop"><td class="tblQmlPropNode"><p><span class="name">applicationName</span> : <span class="type">string</span></p></td></tr></table><p>The property holds the application's name, which must be the same as the desktop file's name. The name also sets the name of the QCoreApplication and defaults for data and cache folders that work on the desktop and under confinement, as well as the default gettext domain. C++ code that writes files may use QStandardPaths::writableLocation with QStandardPaths::DataLocation or QStandardPaths::CacheLocation.</p>
<!-- @@@applicationName -->
<br/>
<!-- $$$backgroundColor -->
<table class="qmlname"><tr valign="top" id="backgroundColor-prop"><td class="tblQmlPropNode"><p><span class="name">backgroundColor</span> : <span class="type">color</span></p></td></tr></table><p>Color of the background.</p>
<p>Example:</p>
<pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.3
<span class="type"><a href="index.html">MainView</a></span> {
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">40</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">60</span>)
<span class="name">backgroundColor</span>: <span class="name">UbuntuColors</span>.<span class="name">blue</span>
}</pre>
<!-- @@@backgroundColor -->
<br/>
