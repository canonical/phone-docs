---
Title: QtQuick.DoubleValidator
---
        
DoubleValidator
===============

<span class="subtitle"></span>
Defines a validator for non-integer numbers More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[bottom](#bottom-prop)**** : real
-   ****[decimals](#decimals-prop)**** : int
-   ****[locale](#locale-prop)**** : string
-   ****[notation](#notation-prop)**** : enumeration
-   ****[top](#top-prop)**** : real

<span id="details"></span>
Detailed Description
--------------------

The [DoubleValidator](index.html) type provides a validator for non-integer numbers.

Input is accepted if it contains a double that is within the valid range and is in the correct format.

Input is accepected but invalid if it contains a double that is outside the range or is in the wrong format; e.g. with too many digits after the decimal point or is empty.

Input is rejected if it is not a double.

Note: If the valid range consists of just positive doubles (e.g. 0.0 to 100.0) and input is a negative double then it is rejected. If [notation](#notation-prop) is set to [DoubleValidator](index.html).StandardNotation, and the input contains more digits before the decimal point than a double in the valid range may have, it is also rejected. If [notation](#notation-prop) is [DoubleValidator](index.html).ScientificNotation, and the input is not in the valid range, it is accecpted but invalid. The value may yet become valid by changing the exponent.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="bottom-prop"></span><span class="name">bottom</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the validator's minimum acceptable value. By default, this property contains a value of -infinity.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="decimals-prop"></span><span class="name">decimals</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the validator's maximum number of digits after the decimal point. By default, this property contains a value of 1000.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="locale-prop"></span><span class="name">locale</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

This property holds the name of the locale used to interpret the number.

**See also** Qt.locale().

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="notation-prop"></span><span class="name">notation</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property holds the notation of how a string can describe a number.

The possible values for this property are:

-   [DoubleValidator](index.html).StandardNotation
-   [DoubleValidator](index.html).ScientificNotation (default)

If this property is set to [DoubleValidator](index.html).ScientificNotation, the written number may have an exponent part (e.g. 1.5E-2).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="top-prop"></span><span class="name">top</span> : <span class="type">real</span></p></td>
</tr>
</tbody>
</table>

This property holds the validator's maximum acceptable value. By default, this property contains a value of infinity.

