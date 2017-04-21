---
Title: QtQml.qtqml-referenceexamples-coercion-example
---

# QtQml.qtqml-referenceexamples-coercion-example

<span class="subtitle"></span>
<!-- $$$referenceexamples/coercion-description -->
<p>This example builds on:</p>
<ul>
<li><a href="QtQml.qtqml-referenceexamples-properties-example.md">Extending QML - Object and List Property Types Example</a></li>
<li><a href="QtQml.qtqml-referenceexamples-adding-example.md">Extending QML - Adding Types Example</a></li>
</ul>
<p>The Inheritance and Coercion Example shows how to use base classes to assign types of more than one type to a property. It specializes the Person type developed in the previous examples into two types - a <code>Boy</code> and a <code>Girl</code>.</p>
<pre class="qml"><span class="type">BirthdayParty</span> {
<span class="name">host</span>: <span class="name">Boy</span> {
<span class="name">name</span>: <span class="string">&quot;Bob Jones&quot;</span>
<span class="name">shoeSize</span>: <span class="number">12</span>
}
<span class="name">guests</span>: [
<span class="type">Boy</span> { <span class="name">name</span>: <span class="string">&quot;Leo Hodges&quot;</span> },
<span class="type">Boy</span> { <span class="name">name</span>: <span class="string">&quot;Jack Smith&quot;</span> },
<span class="type">Girl</span> { <span class="name">name</span>: <span class="string">&quot;Anne Brown&quot;</span> }
]
}</pre>
<h2 id="declare-boy-and-girl">Declare Boy and Girl</h2>
<pre class="cpp"><span class="keyword">class</span> Boy : <span class="keyword">public</span> Person
{
Q_OBJECT
<span class="keyword">public</span>:
Boy(<span class="type">QObject</span> <span class="operator">*</span> parent <span class="operator">=</span> <span class="number">0</span>);
};
<span class="keyword">class</span> Girl : <span class="keyword">public</span> Person
{
Q_OBJECT
<span class="keyword">public</span>:
Girl(<span class="type">QObject</span> <span class="operator">*</span> parent <span class="operator">=</span> <span class="number">0</span>);
};</pre>
<p>The Person class remains unaltered in this example and the Boy and Girl C++ classes are trivial extensions of it. As an example, the inheritance used here is a little contrived, but in real applications it is likely that the two extensions would add additional properties or modify the Person classes behavior.</p>
<h3 >Define People as a base class</h3>
<p>The implementation of the People class itself has not changed since the previous example. However, as we have repurposed the People class as a common base for Boy and Girl, we want to prevent it from being instantiated from QML directly - an explicit Boy or Girl should be instantiated instead.</p>
<pre class="cpp">qmlRegisterType<span class="operator">&lt;</span>Person<span class="operator">&gt;</span>();</pre>
<p>While we want to disallow instantiating Person from within QML, it still needs to be registered with the QML engine, so that it can be used as a property type and other types can be coerced to it.</p>
<h3 >Define Boy and Girl</h3>
<p>The implementation of Boy and Girl are trivial.</p>
<pre class="cpp">Boy<span class="operator">::</span>Boy(<span class="type">QObject</span> <span class="operator">*</span> parent)
: Person(parent)
{
}
Girl<span class="operator">::</span>Girl(<span class="type">QObject</span> <span class="operator">*</span> parent)
: Person(parent)
{
}</pre>
<p>All that is necessary is to implement the constructor, and to register the types and their QML name with the QML engine.</p>
<h2 id="running-the-example">Running the Example</h2>
<p>The BirthdayParty type has not changed since the previous example. The celebrant and guests property still use the People type.</p>
<pre class="cpp">    Q_PROPERTY(Person <span class="operator">*</span>host READ host WRITE setHost)
Q_PROPERTY(<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Person<span class="operator">&gt;</span> guests READ guests)</pre>
<p>However, as all three types, Person, Boy and Girl, have been registered with the QML system, on assignment QML automatically (and type-safely) converts the Boy and Girl objects into a Person.</p>
<p>The main.cpp file in the example includes a simple shell application that loads and runs the QML snippet shown at the beginning of this page.</p>
<p>Files:</p>
<ul>
<li>referenceexamples/coercion/birthdayparty.cpp</li>
<li>referenceexamples/coercion/birthdayparty.h</li>
<li>referenceexamples/coercion/example.qml</li>
<li>referenceexamples/coercion/person.cpp</li>
<li>referenceexamples/coercion/person.h</li>
<li>referenceexamples/coercion/main.cpp</li>
<li>referenceexamples/coercion/coercion.pro</li>
<li>referenceexamples/coercion/coercion.qrc</li>
</ul>
<!-- @@@referenceexamples/coercion -->
