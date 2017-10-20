---
Title: QtQml.qtqml-cppintegration-contextproperties
---

# QtQml.qtqml-cppintegration-contextproperties

<span class="subtitle"></span>
<!-- $$$qtqml-cppintegration-contextproperties.html-description -->
<p>When loading a QML object into a C++ application, it can be useful to directly embed some C++ data that can be used from within the QML code. This makes it possible, for example, to invoke a C++ method on the embedded object, or use a C++ object instance as a data model for a QML view.</p>
<p>The ability to inject C++ data into a QML object is made possible by the QQmlContext class. This class exposes data to the context of a QML object so that the data can be referred to directly from within the scope of the QML code.</p>
<h2 id="setting-a-simple-context-property">Setting a Simple Context Property</h2>
<p>For example, here is a QML item that refers to a <code>currentDateTime</code> value that does not exist in the current scope:</p>
<pre class="qml"><span class="comment">// MyItem.qml</span>
import QtQuick 2.0
<span class="type">Text</span> { <span class="name">text</span>: <span class="name">currentDateTime</span> }</pre>
<p>This <code>currentDateTime</code> value can be set directly by the C++ application that loads the QML component, using QQmlContext::setContextProperty():</p>
<pre class="cpp"><span class="type">QQuickView</span> view;
view<span class="operator">.</span>rootContext()<span class="operator">-</span><span class="operator">&gt;</span>setContextProperty(<span class="string">&quot;currentDateTime&quot;</span><span class="operator">,</span> <span class="type">QDateTime</span><span class="operator">::</span>currentDateTime());
view<span class="operator">.</span>setSource(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;MyItem.qml&quot;</span>));
view<span class="operator">.</span>show();</pre>
<p><b>Note: </b>Since all expressions evaluated in QML are evaluated in a particular context, if the context is modified, all bindings in that context will be re-evaluated. Thus, context properties should be used with care outside of application initialization, as this may lead to decreased application performance.</p>
<h2 id="setting-an-object-as-a-context-property">Setting an Object as a Context Property</h2>
<p>Context properties can hold either QVariant or QObject* values. This means custom C++ objects can also be injected using this approach, and these objects can be modified and read directly in QML. Here, we modify the above example to embed a QObject instance instead of a QDateTime value, and the QML code invokes a method on the object instance:</p>
<table class="generic">
<tr valign="top"><td ><pre class="cpp"><span class="keyword">class</span> ApplicationData : <span class="keyword">public</span> <span class="type">QObject</span>
{
Q_OBJECT
<span class="keyword">public</span>:
Q_INVOKABLE <span class="type">QDateTime</span> getCurrentDateTime() <span class="keyword">const</span> {
<span class="keyword">return</span> <span class="type">QDateTime</span><span class="operator">::</span>currentDateTime();
}
};
<span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span>argv<span class="operator">[</span><span class="operator">]</span>) {
<span class="type">QGuiApplication</span> app(argc<span class="operator">,</span> argv);
<span class="type">QQuickView</span> view;
ApplicationData data;
view<span class="operator">.</span>rootContext()<span class="operator">-</span><span class="operator">&gt;</span>setContextProperty(<span class="string">&quot;applicationData&quot;</span><span class="operator">,</span> <span class="operator">&amp;</span>data);
view<span class="operator">.</span>setSource(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;MyItem.qml&quot;</span>));
view<span class="operator">.</span>show();
<span class="keyword">return</span> app<span class="operator">.</span>exec();
}</pre>
</td><td ><pre class="qml"><span class="comment">// MyItem.qml</span>
import QtQuick 2.0
<span class="type">Text</span> { <span class="name">text</span>: <span class="name">applicationData</span>.<span class="name">getCurrentDateTime</span>() }</pre>
</td></tr>
</table>
<p>(Note that date/time values returned from C++ to QML can be formatted through <a href="QtQml.Qt.md#formatDateTime-method">Qt.formatDateTime()</a> and associated functions.)</p>
<p>If the QML item needs to receive signals from the context property, it can connect to them using the <a href="QtQml.Connections.md">Connections</a> type. For example, if <code>ApplicationData</code> has a signal named <code>dataChanged()</code>, this signal can be connected to using an <code>onDataChanged</code> handler within a <a href="QtQml.Connections.md">Connections</a> object:</p>
<pre class="qml"><span class="type">Text</span> {
<span class="name">text</span>: <span class="name">applicationData</span>.<span class="name">getCurrentDateTime</span>()
<span class="type"><a href="QtQml.Connections.md">Connections</a></span> {
<span class="name">target</span>: <span class="name">applicationData</span>
<span class="name">onDataChanged</span>: <span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;The application data changed!&quot;</span>)
}
}</pre>
<p>Context properties can be useful for using C++ based data models in a QML view. See the following examples:</p>
<ul>
<li>String ListModel</li>
<li>Object ListModel</li>
<li>AbstractItemModel</li>
</ul>
<p>demonstrating the use of QStringList, QList&lt;QObject*&gt;-based models and QAbstractItemModel in QML views.</p>
<p>Also see the QQmlContext documentation for more information.</p>
<!-- @@@qtqml-cppintegration-contextproperties.html -->
