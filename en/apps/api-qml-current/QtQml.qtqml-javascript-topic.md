---
Title: QtQml.qtqml-javascript-topic
---

# QtQml.qtqml-javascript-topic

<span class="subtitle"></span>
<!-- $$$qtqml-javascript-topic.html-description -->
<p>The QML language uses a JSON-like syntax and allows various expressions and methods to be defined as JavaScript functions. It also allows users to import JavaScript files and use the functionality those imports provide.</p>
<p>This allows developers and designers to leverage the knowledge they have of JavaScript to quickly develop both user-interfaces and application logic.</p>
<h2 id="javascript-expressions">JavaScript Expressions</h2>
<p>QML has a deep JavaScript integration, and allows <a href="QtQml.qtqml-syntax-objectattributes.md#signal-attributes">signal handlers</a> and <a href="QtQml.qtqml-syntax-objectattributes.md#method-attributes">methods</a> to be defined in JavaScript. Another core feature of QML is the ability to specify and enforce relationships between object properties using <a href="QtQml.qtqml-syntax-propertybinding.md">property bindings</a>, which are also defined using JavaScript.</p>
<p>See the documentation page titled <a href="QtQml.qtqml-javascript-expressions.md">JavaScript Expressions in QML Documents</a> for more information about using JavaScript expressions in QML.</p>
<h2 id="javascript-resources">JavaScript Resources</h2>
<p>Application logic defined in JavaScript functions may be separated into separate JavaScript files known as JavaScript resources. There are several different kinds of JavaScript resources, with different semantics.</p>
<p>See the documentation page titled <a href="QtQml.qtqml-javascript-resources.md">Defining JavaScript Resources In QML</a> for more information about defining JavaScript resources for QML.</p>
<h2 id="javascript-imports">JavaScript Imports</h2>
<p>A QML document may import JavaScript resources, and JavaScript resources may import other JavaScript resources as well as QML modules. This allows an application developer to provide application logic in modular, self-contained files.</p>
<p>See the documentation page titled <a href="QtQml.qtqml-javascript-imports.md">Importing JavaScript Resources</a> for more information on how to import JavaScript resources and how to use the functionality they provide.</p>
<h2 id="javascript-host-environment">JavaScript Host Environment</h2>
<p>The QML engine provides a JavaScript environment that has some differences to the JavaScript environment provided by a web browser. Certain limitations apply to code running in the environment, and the QML engine provides various objects in the root context which may be unfamiliar to JavaScript developers.</p>
<p>These limitations and extensions are documented in the description of the <a href="QtQml.qtqml-javascript-hostenvironment.md">JavaScript Host Environment</a> provided by the QML engine.</p>
<!-- @@@qtqml-javascript-topic.html -->
