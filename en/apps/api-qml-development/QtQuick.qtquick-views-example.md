---
Title: QtQuick.qtquick-views-example
---

# QtQuick.qtquick-views-example

<span class="subtitle"></span>
<!-- $$$views-description -->
<p class="centerAlign"><img src="../../../../media/qml-modelviews-example.png" alt="" /></p><p><i>Views</i> is a collection of small QML examples relating to model and view functionality. They demonstrate how to show data from a model using the Qt Quick view types. For more information, visit the <a href="QtQuick.qtquick-modelviewsdata-modelview.md">Models and Views in Qt Quick</a> page.</p>
<h2 id="running-the-example">Running the Example</h2>
<p>To run the example from Qt Creator, open the <b>Welcome</b> mode and select the example from <b>Examples</b>. For more information, visit Building and Running an Example.</p>
<h2 id="gridview-and-pathview">GridView and PathView</h2>
<p><i>GridView</i> and <i>PathView</i> demonstrate usage of these types to display views.</p>
<pre class="qml"><span class="type"><a href="QtQuick.GridView.md">GridView</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">cellWidth</span>: <span class="number">100</span>; <span class="name">cellHeight</span>: <span class="number">100</span>
<span class="name">focus</span>: <span class="number">true</span>
<span class="name">model</span>: <span class="name">appModel</span>
<span class="name">highlight</span>: <span class="name">Rectangle</span> { <span class="name">width</span>: <span class="number">80</span>; <span class="name">height</span>: <span class="number">80</span>; <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span> }
<span class="name">delegate</span>: <span class="name">Item</span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">myIcon</span>
<span class="name">y</span>: <span class="number">20</span>; <span class="name">anchors</span>.horizontalCenter: <span class="name">parent</span>.<span class="name">horizontalCenter</span>
<span class="name">source</span>: <span class="name">icon</span>
}
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="type">anchors</span> { <span class="name">top</span>: <span class="name">myIcon</span>.<span class="name">bottom</span>; <span class="name">horizontalCenter</span>: <span class="name">parent</span>.<span class="name">horizontalCenter</span> }
<span class="name">text</span>: <span class="name">name</span>
}
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">parent</span>.<span class="name">GridView</span>.<span class="name">view</span>.<span class="name">currentIndex</span> <span class="operator">=</span> <span class="name">index</span>
}
}
}</pre>
<h2 id="dynamic-list">Dynamic List</h2>
<p><i>Dynamic List</i> demonstrates animation of runtime additions and removals to a <a href="QtQuick.ListView.md">ListView</a>.</p>
<p>The <a href="QtQuick.ListView.md">ListView</a>.onAdd signal handler runs an animation when new items are added to the view, and the <a href="QtQuick.ListView.md">ListView</a>.onRemove another when they are removed.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">ListView</span>.onAdd: <span class="name">SequentialAnimation</span> {
<span class="type"><a href="QtQuick.PropertyAction.md">PropertyAction</a></span> { <span class="name">target</span>: <span class="name">delegateItem</span>; <span class="name">property</span>: <span class="string">&quot;height&quot;</span>; <span class="name">value</span>: <span class="number">0</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">delegateItem</span>; <span class="name">property</span>: <span class="string">&quot;height&quot;</span>; <span class="name">to</span>: <span class="number">80</span>; <span class="name">duration</span>: <span class="number">250</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
}
<span class="name">ListView</span>.onRemove: <span class="name">SequentialAnimation</span> {
<span class="type"><a href="QtQuick.PropertyAction.md">PropertyAction</a></span> { <span class="name">target</span>: <span class="name">delegateItem</span>; <span class="name">property</span>: <span class="string">&quot;ListView.delayRemove&quot;</span>; <span class="name">value</span>: <span class="number">true</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">target</span>: <span class="name">delegateItem</span>; <span class="name">property</span>: <span class="string">&quot;height&quot;</span>; <span class="name">to</span>: <span class="number">0</span>; <span class="name">duration</span>: <span class="number">250</span>; <span class="name">easing</span>.type: <span class="name">Easing</span>.<span class="name">InOutQuad</span> }
<span class="comment">// Make sure delayRemove is set back to false so that the item can be destroyed</span>
<span class="type"><a href="QtQuick.PropertyAction.md">PropertyAction</a></span> { <span class="name">target</span>: <span class="name">delegateItem</span>; <span class="name">property</span>: <span class="string">&quot;ListView.delayRemove&quot;</span>; <span class="name">value</span>: <span class="number">false</span> }
}
}</pre>
<h3 >Expanding Delegates</h3>
<p><i>Expanding Delegates</i> demonstrates delegates that expand when activated.</p>
<p>It has a complex delegate the size and appearance of which can change, displacing other items in the view.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">recipe</span>
<span class="comment">// Create a property to contain the visibility of the details.</span>
<span class="comment">// We can bind multiple element's opacity to this one property,</span>
<span class="comment">// rather than having a &quot;PropertyChanges&quot; line for each element we</span>
<span class="comment">// want to fade.</span>
property <span class="type">real</span> <span class="name">detailsOpacity</span> : <span class="number">0</span>
<span class="type"><a href="QtQuick.MouseArea.md">MouseArea</a></span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">recipe</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">'Details'</span>;
}
<span class="comment">// Lay out the page: picture, title and ingredients at the top, and method at the</span>
<span class="comment">// bottom.  Note that elements that should not be visible in the list</span>
<span class="comment">// mode have their opacity set to recipe.detailsOpacity.</span>
<span class="type"><a href="QtQuick.Row.md">Row</a></span> {
<span class="name">id</span>: <span class="name">topLayout</span>
<span class="name">x</span>: <span class="number">10</span>; <span class="name">y</span>: <span class="number">10</span>; <span class="name">height</span>: <span class="name">recipeImage</span>.<span class="name">height</span>; <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">spacing</span>: <span class="number">10</span>
<span class="type"><a href="QtQuick.Image.md">Image</a></span> {
<span class="name">id</span>: <span class="name">recipeImage</span>
<span class="name">width</span>: <span class="number">50</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="name">source</span>: <span class="name">picture</span>
}
<span class="type"><a href="QtQuick.Item.md">Item</a></span> {
<span class="name">id</span>: <span class="name">details</span>
<span class="name">x</span>: <span class="number">10</span>; <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">-</span> <span class="number">20</span>
<span class="type">anchors</span> { <span class="name">top</span>: <span class="name">topLayout</span>.<span class="name">bottom</span>; <span class="name">topMargin</span>: <span class="number">10</span>; <span class="name">bottom</span>: <span class="name">parent</span>.<span class="name">bottom</span>; <span class="name">bottomMargin</span>: <span class="number">10</span> }
<span class="name">opacity</span>: <span class="name">recipe</span>.<span class="name">detailsOpacity</span>
}
<span class="comment">// A button to close the detailed view, i.e. set the state back to default ('').</span>
<span class="type">TextButton</span> {
<span class="name">y</span>: <span class="number">10</span>
<span class="type">anchors</span> { <span class="name">right</span>: <span class="name">background</span>.<span class="name">right</span>; <span class="name">rightMargin</span>: <span class="number">10</span> }
<span class="name">opacity</span>: <span class="name">recipe</span>.<span class="name">detailsOpacity</span>
<span class="name">text</span>: <span class="string">&quot;Close&quot;</span>
<span class="name">onClicked</span>: <span class="name">recipe</span>.<span class="name">state</span> <span class="operator">=</span> <span class="string">''</span>;
}
<span class="name">states</span>: <span class="name">State</span> {
<span class="name">name</span>: <span class="string">&quot;Details&quot;</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">background</span>; <span class="name">color</span>: <span class="string">&quot;white&quot;</span> }
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">recipeImage</span>; <span class="name">width</span>: <span class="number">130</span>; <span class="name">height</span>: <span class="number">130</span> } <span class="comment">// Make picture bigger</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">recipe</span>; <span class="name">detailsOpacity</span>: <span class="number">1</span>; <span class="name">x</span>: <span class="number">0</span> } <span class="comment">// Make details visible</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">recipe</span>; <span class="name">height</span>: <span class="name">listView</span>.<span class="name">height</span> } <span class="comment">// Fill the entire list area with the detailed view</span>
<span class="comment">// Move the list so that this item is at the top.</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">recipe</span>.<span class="name">ListView</span>.<span class="name">view</span>; <span class="name">explicit</span>: <span class="number">true</span>; <span class="name">contentY</span>: <span class="name">recipe</span>.<span class="name">y</span> }
<span class="comment">// Disallow flicking while we're in detailed view</span>
<span class="type"><a href="QtQuick.PropertyChanges.md">PropertyChanges</a></span> { <span class="name">target</span>: <span class="name">recipe</span>.<span class="name">ListView</span>.<span class="name">view</span>; <span class="name">interactive</span>: <span class="number">false</span> }
}
<span class="name">transitions</span>: <span class="name">Transition</span> {
<span class="comment">// Make the state changes smooth</span>
<span class="type"><a href="QtQuick.ParallelAnimation.md">ParallelAnimation</a></span> {
<span class="type"><a href="QtQuick.ColorAnimation.md">ColorAnimation</a></span> { <span class="name">property</span>: <span class="string">&quot;color&quot;</span>; <span class="name">duration</span>: <span class="number">500</span> }
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">duration</span>: <span class="number">300</span>; <span class="name">properties</span>: <span class="string">&quot;detailsOpacity,x,contentY,height,width&quot;</span> }
}
}
}</pre>
<h2 id="highlight">Highlight</h2>
<p><i>Highlight</i> demonstrates adding a custom highlight to a <a href="QtQuick.ListView.md">ListView</a>.</p>
<pre class="qml"><span class="comment">// Define a highlight with customized movement between items.</span>
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">highlightBar</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">50</span>
<span class="name">color</span>: <span class="string">&quot;#FFFF88&quot;</span>
<span class="name">y</span>: <span class="name">listView</span>.<span class="name">currentItem</span>.<span class="name">y</span>;
Behavior on <span class="name">y</span> { <span class="type"><a href="QtQuick.SpringAnimation.md">SpringAnimation</a></span> { <span class="name">spring</span>: <span class="number">2</span>; <span class="name">damping</span>: <span class="number">0.1</span> } }
}
}
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">listView</span>
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span>
<span class="name">x</span>: <span class="number">30</span>
<span class="name">model</span>: <span class="name">PetsModel</span> {}
<span class="name">delegate</span>: <span class="name">petDelegate</span>
<span class="name">focus</span>: <span class="number">true</span>
<span class="comment">// Set the highlight delegate. Note we must also set highlightFollowsCurrentItem</span>
<span class="comment">// to false so the highlight delegate can control how the highlight is moved.</span>
<span class="name">highlight</span>: <span class="name">highlightBar</span>
<span class="name">highlightFollowsCurrentItem</span>: <span class="number">false</span>
}</pre>
<h2 id="highlight-ranges">Highlight Ranges</h2>
<p><i>Highlight Ranges</i> shows the three different highlight range modes of <a href="QtQuick.ListView.md">ListView</a>.</p>
<pre class="qml"><span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">root</span>
property <span class="type">int</span> <span class="name">current</span>: <span class="number">0</span>
property <span class="type">bool</span> <span class="name">increasing</span>: <span class="number">true</span>
<span class="comment">// Example index automation for convenience, disabled on click or tap</span>
<span class="type"><a href="QtQuick.SequentialAnimation.md">SequentialAnimation</a></span> {
<span class="name">id</span>: <span class="name">anim</span>
<span class="name">loops</span>: -<span class="number">1</span>
<span class="name">running</span>: <span class="number">true</span>
<span class="type"><a href="QtQuick.ScriptAction.md">ScriptAction</a></span> {
<span class="name">script</span>: <span class="keyword">if</span> (<span class="name">increasing</span>) {
current++;
<span class="keyword">if</span> (<span class="name">current</span> <span class="operator">&gt;=</span> <span class="name">aModel</span>.<span class="name">count</span> <span class="operator">-</span><span class="number">1</span>) {
<span class="name">current</span> <span class="operator">=</span> <span class="name">aModel</span>.<span class="name">count</span> <span class="operator">-</span> <span class="number">1</span>;
<span class="name">increasing</span> <span class="operator">=</span> !<span class="name">increasing</span>;
}
} <span class="keyword">else</span> {
current--;
<span class="keyword">if</span> (<span class="name">current</span> <span class="operator">&lt;=</span> <span class="number">0</span>) {
<span class="name">current</span> <span class="operator">=</span> <span class="number">0</span>;
<span class="name">increasing</span> <span class="operator">=</span> !<span class="name">increasing</span>;
}
}
}
<span class="type"><a href="QtQuick.PauseAnimation.md">PauseAnimation</a></span> { <span class="name">duration</span>: <span class="number">500</span> }
}
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">list1</span>
<span class="name">height</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">model</span>: <span class="name">PetsModel</span> {<span class="name">id</span>: <span class="name">aModel</span>}
<span class="name">delegate</span>: <span class="name">petDelegate</span>
<span class="name">orientation</span>: <span class="name">ListView</span>.<span class="name">Horizontal</span>
<span class="name">highlight</span>: <span class="name">Rectangle</span> { <span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span> }
<span class="name">currentIndex</span>: <span class="name">root</span>.<span class="name">current</span>
<span class="name">onCurrentIndexChanged</span>: <span class="name">root</span>.<span class="name">current</span> <span class="operator">=</span> <span class="name">currentIndex</span>
<span class="name">focus</span>: <span class="number">true</span>
}
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">list2</span>
<span class="name">y</span>: <span class="number">160</span>
<span class="name">height</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">model</span>: <span class="name">PetsModel</span> {}
<span class="name">delegate</span>: <span class="name">petDelegate</span>
<span class="name">orientation</span>: <span class="name">ListView</span>.<span class="name">Horizontal</span>
<span class="name">highlight</span>: <span class="name">Rectangle</span> { <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span> }
<span class="name">currentIndex</span>: <span class="name">root</span>.<span class="name">current</span>
<span class="name">preferredHighlightBegin</span>: <span class="number">80</span>; <span class="name">preferredHighlightEnd</span>: <span class="number">220</span>
<span class="name">highlightRangeMode</span>: <span class="name">ListView</span>.<span class="name">ApplyRange</span>
}
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">list3</span>
<span class="name">y</span>: <span class="number">320</span>
<span class="name">height</span>: <span class="number">50</span>; <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">model</span>: <span class="name">PetsModel</span> {}
<span class="name">delegate</span>: <span class="name">petDelegate</span>
<span class="name">orientation</span>: <span class="name">ListView</span>.<span class="name">Horizontal</span>
<span class="name">highlight</span>: <span class="name">Rectangle</span> { <span class="name">color</span>: <span class="string">&quot;yellow&quot;</span> }
<span class="name">currentIndex</span>: <span class="name">root</span>.<span class="name">current</span>
<span class="name">onCurrentIndexChanged</span>: <span class="name">root</span>.<span class="name">current</span> <span class="operator">=</span> <span class="name">currentIndex</span>
<span class="name">preferredHighlightBegin</span>: <span class="number">125</span>; <span class="name">preferredHighlightEnd</span>: <span class="number">125</span>
<span class="name">highlightRangeMode</span>: <span class="name">ListView</span>.<span class="name">StrictlyEnforceRange</span>
}
}</pre>
<h2 id="sections">Sections</h2>
<p><i>Sections</i> demonstrates the various section headers and footers available to <a href="QtQuick.ListView.md">ListView</a>.</p>
<pre class="qml"><span class="comment">// The delegate for each section header</span>
<span class="type">Component</span> {
<span class="name">id</span>: <span class="name">sectionHeading</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="name">container</span>.<span class="name">width</span>
<span class="name">height</span>: <span class="name">childrenRect</span>.<span class="name">height</span>
<span class="name">color</span>: <span class="string">&quot;lightsteelblue&quot;</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> {
<span class="name">text</span>: <span class="name">section</span>
<span class="name">font</span>.bold: <span class="number">true</span>
<span class="name">font</span>.pixelSize: <span class="number">20</span>
}
}
}
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">view</span>
<span class="name">anchors</span>.top: <span class="name">parent</span>.<span class="name">top</span>
<span class="name">anchors</span>.bottom: <span class="name">buttonBar</span>.<span class="name">top</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">model</span>: <span class="name">animalsModel</span>
<span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="name">name</span>; <span class="name">font</span>.pixelSize: <span class="number">18</span> }
<span class="name">section</span>.property: <span class="string">&quot;size&quot;</span>
<span class="name">section</span>.criteria: <span class="name">ViewSection</span>.<span class="name">FullString</span>
<span class="name">section</span>.delegate: <span class="name">sectionHeading</span>
}</pre>
<h2 id="packages">Packages</h2>
<p><i>Packages</i> uses the Package type to transition delegates between two views.</p>
<p>It has a Package object which defines delegate items for each view and an item that can be transferred between delegates.</p>
<pre class="qml"><span class="type">Package</span> {
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">id</span>: <span class="name">listDelegate</span>; <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="number">25</span>; <span class="name">text</span>: <span class="string">'Empty'</span>; <span class="name">Package</span>.name: <span class="string">'list'</span> }
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">id</span>: <span class="name">gridDelegate</span>; <span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>; <span class="name">height</span>: <span class="number">50</span>; <span class="name">text</span>: <span class="string">'Empty'</span>; <span class="name">Package</span>.name: <span class="string">'grid'</span> }
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">id</span>: <span class="name">wrapper</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="number">25</span>
<span class="name">color</span>: <span class="string">'lightsteelblue'</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">display</span>; <span class="name">anchors</span>.centerIn: <span class="name">parent</span> }
<span class="name">state</span>: <span class="name">root</span>.<span class="name">upTo</span> <span class="operator">&gt;</span> <span class="name">index</span> ? <span class="string">'inGrid'</span> : <span class="string">'inList'</span>
<span class="name">states</span>: [
<span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">'inList'</span>
<span class="type"><a href="QtQuick.ParentChange.md">ParentChange</a></span> { <span class="name">target</span>: <span class="name">wrapper</span>; <span class="name">parent</span>: <span class="name">listDelegate</span> }
},
<span class="type"><a href="QtQuick.State.md">State</a></span> {
<span class="name">name</span>: <span class="string">'inGrid'</span>
<span class="type"><a href="QtQuick.ParentChange.md">ParentChange</a></span> {
<span class="name">target</span>: <span class="name">wrapper</span>; <span class="name">parent</span>: <span class="name">gridDelegate</span>
<span class="name">x</span>: <span class="number">0</span>; <span class="name">y</span>: <span class="number">0</span>; <span class="name">width</span>: <span class="name">gridDelegate</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">gridDelegate</span>.<span class="name">height</span>
}
}
]
<span class="name">transitions</span>: [
<span class="type"><a href="QtQuick.Transition.md">Transition</a></span> {
<span class="type"><a href="QtQuick.ParentAnimation.md">ParentAnimation</a></span> {
<span class="type"><a href="QtQuick.NumberAnimation.md">NumberAnimation</a></span> { <span class="name">properties</span>: <span class="string">'x,y,width,height'</span>; <span class="name">duration</span>: <span class="number">300</span> }
}
}
]
}
}</pre>
<p>A DelegateModel allows the individual views to access their specific items from the shared package delegate.</p>
<pre class="qml"><span class="type">DelegateModel</span> {
<span class="name">id</span>: <span class="name">visualModel</span>
<span class="name">delegate</span>: <span class="name">Delegate</span> {}
<span class="name">model</span>: <span class="name">myModel</span>
}
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">lv</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span><span class="operator">/</span><span class="number">2</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">model</span>: <span class="name">visualModel</span>.<span class="name">parts</span>.<span class="name">list</span>
}
<span class="type"><a href="QtQuick.GridView.md">GridView</a></span> {
<span class="name">y</span>: <span class="name">parent</span>.<span class="name">height</span><span class="operator">/</span><span class="number">2</span>
<span class="name">height</span>: <span class="name">parent</span>.<span class="name">height</span><span class="operator">/</span><span class="number">2</span>
<span class="name">width</span>: <span class="name">parent</span>.<span class="name">width</span>
<span class="name">cellWidth</span>: <span class="name">width</span> <span class="operator">/</span> <span class="number">2</span>
<span class="name">cellHeight</span>: <span class="number">50</span>
<span class="name">model</span>: <span class="name">visualModel</span>.<span class="name">parts</span>.<span class="name">grid</span>
}</pre>
<h2 id="objectmodel">ObjectModel</h2>
<p><i>ObjectModel</i> uses an <a href="QtQuick.views/#objectmodel">ObjectModel</a> for the model instead of a <a href="QtQuick.qtquick-modelviewsdata-modelview.md#listmodel">ListModel</a>.</p>
<pre class="qml"><span class="type">ObjectModel</span> {
<span class="name">id</span>: <span class="name">itemModel</span>
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="name">view</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">view</span>.<span class="name">height</span>
<span class="name">color</span>: <span class="string">&quot;#FFFEF0&quot;</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Page 1&quot;</span>; <span class="name">font</span>.bold: <span class="number">true</span>; <span class="name">anchors</span>.centerIn: <span class="name">parent</span> }
<span class="name">Component</span>.onDestruction: <span class="keyword">if</span> (<span class="name">printDestruction</span>) <span class="name">print</span>(<span class="string">&quot;destroyed 1&quot;</span>)
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="name">view</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">view</span>.<span class="name">height</span>
<span class="name">color</span>: <span class="string">&quot;#F0FFF7&quot;</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Page 2&quot;</span>; <span class="name">font</span>.bold: <span class="number">true</span>; <span class="name">anchors</span>.centerIn: <span class="name">parent</span> }
<span class="name">Component</span>.onDestruction: <span class="keyword">if</span> (<span class="name">printDestruction</span>) <span class="name">print</span>(<span class="string">&quot;destroyed 2&quot;</span>)
}
<span class="type"><a href="QtQuick.Rectangle.md">Rectangle</a></span> {
<span class="name">width</span>: <span class="name">view</span>.<span class="name">width</span>; <span class="name">height</span>: <span class="name">view</span>.<span class="name">height</span>
<span class="name">color</span>: <span class="string">&quot;#F4F0FF&quot;</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="string">&quot;Page 3&quot;</span>; <span class="name">font</span>.bold: <span class="number">true</span>; <span class="name">anchors</span>.centerIn: <span class="name">parent</span> }
<span class="name">Component</span>.onDestruction: <span class="keyword">if</span> (<span class="name">printDestruction</span>) <span class="name">print</span>(<span class="string">&quot;destroyed 3&quot;</span>)
}
}
<span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">id</span>: <span class="name">view</span>
<span class="type">anchors</span> { <span class="name">fill</span>: <span class="name">parent</span>; <span class="name">bottomMargin</span>: <span class="number">30</span> }
<span class="name">model</span>: <span class="name">itemModel</span>
<span class="name">preferredHighlightBegin</span>: <span class="number">0</span>; <span class="name">preferredHighlightEnd</span>: <span class="number">0</span>
<span class="name">highlightRangeMode</span>: <span class="name">ListView</span>.<span class="name">StrictlyEnforceRange</span>
<span class="name">orientation</span>: <span class="name">ListView</span>.<span class="name">Horizontal</span>
<span class="name">snapMode</span>: <span class="name">ListView</span>.<span class="name">SnapOneItem</span>; <span class="name">flickDeceleration</span>: <span class="number">2000</span>
<span class="name">cacheBuffer</span>: <span class="number">200</span>
}</pre>
<h2 id="display-margins">Display Margins</h2>
<p><i>Display Margins</i> uses delegates to display items and implements a simple header and footer components.</p>
<p>Files:</p>
<ul>
<li>views/views.qml</li>
<li>views/gridview/gridview-example.qml</li>
<li>views/listview/displaymargin.qml</li>
<li>views/listview/dynamiclist.qml</li>
<li>views/listview/expandingdelegates.qml</li>
<li>views/listview/highlight.qml</li>
<li>views/listview/highlightranges.qml</li>
<li>views/listview/sections.qml</li>
<li>views/listview/content/PetsModel.qml</li>
<li>views/listview/content/PressAndHoldButton.qml</li>
<li>views/listview/content/RecipesModel.qml</li>
<li>views/listview/content/SmallText.qml</li>
<li>views/listview/content/TextButton.qml</li>
<li>views/listview/content/ToggleButton.qml</li>
<li>views/objectmodel/objectmodel.qml</li>
<li>views/package/Delegate.qml</li>
<li>views/package/view.qml</li>
<li>views/parallax/parallax.qml</li>
<li>views/parallax/content/Clock.qml</li>
<li>views/parallax/content/ParallaxView.qml</li>
<li>views/parallax/content/QuitButton.qml</li>
<li>views/parallax/content/Smiley.qml</li>
<li>views/parallax/content/pics/home-page.svg</li>
<li>views/pathview/pathview-example.qml</li>
<li>views/visualdatamodel/dragselection.qml</li>
<li>views/visualdatamodel/slideshow.qml</li>
<li>views/main.cpp</li>
<li>views/views.pro</li>
<li>views/views.qmlproject</li>
<li>views/views.qrc</li>
<li>views/visualdatamodel/visualdatamodel.qmlproject</li>
</ul>
<!-- @@@views -->
