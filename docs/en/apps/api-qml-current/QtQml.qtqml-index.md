---
Title: QtQml.qtqml-index
---

# QtQml.qtqml-index

<span class="subtitle"></span>
<!-- $$$qtqml-index.html-description -->
<p>The Qt QML module provides a framework for developing applications and libraries with the QML language. It defines and implements the language and engine infrastructure, and provides an API to enable application developers to extend the QML language with custom types and integrate QML code with JavaScript and C++. The Qt QML module provides both a QML API and a C++ API.</p>
<p>Note that while the Qt QML module provides the language and infrastructure for QML applications, the Qt Quick module provides many visual components, model-view support, an animation framework, and much more for building user interfaces.</p>
<p>For those new to QML and Qt Quick, please see QML Applications for an introduction to writing QML applications.</p>
<h2 id="getting-started">Getting Started</h2>
<p>To include the definitions of the module's classes, use the following directive:</p>
<pre class="cpp"><span class="preprocessor">#include &lt;QtQml&gt;</span></pre>
<p>The QML types in Qt QML are available through the <code>QtQML</code> import. To use the types, add the following import statement to your .qml file:</p>
<pre class="cpp">import <span class="type">QtQml</span> <span class="number">2.0</span></pre>
<p>To link against the module, add this line to your qmake <code>.pro</code> file:</p>
<pre class="cpp">QT <span class="operator">+</span><span class="operator">=</span> qml</pre>
<h2 id="qml-and-qml-types">QML and QML Types</h2>
<p>The Qt QML module contains the QML framework and important QML types used in applications. The constructs of QML are described in the <a href="QtQml.qmlreference.md">The QML Reference</a>.</p>
<p>In addition to the <a href="QtQml.qtqml-typesystem-basictypes.md">QML Basic Types</a>, the module comes with the following QML object types:</p>
<ul>
<li><a href="QtQml.Component.md">Component</a></li>
<li><a href="QtQml.QtObject.md">QtObject</a></li>
<li><a href="QtQml.Binding.md">Binding</a></li>
<li><a href="QtQml.Connections.md">Connections</a></li>
<li><a href="QtQml.Timer.md">Timer</a></li>
</ul>
<p>The <a href="QtQml.Qt.md">Qt</a> global object provides useful enums and functions for various QML types.</p>
<h3 >Lists and Models</h3>
<p>New in Qt 5.1, the model types are moved to a submodule, <code>QtQml.Models</code>. The Qt QML Models page has more information.</p>
<ul>
<li><a href="QtQml.DelegateModel.md">DelegateModel</a></li>
<li><a href="QtQml.DelegateModelGroup.md">DelegateModelGroup</a></li>
<li><a href="QtQml.ListElement.md">ListElement</a></li>
<li><a href="QtQml.ListModel.md">ListModel</a></li>
<li><a href="QtQml.ObjectModel.md">ObjectModel</a></li>
</ul>
<h2 id="javascript-environment-for-qml-applications">JavaScript Environment for QML Applications</h2>
<p>JavaScript expressions allow QML code to contain application logic. Qt QML provides the framework for running JavaScript expressions in QML and from C++.</p>
<p>These sections are from <a href="QtQml.qmlreference.md">The QML Reference</a>. <a href="QtQml.qtqml-javascript-topic.md">Integrating QML and JavaScript</a></p>
<ul>
<li><a href="QtQml.qtqml-javascript-expressions.md">Using JavaScript Expressions with QML</a></li>
<li><a href="QtQml.qtqml-javascript-dynamicobjectcreation.md">Dynamic QML Object Creation from JavaScript</a></li>
<li><a href="QtQml.qtqml-javascript-resources.md">Defining JavaScript Resources In QML</a></li>
<li><a href="QtQml.qtqml-javascript-imports.md">Importing JavaScript Resources In QML</a></li>
<li><a href="QtQml.qtqml-javascript-hostenvironment.md">JavaScript Host Environment</a></li>
</ul>
<h2 id="integrating-qml-with-c-applications">Integrating QML with C++ Applications</h2>
<p>The module also provides the framework for running QML applications. The QML framework allows QML code to contain JavaScript expressions and for the QML code to interact with C++ code.</p>
<ul>
<li><a href="QtQml.qtqml-cppclasses-topic.md">Important C++ Classes Provided By The Qt QML Module</a></li>
<li><a href="QtQml.qtqml-cppintegration-topic.md">Integrating QML and C++</a></li>
</ul>
<h2 id="additional-frameworks">Additional Frameworks</h2>
<ul>
<li><a href="QtQml.qmlstatemachine.md">The Declarative State Machine Framework</a></li>
</ul>
<h2 id="guides-and-other-information">Guides and Other Information</h2>
<p>Further information for writing QML applications:</p>
<ul>
<li><a href="QtQml.qmlreference.md">The QML Reference</a></li>
<li>QML Applications - essential information for application development with QML and Qt Quick</li>
<li>Qt Quick - a module which provides a set of QML types and C++ classes for building user interfaces and applications with QML</li>
<li><a href="QtQml.qtqml-releasenotes.md">Qt QML Release Notes</a> - list of changes and additions in the Qt QML module</li>
</ul>
<h3 >Reference</h3>
<ul>
<li>C++ Classes</li>
<li>QML Types</li>
</ul>
<!-- @@@qtqml-index.html -->
