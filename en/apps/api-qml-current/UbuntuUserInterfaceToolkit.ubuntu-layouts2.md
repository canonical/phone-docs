---
Title: UbuntuUserInterfaceToolkit.ubuntu-layouts2
---

# UbuntuUserInterfaceToolkit.ubuntu-layouts2

<span class="subtitle"></span>
<!-- $$$ubuntu-layouts2.html-description -->
<p>As first let's create the following default layout, with anchored buttons to each other.</p>
<p class="centerAlign"><img src="../../../media/default-layout.png" alt="" /></p><p>Defined by the following code:</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">redButton</span>
<span class="name">text</span>: <span class="string">&quot;Item #1&quot;</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;red&quot;</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">15</span>)
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">greenButton</span>
<span class="name">text</span>: <span class="string">&quot;Item #2&quot;</span>
<span class="name">color</span>: <span class="string">&quot;green&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;green&quot;</span>
<span class="type">anchors</span> {
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">left</span>: <span class="name">redButton</span>.<span class="name">right</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
}
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">blueButton</span>
<span class="name">text</span>: <span class="string">&quot;Item #3&quot;</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;blue&quot;</span>
<span class="type">anchors</span>{
<span class="name">left</span>: <span class="name">redButton</span>.<span class="name">right</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
}</pre>
<h2 id="walkthrough">Walkthrough</h2>
<h3 >Import</h3>
<p>First of all, in order to use the layouting abilities, you need to import Ubuntu.Layouts.</p>
<pre class="cpp">import Ubuntu<span class="operator">.</span>Layouts <span class="number">1.0</span></pre>
<p>This layout will have the red button anchored to the parent's left, top and bottom, having a width of 15 grid units. The green and blue buttons are anchored left to the red button, righ to their parent, top and bottom to the parent top respectively to the parent bottom and both having a height of 10 grid units.</p>
<p>This layout looks good in small form factors, however as the width, height and grid unit changes, this layout will start to look cumbersome.</p>
<p>Every component we wan to lay out must be marked. This &quot;marking&quot; is done by attaching the Layouts.item property to erach item participating in the layouting. Therefore we mark each button with a unique name, &quot;red&quot;, &quot;green&quot; and &quot;blue&quot;.</p>
<h3 >Define the conditional layout</h3>
<p>Let's define a column layout for the case when the layout block width passes 50 GU, and move the items into a <a href="http://doc.qt.io/qt-5/qml-qtquick-row.html">Row</a> container in the following order: &quot;red&quot;, &quot;green&quot; and &quot;blue&quot;. We also need to specify the size these components will have, so let's set the width to one third of the container's width and top and bottom anchored to the row's top and bottom.</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;row&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
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
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
}
}
}</pre>
<p>Note the way the container is defined. Items are laid out using <a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a> host items. The items will be laid out in the order the <a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a> hosts are declared. Beside this <a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a> also drives the size, scale, rotation, availability (enabled) visibility and opacity of the hosted item.</p>
<p>The conditional layout is given a name so it can be identified when the layout is set through Layouts.curentLayout property. This, beside debugging abilities, gives additional possibilities to configure properties that are not directly updated by the layouting.</p>
<p>Combining this with the default layout we will see the following layout when width exceeds 50 GU:</p>
<p class="centerAlign"><img src="../../../media/layout1.png" alt="" /></p><pre class="qml">import QtQuick 2.4
import Ubuntu.Components 1.2
import Ubuntu.Layouts 1.0
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">root</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">30</span>)
<span class="type"><a href="Ubuntu.Layouts.Layouts.md">Layouts</a></span> {
<span class="name">objectName</span>: <span class="string">&quot;layouts&quot;</span>
<span class="name">id</span>: <span class="name">layouts</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">layouts</span>: [
<span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;row&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
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
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
}
}
}
]
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">redButton</span>
<span class="name">text</span>: <span class="string">&quot;Item #1&quot;</span>
<span class="name">color</span>: <span class="string">&quot;red&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;red&quot;</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">15</span>)
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">greenButton</span>
<span class="name">text</span>: <span class="string">&quot;Item #2&quot;</span>
<span class="name">color</span>: <span class="string">&quot;green&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;green&quot;</span>
<span class="type">anchors</span> {
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">left</span>: <span class="name">redButton</span>.<span class="name">right</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
}
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">id</span>: <span class="name">blueButton</span>
<span class="name">text</span>: <span class="string">&quot;Item #3&quot;</span>
<span class="name">color</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">Layouts</span>.item: <span class="string">&quot;blue&quot;</span>
<span class="type">anchors</span>{
<span class="name">left</span>: <span class="name">redButton</span>.<span class="name">right</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">10</span>)
}
}
}</pre>
<!-- @@@ubuntu-layouts2.html -->
<p class="naviNextPrevious footerNavi">
<li><a class="nextPage" href="UbuntuUserInterfaceToolkit.ubuntu-layouts3.md">Layouts - Changing the order</a></li>
</p>
