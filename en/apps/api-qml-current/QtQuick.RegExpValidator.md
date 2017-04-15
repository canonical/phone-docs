---
Title: QtQuick.RegExpValidator
---
        
RegExpValidator
===============

<span class="subtitle"></span>
Provides a string validator More...

|                   |                    |
|-------------------|--------------------|
| Import Statement: | import QtQuick 2.4 |

<span id="properties"></span>
Properties
----------

-   ****[regExp](#regExp-prop)**** : regExp

<span id="details"></span>
Detailed Description
--------------------

The [RegExpValidator](index.html) type provides a validator, which counts as valid any string which matches a specified regular expression.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="regExp-prop"></span><span class="name">regExp</span> : <span class="type"><a href="#regExp-prop">regExp</a></span></p></td>
</tr>
</tbody>
</table>

This property holds the regular expression used for validation.

Note that this property should be a regular expression in JS syntax, e.g /a/ for the regular expression matching "a".

By default, this property contains a regular expression with the pattern .\* that matches any string.

