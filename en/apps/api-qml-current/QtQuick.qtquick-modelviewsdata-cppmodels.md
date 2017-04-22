---
Title: QtQuick.qtquick-modelviewsdata-cppmodels
---

# QtQuick.qtquick-modelviewsdata-cppmodels

<span class="subtitle"></span>
<!-- $$$qtquick-modelviewsdata-cppmodels.html-description -->
<h2 id="data-provided-in-a-custom-c-model">Data Provided In A Custom C++ Model</h2>
<p>Models can be defined in C++ and then made available to QML. This is useful for exposing existing C++ data models or otherwise complex datasets to QML.</p>
<p>A C++ model class can be defined as a QStringList, a QObjectList or a <a href="#qabstractitemmodel">QAbstractItemModel</a>. The first two are useful for exposing simpler datasets, while <a href="#qabstractitemmodel">QAbstractItemModel</a> provides a more flexible solution for more complex models.</p>
<h3 >QStringList-based Model</h3>
<p>A model may be a simple QStringList, which provides the contents of the list via the <i>modelData</i> role.</p>
<p>Here is a <a href="QtQuick.ListView.md">ListView</a> with a delegate that references its model item's value using the <code>modelData</code> role:</p>
<pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">model</span>: <span class="name">myModel</span>
<span class="name">delegate</span>: <span class="name">Rectangle</span> {
<span class="name">height</span>: <span class="number">25</span>
<span class="name">width</span>: <span class="number">100</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">modelData</span> }
}
}</pre>
<p>A Qt application can load this QML document and set the value of <code>myModel</code> to a QStringList:</p>
<pre class="cpp"><span class="type">QStringList</span> dataList;
dataList<span class="operator">.</span>append(<span class="string">&quot;Item 1&quot;</span>);
dataList<span class="operator">.</span>append(<span class="string">&quot;Item 2&quot;</span>);
dataList<span class="operator">.</span>append(<span class="string">&quot;Item 3&quot;</span>);
dataList<span class="operator">.</span>append(<span class="string">&quot;Item 4&quot;</span>);
<span class="type">QQuickView</span> view;
<span class="type">QQmlContext</span> <span class="operator">*</span>ctxt <span class="operator">=</span> view<span class="operator">.</span>rootContext();
ctxt<span class="operator">-</span><span class="operator">&gt;</span>setContextProperty(<span class="string">&quot;myModel&quot;</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(dataList));</pre>
<p>The complete source code for this example is available in <a href="QtQuick.qtquick-models-stringlistmodel-example.md">examples/quick/models/stringlistmodel</a> within the Qt install directory.</p>
<p><b>Note:</b> There is no way for the view to know that the contents of a QStringList have changed. If the QStringList changes, it will be necessary to reset the model by calling QQmlContext::setContextProperty() again.</p>
<h3 >QObjectList-based model</h3>
<p>A list of QObject* values can also be used as a model. A QList&lt;QObject*&gt; provides the properties of the objects in the list as roles.</p>
<p>The following application creates a <code>DataObject</code> class with Q_PROPERTY values that will be accessible as named roles when a QList&lt;DataObject*&gt; is exposed to QML:</p>
<pre class="cpp"><span class="keyword">class</span> DataObject : <span class="keyword">public</span> <span class="type">QObject</span>
{
Q_OBJECT
Q_PROPERTY(<span class="type">QString</span> name READ name WRITE setName NOTIFY nameChanged)
Q_PROPERTY(<span class="type">QString</span> color READ color WRITE setColor NOTIFY colorChanged)
...
};
<span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span><span class="operator">*</span> argv)
{
<span class="type">QGuiApplication</span> app(argc<span class="operator">,</span> argv);
<span class="type">QList</span><span class="operator">&lt;</span><span class="type">QObject</span><span class="operator">*</span><span class="operator">&gt;</span> dataList;
dataList<span class="operator">.</span>append(<span class="keyword">new</span> DataObject(<span class="string">&quot;Item 1&quot;</span><span class="operator">,</span> <span class="string">&quot;red&quot;</span>));
dataList<span class="operator">.</span>append(<span class="keyword">new</span> DataObject(<span class="string">&quot;Item 2&quot;</span><span class="operator">,</span> <span class="string">&quot;green&quot;</span>));
dataList<span class="operator">.</span>append(<span class="keyword">new</span> DataObject(<span class="string">&quot;Item 3&quot;</span><span class="operator">,</span> <span class="string">&quot;blue&quot;</span>));
dataList<span class="operator">.</span>append(<span class="keyword">new</span> DataObject(<span class="string">&quot;Item 4&quot;</span><span class="operator">,</span> <span class="string">&quot;yellow&quot;</span>));
<span class="type">QQuickView</span> view;
view<span class="operator">.</span>setResizeMode(<span class="type">QQuickView</span><span class="operator">::</span>SizeRootObjectToView);
<span class="type">QQmlContext</span> <span class="operator">*</span>ctxt <span class="operator">=</span> view<span class="operator">.</span>rootContext();
ctxt<span class="operator">-</span><span class="operator">&gt;</span>setContextProperty(<span class="string">&quot;myModel&quot;</span><span class="operator">,</span> <span class="type">QVariant</span><span class="operator">::</span>fromValue(dataList));
...</pre>
<p>The QObject* is available as the <code>modelData</code> property. As a convenience, the properties of the object are also made available directly in the delegate's context. Here, <code>view.qml</code> references the <code>DataModel</code> properties in the <a href="QtQuick.ListView.md">ListView</a> delegate:</p>
<pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">width</span>: <span class="number">100</span>; <span class="name">height</span>: <span class="number">100</span>
<span class="name">model</span>: <span class="name">myModel</span>
<span class="name">delegate</span>: <span class="name">Rectangle</span> {
<span class="name">height</span>: <span class="number">25</span>
<span class="name">width</span>: <span class="number">100</span>
<span class="name">color</span>: <span class="name">model</span>.<span class="name">modelData</span>.<span class="name">color</span>
<span class="type"><a href="QtQuick.Text.md">Text</a></span> { <span class="name">text</span>: <span class="name">name</span> }
}
}</pre>
<p>Note the use of <code>color</code> property with qualifier. The properties of the object are not replicated in the <code>model</code> object, as they are easily available via the <code>modelData</code> object.</p>
<p>The complete source code for this example is available in <a href="QtQuick.qtquick-models-objectlistmodel-example.md">examples/quick/models/objectlistmodel</a> within the Qt install directory.</p>
<p>Note: There is no way for the view to know that the contents of a QList has changed. If the QList changes, it is necessary to reset the model by calling QQmlContext::setContextProperty() again.</p>
<h3 >QAbstractItemModel</h3>
<p>A model can be defined by subclassing <a href="#qabstractitemmodel">QAbstractItemModel</a>. This is the best approach if you have a more complex model that cannot be supported by the other approaches. A <a href="#qabstractitemmodel">QAbstractItemModel</a> can also automatically notify a QML view when the model data changes.</p>
<p>The roles of a <a href="#qabstractitemmodel">QAbstractItemModel</a> subclass can be exposed to QML by reimplementing QAbstractItemModel::roleNames().</p>
<p>Here is an application with a QAbstractListModel subclass named <code>AnimalModel</code>, which exposes the <i>type</i> and <i>sizes</i> roles. It reimplements QAbstractItemModel::roleNames() to expose the role names, so that they can be accessed via QML:</p>
<pre class="cpp"><span class="keyword">class</span> Animal
{
<span class="keyword">public</span>:
Animal(<span class="keyword">const</span> <span class="type">QString</span> <span class="operator">&amp;</span>type<span class="operator">,</span> <span class="keyword">const</span> <span class="type">QString</span> <span class="operator">&amp;</span>size);
...
};
<span class="keyword">class</span> AnimalModel : <span class="keyword">public</span> <span class="type">QAbstractListModel</span>
{
Q_OBJECT
<span class="keyword">public</span>:
<span class="keyword">enum</span> AnimalRoles {
TypeRole <span class="operator">=</span> <span class="type">Qt</span><span class="operator">::</span>UserRole <span class="operator">+</span> <span class="number">1</span><span class="operator">,</span>
SizeRole
};
AnimalModel(<span class="type">QObject</span> <span class="operator">*</span>parent <span class="operator">=</span> <span class="number">0</span>);
...
};
<span class="type">QHash</span><span class="operator">&lt;</span><span class="type">int</span><span class="operator">,</span> <span class="type">QByteArray</span><span class="operator">&gt;</span> AnimalModel<span class="operator">::</span>roleNames() <span class="keyword">const</span> {
<span class="type">QHash</span><span class="operator">&lt;</span><span class="type">int</span><span class="operator">,</span> <span class="type">QByteArray</span><span class="operator">&gt;</span> roles;
roles<span class="operator">[</span>TypeRole<span class="operator">]</span> <span class="operator">=</span> <span class="string">&quot;type&quot;</span>;
roles<span class="operator">[</span>SizeRole<span class="operator">]</span> <span class="operator">=</span> <span class="string">&quot;size&quot;</span>;
<span class="keyword">return</span> roles;
}
<span class="type">int</span> main(<span class="type">int</span> argc<span class="operator">,</span> <span class="type">char</span> <span class="operator">*</span><span class="operator">*</span> argv)
{
<span class="type">QGuiApplication</span> app(argc<span class="operator">,</span> argv);
AnimalModel model;
model<span class="operator">.</span>addAnimal(Animal(<span class="string">&quot;Wolf&quot;</span><span class="operator">,</span> <span class="string">&quot;Medium&quot;</span>));
model<span class="operator">.</span>addAnimal(Animal(<span class="string">&quot;Polar bear&quot;</span><span class="operator">,</span> <span class="string">&quot;Large&quot;</span>));
model<span class="operator">.</span>addAnimal(Animal(<span class="string">&quot;Quoll&quot;</span><span class="operator">,</span> <span class="string">&quot;Small&quot;</span>));
<span class="type">QQuickView</span> view;
view<span class="operator">.</span>setResizeMode(<span class="type">QQuickView</span><span class="operator">::</span>SizeRootObjectToView);
<span class="type">QQmlContext</span> <span class="operator">*</span>ctxt <span class="operator">=</span> view<span class="operator">.</span>rootContext();
ctxt<span class="operator">-</span><span class="operator">&gt;</span>setContextProperty(<span class="string">&quot;myModel&quot;</span><span class="operator">,</span> <span class="operator">&amp;</span>model);
...</pre>
<p>This model is displayed by a <a href="QtQuick.ListView.md">ListView</a> delegate that accesses the <i>type</i> and <i>size</i> roles:</p>
<pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">250</span>
<span class="name">model</span>: <span class="name">myModel</span>
<span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="string">&quot;Animal: &quot;</span> <span class="operator">+</span> <span class="name">type</span> <span class="operator">+</span> <span class="string">&quot;, &quot;</span> <span class="operator">+</span> <span class="name">size</span> }
}</pre>
<p>QML views are automatically updated when the model changes. Remember the model must follow the standard rules for model changes and notify the view when the model has changed by using QAbstractItemModel::dataChanged(), QAbstractItemModel::beginInsertRows(), and so on. See the Model subclassing reference for more information.</p>
<p>The complete source code for this example is available in <a href="QtQuick.qtquick-models-abstractitemmodel-example.md">examples/quick/models/abstractitemmodel</a> within the Qt install directory.</p>
<p><a href="#qabstractitemmodel">QAbstractItemModel</a> presents a hierarchy of tables, but the views currently provided by QML can only display list data. In order to display the child lists of a hierarchical model, use the DelegateModel QML type, which provides the following properties and functions to be used with list models of <a href="#qabstractitemmodel">QAbstractItemModel</a> type:</p>
<ul>
<li><i>hasModelChildren</i> role property to determine whether a node has child nodes.</li>
<li>DelegateModel::rootIndex allows the root node to be specified</li>
<li>DelegateModel::modelIndex() returns a QModelIndex which can be assigned to DelegateModel::rootIndex</li>
<li>DelegateModel::parentModelIndex() returns a QModelIndex which can be assigned to DelegateModel::rootIndex</li>
</ul>
<h3 >Exposing C++ Data Models to QML</h3>
<p>The above examples use QQmlContext::setContextProperty() to set model values directly in QML components. An alternative to this is to register the C++ model class as a QML type (either directly from a C++ entry-point, or within the initialization function of a QML C++ plugin, as shown below). This would allow the model classes to be created directly as types within QML:</p>
<table class="generic">
<tr valign="top"><td ><pre class="cpp"><span class="keyword">class</span> MyModelPlugin : <span class="keyword">public</span> <span class="type">QQmlExtensionPlugin</span>
{
Q_OBJECT
Q_PLUGIN_METADATA(IID <span class="string">&quot;org.qt-project.QmlExtension.MyModel&quot;</span> FILE <span class="string">&quot;mymodel.json&quot;</span>)
<span class="keyword">public</span>:
<span class="type">void</span> registerTypes(<span class="keyword">const</span> <span class="type">char</span> <span class="operator">*</span>uri)
{
qmlRegisterType<span class="operator">&lt;</span>MyModel<span class="operator">&gt;</span>(uri<span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span>
<span class="string">&quot;MyModel&quot;</span>);
}
}</pre>
</td><td ><pre class="qml"><span class="type">MyModel</span> {
<span class="name">id</span>: <span class="name">myModel</span>
<span class="type">ListElement</span> { <span class="name">someProperty</span>: <span class="string">&quot;some value&quot;</span> }
}</pre>
<pre class="qml"><span class="type"><a href="QtQuick.ListView.md">ListView</a></span> {
<span class="name">width</span>: <span class="number">200</span>; <span class="name">height</span>: <span class="number">250</span>
<span class="name">model</span>: <span class="name">myModel</span>
<span class="name">delegate</span>: <span class="name">Text</span> { <span class="name">text</span>: <span class="name">someProperty</span> }
}</pre>
</td></tr>
</table>
<p>See Writing QML Extensions with C++ for details on writing QML C++ plugins.</p>
<!-- @@@qtquick-modelviewsdata-cppmodels.html -->
