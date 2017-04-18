---
Title: QtQml.qtqml-referenceexamples-extended-example
---

# QtQml.qtqml-referenceexamples-extended-example

<span class="subtitle"></span>
<!-- $$$referenceexamples/extended-description -->
<p>This example builds on:</p>
<ul>
<li><a href="QtQml.referenceexamples-adding/">Extending QML - Adding Types Example</a></li>
</ul>
<p>Shows how to use qmlRegisterExtendedType() to provide an extension object to a QLineEdit without modifying or subclassing. The QML engine instantiates a QLineEdit and sets a property that only exists on the extension type. The extension type performs calls on the QLineEdit that otherwise will not be accessible to the QML engine.</p>
<p>Files:</p>
<ul>
<li>referenceexamples/extended/example.qml</li>
<li>referenceexamples/extended/lineedit.cpp</li>
<li>referenceexamples/extended/lineedit.h</li>
<li>referenceexamples/extended/main.cpp</li>
<li>referenceexamples/extended/extended.pro</li>
<li>referenceexamples/extended/extended.qrc</li>
</ul>
<!-- @@@referenceexamples/extended -->
