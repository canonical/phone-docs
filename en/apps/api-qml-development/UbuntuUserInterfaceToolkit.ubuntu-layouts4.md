---
Title: UbuntuUserInterfaceToolkit.ubuntu-layouts4
---

# UbuntuUserInterfaceToolkit.ubuntu-layouts4

<span class="subtitle"></span>
<!-- $$$ubuntu-layouts4.html-description -->
<p>As mentioned, <a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a> has control over the size, anchors and visibility of the hosted element. Therefore we can have the blue button with a different size than the other two. Let's have the blue button's width set to 10 GUs and its height to 10 GUs less than the positioner's height.</p>
<p>The code will look as follows:</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;row&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">-</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;green&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
}
}
}</pre>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/3ba9f8fc-584a-4922-8b17-962614beb83f-../ubuntu-layouts4/images/layout3.png" alt="" /></p>
<!-- @@@ubuntu-layouts4.html -->
<p class="naviNextPrevious footerNavi">
<li><a class="nextPage" href="UbuntuUserInterfaceToolkit.ubuntu-layouts5.md">Layouts - Hiding elements, showing more</a></li>
</p>
