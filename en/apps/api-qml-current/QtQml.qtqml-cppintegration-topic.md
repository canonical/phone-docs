---
Title: QtQml.qtqml-cppintegration-topic
---

# QtQml.qtqml-cppintegration-topic

<span class="subtitle"></span>
<!-- $$$qtqml-cppintegration-topic.html-description -->
<p>QML is designed to be easily extensible through C++ code. The classes in the <a href="QtQml.qtqml-index.md">Qt QML</a> module enables QML objects to be loaded and manipulated from C++, and the nature of QML engine's integration with Qt's meta object system enables C++ functionality to be invoked directly from QML. This allows the development of hybrid applications which are implemented with a mixture of QML, JavaScript and C++ code.</p>
<p>Integrating QML and C++ provides a variety of opportunities, including the ability to:</p>
<ul>
<li>Separate the user interface code from the application logic code, by implementing the former with QML and JavaScript within <a href="QtQml.qtqml-documents-topic.md">QML documents</a>, and the latter with C++</li>
<li>Use and invoke some C++ functionality from QML (for example, to invoke your application logic, use a data model implemented in C++, or call some functions in a third-party C++ library)</li>
<li>Access functionality in the <a href="QtQml.qtqml-index.md">Qt QML</a> or Qt Quick C++ API (for example, to dynamically generate images using QQuickImageProvider)</li>
<li>Implement your own <a href="QtQml.qtqml-typesystem-objecttypes.md">QML object types</a> from C++ — whether for use within your own specific application, or for distribution to others</li>
</ul>
<p>To provide some C++ data or functionality to QML, it must be made available from a QObject-derived class. Due to the QML engine's integration with the meta object system, the properties, methods and signals of any QObject-derived class are accessible from QML, as described in <a href="QtQml.qtqml-cppintegration-exposecppattributes.md">Exposing Attributes of C++ Types to QML</a>. Once the required functionality is provided by such a class, it can be exposed to QML in a variety of ways:</p>
<ul>
<li>The class can be <a href="QtQml.qtqml-cppintegration-definetypes.md#registering-an-instantiable-object-type"> registered as an instantiable QML type</a>, so that it can be instantiated and used like any ordinary <a href="QtQml.qtqml-typesystem-objecttypes.md">QML object type</a> from QML code</li>
<li>The class can be registered as a <a href="QtQml.qtqml-cppintegration-definetypes.md#registering-singleton-objects-with-a-singleton-type">Singleton Type</a> so that a single instance of the class may be imported from QML code, allowing the instance's properties, methods and signals to be accessed from QML</li>
<li>An instance of the class can be <a href="QtQml.qtqml-cppintegration-contextproperties.md">embedded into QML code</a> as a <i>context property</i> or <i>context object</i>, allowing the instance's properties, methods and signals to be accessed from QML</li>
</ul>
<p>These are the most common methods of accessing C++ functionality from QML code; for more options and details, see the main documentation pages that are described in the sections further below. Additionally, aside from the ability to access C++ functionality from QML, the <a href="QtQml.qtqml-index.md">Qt QML</a> module also provides ways to do the reverse and manipulate QML objects from C++ code. See <a href="QtQml.qtqml-cppintegration-interactqmlfromcpp.md">Interacting with QML Objects from C++</a> for more details.</p>
<p>Finally, the C++ code may be integrated into either a C++ application or a C++ plugin depending on whether it is to be distributed as a standalone application or a library. A plugin can be integrated with a QML module that can then be imported and used by QML code in other applications; see <a href="QtQml.qtqml-modules-cppplugins.md">Providing Types and Functionality in a C++ Plugin</a> for more information.</p>
<h2 id="exposing-attributes-of-c-classes-to-qml">Exposing Attributes of C++ Classes to QML</h2>
<p>QML can easily be extended from C++ due to the QML engine's integration with the Qt meta object system. This integration allows the properties, methods and signals of any QObject-derived class to be accessible from QML: properties can be read and modified, methods can be invoked from JavaScript expressions and signal handlers are automatically created for signals as necessary. Additionally, enumeration values of a QObject-derived class are accessible from QML.</p>
<p>See <a href="QtQml.qtqml-cppintegration-exposecppattributes.md">Exposing Attributes of C++ Types to QML</a> for more information.</p>
<h2 id="defining-qml-types-from-c">Defining QML Types from C++</h2>
<p>QML types can be defined in C++ and then registered with the <a href="QtQml.qtqml-typesystem-topic.md">QML type system</a>. This allows a C++ class to be instantiated as a <a href="QtQml.qtqml-typesystem-objecttypes.md">QML object type</a>, enabling custom object types to be implemented in C++ and integrated into existing QML code. A C++ class may be also registered for other purposes: for example, it could be registered as a <i>Singleton Type</i> to enable a single class instance to be imported by QML code, or it could be registered to enable the enumeration values of a non-instantiable class to be accessible from QML.</p>
<p>Additionally, the <a href="QtQml.qtqml-index.md">Qt QML</a> module provides mechanisms to define QML types that integrate with QML concepts like attached properties and default properties.</p>
<p>For more information on registering and creating custom QML types from C++, see the <a href="QtQml.qtqml-cppintegration-definetypes.md">Defining QML Types from C++</a> documentation.</p>
<h2 id="embedding-c-objects-into-qml-with-context-properties">Embedding C++ Objects into QML with Context Properties</h2>
<p>C++ objects and values can be embedded directly into the context (or <i>scope</i>) of loaded QML objects using <i>context properties</i> and <i>context objects</i>. This is achieved through the QQmlContext class provided by the Qt QML module, which exposes data to the context of a QML component, allowing data to be injected from C++ into QML.</p>
<p>See <a href="QtQml.qtqml-cppintegration-contextproperties.md">Embedding C++ Objects into QML with Context Properties</a> for more information.</p>
<h2 id="interacting-with-qml-objects-from-c">Interacting with QML Objects from C++</h2>
<p>QML object types can be instantiated from C++ and inspected in order to access their properties, invoke their methods and receive their signal notifications. This is possible due to the fact that all QML object types are implemented using QObject-derived classes, enabling the QML engine to dynamically load and introspect objects through the Qt meta object system.</p>
<p>For more information on accessing QML objects from C++, see the documentation on <a href="QtQml.qtqml-cppintegration-interactqmlfromcpp.md">Interacting with QML Objects from C++</a>.</p>
<h2 id="data-type-conversion-between-qml-and-c">Data Type Conversion Between QML and C++</h2>
<p>When data values are exchanged between QML and C++, they are converted by the QML engine to have the correct data types as appropriate for use from QML or C++, providing the data types involved are known to the engine.</p>
<p>See <a href="QtQml.qtqml-cppintegration-data.md">Data Type Conversion Between QML and C++</a> for information on the built-in types supported by the engine and how these types are converted for use when exchanged between QML and C++.</p>
<!-- @@@qtqml-cppintegration-topic.html -->
