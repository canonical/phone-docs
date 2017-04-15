---
Title: QtQuick.IntValidator
---
        
IntValidator
============

<span class="subtitle"></span>
Defines a validator for integer values More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[bottom](#bottom-prop)**** : int
-   ****[locale](#locale-prop)**** : string
-   ****[top](#top-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

The [IntValidator](index.html) type provides a validator for integer values.

If no [locale](#locale-prop) is set [IntValidator](index.html) uses the default locale to interpret the number and will accept locale specific digits, group separators, and positive and negative signs. In addition, [IntValidator](index.html) is always guaranteed to accept a number formatted according to the "C" locale.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="bottom-prop"></span><span class="name">bottom</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the validator's lowest acceptable value. By default, this property's value is derived from the lowest signed integer available (typically -2147483647).

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
<td><p><span id="top-prop"></span><span class="name">top</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

This property holds the validator's highest acceptable value. By default, this property's value is derived from the highest signed integer available (typically 2147483647).

