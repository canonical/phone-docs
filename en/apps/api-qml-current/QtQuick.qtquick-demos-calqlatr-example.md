---
Title: QtQuick.qtquick-demos-calqlatr-example
---

# QtQuick.qtquick-demos-calqlatr-example

<span class="subtitle"></span>
<!-- $$$demos/calqlatr-description -->
<p class="centerAlign"><img src="../../../../media/qtquick-demo-calqlatr.png" alt="" /></p><p><i>Calqlatr</i> demonstrates various QML and <a href="QtQuick.qtquick-index.md">Qt Quick</a> features, such as displaying custom components and using animation to move the components around in the application view. The application logic is implemented in JavaScript and the appearance is implemented in QML.</p>
<h2 id="running-the-example">Running the Example</h2>
<p>To run the example from Qt Creator, open the <b>Welcome</b> mode and select the example from <b>Examples</b>. For more information, visit Building and Running an Example.</p>
<h2 id="displaying-custom-components">Displaying Custom Components</h2>
<p>In the Calqlatr application, we use the following custom types that are each defined in a separate .qml file:</p>
<ul>
<li>Button.qml</li>
<li>Display.qml</li>
<li>NumberPad.qml</li>
</ul>
<p>To use the custom types, we add an import statement to the main QML file, calqlatr.qml that imports the folder called <code>content</code> where the types are located:</p>
<pre class="cpp">import <span class="string">&quot;content&quot;</span></pre>
<p>We can then display custom components by adding the component types to any QML file. For example, we use the NumberPad type in calqlatr.qml to create the number pad of the calculator. We place the type inside an <a href="QtQuick.Item.md">Item</a> QML type, which is the base type for all visual items in Qt Quick:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">pad</span>
<span class="name">width</span>: <span class="number">180</span>
<span class="type">NumberPad</span> { <span class="name">id</span>: <span class="name">numPad</span>; <span class="name">y</span>: <span class="number">10</span>; <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span> }
}</pre>
<p>Further, we use the Button type in the <code>NumberPad</code> type to create the calculator buttons. Button.qml specifies the basic properties for a button that we can modify for each button instance in NumberPad.qml. For the digit and separator buttons, we additionally specify the text property using the property alias <code>text</code> that we define in Button.qml.</p>
<p>For the operator buttons, we also specify another color (green) using the property alias <code>color</code> and set the operator property to <code>true</code>. We use the operator property in functions that perform the calculations.</p>
<p>We place the buttons inside a <a href="QtQuick.qtquick-positioning-layouts.md#grid">Grid</a> QML type to position them in a grid:</p>
<pre class="qml"><span class="type"><a href="QtQuick.Grid.md">Grid</a></span> {
<span class="name">columns</span>: <span class="number">3</span>
<span class="name">columnSpacing</span>: <span class="number">32</span>
<span class="name">rowSpacing</span>: <span class="number">16</span>
signal <span class="type">buttonPressed</span>
<span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;7&quot;</span> }
<span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;8&quot;</span> }
<span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;9&quot;</span> }
<span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;4&quot;</span> }
<span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;5&quot;</span> }
<span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;6&quot;</span> }
<span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;1&quot;</span> }
<span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;2&quot;</span> }
<span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;3&quot;</span> }
<span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;0&quot;</span> }
<span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;.&quot;</span>; <span class="name">dimmable</span>: <span class="number">true</span> }
<span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot; &quot;</span> }
<span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;±&quot;</span>; <span class="name">color</span>: <span class="string">&quot;#6da43d&quot;</span>; <span class="name">operator</span>: <span class="number">true</span>; <span class="name">dimmable</span>: <span class="number">true</span> }
<span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;−&quot;</span>; <span class="name">color</span>: <span class="string">&quot;#6da43d&quot;</span>; <span class="name">operator</span>: <span class="number">true</span>; <span class="name">dimmable</span>: <span class="number">true</span> }
<span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;+&quot;</span>; <span class="name">color</span>: <span class="string">&quot;#6da43d&quot;</span>; <span class="name">operator</span>: <span class="number">true</span>; <span class="name">dimmable</span>: <span class="number">true</span> }
<span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;√&quot;</span>; <span class="name">color</span>: <span class="string">&quot;#6da43d&quot;</span>; <span class="name">operator</span>: <span class="number">true</span>; <span class="name">dimmable</span>: <span class="number">true</span> }
<span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;÷&quot;</span>; <span class="name">color</span>: <span class="string">&quot;#6da43d&quot;</span>; <span class="name">operator</span>: <span class="number">true</span>; <span class="name">dimmable</span>: <span class="number">true</span> }
<span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;×&quot;</span>; <span class="name">color</span>: <span class="string">&quot;#6da43d&quot;</span>; <span class="name">operator</span>: <span class="number">true</span>; <span class="name">dimmable</span>: <span class="number">true</span> }
<span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;C&quot;</span>; <span class="name">color</span>: <span class="string">&quot;#6da43d&quot;</span>; <span class="name">operator</span>: <span class="number">true</span> }
<span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot; &quot;</span>; <span class="name">color</span>: <span class="string">&quot;#6da43d&quot;</span>; <span class="name">operator</span>: <span class="number">true</span> }
<span class="type">Button</span> { <span class="name">text</span>: <span class="string">&quot;=&quot;</span>; <span class="name">color</span>: <span class="string">&quot;#6da43d&quot;</span>; <span class="name">operator</span>: <span class="number">true</span>; <span class="name">dimmable</span>: <span class="number">true</span> }
}</pre>
<p>Some of the buttons also have a <code>dimmable</code> property set, meaning that they can be visually disabled (dimmed) whenever the calculator engine does not accept input from that button. As an example, the button for square root operator is dimmed for negative values.</p>
<h2 id="animating-components">Animating Components</h2>
<p>We use the Display type to display calculations. In Display.qml, we use images to make the display component look like a slip of paper that contains a grip. Users can drag the grip to move the display from left to right.</p>
<p>When users release the grip, the <a href="QtQuick.AnimationController.md">AnimationController</a> QML type that we define in the calqlatr.qml file finishes running the controlled animation in either a forwards or a backwards direction. To run the animation, we call either completeToEnd() or completeToBeginning(), depending on the direction. We do this in the <a href="QtQuick.MouseArea.md">MouseArea</a>'s <code>onReleased</code> signal handler, where <code>controller</code> is the id of our <a href="QtQuick.AnimationController.md">AnimationController</a>:</p>
<pre class="qml"><span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
...
<span class="name">onReleased</span>: {
<span class="keyword">if</span> (<span class="name">rewind</span>)
<span class="name">controller</span>.<span class="name">completeToBeginning</span>()
<span class="keyword">else</span>
<span class="name">controller</span>.<span class="name">completeToEnd</span>()
}
}</pre>
<p>Unlike other QML animation types, <a href="QtQuick.AnimationController.md">AnimationController</a> is not driven by internal timers but by explicitly setting its progress property to a value between <code>0.0</code> and <code>1.0</code>.</p>
<p>Inside the <a href="QtQuick.AnimationController.md">AnimationController</a>, we run two <a href="QtQuick.NumberAnimation.md">NumberAnimation</a> instances in parallel to move the number pad and the display components simultaneously to the opposite sides of the view. In addition, we run a <a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a> instance to scale the number pad during the transition, giving the animation some depth.</p>
<pre class="qml"><span class="type"><a href="QtQuick.AnimationController.md">AnimationController</a></span> {
<span class="name">id</span>: <span class="name">controller</span>
<span class="name">animation</span>: <span class="name">ParallelAnimation</span> {
<span class="name">id</span>: <span class="name">anim</span>
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">display</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">duration</span>: <span class="number">400</span>; <span class="name">from</span>: -<span class="number">16</span>; <span class="name">to</span>: <span class="name">window</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">display</span>.<span class="name">width</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">pad</span>; <span class="name">property</span>: <span class="string">&quot;x&quot;</span>; <span class="name">duration</span>: <span class="number">400</span>; <span class="name">from</span>: <span class="name">window</span>.<span class="name">width</span> <span class="operator">-</span> <span class="name">pad</span>.<span class="name">width</span>; <span class="name">to</span>: <span class="number">0</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
<span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">pad</span>; <span class="name">property</span>: <span class="string">&quot;scale&quot;</span>; <span class="name">duration</span>: <span class="number">200</span>; <span class="name">from</span>: <span class="number">1</span>; <span class="name">to</span>: <span class="number">0.97</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">pad</span>; <span class="name">property</span>: <span class="string">&quot;scale&quot;</span>; <span class="name">duration</span>: <span class="number">200</span>; <span class="name">from</span>: <span class="number">0.97</span>; <span class="name">to</span>: <span class="number">1</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
}
}
}</pre>
<p>We use the easing curve of the type <code>Easing.InOutQuad</code> to accelerate the motion until halfway and then decelerate it.</p>
<p>In Button.qml, the text colors of the number pad buttons are also animated.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">id</span>: <span class="name">textItem</span>
...
<span class="name">color</span>: (<span class="name">dimmable</span> <span class="operator">&amp;&amp;</span> <span class="name">dimmed</span>) ? <span class="name">Qt</span>.<span class="name">darker</span>(<span class="name">button</span>.<span class="name">color</span>) : <span class="name">button</span>.<span class="name">color</span>
Behavior on <span class="name">color</span> { <span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">duration</span>: <span class="number">120</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">OutElastic</span>} }
<span class="name">states</span>: [
<span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">&quot;pressed&quot;</span>
<span class="name">when</span>: <span class="name">mouse</span>.<span class="name">pressed</span> <span class="operator">&amp;&amp;</span> !<span class="name">dimmed</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> {
<span class="name">target</span>: <span class="name">textItem</span>
<span class="name">color</span>: <span class="name">Qt</span>.<span class="name">lighter</span>(<span class="name">button</span>.<span class="name">color</span>)
}
}
]
}</pre>
<p>We use Qt.darker() to darken the color when the button is dimmed, and Qt.lighter() to <i>light up</i> the button when pressed. The latter is done in a separate <a href="QtQuick.State.md">state</a> called <i>&quot;pressed&quot;</i>, which activates when the <code>pressed</code> property of the button's <a href="QtQuick.MouseArea.md">MouseArea</a> is set.</p>
<p>The color changes are animated by defining a <a href="QtQuick.Behavior.md">Behavior</a> on the <code>color</code> property.</p>
<p>In order to dynamically change the <code>dimmed</code> property of all the buttons of the <code>NumberPad</code>, we connect its <code>buttonPressed</code> signal to the <code>Button</code>'s <code>updateDimmed()</code> function in Button.qml:</p>
<pre class="qml"><span class="keyword">function</span> <span class="name">updateDimmed</span>() {
<span class="name">dimmed</span> <span class="operator">=</span> <span class="name">window</span>.<span class="name">isButtonDisabled</span>(<span class="name">button</span>.<span class="name">text</span>)
}
<span class="name">Component</span>.onCompleted: {
<span class="name">numPad</span>.<span class="name">buttonPressed</span>.<span class="name">connect</span>(<span class="name">updateDimmed</span>)
<span class="name">updateDimmed</span>()
}</pre>
<p>This way, when a button is pressed, all buttons on the <code>NumPad</code> receive a <code>buttonPressed</code> signal and are activated or deactivated according to the state of the calculator engine.</p>
<h2 id="performing-calculations">Performing Calculations</h2>
<p>The calculator.js file defines our calculator engine. It contains variables to store the calculator state, and functions that are called when the user presses the digit and operator buttons. To use the engine, we import calculator.js in the calqlatr.qml file as <code>CalcEngine</code>:</p>
<pre class="cpp">import <span class="string">&quot;content/calculator.js&quot;</span> as CalcEngine</pre>
<p>Importing the engine creates a new instance of it. Therefore, we only do it in the main QML file, <code>calqlatr.qml</code>. The root item defined in this file contains helper functions that allow other types to access the calculator engine:</p>
<pre class="qml"><span class="keyword">function</span> <span class="name">operatorPressed</span>(<span class="name">operator</span>) {
<span class="name">CalcEngine</span>.<span class="name">operatorPressed</span>(<span class="name">operator</span>)
<span class="name">numPad</span>.<span class="name">buttonPressed</span>()
}
<span class="keyword">function</span> <span class="name">digitPressed</span>(<span class="name">digit</span>) {
<span class="name">CalcEngine</span>.<span class="name">digitPressed</span>(<span class="name">digit</span>)
<span class="name">numPad</span>.<span class="name">buttonPressed</span>()
}
<span class="keyword">function</span> <span class="name">isButtonDisabled</span>(<span class="name">op</span>) {
<span class="keyword">return</span> <span class="name">CalcEngine</span>.<span class="name">disabled</span>(<span class="name">op</span>)
}</pre>
<p>When users press a digit, the text from the digit appears on the display. When they press an operator, the appropriate calculation is performed, and the result can be displayed using the equals (=) operator. The clear (C) operator resets the calculator engine.</p>
<h2 id="list-of-files">List of Files</h2>
<p>Files:</p>
<ul>
<li>demos/calqlatr/calqlatr.qml</li>
<li>demos/calqlatr/content/Button.qml</li>
<li>demos/calqlatr/content/Display.qml</li>
<li>demos/calqlatr/content/NumberPad.qml</li>
<li>demos/calqlatr/content/calculator.js</li>
<li>demos/calqlatr/main.cpp</li>
<li>demos/calqlatr/calqlatr.pro</li>
<li>demos/calqlatr/calqlatr.qmlproject</li>
<li>demos/calqlatr/calqlatr.qrc</li>
</ul>
<p><b>See also </b>QML Applications.</p>
<!-- @@@demos/calqlatr -->
