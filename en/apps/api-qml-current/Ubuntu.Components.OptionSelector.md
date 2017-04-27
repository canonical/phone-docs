---
Title: Ubuntu.Components.OptionSelector
---

# Ubuntu.Components.OptionSelector

<span class="subtitle"></span>
<!-- $$$OptionSelector-brief -->
<p>Component displaying either a single selected value or expanded multiple choice with an optional image and subtext when not expanded, when expanding it opens a listing of all the possible values for selection with an additional option of always being expanded. If multiple choice is selected the list is expanded automatically. More...</p>
<!-- @@@OptionSelector -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Components 1.3</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="Ubuntu.Components.ListItems.Empty.md">Empty</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#colourImage-prop">colourImage</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#containerHeight-prop">containerHeight</a></b></b> : real</li>
<li class="fn"><b><b><a href="#currentlyExpanded-prop">currentlyExpanded</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#delegate-prop">delegate</a></b></b> : Component</li>
<li class="fn"><b><b><a href="#expanded-prop">expanded</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#itemHeight-prop">itemHeight</a></b></b> : real</li>
<li class="fn"><b><b><a href="#model-prop">model</a></b></b> : var</li>
<li class="fn"><b><b><a href="#multiSelection-prop">multiSelection</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#selectedIndex-prop">selectedIndex</a></b></b> : int</li>
</ul>
<h2 id="signals">Signals</h2>
<ul>
<li class="fn"><b><b><a href="#delegateClicked-signal">delegateClicked</a></b></b>(int <i>index</i>)</li>
<li class="fn"><b><b><a href="#expansionCompleted-signal">expansionCompleted</a></b></b>()</li>
</ul>
<!-- $$$OptionSelector-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>Examples:</p>
<pre class="qml">import Ubuntu.Components 1.3
<span class="type"><a href="QtQuick.Column.md">Column</a></span> {
<span class="name">spacing</span>: <span class="name">units</span>.<span class="name">gu</span>(<span class="number">3</span>)
<span class="type"><a href="index.html">OptionSelector</a></span> {
<span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Label&quot;</span>)
<span class="name">model</span>: [<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 1&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 2&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 3&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 4&quot;</span>)]
}
<span class="type"><a href="index.html">OptionSelector</a></span> {
<span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Label&quot;</span>)
<span class="name">expanded</span>: <span class="number">true</span>
<span class="name">model</span>: [<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 1&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 2&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 3&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 4&quot;</span>)]
}
<span class="type"><a href="index.html">OptionSelector</a></span> {
<span class="name">objectName</span>: <span class="string">&quot;optionselector_multipleselection&quot;</span>
<span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Multiple Selection&quot;</span>)
<span class="name">expanded</span>: <span class="number">false</span>
<span class="name">multiSelection</span>: <span class="number">true</span>
<span class="name">model</span>: [<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 1&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 2&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 3&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 4&quot;</span>)]
}
<span class="type"><a href="index.html">OptionSelector</a></span> {
<span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Label&quot;</span>)
<span class="name">model</span>: <span class="name">customModel</span>
<span class="name">expanded</span>: <span class="number">true</span>
<span class="name">colourImage</span>: <span class="number">true</span>
<span class="name">delegate</span>: <span class="name">selectorDelegate</span>
}
<span class="type"><a href="QtQml.Component.md">Component</a></span> {
<span class="name">id</span>: <span class="name">selectorDelegate</span>
<span class="type">OptionSelectorDelegate</span> { <span class="name">text</span>: <span class="name">name</span>; <span class="name">subText</span>: <span class="name">description</span>; <span class="name">iconSource</span>: <span class="name">image</span> }
}
<span class="type"><a href="QtQml.ListModel.md">ListModel</a></span> {
<span class="name">id</span>: <span class="name">customModel</span>
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">name</span>: <span class="string">&quot;Name 1&quot;</span>; <span class="name">description</span>: <span class="string">&quot;Description 1&quot;</span>; <span class="name">image</span>: <span class="string">&quot;images.png&quot;</span> }
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">name</span>: <span class="string">&quot;Name 2&quot;</span>; <span class="name">description</span>: <span class="string">&quot;Description 2&quot;</span>; <span class="name">image</span>: <span class="string">&quot;images.png&quot;</span> }
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">name</span>: <span class="string">&quot;Name 3&quot;</span>; <span class="name">description</span>: <span class="string">&quot;Description 3&quot;</span>; <span class="name">image</span>: <span class="string">&quot;images.png&quot;</span> }
<span class="type"><a href="QtQml.ListElement.md">ListElement</a></span> { <span class="name">name</span>: <span class="string">&quot;Name 4&quot;</span>; <span class="name">description</span>: <span class="string">&quot;Description 4&quot;</span>; <span class="name">image</span>: <span class="string">&quot;images.png&quot;</span> }
}
<span class="type"><a href="index.html">OptionSelector</a></span> {
<span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Label&quot;</span>)
<span class="name">model</span>: [<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 1&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 2&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 3&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 4&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 5&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 6&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 7&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 8&quot;</span>)]
<span class="name">containerHeight</span>: <span class="name">itemHeight</span> <span class="operator">*</span> <span class="number">4</span>
}
<span class="type"><a href="index.html">OptionSelector</a></span> {
<span class="name">text</span>: <span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Label&quot;</span>)
<span class="name">expanded</span>: <span class="number">true</span>
<span class="name">model</span>: [<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 1&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 2&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 3&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 4&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 5&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 6&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 7&quot;</span>),
<span class="name">i18n</span>.<span class="name">tr</span>(<span class="string">&quot;Value 8&quot;</span>)]
<span class="name">containerHeight</span>: <span class="name">itemHeight</span> <span class="operator">*</span> <span class="number">4</span>
}
}</pre>
<!-- @@@OptionSelector -->
<h2>Property Documentation</h2>
<!-- $$$colourImage -->
<table class="qmlname"><tr valign="top" id="colourImage-prop"><td class="tblQmlPropNode"><p><span class="name">colourImage</span> : <span class="type">bool</span></p></td></tr></table><p>Colours image according to the fieldText colour of the theme, otherwise source colour is maintained.</p>
<!-- @@@colourImage -->
<br/>
<!-- $$$containerHeight -->
<table class="qmlname"><tr valign="top" id="containerHeight-prop"><td class="tblQmlPropNode"><p><span class="name">containerHeight</span> : <span class="type">real</span></p></td></tr></table><p>Custom height for list container which allows scrolling inside the selector.</p>
<!-- @@@containerHeight -->
<br/>
<!-- $$$currentlyExpanded -->
<table class="qmlname"><tr valign="top" id="currentlyExpanded-prop"><td class="tblQmlPropNode"><p><span class="name">currentlyExpanded</span> : <span class="type">bool</span></p></td></tr></table><p>Is our list currently expanded?</p>
<!-- @@@currentlyExpanded -->
<br/>
<!-- $$$delegate -->
<table class="qmlname"><tr valign="top" id="delegate-prop"><td class="tblQmlPropNode"><p><span class="name">delegate</span> : <span class="type"><a href="QtQml.Component.md">Component</a></span></p></td></tr></table><p><a href="QtQuick.ListView.md">ListView</a> delegate.</p>
<!-- @@@delegate -->
<br/>
<!-- $$$expanded -->
<table class="qmlname"><tr valign="top" id="expanded-prop"><td class="tblQmlPropNode"><p><span class="name">expanded</span> : <span class="type">bool</span></p></td></tr></table><p>Specifies whether the list is always expanded.</p>
<!-- @@@expanded -->
<br/>
<!-- $$$itemHeight -->
<table class="qmlname"><tr valign="top" id="itemHeight-prop"><td class="tblQmlPropNode"><p><span class="qmlreadonly">[read-only] </span><span class="name">itemHeight</span> : <span class="type">real</span></p></td></tr></table><p>Height of an individual list item.</p>
<!-- @@@itemHeight -->
<br/>
<!-- $$$model -->
<table class="qmlname"><tr valign="top" id="model-prop"><td class="tblQmlPropNode"><p><span class="name">model</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td></tr></table><p>The list of values that will be shown under the label text. This is a model.</p>
<!-- @@@model -->
<br/>
<!-- $$$multiSelection -->
<table class="qmlname"><tr valign="top" id="multiSelection-prop"><td class="tblQmlPropNode"><p><span class="name">multiSelection</span> : <span class="type">bool</span></p></td></tr></table><p>If the multiple choice selection is enabled the list is always expanded.</p>
<!-- @@@multiSelection -->
<br/>
<!-- $$$selectedIndex -->
<table class="qmlname"><tr valign="top" id="selectedIndex-prop"><td class="tblQmlPropNode"><p><span class="name">selectedIndex</span> : <span class="type">int</span></p></td></tr></table><p>The index of the currently selected element in our list.</p>
<!-- @@@selectedIndex -->
<br/>
<h2>Signal Documentation</h2>
<!-- $$$delegateClicked -->
<table class="qmlname"><tr valign="top" id="delegateClicked-signal"><td class="tblQmlFuncNode"><p><span class="name">delegateClicked</span>(<span class="type">int</span><i> index</i>)</p></td></tr></table><p>Called when delegate is clicked.</p>
<!-- @@@delegateClicked -->
<br/>
<!-- $$$expansionCompleted -->
<table class="qmlname"><tr valign="top" id="expansionCompleted-signal"><td class="tblQmlFuncNode"><p><span class="name">expansionCompleted</span>()</p></td></tr></table><p>Called when the selector has finished expanding or collapsing.</p>
<!-- @@@expansionCompleted -->
<br/>
