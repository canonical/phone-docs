---
Title: QtQml.qtqml-modules-topic
---

# QtQml.qtqml-modules-topic

<span class="subtitle"></span>
<!-- $$$qtqml-modules-topic.html-description -->
<p>A QML module provides versioned types and JavaScript resources in a type namespace which may be used by clients who import the module. The types which a module provides may be defined in C++ within a plugin, or in QML documents. Modules make use of the QML versioning system which allows modules to be independently updated.</p>
<p>Defining of a QML module allows:</p>
<ul>
<li>The sharing of common QML types within a project - for example, a group of UI components that are used by different windows</li>
<li>The distribution of QML-based libraries</li>
<li>The modularization of distinct features, so that applications only load the libraries necessary for their individual needs</li>
<li>Versioning of types and resources so that the module can be updated safely without breaking client code</li>
</ul>
<h2 id="defining-a-qml-module">Defining a QML Module</h2>
<p>A module is defined by a <a href="QtQml.qtqml-modules-qmldir.md">module definition qmldir file</a>. Each module has an associated type namespace, which is the module's identifier. A module can provide QML object types (defined either by QML documents or via a C++ plugin) and JavaScript resources, and may be imported by clients.</p>
<p>To define a module, a developer should gather together the various QML documents, JavaScript resources and C++ plugins which belong in the module into a single directory, and write an appropriate <a href="QtQml.qtqml-modules-qmldir.md">module definition qmldir file</a> which should also be placed into the directory. The directory can then be installed into the <a href="QtQml.qtqml-syntax-imports.md#qml-import-path">QML import path</a> as a module.</p>
<p>Note that defining a module is not the only way to share common QML types within a project - a simple <a href="QtQml.qtqml-syntax-directoryimports.md">QML document directory import</a> may also be used for this purpose.</p>
<h2 id="supported-qml-module-types">Supported QML Module Types</h2>
<p>There are two different types of modules supported by QML:</p>
<ul>
<li><a href="QtQml.qtqml-modules-identifiedmodules.md">Identified Modules</a></li>
<li><a href="QtQml.qtqml-modules-legacymodules.md">Legacy Modules</a> (deprecated)</li>
</ul>
<p>Identified modules explicitly define their identifier and are installed into QML import path. Identified modules are more maintainable (due to type versioning) and are provided with type registration guarantees by the QML engine which are not provided to legacy modules. Legacy modules are only supported to allow legacy code to continue to work with the latest version of QML, and should be avoided by clients if possible.</p>
<p>Clients may import a QML module from within QML documents or JavaScript files. Please see the documentation about <a href="QtQml.qtqml-syntax-imports.md#module-namespace-imports">importing a QML module</a> for more information on the topic.</p>
<h2 id="providing-types-and-functionality-in-a-c-plugin">Providing Types and Functionality in a C++ Plugin</h2>
<p>An application which has a lot of logic implemented in C++, or which defines types in C++ and exposes them to QML, may wish to implement a QML plugin. A QML extension module developer may wish to implement some types in a C++ plugin (as opposed to defining them via QML documents) to achieve better performance or for greater flexibility.</p>
<p>Every C++ plugin for QML has an initialiatization function which is called by the QML engine when it loads the plugin. This initialization function must register any types that the plugin provides, but must not do anything else (for example, instantiating QObjects is not allowed).</p>
<p>See <a href="QtQml.qtqml-modules-cppplugins.md">Creating C++ Plugins For QML</a> for more information.</p>
<!-- @@@qtqml-modules-topic.html -->
