---
Title: QtQml.String
---
        
String
======

<span class="subtitle"></span>
The String object represents a string value More...

|                   |                  |
|-------------------|------------------|
| Import Statement: | import QtQml 2.2 |

<span id="methods"></span>
Methods
-------

-   string ****[arg](#arg-method)****(value)

<span id="details"></span>
Detailed Description
--------------------

The QML String object extends the JS String object with the [arg()](#arg-method) function.

**See also** [ECMAScript Language Specification](http://www.ecma-international.org/publications/standards/Ecma-262.htm).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="arg-method"></span><span class="type">string</span> <span class="name">arg</span>(<span class="type">value</span>)</p></td>
</tr>
</tbody>
</table>

Returns a copy of this string with the lowest numbered place marker replaced by value, i.e., %1, %2, ..., %99. The following example prints "There are 20 items"

``` cpp
var message = "There are %1 items"
var count = 20
console.log(message.arg(count))
```

