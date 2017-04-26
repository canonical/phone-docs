---
Title: QtQml.qtqml-documents-structure
---

# QtQml.qtqml-documents-structure

<span class="subtitle"></span>
<!-- $$$qtqml-documents-structure.html-description -->
<p>A QML document is a self contained piece of QML source code that consists of two parts:</p>
<ul>
<li>Its <i>import</i> statements</li>
<li>A single root object declaration</li>
</ul>
<p>By convention, a single empty line separates the imports from the object hierarchy definition.</p>
<p>QML documents are always encoded in UTF-8 format.</p>
<h2 id="imports">Imports</h2>
<p>A document must import the necessary modules or type namespaces to enable the engine to load the QML object types referenced within the document. By default, a document can access any QML object types that have been defined through <code>.qml</code> files in the same directory; if a document needs to refer to any other object types, it must import the type namespace into which those types have been registered.</p>
<p>QML does <i>not</i> have a preprocessor that modifies the document prior to presentation to the QML engine, unlike C or C++. The <code>import</code> statements do not copy and prepend the code in the document, but instead instruct the QML engine on how to resolve type references found in the document. Any type reference present in a QML document - such as <code>Rectangle</code> and <code>ListView</code> - including those made within a JavaScript block or property bindings, are <i>resolved</i> based exclusively on the import statements. At least one <code>import</code> statement must be present such as <code>import QtQuick 2.0</code>.</p>
<p>Please see the <a href="QtQml.qtqml-syntax-imports.md">QML Syntax - Import Statements</a> documentation for in-depth information about QML imports.</p>
<h2 id="the-root-object-declaration">The Root Object Declaration</h2>
<p>A QML document describes a hierarchy of objects which can be instantiated. Each object definition has a certain structure; it has a type, it can have an id and an object name, it can have properties, it can have methods, it can have signals and it can have signal handlers.</p>
<p>A QML file must only contain <b>a single root object definition</b>. The following is invalid and will generate an error:</p>
<pre class="cpp"><span class="comment">// MyQmlFile.qml</span>
import <span class="type">QtQuick</span> <span class="number">2.0</span>
Rectangle { width: <span class="number">200</span>; height: <span class="number">200</span>; color: <span class="string">&quot;red&quot;</span> }
Rectangle { width: <span class="number">200</span>; height: <span class="number">200</span>; color: <span class="string">&quot;blue&quot;</span> }    <span class="comment">// invalid!</span></pre>
<p>This is because a .qml file automatically defines a QML type, which encapsulates a <i>single</i> QML object definition. This is discussed further in <a href="QtQml.qtqml-documents-definetypes.md">Documents as QML object type definitions</a>.</p>
<!-- @@@qtqml-documents-structure.html -->
