---
Title: QtQml.Locale
---

# QtQml.Locale

<span class="subtitle"></span>
<!-- $$$Locale-brief -->
<p>Provides locale specific properties and formatted data More...</p>
<!-- @@@Locale -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtQml 2.2</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#amText-prop">amText</a></b></b> : string</li>
<li class="fn"><b><b><a href="#decimalPoint-prop">decimalPoint</a></b></b> : string</li>
<li class="fn"><b><b><a href="#exponential-prop">exponential</a></b></b> : string</li>
<li class="fn"><b><b><a href="#firstDayOfWeek-prop">firstDayOfWeek</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#groupSeparator-prop">groupSeparator</a></b></b> : string</li>
<li class="fn"><b><b><a href="#measurementSystem-prop">measurementSystem</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#name-prop">name</a></b></b> : string</li>
<li class="fn"><b><b><a href="#nativeCountryName-prop">nativeCountryName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#nativeLanguageName-prop">nativeLanguageName</a></b></b> : string</li>
<li class="fn"><b><b><a href="#negativeSign-prop">negativeSign</a></b></b> : string</li>
<li class="fn"><b><b><a href="#percent-prop">percent</a></b></b> : string</li>
<li class="fn"><b><b><a href="#pmText-prop">pmText</a></b></b> : string</li>
<li class="fn"><b><b><a href="#positiveSign-prop">positiveSign</a></b></b> : string</li>
<li class="fn"><b><b><a href="#textDirection-prop">textDirection</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#uiLanguages-prop">uiLanguages</a></b></b> : Array&lt;string&gt;</li>
<li class="fn"><b><b><a href="#weekDays-prop">weekDays</a></b></b> : Array&lt;int&gt;</li>
<li class="fn"><b><b><a href="#zeroDigit-prop">zeroDigit</a></b></b> : string</li>
</ul>
<h2 id="methods">Methods</h2>
<ul>
<li class="fn">string <b><b><a href="#currencySymbol-method">currencySymbol</a></b></b>(format)</li>
<li class="fn">string <b><b><a href="#dateFormat-method">dateFormat</a></b></b>(type)</li>
<li class="fn">string <b><b><a href="#dateTimeFormat-method">dateTimeFormat</a></b></b>(type)</li>
<li class="fn">string <b><b><a href="#dayName-method">dayName</a></b></b>(day, type)</li>
<li class="fn">string <b><b><a href="#monthName-method">monthName</a></b></b>(month, type)</li>
<li class="fn">string <b><b><a href="#standaloneDayName-method">standaloneDayName</a></b></b>(day, type)</li>
<li class="fn">string <b><b><a href="#standaloneMonthName-method">standaloneMonthName</a></b></b>(month, type)</li>
<li class="fn">string <b><b><a href="#timeFormat-method">timeFormat</a></b></b>(type)</li>
</ul>
<!-- $$$Locale-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p>The Locale object may only be created via the <a href="QtQml.Qt.md#locale-method">Qt.locale()</a> function. It cannot be created directly.</p>
<p>The <a href="QtQml.Qt.md#locale-method">Qt.locale()</a> function returns a JS Locale object representing the locale with the specified name, which has the format &quot;language[_territory][.codeset][@modifier]&quot; or &quot;C&quot;.</p>
<p>Locale supports the concept of a default locale, which is determined from the system's locale settings at application startup. If no parameter is passed to Qt.locale() the default locale object is returned.</p>
<p>The Locale object provides a number of functions and properties providing data for the specified locale.</p>
<p>The Locale object may also be passed to the <a href="QtQml.Date.md">Date</a> and <a href="QtQml.Number.md">Number</a> toLocaleString() and fromLocaleString() methods in order to convert to/from strings using the specified locale.</p>
<p>This example shows the current date formatted for the German locale:</p>
<pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
Text {
text: <span class="string">&quot;The date is: &quot;</span> <span class="operator">+</span> Date()<span class="operator">.</span>toLocaleString(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale(<span class="string">&quot;de_DE&quot;</span>))
}</pre>
<p>The following example displays the specified number in the correct format for the default locale:</p>
<pre class="cpp">import <span class="type">QtQuick</span> <span class="number">2.0</span>
Text {
text: <span class="string">&quot;The value is: &quot;</span> <span class="operator">+</span> Number(<span class="number">23443.34</span>)<span class="operator">.</span>toLocaleString(<span class="type"><a href="QtQml.Qt.md">Qt</a></span><span class="operator">.</span>locale())
}</pre>
<p>Qt Quick Locale's data is based on Common Locale Data Repository v1.8&#x2e;1&#x2e;</p>
<h3 >Locale String Format Types</h3>
<p>The <a href="#monthName-method">monthName()</a>, <a href="#standaloneMonthName-method">standaloneMonthName()</a>, <a href="#dayName-method">dayName()</a> and <a href="#standaloneDayName-method">standaloneDayName()</a> can use the following enumeration values to specify the formatting of the string representation for a Date object.</p>
<ul>
<li>Locale.LongFormat The long version of day and month names; for example, returning &quot;January&quot; as a month name.</li>
<li>Locale.ShortFormat The short version of day and month names; for example, returning &quot;Jan&quot; as a month name.</li>
<li>Locale.NarrowFormat A special version of day and month names for use when space is limited; for example, returning &quot;J&quot; as a month name. Note that the narrow format might contain the same text for different months and days or it can even be an empty string if the locale doesn't support narrow names, so you should avoid using it for date formatting. Also, for the system locale this format is the same as ShortFormat.</li>
</ul>
<p>Additionally the double-to-string and string-to-double conversion functions are covered by the following licenses:</p>
<p>Copyright (c) 1991 by AT&amp;T.</p>
<p>Permission to use, copy, modify, and distribute this software for any purpose without fee is hereby granted, provided that this entire notice is included in all copies of any software which is or includes a copy or modification of this software and in all copies of the supporting documentation for such software.</p>
<p>THIS SOFTWARE IS BEING PROVIDED &quot;AS IS&quot;, WITHOUT ANY EXPRESS OR IMPLIED WARRANTY. IN PARTICULAR, NEITHER THE AUTHOR NOR AT&amp;T MAKES ANY REPRESENTATION OR WARRANTY OF ANY KIND CONCERNING THE MERCHANTABILITY OF THIS SOFTWARE OR ITS FITNESS FOR ANY PARTICULAR PURPOSE.</p>
<p>This product includes software developed by the University of California, Berkeley and its contributors.</p>
<p><b>See also </b><a href="QtQml.Date.md">Date</a> and <a href="QtQml.Number.md">Number</a>.</p>
<!-- @@@Locale -->
<h2>Property Documentation</h2>
<!-- $$$amText -->
<table class="qmlname"><tr valign="top" id="amText-prop"><td class="tblQmlPropNode"><p><span class="name">amText</span> : <span class="type">string</span></p></td></tr></table><p>The localized name of the &quot;AM&quot; suffix for times specified using the conventions of the 12-hour clock.</p>
<!-- @@@amText -->
<br/>
<!-- $$$decimalPoint -->
<table class="qmlname"><tr valign="top" id="decimalPoint-prop"><td class="tblQmlPropNode"><p><span class="name">decimalPoint</span> : <span class="type">string</span></p></td></tr></table><p>Holds the decimal point character of this locale.</p>
<!-- @@@decimalPoint -->
<br/>
<!-- $$$exponential -->
<table class="qmlname"><tr valign="top" id="exponential-prop"><td class="tblQmlPropNode"><p><span class="name">exponential</span> : <span class="type">string</span></p></td></tr></table><p>Holds the exponential character of this locale.</p>
<!-- @@@exponential -->
<br/>
<!-- $$$firstDayOfWeek -->
<table class="qmlname"><tr valign="top" id="firstDayOfWeek-prop"><td class="tblQmlPropNode"><p><span class="name">firstDayOfWeek</span> : <span class="type">enumeration</span></p></td></tr></table><p>Holds the first day of the week according to the current locale.</p>
<ul>
<li>Locale.Sunday = 0</li>
<li>Locale.Monday = 1</li>
<li>Locale.Tuesday = 2</li>
<li>Locale.Wednesday = 3</li>
<li>Locale.Thursday = 4</li>
<li>Locale.Friday = 5</li>
<li>Locale.Saturday = 6</li>
</ul>
<p><b>Note: </b>that these values match the JS Date API which is different from the Qt C++ API where Qt::Sunday = 7.</p><!-- @@@firstDayOfWeek -->
<br/>
<!-- $$$groupSeparator -->
<table class="qmlname"><tr valign="top" id="groupSeparator-prop"><td class="tblQmlPropNode"><p><span class="name">groupSeparator</span> : <span class="type">string</span></p></td></tr></table><p>Holds the group separator character of this locale.</p>
<!-- @@@groupSeparator -->
<br/>
<!-- $$$measurementSystem -->
<table class="qmlname"><tr valign="top" id="measurementSystem-prop"><td class="tblQmlPropNode"><p><span class="name">measurementSystem</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property defines which units are used for measurement.</p>
<ul>
<li>Locale.MetricSystem This value indicates metric units, such as meters, centimeters and millimeters.</li>
<li>Locale.ImperialUSSystem This value indicates imperial units, such as inches and miles as they are used in the United States.</li>
<li>Locale.ImperialUKSystem This value indicates imperial units, such as inches and miles as they are used in the United Kingdom.</li>
<li>Locale.ImperialSystem Provided for compatibility. The same as Locale.ImperialUSSystem.</li>
</ul>
<!-- @@@measurementSystem -->
<br/>
<!-- $$$name -->
<table class="qmlname"><tr valign="top" id="name-prop"><td class="tblQmlPropNode"><p><span class="name">name</span> : <span class="type">string</span></p></td></tr></table><p>Holds the language and country of this locale as a string of the form &quot;language_country&quot;, where language is a lowercase, two-letter ISO 639 language code, and country is an uppercase, two- or three-letter ISO 3166 country code.</p>
<!-- @@@name -->
<br/>
<!-- $$$nativeCountryName -->
<table class="qmlname"><tr valign="top" id="nativeCountryName-prop"><td class="tblQmlPropNode"><p><span class="name">nativeCountryName</span> : <span class="type">string</span></p></td></tr></table><p>Holds a native name of the country for the locale. For example &quot;España&quot; for Spanish/Spain locale.</p>
<p><b>See also </b><a href="#nativeLanguageName-prop">nativeLanguageName</a>.</p>
<!-- @@@nativeCountryName -->
<br/>
<!-- $$$nativeLanguageName -->
<table class="qmlname"><tr valign="top" id="nativeLanguageName-prop"><td class="tblQmlPropNode"><p><span class="name">nativeLanguageName</span> : <span class="type">string</span></p></td></tr></table><p>Holds a native name of the language for the locale. For example &quot;Schwiizertüütsch&quot; for Swiss-German locale.</p>
<p><b>See also </b><a href="#nativeCountryName-prop">nativeCountryName</a>.</p>
<!-- @@@nativeLanguageName -->
<br/>
<!-- $$$negativeSign -->
<table class="qmlname"><tr valign="top" id="negativeSign-prop"><td class="tblQmlPropNode"><p><span class="name">negativeSign</span> : <span class="type">string</span></p></td></tr></table><p>Holds the negative sign character of this locale.</p>
<!-- @@@negativeSign -->
<br/>
<!-- $$$percent -->
<table class="qmlname"><tr valign="top" id="percent-prop"><td class="tblQmlPropNode"><p><span class="name">percent</span> : <span class="type">string</span></p></td></tr></table><p>Holds the percent character of this locale.</p>
<!-- @@@percent -->
<br/>
<!-- $$$pmText -->
<table class="qmlname"><tr valign="top" id="pmText-prop"><td class="tblQmlPropNode"><p><span class="name">pmText</span> : <span class="type">string</span></p></td></tr></table><p>The localized name of the &quot;PM&quot; suffix for times specified using the conventions of the 12-hour clock.</p>
<!-- @@@pmText -->
<br/>
<!-- $$$positiveSign -->
<table class="qmlname"><tr valign="top" id="positiveSign-prop"><td class="tblQmlPropNode"><p><span class="name">positiveSign</span> : <span class="type">string</span></p></td></tr></table><p>Holds the positive sign character of this locale.</p>
<!-- @@@positiveSign -->
<br/>
<!-- $$$textDirection -->
<table class="qmlname"><tr valign="top" id="textDirection-prop"><td class="tblQmlPropNode"><p><span class="name">textDirection</span> : <span class="type">enumeration</span></p></td></tr></table><p>Holds the text direction of the language:</p>
<ul>
<li>Qt.LeftToRight</li>
<li>Qt.RightToLeft</li>
</ul>
<!-- @@@textDirection -->
<br/>
<!-- $$$uiLanguages -->
<table class="qmlname"><tr valign="top" id="uiLanguages-prop"><td class="tblQmlPropNode"><p><span class="name">uiLanguages</span> : <span class="type">Array</span>&lt;<span class="type">string</span>&gt;</p></td></tr></table><p>Returns an ordered list of locale names for translation purposes in preference order.</p>
<p>The return value represents locale names that the user expects to see the UI translation in.</p>
<p>The first item in the list is the most preferred one.</p>
<!-- @@@uiLanguages -->
<br/>
<!-- $$$weekDays -->
<table class="qmlname"><tr valign="top" id="weekDays-prop"><td class="tblQmlPropNode"><p><span class="name">weekDays</span> : <span class="type">Array</span>&lt;<span class="type">int</span>&gt;</p></td></tr></table><p>Holds an array of days that are considered week days according to the current locale, where Sunday is 0 and Saturday is 6.</p>
<p><b>See also </b><a href="#firstDayOfWeek-prop">firstDayOfWeek</a>.</p>
<!-- @@@weekDays -->
<br/>
<!-- $$$zeroDigit -->
<table class="qmlname"><tr valign="top" id="zeroDigit-prop"><td class="tblQmlPropNode"><p><span class="name">zeroDigit</span> : <span class="type">string</span></p></td></tr></table><p>Holds Returns the zero digit character of this locale.</p>
<!-- @@@zeroDigit -->
<br/>
<h2>Method Documentation</h2>
<!-- $$$currencySymbol -->
<table class="qmlname"><tr valign="top" id="currencySymbol-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">currencySymbol</span>(<span class="type">format</span>)</p></td></tr></table><p>Returns the currency symbol for the specified <i>format</i>:</p>
<ul>
<li>Locale.CurrencyIsoCode a ISO-4217 code of the currency.</li>
<li>Locale.CurrencySymbol a currency symbol.</li>
<li>Locale.CurrencyDisplayName a user readable name of the currency.</li>
</ul>
<p><b>See also </b><a href="QtQml.Number.md#toLocaleCurrencyString-method">Number::toLocaleCurrencyString()</a>.</p>
<!-- @@@currencySymbol -->
<br/>
<!-- $$$dateFormat -->
<table class="qmlname"><tr valign="top" id="dateFormat-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">dateFormat</span>(<span class="type">type</span>)</p></td></tr></table><p>Returns the date format used for the current locale. <i>type</i> specifies the <a href="#formattype">FormatType</a> to return.</p>
<p><b>See also </b><a href="QtQml.Date.md">Date</a>.</p>
<!-- @@@dateFormat -->
<br/>
<!-- $$$dateTimeFormat -->
<table class="qmlname"><tr valign="top" id="dateTimeFormat-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">dateTimeFormat</span>(<span class="type">type</span>)</p></td></tr></table><p>Returns the date time format used for the current locale. <i>type</i> specifies the <a href="#formattype">FormatType</a> to return.</p>
<p><b>See also </b><a href="QtQml.Date.md">Date</a>.</p>
<!-- @@@dateTimeFormat -->
<br/>
<!-- $$$dayName -->
<table class="qmlname"><tr valign="top" id="dayName-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">dayName</span>(<span class="type">day</span>, <span class="type">type</span>)</p></td></tr></table><p>Returns the localized name of the <i>day</i> (where 0 represents Sunday, 1 represents Monday and so on), in the optional <a href="#formattype">FormatType</a> specified by <i>type</i>.</p>
<p><b>See also </b><a href="#monthName-method">monthName()</a> and <a href="#standaloneDayName-method">standaloneDayName()</a>.</p>
<!-- @@@dayName -->
<br/>
<!-- $$$monthName -->
<table class="qmlname"><tr valign="top" id="monthName-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">monthName</span>(<span class="type">month</span>, <span class="type">type</span>)</p></td></tr></table><p>Returns the localized name of <i>month</i> (0-11), in the optional <a href="#formattype">FormatType</a> specified by <i>type</i>.</p>
<p><b>Note: </b>the QLocale C++ API expects a range of (1-12), however Locale.monthName() expects 0-11 as per the JS Date object.</p><p><b>See also </b><a href="#dayName-method">dayName()</a> and <a href="#standaloneMonthName-method">standaloneMonthName()</a>.</p>
<!-- @@@monthName -->
<br/>
<!-- $$$standaloneDayName -->
<table class="qmlname"><tr valign="top" id="standaloneDayName-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">standaloneDayName</span>(<span class="type">day</span>, <span class="type">type</span>)</p></td></tr></table><p>Returns the localized name of the <i>day</i> (where 0 represents Sunday, 1 represents Monday and so on) that is used as a standalone text, in the <a href="#formattype">FormatType</a> specified by <i>type</i>.</p>
<p>If the locale information does not specify the standalone day name then return value is the same as in <a href="#dayName-method">dayName()</a>.</p>
<p><b>See also </b><a href="#dayName-method">dayName()</a> and <a href="#standaloneMonthName-method">standaloneMonthName()</a>.</p>
<!-- @@@standaloneDayName -->
<br/>
<!-- $$$standaloneMonthName -->
<table class="qmlname"><tr valign="top" id="standaloneMonthName-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">standaloneMonthName</span>(<span class="type">month</span>, <span class="type">type</span>)</p></td></tr></table><p>Returns the localized name of <i>month</i> (0-11) that is used as a standalone text, in the optional <a href="#formattype">FormatType</a> specified by <i>type</i>.</p>
<p>If the locale information doesn't specify the standalone month name then return value is the same as in <a href="#monthName-method">monthName()</a>.</p>
<p><b>Note: </b>the QLocale C++ API expects a range of (1-12), however Locale.standaloneMonthName() expects 0-11 as per the JS Date object.</p><p><b>See also </b><a href="#monthName-method">monthName()</a> and <a href="#standaloneDayName-method">standaloneDayName()</a>.</p>
<!-- @@@standaloneMonthName -->
<br/>
<!-- $$$timeFormat -->
<table class="qmlname"><tr valign="top" id="timeFormat-method"><td class="tblQmlFuncNode"><p><span class="type">string</span> <span class="name">timeFormat</span>(<span class="type">type</span>)</p></td></tr></table><p>Returns the time format used for the current locale. <i>type</i> specifies the <a href="#formattype">FormatType</a> to return.</p>
<p><b>See also </b><a href="QtQml.Date.md">Date</a>.</p>
<!-- @@@timeFormat -->
<br/>
