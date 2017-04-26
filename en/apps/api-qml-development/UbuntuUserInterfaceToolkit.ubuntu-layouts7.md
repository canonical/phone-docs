---
Title: UbuntuUserInterfaceToolkit.ubuntu-layouts7
---

# UbuntuUserInterfaceToolkit.ubuntu-layouts7

<span class="subtitle"></span>
<!-- $$$ubuntu-layouts7.html-description -->
<p>As mentioned, with Layouts we can achieve to have a single code base supporting different form factors. The following example illustrates how to support different layouts with the same code base.</p>
<h2 id="default-layout">Default layout</h2>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/2614cfe7-7b80-4b2b-9254-9b9624d655e3-../ubuntu-layouts7/images/simple-layout1.png" alt="" /></p><pre class="qml"><span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
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
<span class="name">id</span>: <span class="name">nolayout</span>
<span class="name">text</span>: <span class="string">&quot;Non-laid out&quot;</span>
<span class="name">color</span>: <span class="string">&quot;brown&quot;</span>
<span class="type">anchors</span> {
<span class="name">top</span>: <span class="name">greenButton</span>.<span class="name">bottom</span>
<span class="name">left</span>: <span class="name">redButton</span>.<span class="name">right</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">bottom</span>: <span class="name">blueButton</span>.<span class="name">top</span>
}
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
<h2 id="conditional-layouts">Conditional layouts</h2>
<h3 >Column layout</h3>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/77d929c7-32ad-483b-8ba3-0af442958f11-../ubuntu-layouts7/images/simple-layout2.png" alt="" /></p><pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;column&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;red&quot;</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
}
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;green&quot;</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
}
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
}
}
}
},</pre>
<h3 >Row layout</h3>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/fde8b66a-ac96-447b-8ac0-e1f54572eb19-../ubuntu-layouts7/images/simple-layout3.png" alt="" /></p><pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;row&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">90</span>)
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
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
},</pre>
<h3 >Layout hiding element</h3>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/b8b9983d-981e-449f-864f-245bbd26edd6-../ubuntu-layouts7/images/simple-layout4.png" alt="" /></p><pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;hiding-element&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">90</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
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
},</pre>
<h3 >Layout showing more</h3>
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/1767d47b-3bfb-4861-8a6c-1df601e449f6-../ubuntu-layouts7/images/simple-layout5.png" alt="" /></p><pre class="qml"><span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;showing-more&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="type"><a href="QtQuick.Flow.md">Flow</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;green&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Flow item&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
}
}</pre>
<h2 id="the-entire-code">The entire code</h2>
<pre class="qml"><span class="type"><a href="Ubuntu.Layouts.Layouts.md">Layouts</a></span> {
<span class="name">id</span>: <span class="name">layouts</span>
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">layouts</span>: [
<span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;column&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>)
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;red&quot;</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
}
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;green&quot;</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
}
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">left</span>: <span class="name">parent</span>.<span class="name">left</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
}
}
}
},
<span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;row&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">70</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">90</span>)
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">3</span>
<span class="type">anchors</span> {
<span class="name">top</span>: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>
}
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
},
<span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;hiding-element&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">90</span>) <span class="operator">&amp;&amp;</span> <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&lt;</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
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
},
<span class="type"><a href="Ubuntu.Layouts.ConditionalLayout.md">ConditionalLayout</a></span> {
<span class="name">name</span>: <span class="string">&quot;showing-more&quot;</span>
<span class="name">when</span>: <span class="name">layouts</span>.<span class="name">width</span> <span class="operator">&gt;=</span> <span class="name">units</span>.<span class="name">gu</span>(<span class="number">100</span>)
<span class="type"><a href="QtQuick.Flow.md">Flow</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;red&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;green&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
<span class="type"><a href="Ubuntu.Layouts.ItemLayout.md">ItemLayout</a></span> {
<span class="name">item</span>: <span class="string">&quot;blue&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
}
<span class="type"><a href="Ubuntu.Components.Button.md">Button</a></span> {
<span class="name">text</span>: <span class="string">&quot;Flow item&quot;</span>
<span class="name">width</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">50</span>)
<span class="name">height</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">20</span>)
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
<span class="name">id</span>: <span class="name">nolayout</span>
<span class="name">text</span>: <span class="string">&quot;Non-laid out&quot;</span>
<span class="name">color</span>: <span class="string">&quot;brown&quot;</span>
<span class="type">anchors</span> {
<span class="name">top</span>: <span class="name">greenButton</span>.<span class="name">bottom</span>
<span class="name">left</span>: <span class="name">redButton</span>.<span class="name">right</span>
<span class="name">right</span>: <span class="name">parent</span>.<span class="name">right</span>
<span class="name">bottom</span>: <span class="name">blueButton</span>.<span class="name">top</span>
}
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
}</pre>
<h2 id="that-s-it">That's it</h2>
<p>You're ready to go. You can find the layouting components under <a href="UbuntuUserInterfaceToolkit.overview-ubuntu-sdk.md#layouting">Layouting</a>. For further questions please visit <b>#ubuntu-app-devel</b> irc channel on freenode.</p>
<!-- @@@ubuntu-layouts7.html -->
