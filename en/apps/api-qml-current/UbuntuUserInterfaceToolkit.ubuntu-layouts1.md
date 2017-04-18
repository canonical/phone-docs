---
Title: UbuntuUserInterfaceToolkit.ubuntu-layouts1
---

# UbuntuUserInterfaceToolkit.ubuntu-layouts1

<span class="subtitle"></span>
<!-- $$$ubuntu-layouts1.html-description -->
<p>First let's introduce the terminology we are going to use across this tutorial.</p>
<h4 >Layout Block, Container and Item holder</h4>
<p>A layout block is a component embedding several layout definitions and items to be laid out. It is typically defined by the <a href="Ubuntu.Layouts.Layouts.md">Layouts</a> component.</p>
<p>Each layout defined in the block is compound of containers, which can host laid out items hosted by item holders.</p>
<p>An item holder is a pseudo-item which can host only one item, where the item is anchored to the item holder's edges, therefore the item holder has control over the componet's size, scale and rotation.</p>
<p>To understand this let's take the following layout structure:</p>
<p class="centerAlign"><img src="../../../../media/sample-layout.png" alt="" /></p><p>In this layout all three buttons are laid out in the same container, but green button was required to take the height of the window, whereas the red and blue buttons were required to have the same width and height.</p>
<p>Illustrating the layout on the image with code:</p>
<pre class="qml"><span class="type"><a href="Ubuntu.Layouts.Layouts.md">Layouts</a></span> { <span class="comment">// &lt;-- layout block</span>
<span class="name">id</span>: <span class="name">layouts</span>
<span class="name">layouts</span>: [
<span class="comment">// [...]</span>
<span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> { <span class="comment">// &lt;-- layout</span>
<span class="name">name</span>: <span class="string">&quot;composit&quot;</span>
<span class="type"><a href="../sdk-15.04/QtQuick.Row.md">Row</a></span> { <span class="comment">// &lt;-- layout container</span>
<span class="comment">// [...]</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> { <span class="comment">// &lt;-- item holder</span>
<span class="name">item</span>: <span class="string">&quot;item2&quot;</span>
<span class="comment">// [...]</span>
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> { <span class="comment">// &lt;-- item holder</span>
<span class="name">item</span>: <span class="string">&quot;item1&quot;</span>
<span class="comment">// [...]</span>
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> { <span class="comment">// &lt;-- item holder</span>
<span class="name">item</span>: <span class="string">&quot;item3&quot;</span>
<span class="comment">// [...]</span>
}
}
}
]
<span class="comment">// the items to lay outitem3</span>
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">Layouts</span>.item: <span class="string">&quot;item1&quot;</span>
<span class="comment">// [...]</span>
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">Layouts</span>.item: <span class="string">&quot;item2&quot;</span>
<span class="comment">// [...]</span>
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">Layouts</span>.item: <span class="string">&quot;item3&quot;</span>
<span class="comment">// [...]</span>
}
}</pre>
<p>A container can be any item, however it is preferable to use positioners or <a href="http://doc.qt.io/qt-5/qtquick-qmlmodule.html">QtQuick</a> layout elements whenever possible.</p>
<p>As next step let's create some layouts.</p>
<!-- @@@ubuntu-layouts1.html -->
<p class="naviNextPrevious footerNavi">
<li><a class="nextPage" href="UbuntuUserInterfaceToolkit.ubuntu-layouts2.md">Layouts - The first conditional layout</a></li>
</p>
