---
Title: QtQml.qtqml-referenceexamples-default-example
---

# QtQml.qtqml-referenceexamples-default-example

<span class="subtitle"></span>
<!-- $$$referenceexamples/default-description -->
<p>This example builds on:</p>
<ul>
<li><a href="QtQml.referenceexamples-coercion.md">Extending QML - Inheritance and Coercion Example</a></li>
<li><a href="QtQml.referenceexamples-properties.md">Extending QML - Object and List Property Types Example</a></li>
<li><a href="QtQml.referenceexamples-adding.md">Extending QML - Adding Types Example</a></li>
</ul>
<p>The Default Property Example is a minor modification of the <a href="QtQml.referenceexamples-coercion.md">Extending QML - Inheritance and Coercion Example</a> that simplifies the specification of a BirthdayParty through the use of a default property.</p>
<pre class="qml"><span class="type">BirthdayParty</span> {
<span class="name">host</span>: <span class="name">Boy</span> {
<span class="name">name</span>: <span class="string">&quot;Bob Jones&quot;</span>
<span class="name">shoeSize</span>: <span class="number">12</span>
}
<span class="type">Boy</span> { <span class="name">name</span>: <span class="string">&quot;Leo Hodges&quot;</span> }
<span class="type">Boy</span> { <span class="name">name</span>: <span class="string">&quot;Jack Smith&quot;</span> }
<span class="type">Girl</span> { <span class="name">name</span>: <span class="string">&quot;Anne Brown&quot;</span> }
}</pre>
<h2 id="declaring-the-birthdayparty-class">Declaring the BirthdayParty Class</h2>
<p>The only difference between this example and the last, is the addition of the <code>DefaultProperty</code> class info annotation.</p>
<pre class="cpp"><span class="keyword">class</span> BirthdayParty : <span class="keyword">public</span> <span class="type">QObject</span>
{
Q_OBJECT
Q_PROPERTY(Person <span class="operator">*</span>host READ host WRITE setHost)
Q_PROPERTY(<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Person<span class="operator">&gt;</span> guests READ guests)
Q_CLASSINFO(<span class="string">&quot;DefaultProperty&quot;</span><span class="operator">,</span> <span class="string">&quot;guests&quot;</span>)
<span class="keyword">public</span>:
BirthdayParty(<span class="type">QObject</span> <span class="operator">*</span>parent <span class="operator">=</span> <span class="number">0</span>);
Person <span class="operator">*</span>host() <span class="keyword">const</span>;
<span class="type">void</span> setHost(Person <span class="operator">*</span>);
<span class="type">QQmlListProperty</span><span class="operator">&lt;</span>Person<span class="operator">&gt;</span> guests();
<span class="type">int</span> guestCount() <span class="keyword">const</span>;
Person <span class="operator">*</span>guest(<span class="type">int</span>) <span class="keyword">const</span>;
<span class="keyword">private</span>:
Person <span class="operator">*</span>m_host;
<span class="type">QList</span><span class="operator">&lt;</span>Person <span class="operator">*</span><span class="operator">&gt;</span> m_guests;
};</pre>
<p>The default property specifies the property to assign to whenever an explicit property is not specified, in the case of the BirthdayParty type the guest property. It is purely a syntactic simplification, the behavior is identical to specifying the property by name, but it can add a more natural feel in many situations. The default property must be either an object or list property.</p>
<h2 id="running-the-example">Running the Example</h2>
<p>The main.cpp file in the example includes a simple shell application that loads and runs the QML snippet shown at the beginning of this page.</p>
<p>Files:</p>
<ul>
<li>referenceexamples/default/birthdayparty.cpp</li>
<li>referenceexamples/default/birthdayparty.h</li>
<li>referenceexamples/default/example.qml</li>
<li>referenceexamples/default/person.cpp</li>
<li>referenceexamples/default/person.h</li>
<li>referenceexamples/default/main.cpp</li>
<li>referenceexamples/default/default.pro</li>
<li>referenceexamples/default/default.qrc</li>
</ul>
<!-- @@@referenceexamples/default -->
