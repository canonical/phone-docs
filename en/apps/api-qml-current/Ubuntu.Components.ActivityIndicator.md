---
Title: Ubuntu.Components.ActivityIndicator
---

# Ubuntu.Components.ActivityIndicator

<span class="subtitle"></span>
<!-- $$$ActivityIndicator-brief -->
<p>The ActivityIndicator component visually indicates that a task of unknown duration is in progress, e.g&#x2e; busy indication, connection in progress indication, etc. More...</p>
<!-- @@@ActivityIndicator -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#running-prop">running</a></b></b> : bool</li>
</ul>
<!-- $$$ActivityIndicator-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Note: for time consuming JavaScript operations use <a href="../sdk-14.10/QtQuick.qtquick-threading-example.md#workerscript">WorkerScript</a>, otherwise no UI interaction will be possible and the ActicityIndicator animation will freeze.</p>
<p>Example:</p>
<pre class="qml"><span class="type"><a href="../sdk-14.10/QtQuick.Item.md">Item</a></span> {
<span class="type"><a href="index.html">ActivityIndicator</a></span> {
<span class="name">id</span>: <span class="name">activity</span>
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">toggleActive</span>
<span class="name">text</span>: (<span class="name">activity</span>.<span class="name">running</span>) ? <span class="string">&quot;Deactivate&quot;</span> : <span class="string">&quot;Activate&quot;</span>
<span class="name">onClicked</span>: <span class="name">activity</span>.<span class="name">running</span> <span class="operator">=</span> !<span class="name">activity</span>.<span class="name">running</span>
}
}</pre>
<!-- @@@ActivityIndicator -->
<h2>Property Documentation</h2>
<!-- $$$running -->
<table class="qmlname"><tr valign="top" id="running-prop"><td class="tblQmlPropNode"><p><span class="name">running</span> : <span class="type">bool</span></p></td></tr></table><p>Presents whether there is activity to be visualized or not. The default value is false. When activated (set to true), an animation is shown indicating an ongoing activity, which continues until deactivated (set to false).</p>
<!-- @@@running -->
<br/>
