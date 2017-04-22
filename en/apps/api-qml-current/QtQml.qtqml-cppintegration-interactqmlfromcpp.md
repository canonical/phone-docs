---
Title: QtQml.qtqml-cppintegration-interactqmlfromcpp
---

# QtQml.qtqml-cppintegration-interactqmlfromcpp

<span class="subtitle"></span>
<!-- $$$qtqml-cppintegration-interactqmlfromcpp.html-description -->
<p>All QML object types are QObject-derived types, whether they are internally implemented by the engine or <a href="QtQml.qtqml-cppintegration-definetypes.md">defined by third-party sources</a>. This means the QML engine can use the Qt Meta Object System to dynamically instantiate any QML object type and inspect the created objects.</p>
<p>This is useful for creating QML objects from C++ code, whether to display a QML object that can be visually rendered, or to integrate non-visual QML object data into a C++ application. Once a QML object is created, it can be inspected from C++ in order to read and write to properties, invoke methods and receive signal notifications.</p>
<h2 id="loading-qml-objects-from-c">Loading QML Objects from C++</h2>
<p>A QML document can be loaded with QQmlComponent or QQuickView. QQmlComponent loads a QML document as a C++ object that can then be modified from C++ code. QQuickView also does this, but as QQuickView is a QWindow-derived class, the loaded object will also be rendered into a visual display; QQuickView is generally used to integrate a displayable QML object into an application's user interface.</p>
<p>For example, suppose there is a <code>MyItem.qml</code> file that looks like this:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
}</pre>
<p>This QML document can be loaded with QQmlComponent or QQuickView with the following C++ code. Using a QQmlComponent requires calling QQmlComponent::create() to create a new instance of the component, while a QQuickView automatically creates an instance of the component, which is accessible via QQuickView::rootObject():</p>
<table class="generic">
<tr valign="top"><td ><pre class="cpp"><span class="comment">// Using QQmlComponent</span>
<span class="type">QQmlEngine</span> engine;
<span class="type">QQmlComponent</span> component(<span class="operator">&amp;</span>engine<span class="operator">,</span>
<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;MyItem.qml&quot;</span>));
<span class="type">QObject</span> <span class="operator">*</span>object <span class="operator">=</span> component<span class="operator">.</span>create();
...
<span class="keyword">delete</span> object;</pre>
</td><td ><pre class="cpp"><span class="comment">// Using QQuickView</span>
<span class="type">QQuickView</span> view;
view<span class="operator">.</span>setSource(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;MyItem.qml&quot;</span>));
view<span class="operator">.</span>show();
<span class="type">QObject</span> <span class="operator">*</span>object <span class="operator">=</span> view<span class="operator">.</span>rootObject();</pre>
</td></tr>
</table>
<p>This <code>object</code> is the instance of the <code>MyItem.qml</code> component that has been created. You can now modify the item's properties using QObject::setProperty() or QQmlProperty:</p>
<pre class="cpp">object<span class="operator">-</span><span class="operator">&gt;</span>setProperty(<span class="string">&quot;width&quot;</span><span class="operator">,</span> <span class="number">500</span>);
<span class="type">QQmlProperty</span>(object<span class="operator">,</span> <span class="string">&quot;width&quot;</span>)<span class="operator">.</span>write(<span class="number">500</span>);</pre>
<p>Alternatively, you can cast the object to its actual type and call methods with compile-time safety. In this case the base object of <code>MyItem.qml</code> is an Item, which is defined by the QQuickItem class:</p>
<pre class="cpp"><span class="type">QQuickItem</span> <span class="operator">*</span>item <span class="operator">=</span> qobject_cast<span class="operator">&lt;</span><span class="type">QQuickItem</span><span class="operator">*</span><span class="operator">&gt;</span>(object);
item<span class="operator">-</span><span class="operator">&gt;</span>setWidth(<span class="number">500</span>);</pre>
<p>You can also connect to any signals or call methods defined in the component using QMetaObject::invokeMethod() and QObject::connect(). See <a href="#invoking-qml-methods">Invoking QML Methods</a> and <a href="#connecting-to-qml-signals">Connecting to QML Signals</a> below for further details.</p>
<h2 id="accessing-loaded-qml-objects-by-object-name">Accessing Loaded QML Objects by Object Name</h2>
<p>QML components are essentially object trees with children that have siblings and their own children. Child objects of QML components can be located using the QObject::objectName property with QObject::findChild(). For example, if the root item in <code>MyItem.qml</code> had a child Rectangle item:</p>
<pre class="qml">import QtQuick 2.0
<span class="type">Item</span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="type">Rectangle</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">objectName</span>: <span class="string">&quot;rect&quot;</span>
}
}</pre>
<p>The child could be located like this:</p>
<pre class="cpp"><span class="type">QObject</span> <span class="operator">*</span>rect <span class="operator">=</span> object<span class="operator">-</span><span class="operator">&gt;</span>findChild<span class="operator">&lt;</span><span class="type">QObject</span><span class="operator">*</span><span class="operator">&gt;</span>(<span class="string">&quot;rect&quot;</span>);
<span class="keyword">if</span> (rect)
rect<span class="operator">-</span><span class="operator">&gt;</span>setProperty(<span class="string">&quot;color&quot;</span><span class="operator">,</span> <span class="string">&quot;red&quot;</span>);</pre>
<p>Note that an object may have multiple children with the same <code>objectName</code>. For example, ListView creates multiple instances of its delegate, so if its delegate is declared with a particular objectName, the ListView will have multiple children with the same <code>objectName</code>. In this case, QObject::findChildren() can be used to find all children with a matching <code>objectName</code>.</p>
<p><b>Warning:</b> While it is possible to use C++ to access and manipulate QML objects deep into the object tree, we recommend that you do not take this approach outside of application testing and prototyping. One strength of QML and C++ integration is the ability to implement the QML user interface separately from the C++ logic and dataset backend, and this strategy breaks if the C++ side reaches deep into the QML components to manipulate them directly. This would make it difficult to, for example, swap a QML view component for another view, if the new component was missing a required <code>objectName</code>. It is better for the C++ implementation to know as little as possible about the QML user interface implementation and the composition of the QML object tree.</p>
<h2 id="accessing-members-of-a-qml-object-type-from-c">Accessing Members of a QML Object Type from C++</h2>
<h3 >Properties</h3>
<p>Any properties declared in a QML object are automatically accessible from C++. Given a QML item like this:</p>
<pre class="qml"><span class="comment">// MyItem.qml</span>
import QtQuick 2.0
<span class="type">Item</span> {
property <span class="type">int</span> <span class="name">someNumber</span>: <span class="number">100</span>
}</pre>
<p>The value of the <code>someNumber</code> property can be set and read using QQmlProperty, or QObject::setProperty() and QObject::property():</p>
<pre class="cpp"><span class="type">QQmlEngine</span> engine;
<span class="type">QQmlComponent</span> component(<span class="operator">&amp;</span>engine<span class="operator">,</span> <span class="string">&quot;MyItem.qml&quot;</span>);
<span class="type">QObject</span> <span class="operator">*</span>object <span class="operator">=</span> component<span class="operator">.</span>create();
qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Property value:&quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="type">QQmlProperty</span><span class="operator">::</span>read(object<span class="operator">,</span> <span class="string">&quot;someNumber&quot;</span>)<span class="operator">.</span>toInt();
<span class="type">QQmlProperty</span><span class="operator">::</span>write(object<span class="operator">,</span> <span class="string">&quot;someNumber&quot;</span><span class="operator">,</span> <span class="number">5000</span>);
qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Property value:&quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> object<span class="operator">-</span><span class="operator">&gt;</span>property(<span class="string">&quot;someNumber&quot;</span>)<span class="operator">.</span>toInt();
object<span class="operator">-</span><span class="operator">&gt;</span>setProperty(<span class="string">&quot;someNumber&quot;</span><span class="operator">,</span> <span class="number">100</span>);</pre>
<p>You should always use QObject::setProperty(), QQmlProperty or QMetaProperty::write() to change a QML property value, to ensure the QML engine is made aware of the property change. For example, say you have a custom type <code>PushButton</code> with a <code>buttonText</code> property that internally reflects the value of a <code>m_buttonText</code> member variable. Modifying the member variable directly like this is not a good idea:</p>
<pre class="cpp"><span class="comment">//bad code</span>
<span class="type">QQmlComponent</span> component(engine<span class="operator">,</span> <span class="string">&quot;MyButton.qml&quot;</span>);
PushButton <span class="operator">*</span>button <span class="operator">=</span> qobject_cast<span class="operator">&lt;</span>PushButton<span class="operator">*</span><span class="operator">&gt;</span>(component<span class="operator">.</span>create());
button<span class="operator">-</span><span class="operator">&gt;</span>m_buttonText <span class="operator">=</span> <span class="string">&quot;Click me&quot;</span>;</pre>
<p>Since the value is changed directly, this bypasses Qt's meta-object system and the QML engine is not made aware of the property change. This means property bindings to <code>buttonText</code> would not be updated, and any <code>onButtonTextChanged</code> handlers would not be called.</p>
<h3 >Invoking QML Methods</h3>
<p>All QML methods are exposed to the meta-object system and can be called from C++ using QMetaObject::invokeMethod(). Method parameters and return values passed from QML are always translated into QVariant values in C++.</p>
<p>Here is a C++ application that calls a QML method using QMetaObject::invokeMethod():</p>
<table class="generic">
<tr valign="top"><td ><pre class="qml"><span class="comment">// MyItem.qml</span>
import QtQuick 2.0
<span class="type">Item</span> {
<span class="keyword">function</span> <span class="name">myQmlFunction</span>(<span class="name">msg</span>) {
<span class="name">console</span>.<span class="name">log</span>(<span class="string">&quot;Got message:&quot;</span>, <span class="name">msg</span>)
<span class="keyword">return</span> <span class="string">&quot;some return value&quot;</span>
}
}</pre>
</td><td ><pre class="cpp"><span class="comment">// main.cpp</span>
<span class="type">QQmlEngine</span> engine;
<span class="type">QQmlComponent</span> component(<span class="operator">&amp;</span>engine<span class="operator">,</span> <span class="string">&quot;MyItem.qml&quot;</span>);
<span class="type">QObject</span> <span class="operator">*</span>object <span class="operator">=</span> component<span class="operator">.</span>create();
<span class="type">QVariant</span> returnedValue;
<span class="type">QVariant</span> msg <span class="operator">=</span> <span class="string">&quot;Hello from C++&quot;</span>;
<span class="type">QMetaObject</span><span class="operator">::</span>invokeMethod(object<span class="operator">,</span> <span class="string">&quot;myQmlFunction&quot;</span><span class="operator">,</span>
Q_RETURN_ARG(<span class="type">QVariant</span><span class="operator">,</span> returnedValue)<span class="operator">,</span>
Q_ARG(<span class="type">QVariant</span><span class="operator">,</span> msg));
qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;QML function returned:&quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> returnedValue<span class="operator">.</span>toString();
<span class="keyword">delete</span> object;</pre>
</td></tr>
</table>
<p>Notice the Q_RETURN_ARG() and Q_ARG() arguments for QMetaObject::invokeMethod() must be specified as QVariant types, as this is the generic data type used for QML method parameters and return values.</p>
<h3 >Connecting to QML Signals</h3>
<p>All QML signals are automatically available to C++, and can be connected to using QObject::connect() like any ordinary Qt C++ signal. In return, any C++ signal can be received by a QML object using <a href="QtQml.qtqml-syntax-signals.md">signal handlers</a>.</p>
<p>Here is a QML component with a signal named <code>qmlSignal</code> that is emitted with a string-type parameter. This signal is connected to a C++ object's slot using QObject::connect(), so that the <code>cppSlot()</code> method is called whenever the <code>qmlSignal</code> is emitted:</p>
<table class="generic">
<tr valign="top"><td ><pre class="qml"><span class="comment">// MyItem.qml</span>
import QtQuick 2.0
<span class="type">Item</span> {
<span class="name">id</span>: <span class="name">item</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
signal <span class="type">qmlSignal</span>(string msg)
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">item</span>.<span class="name">qmlSignal</span>(<span class="string">&quot;Hello from QML&quot;</span>)
}
}</pre>
</td><td ><pre class="cpp"><span class="keyword">class</span> MyClass : <span class="keyword">public</span> <span class="type">QObject</span>
{
Q_OBJECT
<span class="keyword">public</span> <span class="keyword">slots</span>:
<span class="type">void</span> cppSlot(<span class="keyword">const</span> <span class="type">QString</span> <span class="operator">&amp;</span>msg) {
qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Called the C++ slot with message:&quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> msg;
}
};
<span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span>argv<span class="operator">[</span><span class="operator">]</span>) {
<span class="type">QGuiApplication</span> app(argc<span class="operator">,</span> argv);
<span class="type">QQuickView</span> view(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;MyItem.qml&quot;</span>));
<span class="type">QObject</span> <span class="operator">*</span>item <span class="operator">=</span> view<span class="operator">.</span>rootObject();
MyClass myClass;
<span class="type">QObject</span><span class="operator">::</span>connect(item<span class="operator">,</span> SIGNAL(qmlSignal(<span class="type">QString</span>))<span class="operator">,</span>
<span class="operator">&amp;</span>myClass<span class="operator">,</span> SLOT(cppSlot(<span class="type">QString</span>)));
view<span class="operator">.</span>show();
<span class="keyword">return</span> app<span class="operator">.</span>exec();
}</pre>
</td></tr>
</table>
<p>When a QML object type is used as a signal parameter, the parameter should use var as the type, and the value should be received in C++ using the QVariant type:</p>
<table class="generic">
<tr valign="top"><td ><pre class="qml"> <span class="comment">// MyItem.qml</span>
import QtQuick 2.0
<span class="type">Item</span> {
<span class="name">id</span>: <span class="name">item</span>
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
signal <span class="type">qmlSignal</span>(var anObject)
<span class="type">MouseArea</span> {
<span class="name">anchors</span>.fill: <span class="name">parent</span>
<span class="name">onClicked</span>: <span class="name">item</span>.<span class="name">qmlSignal</span>(<span class="name">item</span>)
}
}</pre>
</td><td ><pre class="cpp"> <span class="keyword">class</span> MyClass : <span class="keyword">public</span> <span class="type">QObject</span>
{
Q_OBJECT
<span class="keyword">public</span> <span class="keyword">slots</span>:
<span class="type">void</span> cppSlot(<span class="keyword">const</span> <span class="type">QVariant</span> <span class="operator">&amp;</span>v) {
qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Called the C++ slot with value:&quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> v;
<span class="type">QQuickItem</span> <span class="operator">*</span>item <span class="operator">=</span> qobject_cast<span class="operator">&lt;</span><span class="type">QQuickItem</span><span class="operator">*</span><span class="operator">&gt;</span>(v<span class="operator">.</span>value<span class="operator">&lt;</span><span class="type">QObject</span><span class="operator">*</span><span class="operator">&gt;</span>());
qDebug() <span class="operator">&lt;</span><span class="operator">&lt;</span> <span class="string">&quot;Item dimensions:&quot;</span> <span class="operator">&lt;</span><span class="operator">&lt;</span> item<span class="operator">-</span><span class="operator">&gt;</span>width() <span class="operator">&lt;</span><span class="operator">&lt;</span> item<span class="operator">-</span><span class="operator">&gt;</span>height();
}
};
<span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span>argv<span class="operator">[</span><span class="operator">]</span>) {
<span class="type">QApplication</span> app(argc<span class="operator">,</span> argv);
<span class="type">QQuickView</span> view(<span class="type">QUrl</span><span class="operator">::</span>fromLocalFile(<span class="string">&quot;MyItem.qml&quot;</span>));
<span class="type">QObject</span> <span class="operator">*</span>item <span class="operator">=</span> view<span class="operator">.</span>rootObject();
MyClass myClass;
<span class="type">QObject</span><span class="operator">::</span>connect(item<span class="operator">,</span> SIGNAL(qmlSignal(<span class="type">QVariant</span>))<span class="operator">,</span>
<span class="operator">&amp;</span>myClass<span class="operator">,</span> SLOT(cppSlot(<span class="type">QVariant</span>)));
view<span class="operator">.</span>show();
<span class="keyword">return</span> app<span class="operator">.</span>exec();
}</pre>
</td></tr>
</table>
<!-- @@@qtqml-cppintegration-interactqmlfromcpp.html -->
