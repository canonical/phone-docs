---
Title: QtQml.qtqml-releasenotes
---

# QtQml.qtqml-releasenotes

<span class="subtitle"></span>
<!-- $$$qtqml-releasenotes.html-description -->
<h2 id="qt-qml-in-qt-5-1">Qt QML in Qt 5.1</h2>
<p>Qt 5.1 introduces several bug fixes and new functionalities to Qt QML. This is a summary of the new changes:</p>
<ul>
<li>New QQmlApplicationEngine convenience class for QML applications.</li>
<li>New Instantiatior type for generic, dynamic object creation.</li>
<li>New properties for <a href="QtQml.Qt.md#application-prop">Qt.application</a>: arguments, name, and version.</li>
<li>The 'with' statement has been deprecated and is slated for removal in a future version of the language.</li>
<li>New <a href="QtQml.Qt.md#platform-prop">Qt.platform</a> object with an <code>os</code> property</li>
<li>New qmlClearTypeRegistrations() function drops all data from qmlRegisterType() calls</li>
<li>New qmlRegisterType() function for registering composite types.</li>
</ul>
<h3 >New Submodule</h3>
<p>The Qt QML Models is a new submodule in Qt 5.1 and provides several QML types for handling data with models and lists. These types replace types such as VisualItemModel, VisualDataModel, and VisualDataGroup.</p>
<ul>
<li>Models</li>
</ul>
<p>The What's New in Qt 5.1 has more information about the Qt 5.1 release.</p>
<h2 id="qt-qml-in-qt-5-0">Qt QML in Qt 5.0</h2>
<p>The <a href="QtQml.qtqml-index.md">Qt QML</a> module is new in Qt 5.0&#x2e; It provides the QML engine and implements the QML language supporting infrastructure.</p>
<p>(Prior to Qt 5, this functionality was provided by the QtDeclarative module, which has now been replaced by the new <a href="QtQml.qtqml-index.md">Qt QML</a> and Qt Quick modules. See the Porting QML Applications to Qt 5 page for more information.)</p>
<h3 >QML Engine</h3>
<ul>
<li>JavaScript engine has changed to V8.</li>
<li>Various parser and compiler optimizations have been implemented, as well as a new bindings optimizer.</li>
<li>New QQmlEngine::trimComponentCache() method safely discards unused data in the engine's component cache to free memory.</li>
</ul>
<h3 >Component and Object Creation</h3>
<ul>
<li>QML objects can now be created asynchronously to improve application performance.<ul>
<li>New QQmlIncubator and QQmlIncubationController C++ classes can be used to create objects asynchronously.</li>
<li>From QML code, this behavior can enabled by:<ul>
<li>Calling the new Component <a href="QtQml.Component.md#incubateObject-method">Component::incubateObject</a> method</li>
<li>Passing the <code>Component.Asynchronous</code> parameter to <code>Qt.createComponent()</code></li>
<li>Loading a Loader object asynchronously using the asynchronous property</li>
</ul>
</li>
</ul>
</li>
<li>The component returned by <code>Qt.createComponent()</code> is no longer parented to the engine. Be sure to hold a reference, or provide a parent.</li>
</ul>
<h3 >Type System</h3>
<ul>
<li>New var property type. This is a general-purpose property type which obsoletes the variant type. Properties of the var type may hold JavaScript references.</li>
<li>QML properties of type var and variant can now hold pixmaps. See Scarce Resources in JavaScript for more information.</li>
<li>Value type improvements:<ul>
<li>QML now supports defining properties of value type basic types within QML documents. Supported types include QSizeF, QPointF and QRectF as <code>size</code>, <code>point</code> and <code>rect</code> respectively.</li>
<li>QColor is now a value type provided by the <code>QtQuick</code> module. The red, green, blue and alpha channels of a color property can be accessed via <code>r</code>, <code>g</code>, <code>b</code> and <code>a</code> properties.</li>
<li>Factory functions for various value types have been added to the <code>Qt</code> object exposed to QML. Some of those functions require the <code>QtQuick</code> module to be imported in order to return valid values. See the Qt Quick Release Notes for more information about these functions.</li>
</ul>
</li>
<li>Support for sequence types QList&lt;int&gt;, QList&lt;qreal&gt;, QList&lt;bool&gt;, QList&lt;QUrl&gt;, QList&lt;QString&gt; and QStringList has been improved. QObjects can define Q_PROPERTYs of these types which can be accessed transparently from JavaScript.</li>
</ul>
<h3 >Modules and Imports</h3>
<ul>
<li>Arbitrary functionality may be provided in a namespace through a singleton type. See qmlRegisterSingletonType() for more information.</li>
<li>JavaScript (.js) files may now import QML modules and other JavaScript files using the &quot;.import&quot; syntax.</li>
<li>Plugins may now use QQmlExtensionPlugin::baseUrl to get the directory from which the plugin is loaded. This will be useful if the plugin needs to load QML or other assets from the same directory.</li>
</ul>
<h3 >Other</h3>
<ul>
<li>QQmlExpression can now be constructed directly (and more efficiently) from a QQmlScriptString.</li>
<li>The <a href="QtQml.Qt.md">Qt</a> global object now provides an <a href="QtQml.Qt.md#inputMethod-prop">inputMethod</a> property to access the active text input method for an application.</li>
</ul>
<!-- @@@qtqml-releasenotes.html -->
