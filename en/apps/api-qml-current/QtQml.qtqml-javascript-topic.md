---
Title: QtQml.qtqml-javascript-topic
---
        
Integrating QML and JavaScript
==============================

<span class="subtitle"></span>
<span id="details"></span>
The QML language uses a JSON-like syntax and allows various expressions and methods to be defined as JavaScript functions. It also allows users to import JavaScript files and use the functionality those imports provide.

This allows developers and designers to leverage the knowledge they have of JavaScript to quickly develop both user-interfaces and application logic.

<span id="javascript-expressions"></span>
JavaScript Expressions
----------------------

QML has a deep JavaScript integration, and allows [signal handlers](../QtQml.qtqml-syntax-objectattributes.md#signal-attributes) and [methods](../QtQml.qtqml-syntax-objectattributes.md#method-attributes) to be defined in JavaScript. Another core feature of QML is the ability to specify and enforce relationships between object properties using [property bindings](../QtQml.qtqml-syntax-propertybinding.md), which are also defined using JavaScript.

See the documentation page titled [JavaScript Expressions in QML Documents](../QtQml.qtqml-javascript-expressions.md) for more information about using JavaScript expressions in QML.

<span id="javascript-resources"></span>
JavaScript Resources
--------------------

Application logic defined in JavaScript functions may be separated into separate JavaScript files known as JavaScript resources. There are several different kinds of JavaScript resources, with different semantics.

See the documentation page titled [Defining JavaScript Resources In QML](../QtQml.qtqml-javascript-resources.md) for more information about defining JavaScript resources for QML.

<span id="javascript-imports"></span>
JavaScript Imports
------------------

A QML document may import JavaScript resources, and JavaScript resources may import other JavaScript resources as well as QML modules. This allows an application developer to provide application logic in modular, self-contained files.

See the documentation page titled [Importing JavaScript Resources](../QtQml.qtqml-javascript-imports.md) for more information on how to import JavaScript resources and how to use the functionality they provide.

<span id="javascript-host-environment"></span>
JavaScript Host Environment
---------------------------

The QML engine provides a JavaScript environment that has some differences to the JavaScript environment provided by a web browser. Certain limitations apply to code running in the environment, and the QML engine provides various objects in the root context which may be unfamiliar to JavaScript developers.

These limitations and extensions are documented in the description of the [JavaScript Host Environment](../QtQml.qtqml-javascript-hostenvironment.md) provided by the QML engine.

