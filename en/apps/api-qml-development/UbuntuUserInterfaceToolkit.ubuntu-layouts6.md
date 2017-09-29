---
Title: UbuntuUserInterfaceToolkit.ubuntu-layouts6
---

# UbuntuUserInterfaceToolkit.ubuntu-layouts6

<span class="subtitle"></span>
<!-- $$$ubuntu-layouts6.html-description -->
<p>There is one more thing you can do with <a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a> container, which is to define overlay items for certain hosted items on certain layouts. If an <a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a> has child elements defined, the hosted item will be stacked as topmost element, so all the child elements declared in <a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a> will be rendered as overlay on top of the hosted item.</p>
<p class="centerAlign"><img src="https://assets.ubuntu.com/v1/607c135f-layout7.png" alt="" /></p><pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;row&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="type">anchors</span>{
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
<span class="name">margins</span>: <span class="name">units</span>.<span class="name">dp</span>(<span class="number">3</span>)
}
<span class="name">radius</span>: <span class="name">units</span>.<span class="name">dp</span>(<span class="number">1</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">8</span>)
<span class="name">color</span>: <span class="string">&quot;#bbbbbb88&quot;</span>
<span class="type"><a href="Ubuntu.Components.Label.md">Label</a></span> {
<span class="name">anchors</span>.centerIn: <span class="name">parent</span>
<span class="name">text</span>: <span class="string">&quot;Overlay item&quot;</span>
}
}
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;green&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
}
}</pre>
<!-- @@@ubuntu-layouts6.html -->
<p class="naviNextPrevious footerNavi">
<li><a class="nextPage" href="UbuntuUserInterfaceToolkit.ubuntu-layouts7.md">Layouts - Defining more layouts for different form factors</a></li>
</p>
