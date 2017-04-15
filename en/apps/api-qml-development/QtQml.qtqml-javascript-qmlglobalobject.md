---
Title: QtQml.qtqml-javascript-qmlglobalobject
---
        
QML Global Object
=================

<span class="subtitle"></span>
<span id="details"></span>
The QML JavaScript host environment implements the following host objects and functions. These are built in and can be used from any JavaScript code loaded in QML, without additional imports:

-   The [Qt object](../QtQml.Qt.md#qmlglobalqtobject): This object is specific to QML, and provides helper methods and properties specific to the QML environment.
-   qsTr(), qsTranslate(), qsTrId(), QT\_TR\_NOOP(), QT\_TRANSLATE\_NOOP(), and QT\_TRID\_NOOP() functions: These functions are specific to QML, and provide translation capabilities to the QML environment.
-   gc() function: This function is specific to QML, and provides a way to manually trigger garbage collection.
-   print() function: This function is specific to QML, and provides a simple way to output information to the console.
-   The console object: This object implements a subset of the [FireBug Console API](http://getfirebug.com/wiki/index.php/Console_API).
-   [XMLHttpRequest](#xmlhttprequest), DOMException: These objects implement a subset of the [W3C XMLHttpRequest specification](http://www.w3.org/TR/XMLHttpRequest/).

<span id="xmlhttprequest"></span><span id="xmlhttprequest"></span>
XMLHttpRequest
--------------

The [XMLHttpRequest](#xmlhttprequest) object, which can be used to asynchronously obtain data from over a network.

The [XMLHttpRequest](#xmlhttprequest) API implements the same [W3C standard](http://www.w3.org/TR/XMLHttpRequest/) as many popular web browsers with following exceptions:

-   QML's [XMLHttpRequest](#xmlhttprequest) does not enforce the same origin policy.
-   QML's [XMLHttpRequest](#xmlhttprequest) does not support *synchronous* requests.

Additionally, the `responseXML` XML DOM tree currently supported by QML is a reduced subset of the [DOM Level 3 Core](http://www.w3.org/TR/DOM-Level-3-Core/) API supported in a web browser. The following objects and properties are supported by the QML implementation:

<table style="width:100%;">
<colgroup>
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Node</strong></th>
<th><strong>Document</strong></th>
<th><strong>Element</strong></th>
<th><strong>Attr</strong></th>
<th><strong>CharacterData</strong></th>
<th><strong>Text</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><ul>
<li>nodeName</li>
<li>nodeValue</li>
<li>nodeType</li>
<li>parentNode</li>
<li>childNodes</li>
<li>firstChild</li>
<li>lastChild</li>
<li>previousSibling</li>
<li>nextSibling</li>
<li>attributes</li>
</ul></td>
<td><ul>
<li>xmlVersion</li>
<li>xmlEncoding</li>
<li>xmlStandalone</li>
<li>documentElement</li>
</ul></td>
<td><ul>
<li>tagName</li>
</ul></td>
<td><ul>
<li>name</li>
<li>value</li>
<li>ownerElement</li>
</ul></td>
<td><ul>
<li>data</li>
<li>length</li>
</ul></td>
<td><ul>
<li>isElementContentWhitespace</li>
<li>wholeText</li>
</ul></td>
</tr>
</tbody>
</table>

The [XMLHttpRequest example](https://developer.ubuntu.comapps/qml/sdk-15.04.6/QtQml.xmlhttprequest/) demonstrates how to use the [XMLHttpRequest](#xmlhttprequest) object to make a request and read the response headers.

