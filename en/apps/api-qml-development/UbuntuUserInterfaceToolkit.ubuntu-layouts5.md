---
Title: UbuntuUserInterfaceToolkit.ubuntu-layouts5
---

# UbuntuUserInterfaceToolkit.ubuntu-layouts5

<span class="subtitle"></span>
<!-- $$$ubuntu-layouts5.html-description -->
<p>Till this point we know how to define a layout block, what is the default layout, how to create layout, how to define the container and how to define the hosted elements and how to define item hosts to lay out individual items.</p>
<p>There can be situations when for certain layouts we don't want to transfer all the components of a default layout. More, there can be situations when we want to show more components when we have more space to our disposal. Perhaps we want to provide more functionality when the phone is turned from portrait to landscape (typical use case is a Calculator application which on portrait is a simple calculator but on landscape provides scientific calculator functions). In the following we will define two layouts where we cover both use cases.</p>
<h2 id="hiding-components">Hiding components</h2>
<p>Let's create a layout where we only show the red and green buttons. This can be achieved by specifying only those components to be hosted by the container.</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;row&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;green&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
}
}</pre>
<p>The layout when the block width exceeds 50 GU will look like this:</p>
<p class="centerAlign"><img src="../../../../media/layout6.png" alt="" /></p>
<h2 id="showing-more-content">Showing more content</h2>
<p>Another use case is to show extra content in a different layout/form factor. These components can simply be declared inside the layout itself, assuming that those are not going to be used in any other layout. If yes, those must also be declared in the default layout in order to preserve their state, or other modalities to transfer the component state must be used. Let's create a layout which will be activated when the layout block width exceeds 70 GU.</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;flow&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
<span class="type"><a href="QtQuick.Flow.md">Flow</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;green&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Flow item&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
}
}</pre>
<p class="centerAlign"><img src="../../../../media/layout6-2.png" alt="" /></p>
<!-- @@@ubuntu-layouts5.html -->
<p class="naviNextPrevious footerNavi">
<li><a class="nextPage" href="UbuntuUserInterfaceToolkit.ubuntu-layouts6.md">Layouts - Overlay items in an item host</a></li>
</p>
