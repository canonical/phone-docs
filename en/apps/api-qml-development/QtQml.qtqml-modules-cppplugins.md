---
Title: QtQml.qtqml-modules-cppplugins
---

# QtQml.qtqml-modules-cppplugins

<span class="subtitle"></span>
<!-- $$$qtqml-modules-cppplugins.html-description -->
<h2 id="creating-a-plugin">Creating a Plugin</h2>
<p>The QML engine load C++ plugins for QML. Such plugins are usually provided in a QML extension module, and can provide types for use by clients in QML documents which import the module. A module requires at least one type registered in order to be considered valid.</p>
<p>QQmlExtensionPlugin is a plugin interface that makes it possible to create QML extensions that can be loaded dynamically into QML applications. These extensions allow custom QML types to be made available to the QML engine.</p>
<p>To write a QML extension plugin:</p>
<ol class="1">
<li>Subclass QQmlExtensionPlugin<ul>
<li>Use the Q_PLUGIN_METADATA() macro to register the plugin with the Qt meta object system</li>
<li>Override the registerTypes() method and call qmlRegisterType() to register the types to be exported by the plugin</li>
</ul>
</li>
<li>Write a project file for the plugin</li>
<li>Create a <a href="QtQml.qtqml-modules-qmldir.md">qmldir file</a> to describe the plugin</li>
</ol>
<p>QML extension plugins are for either application-specific or library-like plugins. Library plugins should limit themselves to registering types, as any manipulation of the engine's root context may cause conflicts or other issues in the library user's code.</p>
<h2 id="plugin-example">Plugin Example</h2>
<p>Suppose there is a new <code>TimeModel</code> C++ class that should be made available as a new QML type. It provides the current time through <code>hour</code> and <code>minute</code> properties.</p>
<pre class="cpp"><span class="keyword">class</span> TimeModel : <span class="keyword">public</span> <span class="type">QObject</span>
{
Q_OBJECT
Q_PROPERTY(<span class="type">int</span> hour READ hour NOTIFY timeChanged)
Q_PROPERTY(<span class="type">int</span> minute READ minute NOTIFY timeChanged)
...</pre>
<p>To make this type available, we create a plugin class named <code>QExampleQmlPlugin</code> which is a subclass of QQmlExtensionPlugin. It overrides the registerTypes() method in order to register the <code>TimeModel</code> type using qmlRegisterType(). It also uses the Q_PLUGIN_METADATA() macro in the class definition to register the plugin with the Qt meta object system using a unique identifier for the plugin.</p>
<pre class="cpp"><span class="keyword">class</span> <span class="type">QExampleQmlPlugin</span> : <span class="keyword">public</span> <span class="type">QQmlExtensionPlugin</span>
{
Q_OBJECT
Q_PLUGIN_METADATA(IID <span class="string">&quot;org.qt-project.Qt.QQmlExtensionInterface&quot;</span>)
<span class="keyword">public</span>:
<span class="type">void</span> registerTypes(<span class="keyword">const</span> <span class="type">char</span> <span class="operator">*</span>uri)
{
Q_ASSERT(uri <span class="operator">=</span><span class="operator">=</span> QLatin1String(<span class="string">&quot;TimeExample&quot;</span>));
qmlRegisterType<span class="operator">&lt;</span>TimeModel<span class="operator">&gt;</span>(uri<span class="operator">,</span> <span class="number">1</span><span class="operator">,</span> <span class="number">0</span><span class="operator">,</span> <span class="string">&quot;Time&quot;</span>);
}
};</pre>
<p>The <code>TimeModel</code> class receives a <code>1.0</code> version of this plugin library, as a QML type called <code>Time</code>. The Q_ASSERT() macro can ensure the type namespace is imported correctly by any QML components that use this plugin. The <a href="QtQml.qtqml-cppintegration-definetypes.md">Defining QML Types from C++</a> article has more information about registering C++ types into the runtime.</p>
<p>For this example, the TimeExample source directory is in <code>imports/TimeExample</code>. The plugin's type namespace will mirror this structure, so the types are registered into the namespace &quot;TimeExample&quot;.</p>
<p>Additionally, the project file, in a <code>.pro</code> file, defines the project as a plugin library, specifies it should be built into the <code>imports/TimeExample</code> directory, and registers the plugin target name and various other details:</p>
<pre class="cpp">TEMPLATE <span class="operator">=</span> lib
CONFIG <span class="operator">+</span><span class="operator">=</span> qt plugin
QT <span class="operator">+</span><span class="operator">=</span> qml
DESTDIR <span class="operator">=</span> imports<span class="operator">/</span>TimeExample
TARGET <span class="operator">=</span> qmlqtimeexampleplugin
SOURCES <span class="operator">+</span><span class="operator">=</span> qexampleqmlplugin<span class="operator">.</span>cpp</pre>
<p>Finally, a <a href="QtQml.qtqml-modules-qmldir.md">qmldir file</a> is required in the <code>imports/TimeExample</code> directory to describe the plugin and the types that it exports. The plugin includes a <code>Clock.qml</code> file along with the <code>qmlqtimeexampleplugin</code> that is built by the project (as shown above in the <code>.pro</code> file) so both of these need to be specified in the <code>qmldir</code> file:</p>
<pre class="cpp">module TimeExample
Clock <span class="number">1.0</span> Clock<span class="operator">.</span>qml
plugin qmlqtimeexampleplugin</pre>
<p>Once the project is built and installed, the new <code>Time</code> component is accessible by any QML component that imports the <code>TimeExample</code> module</p>
<pre class="qml">import TimeExample 1.0 <span class="comment">// import types from the plugin</span>
<span class="type">Clock</span> { <span class="comment">// this class is defined in QML (imports/TimeExample/Clock.qml)</span>
<span class="type">Time</span> { <span class="comment">// this class is defined in C++ (plugin.cpp)</span>
<span class="name">id</span>: <span class="name">time</span>
}
<span class="name">hours</span>: <span class="name">time</span>.<span class="name">hour</span>
<span class="name">minutes</span>: <span class="name">time</span>.<span class="name">minute</span>
}</pre>
<p>The full source code is available in the <a href="QtQml.qmlextensionplugins.md">plugins example</a>.</p>
<h2 id="reference">Reference</h2>
<ul>
<li><a href="QtQml.tutorials-extending-qml.md">Writing QML Extensions with C++</a> - contains a chapter on creating QML plugins.</li>
<li><a href="QtQml.qtqml-cppintegration-definetypes.md">Defining QML Types from C++</a> - information about registering C++ types into the runtime.</li>
<li>How to Create Qt Plugins - information about Qt plugins</li>
</ul>
<!-- @@@qtqml-modules-cppplugins.html -->
