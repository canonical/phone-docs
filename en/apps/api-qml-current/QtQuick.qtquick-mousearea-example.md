---
Title: QtQuick.qtquick-mousearea-example
---

# QtQuick.qtquick-mousearea-example

<span class="subtitle"></span>
<!-- $$$mousearea-description -->
<p class="centerAlign"><img src="https://developer.ubuntu.com/static/devportal_uploaded/3bbdeebc-3712-4a22-8a74-1f56ba64cf6a-../qtquick-mousearea-example/images/qml-mousearea-example.png" alt="" /></p><p><i>MouseArea</i> example shows how to respond to clicks and drags with a <a href="QtQuick.MouseArea.md">MouseArea</a>. For more information, visit <a href="QtQuick.qtquick-input-topic.md">Important Concepts In Qt Quick - User Input</a>.</p>
<h2 id="running-the-example">Running the Example</h2>
<p>To run the example from Qt Creator, open the <b>Welcome</b> mode and select the example from <b>Examples</b>. For more information, visit Building and Running an Example.</p>
<h2 id="mousearea-behavior">MouseArea Behavior</h2>
<p>When you click inside the red square, the <a href="QtQuick.qtquick-releasenotes.md#text">Text</a> type will list several properties of that click which are available to QML. The opacity of the red square will be reduced while the mouse is pressed and remains inside the <a href="QtQuick.MouseArea.md">MouseArea</a>.</p>
<p>Signals are emitted by the <a href="QtQuick.MouseArea.md">MouseArea</a> when clicks or other discrete operations occur within it.</p>
<pre class="qml"><span class="name">onPressAndHold</span>: <span class="name">btn</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Press and hold'</span>
<span class="name">onClicked</span>: <span class="name">btn</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Clicked (wasHeld='</span> <span class="operator">+</span> <span class="name">mouse</span>.<span class="name">wasHeld</span> <span class="operator">+</span> <span class="string">')'</span>
<span class="name">onDoubleClicked</span>: <span class="name">btn</span>.<span class="name">text</span> <span class="operator">=</span> <span class="string">'Double clicked'</span></pre>
<p><a href="QtQuick.MouseArea.md">MouseArea</a> can also be used to drag items around. By setting the parameters of the drag property, the target item will be dragged around if the user starts to drag within the mouse area boundary.</p>
<pre class="qml"><span class="name">drag</span>.target: <span class="name">blueSquare</span>
<span class="name">drag</span>.axis: <span class="name">Drag</span>.<span class="name">XAndYAxis</span>
<span class="name">drag</span>.minimumX: <span class="number">0</span>
<span class="name">drag</span>.maximumX: <span class="name">box</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">parent</span>.<span class="name">width</span>
<span class="name">drag</span>.minimumY: <span class="number">0</span>
<span class="name">drag</span>.maximumY: <span class="name">box</span>.<span class="name">height</span> <span class="operator">-</span> <span class="name">parent</span>.<span class="name">width</span></pre>
<p>Files:</p>
<ul>
<li>mousearea/mousearea-wheel-example.qml</li>
<li>mousearea/mousearea.qml</li>
<li>mousearea/main.cpp</li>
<li>mousearea/mousearea.pro</li>
<li>mousearea/mousearea.qmlproject</li>
<li>mousearea/mousearea.qrc</li>
</ul>
<!-- @@@mousearea -->
