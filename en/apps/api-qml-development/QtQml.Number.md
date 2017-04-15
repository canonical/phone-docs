---
Title: QtQml.Number
---
        
Number
======

<span class="subtitle"></span>
The Number object provides represents a number value More...

|                   |                  |
|-------------------|------------------|
| Import Statement: | import QtQml 2.2 |

<span id="methods"></span>
Methods
-------

-   string ****[fromLocaleString](#fromLocaleString-method)****(locale, number)
-   string ****[toLocaleCurrencyString](#toLocaleCurrencyString-method)****(locale, symbol)
-   string ****[toLocaleString](#toLocaleString-method)****(locale, format, precision)

<span id="details"></span>
Detailed Description
--------------------

The QML Number object extends the JS Number object with locale aware functions.

**See also** [Locale](../QtQml.Locale.md).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fromLocaleString-method"></span><span class="type">string</span> <span class="name">fromLocaleString</span>(<span class="type">locale</span>, <span class="type">number</span>)</p></td>
</tr>
</tbody>
</table>

Returns a Number by parsing *number* using the conventions of the supplied *locale*.

If *locale* is not supplied the default locale will be used.

For example, using the German locale:

``` cpp
var german = Qt.locale("de_DE");
var d;
d = Number.fromLocaleString(german, "1234,56)   // d == 1234.56
d = Number.fromLocaleString(german, "1.234,56") // d == 1234.56
d = Number.fromLocaleString(german, "1234.56")  // throws exception
d = Number.fromLocaleString(german, "1.234")    // d == 1234.0
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="toLocaleCurrencyString-method"></span><span class="type">string</span> <span class="name">toLocaleCurrencyString</span>(<span class="type">locale</span>, <span class="type">symbol</span>)</p></td>
</tr>
</tbody>
</table>

Converts the Number to a currency using the currency and conventions of the specified *locale*. If *symbol* is specified it will be used as the currency symbol.

**See also** [Locale::currencySymbol()](../QtQml.Locale.md#currencySymbol-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="toLocaleString-method"></span><span class="type">string</span> <span class="name">toLocaleString</span>(<span class="type">locale</span>, <span class="type">format</span>, <span class="type">precision</span>)</p></td>
</tr>
</tbody>
</table>

Converts the Number to a string suitable for the specified *locale* in the specified *format*, with the specified *precision*.

Valid formats are:

-   'f' Decimal floating point, e.g. 248.65
-   'e' Scientific notation using e character, e.g. 2.4865e+2
-   'E' Scientific notation using E character, e.g. 2.4865E+2
-   'g' Use the shorter of e or f
-   'G' Use the shorter of E or f

If precision is not specified, the precision will be 2.

If the format is not specified 'f' will be used.

If *locale* is not specified, the default locale will be used.

The following example shows a number formatted for the German locale:

``` cpp
import QtQuick 2.0
Text {
    text: "The value is: " +  Number(4742378.423).toLocaleString(Qt.locale("de_DE"))
}
```

You can apply toLocaleString() directly to constants, provided the decimal is included in the constant, e.g.

``` cpp
123.0.toLocaleString(Qt.locale("de_DE")) // OK
123..toLocaleString(Qt.locale("de_DE"))  // OK
123.toLocaleString(Qt.locale("de_DE"))   // fails
```

