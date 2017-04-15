---
Title: QtQml.Locale
---
        
Locale
======

<span class="subtitle"></span>
Provides locale specific properties and formatted data More...

|                   |                  |
|-------------------|------------------|
| Import Statement: | import QtQml 2.2 |

<span id="properties"></span>
Properties
----------

-   ****[amText](#amText-prop)**** : string
-   ****[decimalPoint](#decimalPoint-prop)**** : string
-   ****[exponential](#exponential-prop)**** : string
-   ****[firstDayOfWeek](#firstDayOfWeek-prop)**** : enumeration
-   ****[groupSeparator](#groupSeparator-prop)**** : string
-   ****[measurementSystem](#measurementSystem-prop)**** : enumeration
-   ****[name](#name-prop)**** : string
-   ****[nativeCountryName](#nativeCountryName-prop)**** : string
-   ****[nativeLanguageName](#nativeLanguageName-prop)**** : string
-   ****[negativeSign](#negativeSign-prop)**** : string
-   ****[percent](#percent-prop)**** : string
-   ****[pmText](#pmText-prop)**** : string
-   ****[positiveSign](#positiveSign-prop)**** : string
-   ****[textDirection](#textDirection-prop)**** : enumeration
-   ****[uiLanguages](#uiLanguages-prop)**** : Array&lt;string&gt;
-   ****[weekDays](#weekDays-prop)**** : Array&lt;int&gt;
-   ****[zeroDigit](#zeroDigit-prop)**** : string

<span id="methods"></span>
Methods
-------

-   string ****[currencySymbol](#currencySymbol-method)****(format)
-   string ****[dateFormat](#dateFormat-method)****(type)
-   string ****[dateTimeFormat](#dateTimeFormat-method)****(type)
-   string ****[dayName](#dayName-method)****(day, type)
-   string ****[monthName](#monthName-method)****(month, type)
-   string ****[standaloneDayName](#standaloneDayName-method)****(day, type)
-   string ****[standaloneMonthName](#standaloneMonthName-method)****(month, type)
-   string ****[timeFormat](#timeFormat-method)****(type)

<span id="details"></span>
Detailed Description
--------------------

The Locale object may only be created via the [Qt.locale()](../QtQml.Qt.md#locale-method) function. It cannot be created directly.

The [Qt.locale()](../QtQml.Qt.md#locale-method) function returns a JS Locale object representing the locale with the specified name, which has the format "language\[\_territory\]\[.codeset\]\[@modifier\]" or "C".

Locale supports the concept of a default locale, which is determined from the system's locale settings at application startup. If no parameter is passed to Qt.locale() the default locale object is returned.

The Locale object provides a number of functions and properties providing data for the specified locale.

The Locale object may also be passed to the [Date](../QtQml.Date.md) and [Number](../QtQml.Number.md) toLocaleString() and fromLocaleString() methods in order to convert to/from strings using the specified locale.

This example shows the current date formatted for the German locale:

``` cpp
import QtQuick 2.0
Text {
    text: "The date is: " + Date().toLocaleString(Qt.locale("de_DE"))
}
```

The following example displays the specified number in the correct format for the default locale:

``` cpp
import QtQuick 2.0
Text {
    text: "The value is: " + Number(23443.34).toLocaleString(Qt.locale())
}
```

Qt Quick Locale's data is based on Common Locale Data Repository v1.8.1.

<span id="formattype"></span><span id="locale-string-format-types"></span>
### Locale String Format Types

The [monthName()](#monthName-method), [standaloneMonthName()](#standaloneMonthName-method), [dayName()](#dayName-method) and [standaloneDayName()](#standaloneDayName-method) can use the following enumeration values to specify the formatting of the string representation for a Date object.

-   Locale.LongFormat The long version of day and month names; for example, returning "January" as a month name.
-   Locale.ShortFormat The short version of day and month names; for example, returning "Jan" as a month name.
-   Locale.NarrowFormat A special version of day and month names for use when space is limited; for example, returning "J" as a month name. Note that the narrow format might contain the same text for different months and days or it can even be an empty string if the locale doesn't support narrow names, so you should avoid using it for date formatting. Also, for the system locale this format is the same as ShortFormat.

Additionally the double-to-string and string-to-double conversion functions are covered by the following licenses:

Copyright (c) 1991 by AT&T.

Permission to use, copy, modify, and distribute this software for any purpose without fee is hereby granted, provided that this entire notice is included in all copies of any software which is or includes a copy or modification of this software and in all copies of the supporting documentation for such software.

THIS SOFTWARE IS BEING PROVIDED "AS IS", WITHOUT ANY EXPRESS OR IMPLIED WARRANTY. IN PARTICULAR, NEITHER THE AUTHOR NOR AT&T MAKES ANY REPRESENTATION OR WARRANTY OF ANY KIND CONCERNING THE MERCHANTABILITY OF THIS SOFTWARE OR ITS FITNESS FOR ANY PARTICULAR PURPOSE.

This product includes software developed by the University of California, Berkeley and its contributors.

**See also** [Date](../QtQml.Date.md) and [Number](../QtQml.Number.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="amText-prop"></span><span class="name">amText</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The localized name of the "AM" suffix for times specified using the conventions of the 12-hour clock.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="decimalPoint-prop"></span><span class="name">decimalPoint</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Holds the decimal point character of this locale.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="exponential-prop"></span><span class="name">exponential</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Holds the exponential character of this locale.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="firstDayOfWeek-prop"></span><span class="name">firstDayOfWeek</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Holds the first day of the week according to the current locale.

-   Locale.Sunday = 0
-   Locale.Monday = 1
-   Locale.Tuesday = 2
-   Locale.Wednesday = 3
-   Locale.Thursday = 4
-   Locale.Friday = 5
-   Locale.Saturday = 6

**Note:** that these values match the JS Date API which is different from the Qt C++ API where Qt::Sunday = 7.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="groupSeparator-prop"></span><span class="name">groupSeparator</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Holds the group separator character of this locale.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="measurementSystem-prop"></span><span class="name">measurementSystem</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

This property defines which units are used for measurement.

-   Locale.MetricSystem This value indicates metric units, such as meters, centimeters and millimeters.
-   Locale.ImperialUSSystem This value indicates imperial units, such as inches and miles as they are used in the United States.
-   Locale.ImperialUKSystem This value indicates imperial units, such as inches and miles as they are used in the United Kingdom.
-   Locale.ImperialSystem Provided for compatibility. The same as Locale.ImperialUSSystem.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="name-prop"></span><span class="name">name</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Holds the language and country of this locale as a string of the form "language\_country", where language is a lowercase, two-letter ISO 639 language code, and country is an uppercase, two- or three-letter ISO 3166 country code.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="nativeCountryName-prop"></span><span class="name">nativeCountryName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Holds a native name of the country for the locale. For example "España" for Spanish/Spain locale.

**See also** [nativeLanguageName](#nativeLanguageName-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="nativeLanguageName-prop"></span><span class="name">nativeLanguageName</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Holds a native name of the language for the locale. For example "Schwiizertüütsch" for Swiss-German locale.

**See also** [nativeCountryName](#nativeCountryName-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="negativeSign-prop"></span><span class="name">negativeSign</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Holds the negative sign character of this locale.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="percent-prop"></span><span class="name">percent</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Holds the percent character of this locale.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="pmText-prop"></span><span class="name">pmText</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The localized name of the "PM" suffix for times specified using the conventions of the 12-hour clock.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="positiveSign-prop"></span><span class="name">positiveSign</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Holds the positive sign character of this locale.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="textDirection-prop"></span><span class="name">textDirection</span> : <span class="type">enumeration</span></p></td>
</tr>
</tbody>
</table>

Holds the text direction of the language:

-   Qt.LeftToRight
-   Qt.RightToLeft

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="uiLanguages-prop"></span><span class="name">uiLanguages</span> : <span class="type">Array</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

Returns an ordered list of locale names for translation purposes in preference order.

The return value represents locale names that the user expects to see the UI translation in.

The first item in the list is the most preferred one.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="weekDays-prop"></span><span class="name">weekDays</span> : <span class="type">Array</span>&lt;<span class="type">int</span>&gt;</p></td>
</tr>
</tbody>
</table>

Holds an array of days that are considered week days according to the current locale, where Sunday is 0 and Saturday is 6.

**See also** [firstDayOfWeek](#firstDayOfWeek-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="zeroDigit-prop"></span><span class="name">zeroDigit</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Holds Returns the zero digit character of this locale.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="currencySymbol-method"></span><span class="type">string</span> <span class="name">currencySymbol</span>(<span class="type">format</span>)</p></td>
</tr>
</tbody>
</table>

Returns the currency symbol for the specified *format*:

-   Locale.CurrencyIsoCode a ISO-4217 code of the currency.
-   Locale.CurrencySymbol a currency symbol.
-   Locale.CurrencyDisplayName a user readable name of the currency.

**See also** [Number::toLocaleCurrencyString()](../QtQml.Number.md#toLocaleCurrencyString-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dateFormat-method"></span><span class="type">string</span> <span class="name">dateFormat</span>(<span class="type">type</span>)</p></td>
</tr>
</tbody>
</table>

Returns the date format used for the current locale. *type* specifies the [FormatType](#formattype) to return.

**See also** [Date](../QtQml.Date.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dateTimeFormat-method"></span><span class="type">string</span> <span class="name">dateTimeFormat</span>(<span class="type">type</span>)</p></td>
</tr>
</tbody>
</table>

Returns the date time format used for the current locale. *type* specifies the [FormatType](#formattype) to return.

**See also** [Date](../QtQml.Date.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="dayName-method"></span><span class="type">string</span> <span class="name">dayName</span>(<span class="type">day</span>, <span class="type">type</span>)</p></td>
</tr>
</tbody>
</table>

Returns the localized name of the *day* (where 0 represents Sunday, 1 represents Monday and so on), in the optional [FormatType](#formattype) specified by *type*.

**See also** [monthName()](#monthName-method) and [standaloneDayName()](#standaloneDayName-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="monthName-method"></span><span class="type">string</span> <span class="name">monthName</span>(<span class="type">month</span>, <span class="type">type</span>)</p></td>
</tr>
</tbody>
</table>

Returns the localized name of *month* (0-11), in the optional [FormatType](#formattype) specified by *type*.

**Note:** the QLocale C++ API expects a range of (1-12), however Locale.monthName() expects 0-11 as per the JS Date object.

**See also** [dayName()](#dayName-method) and [standaloneMonthName()](#standaloneMonthName-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="standaloneDayName-method"></span><span class="type">string</span> <span class="name">standaloneDayName</span>(<span class="type">day</span>, <span class="type">type</span>)</p></td>
</tr>
</tbody>
</table>

Returns the localized name of the *day* (where 0 represents Sunday, 1 represents Monday and so on) that is used as a standalone text, in the [FormatType](#formattype) specified by *type*.

If the locale information does not specify the standalone day name then return value is the same as in [dayName()](#dayName-method).

**See also** [dayName()](#dayName-method) and [standaloneMonthName()](#standaloneMonthName-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="standaloneMonthName-method"></span><span class="type">string</span> <span class="name">standaloneMonthName</span>(<span class="type">month</span>, <span class="type">type</span>)</p></td>
</tr>
</tbody>
</table>

Returns the localized name of *month* (0-11) that is used as a standalone text, in the optional [FormatType](#formattype) specified by *type*.

If the locale information doesn't specify the standalone month name then return value is the same as in [monthName()](#monthName-method).

**Note:** the QLocale C++ API expects a range of (1-12), however Locale.standaloneMonthName() expects 0-11 as per the JS Date object.

**See also** [monthName()](#monthName-method) and [standaloneDayName()](#standaloneDayName-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="timeFormat-method"></span><span class="type">string</span> <span class="name">timeFormat</span>(<span class="type">type</span>)</p></td>
</tr>
</tbody>
</table>

Returns the time format used for the current locale. *type* specifies the [FormatType](#formattype) to return.

**See also** [Date](../QtQml.Date.md).

