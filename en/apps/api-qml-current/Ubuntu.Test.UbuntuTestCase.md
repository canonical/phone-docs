---
Title: Ubuntu.Test.UbuntuTestCase
---

# Ubuntu.Test.UbuntuTestCase

<span class="subtitle"></span>
<!-- $$$UbuntuTestCase-brief -->
<p>The UbuntuTestCase class expands the default TestCase class. More...</p>
<!-- @@@UbuntuTestCase -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import Ubuntu.Test .</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="../sdk-14.10/QtTest.TestCase.md">TestCase</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#testUtil-prop">testUtil</a></b></b> : alias</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#centerOf-method">centerOf</a></b></b>(<i>item</i>)</li>
<li class="fn"><b><b><a href="#findChild-method">findChild</a></b></b>(<i>obj</i>,  <i>objectName</i>)</li>
<li class="fn"><b><b><a href="#findChildWithProperty-method">findChildWithProperty</a></b></b>(<i>item</i>,  <i>property</i>,  <i>value</i>)</li>
<li class="fn"><b><b><a href="#findInvisibleChild-method">findInvisibleChild</a></b></b>(<i>obj</i>,  <i>objectName</i>)</li>
<li class="fn"><b><b><a href="#flick-method">flick</a></b></b>(<i>item</i>,  <i>x</i>,  <i>y</i>,  <i>dx</i>,  <i>dy</i>,  <i>pressTimeout</i>,  <i>steps</i>,  <i>button</i>,  <i>modifiers</i>,  <i>delay</i>)</li>
<li class="fn"><b><b><a href="#mouseLongPress-method">mouseLongPress</a></b></b>(<i>item</i>,  <i>x</i>,  <i>y</i>,  <i>button</i>,  <i>modifiers</i>,  <i>delay</i>)</li>
<li class="fn"><b><b><a href="#mouseMoveSlowly-method">mouseMoveSlowly</a></b></b>(<i>item</i>,  <i>x</i>,  <i>y</i>,  <i>dx</i>,  <i>dy</i>,  <i>steps</i>,  <i>stepdelay</i>,  <i>buttons</i>)</li>
<li class="fn"><b><b><a href="#tryCompareFunction-method">tryCompareFunction</a></b></b>(<i>func</i>,  <i>expectedResult</i>,  <i>timeout</i>)</li>
<li class="fn"><b><b><a href="#typeString-method">typeString</a></b></b>(<i>string</i>)</li>
<li class="fn"><b><b><a href="#waitForHeaderAnimation-method">waitForHeaderAnimation</a></b></b>(<i>mainView</i>)</li>
<li class="fn"><b><b><a href="#warningFormat-method">warningFormat</a></b></b>(<i>line</i>,  <i>column</i>,  <i>message</i>)</li>
</ul>
<!-- $$$UbuntuTestCase-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><b>This component is under heavy development.</b></p>
<p>This class extends the default QML <a href="../sdk-14.10/QtTest.TestCase.md">TestCase</a> class which is available in <a href="http://doc.qt.io/qt-5/qttest-qmlmodule.html">QtTest</a> 1.0&#x2e;</p>
<!-- @@@UbuntuTestCase -->
<h2>Property Documentation</h2>
<!-- $$$testUtil -->
<table class="qmlname"><tr valign="top" id="testUtil-prop"><td class="tblQmlPropNode"><p><span class="name">testUtil</span> : <span class="type">alias</span></p></td></tr></table><p>This property holds the inner TestUtil instance.</p>
<!-- @@@testUtil -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$centerOf -->
<table class="qmlname"><tr valign="top" id="centerOf-method"><td class="tblQmlFuncNode"><p><span class="name">centerOf</span>(<i> item</i>)</p></td></tr></table><p>Returns the center point of the <i>item</i>.</p>
<!-- @@@centerOf -->
<br/>
<!-- $$$findChild -->
<table class="qmlname"><tr valign="top" id="findChild-method"><td class="tblQmlFuncNode"><p><span class="name">findChild</span>(<i> obj</i>, <i> objectName</i>)</p></td></tr></table><p>Find a child from the item based on the objectName.</p>
<!-- @@@findChild -->
<br/>
<!-- $$$findChildWithProperty -->
<table class="qmlname"><tr valign="top" id="findChildWithProperty-method"><td class="tblQmlFuncNode"><p><span class="name">findChildWithProperty</span>(<i> item</i>, <i> property</i>, <i> value</i>)</p></td></tr></table><p>Finds a visible child of an <i>item</i> having a given <i>property</i> with a given <i>value</i>.</p>
<!-- @@@findChildWithProperty -->
<br/>
<!-- $$$findInvisibleChild -->
<table class="qmlname"><tr valign="top" id="findInvisibleChild-method"><td class="tblQmlFuncNode"><p><span class="name">findInvisibleChild</span>(<i> obj</i>, <i> objectName</i>)</p></td></tr></table><p>Find a non-visual child such as <a href="../sdk-14.10/QtQml.QtObject.md">QtObject</a> based on objectName.</p>
<!-- @@@findInvisibleChild -->
<br/>
<!-- $$$flick -->
<table class="qmlname"><tr valign="top" id="flick-method"><td class="tblQmlFuncNode"><p><span class="name">flick</span>(<i> item</i>, <i> x</i>, <i> y</i>, <i> dx</i>, <i> dy</i>, <i> pressTimeout</i>, <i> steps</i>, <i> button</i>, <i> modifiers</i>, <i> delay</i>)</p></td></tr></table><p>The function produces a flick event when executed on Flickables. When used on other components it provides the same functionality as <code>mouseDrag()</code> function. The optional <i>pressTimeout</i> parameter can be used to introduce a small delay between the mouse press and the first mouse move. Setting a negative or zero value will disable the timeout.</p>
<p>The default flick velocity is built up using 5 move points. This can be altered by setting a positive value to <i>steps</i> parameter. The bigger the number the longer the flick will be. When a negative or zero value is given, the default of 5 move points will be used.</p>
<p><b>Note: </b>The function can be used to select a text in a <a href="Ubuntu.Components.TextField.md">TextField</a> or <a href="Ubuntu.Components.TextArea.md">TextArea</a> by specifying at least 400 millisecods to <i>pressTimeout</i>.</p><!-- @@@flick -->
<br/>
<!-- $$$mouseLongPress -->
<table class="qmlname"><tr valign="top" id="mouseLongPress-method"><td class="tblQmlFuncNode"><p><span class="name">mouseLongPress</span>(<i> item</i>, <i> x</i>, <i> y</i>, <i> button</i>, <i> modifiers</i>, <i> delay</i>)</p></td></tr></table><p>Simulates a long press on a mouse <i>button</i> with an optional <i>modifier</i> on an <i>item</i>. The position is defined by <i>x</i> and <i>y</i>. If <i>delay</i> is specified, the test will wait the specified amount of milliseconds before the press.</p>
<p>The position given by <i>x</i> and <i>y</i> is transformed from the co-ordinate system of <i>item</i> into window co-ordinates and then delivered. If <i>item</i> is obscured by another item, or a child of <i>item</i> occupies that position, then the event will be delivered to the other item instead.</p>
<!-- @@@mouseLongPress -->
<br/>
<!-- $$$mouseMoveSlowly -->
<table class="qmlname"><tr valign="top" id="mouseMoveSlowly-method"><td class="tblQmlFuncNode"><p><span class="name">mouseMoveSlowly</span>(<i> item</i>, <i> x</i>, <i> y</i>, <i> dx</i>, <i> dy</i>, <i> steps</i>, <i> stepdelay</i>, <i> buttons</i>)</p></td></tr></table><p>Move Mouse from x,y to distance of dx, dy divided to steps with a stepdelay (ms) and buttons.</p>
<!-- @@@mouseMoveSlowly -->
<br/>
<!-- $$$tryCompareFunction -->
<table class="qmlname"><tr valign="top" id="tryCompareFunction-method"><td class="tblQmlFuncNode"><p><span class="name">tryCompareFunction</span>(<i> func</i>, <i> expectedResult</i>, <i> timeout</i>)</p></td></tr></table><p>Keeps executing a given parameter-less function until it returns the given expected result or the timemout is reached (in which case a test failure is generated)</p>
<!-- @@@tryCompareFunction -->
<br/>
<!-- $$$typeString -->
<table class="qmlname"><tr valign="top" id="typeString-method"><td class="tblQmlFuncNode"><p><span class="name">typeString</span>(<i> string</i>)</p></td></tr></table><p>Convenience function to allow typing a full string instead of single characters</p>
<!-- @@@typeString -->
<br/>
<!-- $$$waitForHeaderAnimation -->
<table class="qmlname"><tr valign="top" id="waitForHeaderAnimation-method"><td class="tblQmlFuncNode"><p><span class="name">waitForHeaderAnimation</span>(<i> mainView</i>)</p></td></tr></table><p>Wait for animations of the header and the style inside the header to finish. The <a href="Ubuntu.Components.MainView.md">MainView</a> that has the header that may animate must be passed as an argument.</p>
<!-- @@@waitForHeaderAnimation -->
<br/>
<!-- $$$warningFormat -->
<table class="qmlname"><tr valign="top" id="warningFormat-method"><td class="tblQmlFuncNode"><p><span class="name">warningFormat</span>(<i> line</i>, <i> column</i>, <i> message</i>)</p></td></tr></table><p>Warning message formatter, uses file name, line and column numbers to build up the message.</p>
<!-- @@@warningFormat -->
<br/>
