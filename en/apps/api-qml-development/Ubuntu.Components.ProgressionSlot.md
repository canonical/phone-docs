---
Title: Ubuntu.Components.ProgressionSlot
---

# Ubuntu.Components.ProgressionSlot

<span class="subtitle"></span>
<!-- $$$ProgressionSlot-brief -->
<p>ProgressionSlot holds an icon representing the progression symbol. More...</p>
<!-- @@@ProgressionSlot -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.Icon.md">Icon</a></p>
</td></tr></table><ul>
</ul>
<!-- $$$ProgressionSlot-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">ProgressionSlot</a> is designed to provide an easy way for developers to add a progression symbol to the list item created using <a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a> or <a href="Ubuntu.Components.SlotsLayout.md">SlotsLayout</a>.</p>
<p><a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a> will automatically accomodate the progression symbol as the last trailing slot inside the layout. For more details, see <a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a> documentation.</p>
<p>The following is an example of how easy it is to implement list items using <a href="Ubuntu.Components.ListItem.md">ListItem</a> with <a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a> and <a href="index.html">ProgressionSlot</a>:</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Components.ListItem.md">ListItem</a></span> {
<span class="name">height</span>: <span class="name">layout</span>.<span class="name">height</span>
<span class="name">onClicked</span>: <span class="name">pushPageOnStack</span>()
<span class="type"><a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a></span> {
<span class="name">id</span>: <span class="name">layout</span>
<span class="name">title</span>.text: <span class="string">&quot;Push a new page on the PageStack&quot;</span>
<span class="type"><a href="index.html">ProgressionSlot</a></span> {}
}
}</pre>
<p><b>See also </b><a href="Ubuntu.Components.ListItemLayout.md">ListItemLayout</a>.</p>
<!-- @@@ProgressionSlot -->
