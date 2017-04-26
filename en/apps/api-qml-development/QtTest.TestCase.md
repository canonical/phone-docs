---
Title: QtTest.TestCase
---

# QtTest.TestCase

<span class="subtitle"></span>
<!-- $$$TestCase-brief -->
<p>Represents a unit test case More...</p>
<!-- @@@TestCase -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtTest 1.1</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Since:</td><td class="memItemRight bottomAlign">  Qt 4.8</td></tr><tr><td class="memItemLeft rightAlign topAlign"> Inherits:</td><td class="memItemRight bottomAlign"> <p><a href="QtQuick.Item.md">Item</a></p>
</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#completed-prop">completed</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#optional-prop">optional</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#running-prop">running</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#when-prop">when</a></b></b> : bool</li>
<li class="fn"><b><b><a href="#windowShown-prop">windowShown</a></b></b> : bool</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn"><b><b><a href="#cleanup-method">cleanup</a></b></b>()</li>
<li class="fn"><b><b><a href="#cleanupTestCase-method">cleanupTestCase</a></b></b>()</li>
<li class="fn"><b><b><a href="#compare-method">compare</a></b></b>(<i>actual</i>,  <i>expected</i>,  <i>msg</i>)</li>
<li class="fn"><b><b><a href="#expectFail-method">expectFail</a></b></b>(<i>tag</i>,  <i>msg</i>)</li>
<li class="fn"><b><b><a href="#expectFailContinue-method">expectFailContinue</a></b></b>(<i>tag</i>,  <i>msg</i>)</li>
<li class="fn"><b><b><a href="#fail-method">fail</a></b></b>(<i>msg</i>)</li>
<li class="fn"><b><b><a href="#findChild-method">findChild</a></b></b>(<i>parent</i>,  <i>objectName</i>)</li>
<li class="fn"><b><b><a href="#fuzzyCompare-method">fuzzyCompare</a></b></b>(<i>actual</i>,  <i>expected</i>,  <i>delta</i>,  <i>msg</i>)</li>
<li class="fn"><b><b><a href="#grabImage-method">grabImage</a></b></b>(<i>item</i>)</li>
<li class="fn"><b><b><a href="#ignoreWarning-method">ignoreWarning</a></b></b>(<i>msg</i>)</li>
<li class="fn"><b><b><a href="#init-method">init</a></b></b>()</li>
<li class="fn"><b><b><a href="#initTestCase-method">initTestCase</a></b></b>()</li>
<li class="fn"><b><b><a href="#keyClick-method">keyClick</a></b></b>(<i>key</i>,  <i>modifiers</i>,  <i>delay</i>)</li>
<li class="fn"><b><b><a href="#keyPress-method">keyPress</a></b></b>(<i>key</i>,  <i>modifiers</i>,  <i>delay</i>)</li>
<li class="fn"><b><b><a href="#keyRelease-method">keyRelease</a></b></b>(<i>key</i>,  <i>modifiers</i>,  <i>delay</i>)</li>
<li class="fn"><b><b><a href="#mouseClick-method">mouseClick</a></b></b>(<i>item</i>,  <i>x</i>,  <i>y</i>,  <i>button</i>,  <i>modifiers</i>,  <i>delay</i>)</li>
<li class="fn"><b><b><a href="#mouseDoubleClick-method">mouseDoubleClick</a></b></b>(<i>item</i>,  <i>x</i>,  <i>y</i>,  <i>button</i>,  <i>modifiers</i>,  <i>delay</i>)</li>
<li class="fn"><b><b><a href="#mouseDrag-method">mouseDrag</a></b></b>(<i>item</i>,  <i>x</i>,  <i>y</i>,  <i>dx</i>,  <i>dy</i>,  <i>button</i>,  <i>modifiers</i>,  <i>delay</i>)</li>
<li class="fn"><b><b><a href="#mouseMove-method">mouseMove</a></b></b>(<i>item</i>,  <i>x</i>,  <i>y</i>,  <i>delay</i>,  <i>buttons</i>)</li>
<li class="fn"><b><b><a href="#mousePress-method">mousePress</a></b></b>(<i>item</i>,  <i>x</i>,  <i>y</i>,  <i>button</i>,  <i>modifiers</i>,  <i>delay</i>)</li>
<li class="fn"><b><b><a href="#mouseRelease-method">mouseRelease</a></b></b>(<i>item</i>,  <i>x</i>,  <i>y</i>,  <i>button</i>,  <i>modifiers</i>,  <i>delay</i>)</li>
<li class="fn"><b><b><a href="#mouseWheel-method">mouseWheel</a></b></b>(<i>item</i>,  <i>x</i>,  <i>y</i>,  <i>xDelta</i>,  <i>yDelta</i>,  <i>buttons</i>,  <i>modifiers</i>,  <i>delay</i>)</li>
<li class="fn"><b><b><a href="#skip-method">skip</a></b></b>(<i>msg</i>)</li>
<li class="fn"><b><b><a href="#sleep-method">sleep</a></b></b>(<i>ms</i>)</li>
<li class="fn"><b><b><a href="#tryCompare-method">tryCompare</a></b></b>(<i>obj</i>,  <i>prop</i>,  <i>value</i>,  <i>timeout</i>,  <i>msg</i>)</li>
<li class="fn"><b><b><a href="#verify-method">verify</a></b></b>(<i>cond</i>,  <i>msg</i>)</li>
<li class="fn"><b><b><a href="#wait-method">wait</a></b></b>(<i>ms</i>)</li>
<li class="fn"><b><b><a href="#waitForRendering-method">waitForRendering</a></b></b>(<i>item</i>,  <i>timeout</i>)</li>
<li class="fn"><b><b><a href="#warn-method">warn</a></b></b>(<i>msg</i>)</li>
</ul>
<!-- $$$TestCase-description -->
<h2 id="details">Detailed Description</h2>
</p>
<h2 id="introduction-to-qml-test-cases">Introduction to QML test cases</h2>
<p>Test cases are written as JavaScript functions within a <a href="index.html">TestCase</a> type:</p>
<pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
import <span class="type">QtTest</span> <span class="number">1.0</span>
TestCase {
name: <span class="string">&quot;MathTests&quot;</span>
function test_math() {
compare(<span class="number">2</span> <span class="operator">+</span> <span class="number">2</span><span class="operator">,</span> <span class="number">4</span><span class="operator">,</span> <span class="string">&quot;2 + 2 = 4&quot;</span>)
}
function test_fail() {
compare(<span class="number">2</span> <span class="operator">+</span> <span class="number">2</span><span class="operator">,</span> <span class="number">5</span><span class="operator">,</span> <span class="string">&quot;2 + 2 = 5&quot;</span>)
}
}</pre>
<p>Functions whose names start with &quot;test_&quot; are treated as test cases to be executed. The <a href="#name-prop">name</a> property is used to prefix the functions in the output:</p>
<pre class="cpp"><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span> Start testing of MathTests <span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span>
Config: Using <span class="type">QTest</span> library <span class="number">4.7.2</span><span class="operator">,</span> <span class="type">Qt</span> <span class="number">4.7.2</span>
PASS   : MathTests<span class="operator">::</span><a href="#initTestCase-method">initTestCase</a>()
FAIL<span class="operator">!</span>  : MathTests<span class="operator">::</span>test_fail() <span class="number">2</span> <span class="operator">+</span> <span class="number">2</span> <span class="operator">=</span> <span class="number">5</span>
Actual (): <span class="number">4</span>
Expected (): <span class="number">5</span>
Loc: <span class="operator">[</span><span class="operator">/</span>home<span class="operator">/</span><span class="operator">.</span><span class="operator">.</span><span class="operator">.</span><span class="operator">/</span>tst_math<span class="operator">.</span>qml(<span class="number">12</span>)<span class="operator">]</span>
PASS   : MathTests<span class="operator">::</span>test_math()
PASS   : MathTests<span class="operator">::</span><a href="#cleanupTestCase-method">cleanupTestCase</a>()
Totals: <span class="number">3</span> passed<span class="operator">,</span> <span class="number">1</span> failed<span class="operator">,</span> <span class="number">0</span> skipped
<span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span> Finished testing of MathTests <span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span><span class="operator">*</span></pre>
<p>Because of the way JavaScript properties work, the order in which the test functions are found is unpredictable. To assist with predictability, the test framework will sort the functions on ascending order of name. This can help when there are two tests that must be run in order.</p>
<p>Multiple <a href="index.html">TestCase</a> types can be supplied. The test program will exit once they have all completed. If a test case doesn't need to run (because a precondition has failed), then <a href="#optional-prop">optional</a> can be set to true.</p>
<h2 id="data-driven-tests">Data-driven tests</h2>
<p>Table data can be provided to a test using a function name that ends with &quot;_data&quot;. Alternatively, the <code>init_data()</code> function can be used to provide default test data for all test functions in a <a href="index.html">TestCase</a> type:</p>
<pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
import <span class="type">QtTest</span> <span class="number">1.1</span>
TestCase {
name: <span class="string">&quot;DataTests&quot;</span>
function init_data() {
<span class="keyword">return</span> <span class="operator">[</span>
{tag:<span class="string">&quot;init_data_1&quot;</span><span class="operator">,</span> a:<span class="number">1</span><span class="operator">,</span> b:<span class="number">2</span><span class="operator">,</span> answer: <span class="number">3</span>}<span class="operator">,</span>
{tag:<span class="string">&quot;init_data_2&quot;</span><span class="operator">,</span> a:<span class="number">2</span><span class="operator">,</span> b:<span class="number">4</span><span class="operator">,</span> answer: <span class="number">6</span>}
<span class="operator">]</span>;
}
function test_table_data() {
<span class="keyword">return</span> <span class="operator">[</span>
{tag: <span class="string">&quot;2 + 2 = 4&quot;</span><span class="operator">,</span> a: <span class="number">2</span><span class="operator">,</span> b: <span class="number">2</span><span class="operator">,</span> answer: <span class="number">4</span> }<span class="operator">,</span>
{tag: <span class="string">&quot;2 + 6 = 8&quot;</span><span class="operator">,</span> a: <span class="number">2</span><span class="operator">,</span> b: <span class="number">6</span><span class="operator">,</span> answer: <span class="number">8</span> }<span class="operator">,</span>
<span class="operator">]</span>
}
function test_table(data) {
<span class="comment">//data comes from test_table_data</span>
compare(data<span class="operator">.</span>a <span class="operator">+</span> data<span class="operator">.</span>b<span class="operator">,</span> data<span class="operator">.</span>answer)
}
function test__default_table(data) {
<span class="comment">//data comes from init_data</span>
compare(data<span class="operator">.</span>a <span class="operator">+</span> data<span class="operator">.</span>b<span class="operator">,</span> data<span class="operator">.</span>answer)
}
}</pre>
<p>The test framework will iterate over all of the rows in the table and pass each row to the test function. As shown, the columns can be extracted for use in the test. The <code>tag</code> column is special - it is printed by the test framework when a row fails, to help the reader identify which case failed amongst a set of otherwise passing tests.</p>
<h2 id="benchmarks">Benchmarks</h2>
<p>Functions whose names start with &quot;benchmark_&quot; will be run multiple times with the Qt benchmark framework, with an average timing value reported for the runs. This is equivalent to using the <code>QBENCHMARK</code> macro in the C++ version of QTestLib.</p>
<pre class="cpp">TestCase {
id: top
name: <span class="string">&quot;CreateBenchmark&quot;</span>
function benchmark_create_component() {
var component <span class="operator">=</span> <span class="type">Qt</span><span class="operator">.</span>createComponent(<span class="string">&quot;item.qml&quot;</span>)
var obj <span class="operator">=</span> component<span class="operator">.</span>createObject(top)
obj<span class="operator">.</span>destroy()
component<span class="operator">.</span>destroy()
}
}
RESULT : CreateBenchmark<span class="operator">::</span>benchmark_create_component:
<span class="number">0.23</span> msecs per iteration (total: <span class="number">60</span><span class="operator">,</span> iterations: <span class="number">256</span>)
PASS   : CreateBenchmark<span class="operator">::</span>benchmark_create_component()</pre>
<p>To get the effect of the <code>QBENCHMARK_ONCE</code> macro, prefix the test function name with &quot;benchmark_once_&quot;.</p>
<h2 id="simulating-keyboard-and-mouse-events">Simulating keyboard and mouse events</h2>
<p>The <a href="#keyPress-method">keyPress()</a>, <a href="#keyRelease-method">keyRelease()</a>, and <a href="#keyClick-method">keyClick()</a> methods can be used to simulate keyboard events within unit tests. The events are delivered to the currently focused QML item. You can pass either a Qt.Key enum value or a latin1 char (string of length one)</p>
<pre class="cpp">Rectangle {
width: <span class="number">50</span>; height: <span class="number">50</span>
focus: <span class="keyword">true</span>
TestCase {
name: <span class="string">&quot;KeyClick&quot;</span>
when: windowShown
function test_key_click() {
keyClick(<span class="type">Qt</span><span class="operator">.</span>Key_Left)
keyClick(<span class="string">&quot;a&quot;</span>)
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
}
}
}</pre>
<p>The <a href="#mousePress-method">mousePress()</a>, <a href="#mouseRelease-method">mouseRelease()</a>, <a href="#mouseClick-method">mouseClick()</a>, <a href="#mouseDoubleClick-method">mouseDoubleClick()</a>, and <a href="#mouseMove-method">mouseMove()</a> methods can be used to simulate mouse events in a similar fashion.</p>
<p><b>Note:</b> keyboard and mouse events can only be delivered once the main window has been shown. Attempts to deliver events before then will fail. Use the <a href="#when-prop">when</a> and <a href="#windowShown-prop">windowShown</a> properties to track when the main window has been shown.</p>
<p><b>See also </b><a href="QtTest.SignalSpy.md">SignalSpy</a> and Qt Quick Test Reference Documentation.</p>
<!-- @@@TestCase -->
<h2>Property Documentation</h2>
<!-- $$$completed -->
<table class="qmlname"><tr valign="top" id="completed-prop"><td class="tblQmlPropNode"><p><span class="name">completed</span> : <span class="type">bool</span></p></td></tr></table><p>This property will be set to true once the test case has completed execution. Test cases are only executed once. The initial value is false.</p>
<p><b>See also </b><a href="#running-prop">running</a> and <a href="#when-prop">when</a>.</p>
<!-- @@@completed -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>This property defines the name of the test case for result reporting. The default is the empty string.</p>
<pre class="cpp">TestCase {
name: <span class="string">&quot;ButtonTests&quot;</span>
<span class="operator">.</span><span class="operator">.</span><span class="operator">.</span>
}</pre>
<!-- @@@name -->
<br/>
<!-- $$$optional -->
<table class="qmlname"><tr valign="top" id="optional-prop"><td class="tblQmlPropNode"><p><span class="name">optional</span> : <span class="type">bool</span></p></td></tr></table><p>Multiple <a href="index.html">TestCase</a> types can be supplied in a test application. The application will exit once they have all completed. If a test case does not need to run (because a precondition has failed), then this property can be set to true. The default value is false.</p>
<pre class="cpp">TestCase {
when: <span class="keyword">false</span>
optional: <span class="keyword">true</span>
function test_not_run() {
verify(<span class="keyword">false</span>)
}
}</pre>
<p><b>See also </b><a href="#when-prop">when</a> and <a href="#completed-prop">completed</a>.</p>
<!-- @@@optional -->
<br/>
<!-- $$$running -->
<table class="qmlname"><tr valign="top" id="running-prop"><td class="tblQmlPropNode"><p><span class="name">running</span> : <span class="type">bool</span></p></td></tr></table><p>This property will be set to true while the test case is running. The initial value is false, and the value will become false again once the test case completes.</p>
<p><b>See also </b><a href="#completed-prop">completed</a> and <a href="#when-prop">when</a>.</p>
<!-- @@@running -->
<br/>
<!-- $$$when -->
<table class="qmlname"><tr valign="top" id="when-prop"><td class="tblQmlPropNode"><p><span class="name">when</span> : <span class="type">bool</span></p></td></tr></table><p>This property should be set to true when the application wants the test cases to run. The default value is true. In the following example, a test is run when the user presses the mouse button:</p>
<pre class="cpp">Rectangle {
id: foo
width: <span class="number">640</span>; height: <span class="number">480</span>
color: <span class="string">&quot;cyan&quot;</span>
MouseArea {
id: area
anchors<span class="operator">.</span>fill: parent
}
property bool bar: <span class="keyword">true</span>
TestCase {
name: <span class="string">&quot;ItemTests&quot;</span>
when: area<span class="operator">.</span>pressed
id: test1
function test_bar() {
verify(bar)
}
}
}</pre>
<p>The test application will exit once all <a href="index.html">TestCase</a> types have been triggered and have run. The <a href="#optional-prop">optional</a> property can be used to exclude a <a href="index.html">TestCase</a> type.</p>
<p><b>See also </b><a href="#optional-prop">optional</a> and <a href="#completed-prop">completed</a>.</p>
<!-- @@@when -->
<br/>
<!-- $$$windowShown -->
<table class="qmlname"><tr valign="top" id="windowShown-prop"><td class="tblQmlPropNode"><p><span class="name">windowShown</span> : <span class="type">bool</span></p></td></tr></table><p>This property will be set to true after the QML viewing window has been displayed. Normally test cases run as soon as the test application is loaded and before a window is displayed. If the test case involves visual types and behaviors, then it may need to be delayed until after the window is shown.</p>
<pre class="cpp">Button {
id: button
onClicked: text <span class="operator">=</span> <span class="string">&quot;Clicked&quot;</span>
TestCase {
name: <span class="string">&quot;ClickTest&quot;</span>
when: windowShown
function test_click() {
button<span class="operator">.</span>clicked();
compare(button<span class="operator">.</span>text<span class="operator">,</span> <span class="string">&quot;Clicked&quot;</span>);
}
}
}</pre>
<!-- @@@windowShown -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$cleanup -->
<table class="qmlname"><tr valign="top" id="cleanup-method"><td class="tblQmlFuncNode"><p><span class="name">cleanup</span>()</p></td></tr></table><p>This function is called after each test function that is executed in the <a href="index.html">TestCase</a> type. The default implementation does nothing. The application can provide its own implementation to perform cleanup after each test function.</p>
<p><b>See also </b><a href="#init-method">init()</a> and <a href="#cleanupTestCase-method">cleanupTestCase()</a>.</p>
<!-- @@@cleanup -->
<br/>
<!-- $$$cleanupTestCase -->
<table class="qmlname"><tr valign="top" id="cleanupTestCase-method"><td class="tblQmlFuncNode"><p><span class="name">cleanupTestCase</span>()</p></td></tr></table><p>This function is called after all other test functions in the <a href="index.html">TestCase</a> type have completed. The default implementation does nothing. The application can provide its own implementation to perform test case cleanup.</p>
<p><b>See also </b><a href="#initTestCase-method">initTestCase()</a> and <a href="#cleanup-method">cleanup()</a>.</p>
<!-- @@@cleanupTestCase -->
<br/>
<!-- $$$compare -->
<table class="qmlname"><tr valign="top" id="compare-method"><td class="tblQmlFuncNode"><p><span class="name">compare</span>(<i> actual</i>, <i> expected</i>, <i> msg</i>)</p></td></tr></table><p>Fails the current test case if <i>actual</i> is not the same as <i>expected</i>, and displays the optional <i>message</i>. Similar to <code>QCOMPARE(actual, expected)</code> in C++.</p>
<p><b>See also </b><a href="#tryCompare-method">tryCompare()</a> and <a href="#fuzzyCompare-method">fuzzyCompare</a>.</p>
<!-- @@@compare -->
<br/>
<!-- $$$expectFail -->
<table class="qmlname"><tr valign="top" id="expectFail-method"><td class="tblQmlFuncNode"><p><span class="name">expectFail</span>(<i> tag</i>, <i> msg</i>)</p></td></tr></table><p>In a data-driven test, marks the row associated with <i>tag</i> as expected to fail. When the fail occurs, display the <i>message</i>, abort the test, and mark the test as passing. Similar to <code>QEXPECT_FAIL(tag, message, Abort)</code> in C++.</p>
<p>If the test is not data-driven, then <i>tag</i> must be set to the empty string.</p>
<p><b>See also </b><a href="#expectFailContinue-method">expectFailContinue()</a>.</p>
<!-- @@@expectFail -->
<br/>
<!-- $$$expectFailContinue -->
<table class="qmlname"><tr valign="top" id="expectFailContinue-method"><td class="tblQmlFuncNode"><p><span class="name">expectFailContinue</span>(<i> tag</i>, <i> msg</i>)</p></td></tr></table><p>In a data-driven test, marks the row associated with <i>tag</i> as expected to fail. When the fail occurs, display the <i>message</i>, and then continue the test. Similar to <code>QEXPECT_FAIL(tag, message, Continue)</code> in C++.</p>
<p>If the test is not data-driven, then <i>tag</i> must be set to the empty string.</p>
<p><b>See also </b><a href="#expectFail-method">expectFail()</a>.</p>
<!-- @@@expectFailContinue -->
<br/>
<!-- $$$fail -->
<table class="qmlname"><tr valign="top" id="fail-method"><td class="tblQmlFuncNode"><p><span class="name">fail</span>(<i> msg</i>)</p></td></tr></table><p>Fails the current test case, with the optional <i>message</i>. Similar to <code>QFAIL(message)</code> in C++.</p>
<!-- @@@fail -->
<br/>
<!-- $$$findChild -->
<table class="qmlname"><tr valign="top" id="findChild-method"><td class="tblQmlFuncNode"><p><span class="name">findChild</span>(<i> parent</i>, <i> objectName</i>)</p></td></tr></table><p>Returns the first child of <i>parent</i> with <i>objectName</i>, or <code>null</code> if no such item exists. Both visual and non-visual children are searched recursively, with visual children being searched first.</p>
<pre class="cpp"><a href="#compare-method">compare</a>(findChild(item<span class="operator">,</span> <span class="string">&quot;childObject&quot;</span>)<span class="operator">,</span> expectedChildObject);</pre>
<p>This QML method was introduced in  Qt 5.4.</p>
<!-- @@@findChild -->
<br/>
<!-- $$$fuzzyCompare -->
<table class="qmlname"><tr valign="top" id="fuzzyCompare-method"><td class="tblQmlFuncNode"><p><span class="name">fuzzyCompare</span>(<i> actual</i>, <i> expected</i>, <i> delta</i>, <i> msg</i>)</p></td></tr></table><p>Fails the current test case if the difference betwen <i>actual</i> and <i>expected</i> is greater than <i>delta</i>, and displays the optional <i>message</i>. Similar to <code>qFuzzyCompare(actual, expected)</code> in C++ but with a required <i>delta</i> value.</p>
<p>This function can also be used for color comparisons if both the <i>actual</i> and <i>expected</i> values can be converted into color values. If any of the differences for RGBA channel values are greater than <i>delta</i>, the test fails.</p>
<p><b>See also </b><a href="#tryCompare-method">tryCompare()</a> and <a href="#compare-method">compare()</a>.</p>
<!-- @@@fuzzyCompare -->
<br/>
<!-- $$$grabImage -->
<table class="qmlname"><tr valign="top" id="grabImage-method"><td class="tblQmlFuncNode"><p><span class="name">grabImage</span>(<i> item</i>)</p></td></tr></table><p>Returns a snapshot image object of the given <i>item</i>.</p>
<p>The returned image object has the following methods:</p>
<ul>
<li>red(x, y) Returns the red channel value of the pixel at <i>x</i>, <i>y</i> position</li>
<li>green(x, y) Returns the green channel value of the pixel at <i>x</i>, <i>y</i> position</li>
<li>blue(x, y) Returns the blue channel value of the pixel at <i>x</i>, <i>y</i> position</li>
<li>alpha(x, y) Returns the alpha channel value of the pixel at <i>x</i>, <i>y</i> position</li>
<li>pixel(x, y) Returns the color value of the pixel at <i>x</i>, <i>y</i> position For example:<pre class="cpp">var image <span class="operator">=</span> grabImage(rect);
<a href="#compare-method">compare</a>(image<span class="operator">.</span>red(<span class="number">10</span><span class="operator">,</span> <span class="number">10</span>)<span class="operator">,</span> <span class="number">255</span>);
<a href="#compare-method">compare</a>(image<span class="operator">.</span>pixel(<span class="number">20</span><span class="operator">,</span> <span class="number">20</span>)<span class="operator">,</span> <span class="type">Qt</span><span class="operator">.</span>rgba(<span class="number">255</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="number">255</span>));</pre>
</li>
</ul>
<!-- @@@grabImage -->
<br/>
<!-- $$$ignoreWarning -->
<table class="qmlname"><tr valign="top" id="ignoreWarning-method"><td class="tblQmlFuncNode"><p><span class="name">ignoreWarning</span>(<i> msg</i>)</p></td></tr></table><p>Marks <i>message</i> as an ignored warning message. When it occurs, the warning will not be printed and the test passes. If the message does not occur, then the test will fail. Similar to <code>QTest::ignoreMessage(QtWarningMsg, message)</code> in C++.</p>
<p><b>See also </b><a href="#warn-method">warn()</a>.</p>
<!-- @@@ignoreWarning -->
<br/>
<!-- $$$init -->
<table class="qmlname"><tr valign="top" id="init-method"><td class="tblQmlFuncNode"><p><span class="name">init</span>()</p></td></tr></table><p>This function is called before each test function that is executed in the <a href="index.html">TestCase</a> type. The default implementation does nothing. The application can provide its own implementation to perform initialization before each test function.</p>
<p><b>See also </b><a href="#cleanup-method">cleanup()</a> and <a href="#initTestCase-method">initTestCase()</a>.</p>
<!-- @@@init -->
<br/>
<!-- $$$initTestCase -->
<table class="qmlname"><tr valign="top" id="initTestCase-method"><td class="tblQmlFuncNode"><p><span class="name">initTestCase</span>()</p></td></tr></table><p>This function is called before any other test functions in the <a href="index.html">TestCase</a> type. The default implementation does nothing. The application can provide its own implementation to perform test case initialization.</p>
<p><b>See also </b><a href="#cleanupTestCase-method">cleanupTestCase()</a> and <a href="#init-method">init()</a>.</p>
<!-- @@@initTestCase -->
<br/>
<!-- $$$keyClick -->
<table class="qmlname"><tr valign="top" id="keyClick-method"><td class="tblQmlFuncNode"><p><span class="name">keyClick</span>(<i> key</i>, <i> modifiers</i>, <i> delay</i>)</p></td></tr></table><p>Simulates clicking of <i>key</i> with an optional <i>modifier</i> on the currently focused item. If <i>delay</i> is larger than 0, the test will wait for <i>delay</i> milliseconds.</p>
<p><b>See also </b><a href="#keyPress-method">keyPress()</a> and <a href="#keyRelease-method">keyRelease()</a>.</p>
<!-- @@@keyClick -->
<br/>
<!-- $$$keyPress -->
<table class="qmlname"><tr valign="top" id="keyPress-method"><td class="tblQmlFuncNode"><p><span class="name">keyPress</span>(<i> key</i>, <i> modifiers</i>, <i> delay</i>)</p></td></tr></table><p>Simulates pressing a <i>key</i> with an optional <i>modifier</i> on the currently focused item. If <i>delay</i> is larger than 0, the test will wait for <i>delay</i> milliseconds.</p>
<p><b>Note:</b> At some point you should release the key using <a href="#keyRelease-method">keyRelease()</a>.</p>
<p><b>See also </b><a href="#keyRelease-method">keyRelease()</a> and <a href="#keyClick-method">keyClick()</a>.</p>
<!-- @@@keyPress -->
<br/>
<!-- $$$keyRelease -->
<table class="qmlname"><tr valign="top" id="keyRelease-method"><td class="tblQmlFuncNode"><p><span class="name">keyRelease</span>(<i> key</i>, <i> modifiers</i>, <i> delay</i>)</p></td></tr></table><p>Simulates releasing a <i>key</i> with an optional <i>modifier</i> on the currently focused item. If <i>delay</i> is larger than 0, the test will wait for <i>delay</i> milliseconds.</p>
<p><b>See also </b><a href="#keyPress-method">keyPress()</a> and <a href="#keyClick-method">keyClick()</a>.</p>
<!-- @@@keyRelease -->
<br/>
<!-- $$$mouseClick -->
<table class="qmlname"><tr valign="top" id="mouseClick-method"><td class="tblQmlFuncNode"><p><span class="name">mouseClick</span>(<i> item</i>, <i> x</i>, <i> y</i>, <i> button</i>, <i> modifiers</i>, <i> delay</i>)</p></td></tr></table><p>Simulates clicking a mouse <i>button</i> with an optional <i>modifier</i> on an <i>item</i>. The position of the click is defined by <i>x</i> and <i>y</i>. If <i>delay</i> is specified, the test will wait for the specified amount of milliseconds before pressing and before releasing the button.</p>
<p>The position given by <i>x</i> and <i>y</i> is transformed from the co-ordinate system of <i>item</i> into window co-ordinates and then delivered. If <i>item</i> is obscured by another item, or a child of <i>item</i> occupies that position, then the event will be delivered to the other item instead.</p>
<p><b>See also </b><a href="#mousePress-method">mousePress()</a>, <a href="#mouseRelease-method">mouseRelease()</a>, <a href="#mouseDoubleClick-method">mouseDoubleClick()</a>, <a href="#mouseMove-method">mouseMove()</a>, <a href="#mouseDrag-method">mouseDrag()</a>, and <a href="#mouseWheel-method">mouseWheel()</a>.</p>
<!-- @@@mouseClick -->
<br/>
<!-- $$$mouseDoubleClick -->
<table class="qmlname"><tr valign="top" id="mouseDoubleClick-method"><td class="tblQmlFuncNode"><p><span class="name">mouseDoubleClick</span>(<i> item</i>, <i> x</i>, <i> y</i>, <i> button</i>, <i> modifiers</i>, <i> delay</i>)</p></td></tr></table><p>Simulates double-clicking a mouse <i>button</i> with an optional <i>modifier</i> on an <i>item</i>. The position of the click is defined by <i>x</i> and <i>y</i>. If <i>delay</i> is specified, the test will wait for the specified amount of milliseconds before pressing and before releasing the button.</p>
<p>The position given by <i>x</i> and <i>y</i> is transformed from the co-ordinate system of <i>item</i> into window co-ordinates and then delivered. If <i>item</i> is obscured by another item, or a child of <i>item</i> occupies that position, then the event will be delivered to the other item instead.</p>
<p><b>See also </b><a href="#mousePress-method">mousePress()</a>, <a href="#mouseRelease-method">mouseRelease()</a>, <a href="#mouseClick-method">mouseClick()</a>, <a href="#mouseMove-method">mouseMove()</a>, <a href="#mouseDrag-method">mouseDrag()</a>, and <a href="#mouseWheel-method">mouseWheel()</a>.</p>
<!-- @@@mouseDoubleClick -->
<br/>
<!-- $$$mouseDrag -->
<table class="qmlname"><tr valign="top" id="mouseDrag-method"><td class="tblQmlFuncNode"><p><span class="name">mouseDrag</span>(<i> item</i>, <i> x</i>, <i> y</i>, <i> dx</i>, <i> dy</i>, <i> button</i>, <i> modifiers</i>, <i> delay</i>)</p></td></tr></table><p>Simulates dragging the mouse on an <i>item</i> with <i>button</i> pressed and an optional <i>modifier</i>. The initial drag position is defined by <i>x</i> and <i>y</i>, and drag distance is defined by <i>dx</i> and <i>dy</i>. If <i>delay</i> is specified, the test will wait for the specified amount of milliseconds before releasing the button.</p>
<p>The position given by <i>x</i> and <i>y</i> is transformed from the co-ordinate system of <i>item</i> into window co-ordinates and then delivered. If <i>item</i> is obscured by another item, or a child of <i>item</i> occupies that position, then the event will be delivered to the other item instead.</p>
<p>Note: this method does not imply a drop action, to make a drop, an additional <a href="#mouseRelease-method">mouseRelease</a>(item, x + dx, y + dy) is needed.</p>
<p><b>See also </b><a href="#mousePress-method">mousePress()</a>, <a href="#mouseClick-method">mouseClick()</a>, <a href="#mouseDoubleClick-method">mouseDoubleClick()</a>, <a href="#mouseMove-method">mouseMove()</a>, <a href="#mouseRelease-method">mouseRelease()</a>, and <a href="#mouseWheel-method">mouseWheel()</a>.</p>
<!-- @@@mouseDrag -->
<br/>
<!-- $$$mouseMove -->
<table class="qmlname"><tr valign="top" id="mouseMove-method"><td class="tblQmlFuncNode"><p><span class="name">mouseMove</span>(<i> item</i>, <i> x</i>, <i> y</i>, <i> delay</i>, <i> buttons</i>)</p></td></tr></table><p>Moves the mouse pointer to the position given by <i>x</i> and <i>y</i> within <i>item</i>. If a <i>delay</i> (in milliseconds) is given, the test will wait before moving the mouse pointer.</p>
<p>The position given by <i>x</i> and <i>y</i> is transformed from the co-ordinate system of <i>item</i> into window co-ordinates and then delivered. If <i>item</i> is obscured by another item, or a child of <i>item</i> occupies that position, then the event will be delivered to the other item instead.</p>
<p><b>See also </b><a href="#mousePress-method">mousePress()</a>, <a href="#mouseRelease-method">mouseRelease()</a>, <a href="#mouseClick-method">mouseClick()</a>, <a href="#mouseDoubleClick-method">mouseDoubleClick()</a>, <a href="#mouseDrag-method">mouseDrag()</a>, and <a href="#mouseWheel-method">mouseWheel()</a>.</p>
<!-- @@@mouseMove -->
<br/>
<!-- $$$mousePress -->
<table class="qmlname"><tr valign="top" id="mousePress-method"><td class="tblQmlFuncNode"><p><span class="name">mousePress</span>(<i> item</i>, <i> x</i>, <i> y</i>, <i> button</i>, <i> modifiers</i>, <i> delay</i>)</p></td></tr></table><p>Simulates pressing a mouse <i>button</i> with an optional <i>modifier</i> on an <i>item</i>. The position is defined by <i>x</i> and <i>y</i>. If <i>delay</i> is specified, the test will wait for the specified amount of milliseconds before the press.</p>
<p>The position given by <i>x</i> and <i>y</i> is transformed from the co-ordinate system of <i>item</i> into window co-ordinates and then delivered. If <i>item</i> is obscured by another item, or a child of <i>item</i> occupies that position, then the event will be delivered to the other item instead.</p>
<p><b>See also </b><a href="#mouseRelease-method">mouseRelease()</a>, <a href="#mouseClick-method">mouseClick()</a>, <a href="#mouseDoubleClick-method">mouseDoubleClick()</a>, <a href="#mouseMove-method">mouseMove()</a>, <a href="#mouseDrag-method">mouseDrag()</a>, and <a href="#mouseWheel-method">mouseWheel()</a>.</p>
<!-- @@@mousePress -->
<br/>
<!-- $$$mouseRelease -->
<table class="qmlname"><tr valign="top" id="mouseRelease-method"><td class="tblQmlFuncNode"><p><span class="name">mouseRelease</span>(<i> item</i>, <i> x</i>, <i> y</i>, <i> button</i>, <i> modifiers</i>, <i> delay</i>)</p></td></tr></table><p>Simulates releasing a mouse <i>button</i> with an optional <i>modifier</i> on an <i>item</i>. The position of the release is defined by <i>x</i> and <i>y</i>. If <i>delay</i> is specified, the test will wait for the specified amount of milliseconds before releasing the button.</p>
<p>The position given by <i>x</i> and <i>y</i> is transformed from the co-ordinate system of <i>item</i> into window co-ordinates and then delivered. If <i>item</i> is obscured by another item, or a child of <i>item</i> occupies that position, then the event will be delivered to the other item instead.</p>
<p><b>See also </b><a href="#mousePress-method">mousePress()</a>, <a href="#mouseClick-method">mouseClick()</a>, <a href="#mouseDoubleClick-method">mouseDoubleClick()</a>, <a href="#mouseMove-method">mouseMove()</a>, <a href="#mouseDrag-method">mouseDrag()</a>, and <a href="#mouseWheel-method">mouseWheel()</a>.</p>
<!-- @@@mouseRelease -->
<br/>
<!-- $$$mouseWheel -->
<table class="qmlname"><tr valign="top" id="mouseWheel-method"><td class="tblQmlFuncNode"><p><span class="name">mouseWheel</span>(<i> item</i>, <i> x</i>, <i> y</i>, <i> xDelta</i>, <i> yDelta</i>, <i> buttons</i>, <i> modifiers</i>, <i> delay</i>)</p></td></tr></table><p>Simulates rotating the mouse wheel on an <i>item</i> with <i>button</i> pressed and an optional <i>modifier</i>. The position of the wheel event is defined by <i>x</i> and <i>y</i>. If <i>delay</i> is specified, the test will wait for the specified amount of milliseconds before releasing the button.</p>
<p>The position given by <i>x</i> and <i>y</i> is transformed from the co-ordinate system of <i>item</i> into window co-ordinates and then delivered. If <i>item</i> is obscured by another item, or a child of <i>item</i> occupies that position, then the event will be delivered to the other item instead.</p>
<p>The <i>xDelta</i> and <i>yDelta</i> contain the wheel rotation distance in eighths of a degree. see QWheelEvent::angleDelta() for more details.</p>
<p><b>See also </b><a href="#mousePress-method">mousePress()</a>, <a href="#mouseClick-method">mouseClick()</a>, <a href="#mouseDoubleClick-method">mouseDoubleClick()</a>, <a href="#mouseMove-method">mouseMove()</a>, <a href="#mouseRelease-method">mouseRelease()</a>, <a href="#mouseDrag-method">mouseDrag()</a>, and QWheelEvent::angleDelta().</p>
<!-- @@@mouseWheel -->
<br/>
<!-- $$$skip -->
<table class="qmlname"><tr valign="top" id="skip-method"><td class="tblQmlFuncNode"><p><span class="name">skip</span>(<i> msg</i>)</p></td></tr></table><p>Skips the current test case and prints the optional <i>message</i>. If this is a data-driven test, then only the current row is skipped. Similar to <code>QSKIP(message)</code> in C++.</p>
<!-- @@@skip -->
<br/>
<!-- $$$sleep -->
<table class="qmlname"><tr valign="top" id="sleep-method"><td class="tblQmlFuncNode"><p><span class="name">sleep</span>(<i> ms</i>)</p></td></tr></table><p>Sleeps for <i>ms</i> milliseconds without processing Qt events.</p>
<p><b>See also </b><a href="#wait-method">wait()</a> and <a href="#waitForRendering-method">waitForRendering()</a>.</p>
<!-- @@@sleep -->
<br/>
<!-- $$$tryCompare -->
<table class="qmlname"><tr valign="top" id="tryCompare-method"><td class="tblQmlFuncNode"><p><span class="name">tryCompare</span>(<i> obj</i>, <i> prop</i>, <i> value</i>, <i> timeout</i>, <i> msg</i>)</p></td></tr></table><p>Fails the current test case if the specified <i>property</i> on <i>obj</i> is not the same as <i>expected</i>, and displays the optional <i>message</i>. The test will be retried multiple times until the <i>timeout</i> (in milliseconds) is reached.</p>
<p>This function is intended for testing applications where a property changes value based on asynchronous events. Use <a href="#compare-method">compare()</a> for testing synchronous property changes.</p>
<pre class="cpp">tryCompare(img<span class="operator">,</span> <span class="string">&quot;status&quot;</span><span class="operator">,</span> BorderImage<span class="operator">.</span>Ready)
<a href="#compare-method">compare</a>(img<span class="operator">.</span>width<span class="operator">,</span> <span class="number">120</span>)
<a href="#compare-method">compare</a>(img<span class="operator">.</span>height<span class="operator">,</span> <span class="number">120</span>)
<a href="#compare-method">compare</a>(img<span class="operator">.</span>horizontalTileMode<span class="operator">,</span> BorderImage<span class="operator">.</span>Stretch)
<a href="#compare-method">compare</a>(img<span class="operator">.</span>verticalTileMode<span class="operator">,</span> BorderImage<span class="operator">.</span>Stretch)</pre>
<p><a href="QtTest.SignalSpy.md#wait-method">SignalSpy::wait()</a> provides an alternative method to wait for a signal to be emitted.</p>
<p><b>See also </b><a href="#compare-method">compare()</a> and <a href="QtTest.SignalSpy.md#wait-method">SignalSpy::wait()</a>.</p>
<!-- @@@tryCompare -->
<br/>
<!-- $$$verify -->
<table class="qmlname"><tr valign="top" id="verify-method"><td class="tblQmlFuncNode"><p><span class="name">verify</span>(<i> cond</i>, <i> msg</i>)</p></td></tr></table><p>Fails the current test case if <i>condition</i> is false, and displays the optional <i>message</i>. Similar to <code>QVERIFY(condition)</code> or <code>QVERIFY2(condition, message)</code> in C++.</p>
<!-- @@@verify -->
<br/>
<!-- $$$wait -->
<table class="qmlname"><tr valign="top" id="wait-method"><td class="tblQmlFuncNode"><p><span class="name">wait</span>(<i> ms</i>)</p></td></tr></table><p>Waits for <i>ms</i> milliseconds while processing Qt events.</p>
<p><b>See also </b><a href="#sleep-method">sleep()</a> and <a href="#waitForRendering-method">waitForRendering()</a>.</p>
<!-- @@@wait -->
<br/>
<!-- $$$waitForRendering -->
<table class="qmlname"><tr valign="top" id="waitForRendering-method"><td class="tblQmlFuncNode"><p><span class="name">waitForRendering</span>(<i> item</i>, <i> timeout</i>)</p></td></tr></table><p>Waits for <i>timeout</i> milliseconds or until the <i>item</i> is rendered by the renderer. Returns true if <code>item</code> is rendered in <i>timeout</i> milliseconds, otherwise returns false. The default <i>timeout</i> value is 5000.</p>
<p><b>See also </b><a href="#sleep-method">sleep()</a> and <a href="#wait-method">wait()</a>.</p>
<!-- @@@waitForRendering -->
<br/>
<!-- $$$warn -->
<table class="qmlname"><tr valign="top" id="warn-method"><td class="tblQmlFuncNode"><p><span class="name">warn</span>(<i> msg</i>)</p></td></tr></table><p>Prints <i>message</i> as a warning message. Similar to <code>QWARN(message)</code> in C++.</p>
<p><b>See also </b><a href="#ignoreWarning-method">ignoreWarning()</a>.</p>
<!-- @@@warn -->
<br/>
