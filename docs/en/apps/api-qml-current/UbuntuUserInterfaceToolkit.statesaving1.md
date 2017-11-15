---
Title: UbuntuUserInterfaceToolkit.statesaving1
---

# UbuntuUserInterfaceToolkit.statesaving1

<span class="subtitle"></span>
<!-- $$$statesaving1.html-description -->
<h2 id="application-name">Application name</h2>
<p>First of all, the application must have a proper application name set. If you use Qt Creator's Ubuntu project wizards, you will have the application name set by default, name which is in sync with the name from the application's desktop file.</p>
<p>The application name plays an essential role in storing the state archive. By specifying different application names, different state archives can be serialized for the application. However runtime application name change would require application restart.</p>
<p>Having these preconditions, we can deduct that <a href="Ubuntu.Components.MainView.md#applicationName-prop">MainView::applicationName</a> property is one of the properties which cannot be serialized.</p>
<h2 id="ids">IDs</h2>
<p>Components for which property saving is wanted should define an ID, even though it is otherwise not justified. For example the following code snippet would give runtime error:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">color</span>: <span class="string">&quot;green&quot;</span>
<span class="name">StateSaver</span>.properties: <span class="string">&quot;color&quot;</span>
}</pre>
<p>but giving an ID would make it serializable:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rectangle</span>
<span class="name">color</span>: <span class="string">&quot;green&quot;</span>
<span class="name">StateSaver</span>.properties: <span class="string">&quot;color&quot;</span>
}</pre>
<p>This rule must also be applied on component parents in the object hierarchy.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">root</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">rectangle</span>
<span class="name">color</span>: <span class="string">&quot;green&quot;</span>
<span class="name">StateSaver</span>.properties: <span class="string">&quot;color&quot;</span>
}
}</pre>
<!-- @@@statesaving1.html -->
<p class="naviNextPrevious footerNavi">
<li><a class="nextPage" href="UbuntuUserInterfaceToolkit.statesaving2.md">Saving multiple properties</a></li>
</p>
