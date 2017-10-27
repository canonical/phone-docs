---
Title: QtQuick.qtquick-quick-accessibility-example
---

# QtQuick.qtquick-quick-accessibility-example

<span class="subtitle"></span>
<!-- $$$quick-accessibility-description -->
<p><i>Accessibility</i> demonstrates QML types that are augmented with meta-data for accessibility systems. For more information, visit the Accessibility page.</p>
<h2 id="running-the-example">Running the Example</h2>
<p>To run the example from Qt Creator, open the <b>Welcome</b> mode and select the example from <b>Examples</b>. For more information, visit Building and Running an Example.</p>
<h2 id="implementing-accessible-buttons">Implementing Accessible Buttons</h2>
<p>The button identifies itself and its functionality to the accessibility system:</p>
<pre class="qml"><span class="name">Accessible</span>.name: <span class="name">text</span>
<span class="name">Accessible</span>.description: <span class="string">&quot;This button does &quot;</span> <span class="operator">+</span> <span class="name">text</span>
<span class="name">Accessible</span>.role: <span class="name">Accessible</span>.<span class="name">Button</span>
<span class="name">Accessible</span>.onPressAction: {
<span class="name">button</span>.<span class="name">clicked</span>()
}</pre>
<p>Similarly, <a href="QtQuick.qtquick-releasenotes.md#text">Text</a> types inside the example also identify themselves:</p>
<pre class="qml"><span class="name">Accessible</span>.role: <span class="name">Accessible</span>.<span class="name">StaticText</span>
<span class="name">Accessible</span>.name: <span class="name">text</span></pre>
<p>Files:</p>
<ul>
<li>quick-accessibility/accessibility.qml</li>
<li>quick-accessibility/content/Button.qml</li>
<li>quick-accessibility/content/Checkbox.qml</li>
<li>quick-accessibility/content/Slider.qml</li>
<li>quick-accessibility/main.cpp</li>
<li>quick-accessibility/accessibility.qmlproject</li>
<li>quick-accessibility/accessibility.qrc</li>
<li>quick-accessibility/quick-accessibility.pro</li>
</ul>
<!-- @@@quick-accessibility -->
