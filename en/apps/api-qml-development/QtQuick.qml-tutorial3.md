---
Title: QtQuick.qml-tutorial3
---

# QtQuick.qml-tutorial3

<span class="subtitle"></span>
<!-- $$$qml-tutorial3.html-description -->
<p>In this chapter, we make this example a little bit more dynamic by introducing states and transitions.</p>
<p>We want our text to move to the bottom of the screen, rotate and become red when clicked.</p>
<p class="centerAlign"><img src="../../../../media/declarative-tutorial3_animation.gif" alt="" /></p><p>Here is the QML code:</p>
<pre class="qml">import QtQuick 2.0
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">page</span>
<span class="name">width</span>: <span class="number">320</span>; <span class="name">height</span>: <span class="number">480</span>
<span class="name">color</span>: <span class="string">&quot;lightgray&quot;</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">helloText</span>
<span class="name">text</span>: <span class="string">&quot;Hello world!&quot;</span>
<span class="name">y</span>: <span class="number">30</span>
<span class="name">anchors</span>.horizontalCenter: <span class="name">page</span>.<span class="name">horizontalCenter</span>
<span class="name">font</span>.pointSize: <span class="number">24</span>; <span class="name">font</span>.bold: <span class="number">true</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> { <span class="name">id</span>: <span class="name">mouseArea</span>; <span class="name">anchors</span>.fill: <span class="name">parent</span> }
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;down&quot;</span>; <span class="name">when</span>: <span class="name">mouseArea</span>.<span class="name">pressed</span> <span class="operator">==</span> <span class="number">true</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">helloText</span>; <span class="name">y</span>: <span class="number">160</span>; <span class="name">rotation</span>: <span class="number">180</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span> }
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="name">from</span>: <span class="string">&quot;&quot;</span>; <span class="name">to</span>: <span class="string">&quot;down&quot;</span>; <span class="name">reversible</span>: <span class="number">true</span>
<span class="type"><a href="QtQuick.ParallelAnimation.md">ParallelAnimation</a></span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;y,rotation&quot;</span>; <span class="name">duration</span>: <span class="number">500</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">duration</span>: <span class="number">500</span> }
}
}
}
<span class="type"><a href="QtQuick.Grid.md">Grid</a></span> {
<span class="name">id</span>: <span class="name">colorPicker</span>
<span class="name">x</span>: <span class="number">4</span>; <span class="name">anchors</span>.bottom: <span class="name">page</span>.<span class="name">bottom</span>; <span class="name">anchors</span>.bottomMargin: <span class="number">4</span>
<span class="name">rows</span>: <span class="number">2</span>; <span class="name">columns</span>: <span class="number">3</span>; <span class="name">spacing</span>: <span class="number">3</span>
<span class="type">Cell</span> { <span class="name">cellColor</span>: <span class="string">&quot;red&quot;</span>; <span class="name">onClicked</span>: <span class="name">helloText</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">cellColor</span> }
<span class="type">Cell</span> { <span class="name">cellColor</span>: <span class="string">&quot;green&quot;</span>; <span class="name">onClicked</span>: <span class="name">helloText</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">cellColor</span> }
<span class="type">Cell</span> { <span class="name">cellColor</span>: <span class="string">&quot;blue&quot;</span>; <span class="name">onClicked</span>: <span class="name">helloText</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">cellColor</span> }
<span class="type">Cell</span> { <span class="name">cellColor</span>: <span class="string">&quot;yellow&quot;</span>; <span class="name">onClicked</span>: <span class="name">helloText</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">cellColor</span> }
<span class="type">Cell</span> { <span class="name">cellColor</span>: <span class="string">&quot;steelblue&quot;</span>; <span class="name">onClicked</span>: <span class="name">helloText</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">cellColor</span> }
<span class="type">Cell</span> { <span class="name">cellColor</span>: <span class="string">&quot;black&quot;</span>; <span class="name">onClicked</span>: <span class="name">helloText</span>.<span class="name">color</span> <span class="operator">=</span> <span class="name">cellColor</span> }
}
}</pre>
<h2 id="walkthrough">Walkthrough</h2>
<pre class="qml">        <span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;down&quot;</span>; <span class="name">when</span>: <span class="name">mouseArea</span>.<span class="name">pressed</span> <span class="operator">==</span> <span class="number">true</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">helloText</span>; <span class="name">y</span>: <span class="number">160</span>; <span class="name">rotation</span>: <span class="number">180</span>; <span class="name">color</span>: <span class="string">&quot;red&quot;</span> }
}</pre>
<p>First, we create a new <i>down</i> state for our text type. This state will be activated when the <a href="QtQuick.MouseArea.md">MouseArea</a> is pressed, and deactivated when it is released.</p>
<p>The <i>down</i> state includes a set of property changes from our implicit <i>default state</i> (the items as they were initially defined in the QML). Specifically, we set the <code>y</code> property of the text to <code>160</code>, the rotation to <code>180</code> and the <code>color</code> to red.</p>
<pre class="qml">        <span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="name">from</span>: <span class="string">&quot;&quot;</span>; <span class="name">to</span>: <span class="string">&quot;down&quot;</span>; <span class="name">reversible</span>: <span class="number">true</span>
<span class="type"><a href="QtQuick.ParallelAnimation.md">ParallelAnimation</a></span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">&quot;y,rotation&quot;</span>; <span class="name">duration</span>: <span class="number">500</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">duration</span>: <span class="number">500</span> }
}
}</pre>
<p>Because we don't want the text to appear at the bottom instantly but rather move smoothly, we add a transition between our two states.</p>
<p><code>from</code> and <code>to</code> define the states between which the transition will run. In this case, we want a transition from the default state to our <i>down</i> state.</p>
<p>Because we want the same transition to be run in reverse when changing back from the <i>down</i> state to the default state, we set <code>reversible</code> to <code>true</code>. This is equivalent to writing the two transitions separately.</p>
<p>The <a href="QtQuick.ParallelAnimation.md">ParallelAnimation</a> type makes sure that the two types of animations (number and color) start at the same time. We could also run them one after the other by using <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a> instead.</p>
<p>For more details on states and transitions, see <a href="QtQuick.qtquick-statesanimations-states.md">Qt Quick States</a> and the states and transitions example.</p>
<!-- @@@qml-tutorial3.html -->
<p class="naviNextPrevious footerNavi">
<a class="prevPage" href="QtQuick.qml-tutorial2.md">QML Tutorial 2 - QML Components</a>
</p>
