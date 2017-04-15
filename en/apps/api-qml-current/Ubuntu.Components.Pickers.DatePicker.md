---
Title: Ubuntu.Components.Pickers.DatePicker
---
        
DatePicker
==========

<span class="subtitle"></span>
DatePicker component provides date and time value picking functionality. More...

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Import Statement:</td>
<td>import Ubuntu.Components.Pickers 1.3</td>
</tr>
<tr class="even">
<td>Inherits:</td>
<td><p><a href="Ubuntu.Components.StyledItem.md">StyledItem</a></p></td>
</tr>
</tbody>
</table>

<span id="properties"></span>
Properties
----------

-   ****[date](#date-prop)**** : date
-   ****[day](#day-prop)**** : int
-   ****[hours](#hours-prop)**** : int
-   ****[locale](#locale-prop)**** : var
-   ****[maximum](#maximum-prop)**** : date
-   ****[minimum](#minimum-prop)**** : date
-   ****[minutes](#minutes-prop)**** : int
-   ****[mode](#mode-prop)**** : string
-   ****[month](#month-prop)**** : int
-   ****[moving](#moving-prop)**** : bool
-   ****[seconds](#seconds-prop)**** : int
-   ****[week](#week-prop)**** : int
-   ****[year](#year-prop)**** : int

<span id="details"></span>
Detailed Description
--------------------

[DatePicker](index.html) combines up to three Picker elements providing different date or time value selection possibilities. It can be used to select full date (year, month, day), full time (hours, minutes, seconds) as well as to select a combination of year and month, month and day, hours and minutes, minutes and seconds or individual time units (i.e. year, month or day as well as hours, minutes or seconds). The selected date as well as the initial one is provided by the [date](#date-prop) property. For convenience the component provides also the *year*, *month*, *day*, *week*, *hours*, *minutes* and *seconds* values as separate properties, however these properties are not writable, and their initialization can happen only through the [date](#date-prop) property.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Pickers 1.0
Column {
    Label {
        text: "Selected date: W" + datePicker.week + " - " +
                Qt.formatDate(datePicker.date, "dddd, dd-MMMM-yyyy")
    }
    DatePicker {
        id: datePicker
    }
}
```

The [mode](#mode-prop) property specifies what time units should be shown by the picker. The property holds a string, combining **Years**, **Months**, **Days**, **Hours**, **Minutes** and **Seconds** strings sepatared with '|' character. A [DatePicker](index.html) which shows only year and month date units would look as follows:

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Pickers 1.0
Column {
    Label {
        text: "Selected month: " + Qt.formatDate(datePicker.date, "MMMM-yyyy")
    }
    DatePicker {
        id: datePicker
        mode: "Years|Months"
    }
}
```

The **mode** of the [DatePicker](index.html) is set to date picking. In case time picking is needed, the model should be set to contain the time specific mode flags. The following example demonstrates how to use [DatePicker](index.html) for time picking.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Pickers 1.0
Column {
    Label {
        text: "Selected time: " + Qt.formatTime(datePicker.date, "hh:mm:ss")
    }
    DatePicker {
        id: datePicker
        mode: "Hours|Minutes|Seconds"
    }
}
```

Note that the order in which the mode flags are specified does not influence the order the pickers are arranged. That is driven by the date format of the [locale](#locale-prop) used in the picker. Also not all combinations of mode flags are supported. See [mode](#mode-prop) for the supported combinations.

The default interval the date values are chosen is a window starting at the current date ending 50 years later. This window is defined by the *minimum* and *maximum* properties. The interval can be altered considering the following rules:

-   *minimum* must be less or equal than the [date](#date-prop); if the *date* value is less than the given *minimum*, the date will be set to the minimum's value
-   *maximum* value must be greater than the *minimum*, or invalid. When the maximum is smaller than the [date](#date-prop), the [date](#date-prop) property will be updated to get the maximum value. When set to invalid date (see Date.getInvalidDate()), the upper limit of the date interval becomes infinite, meaning the year picker will extend infinitely. This leads to increased memory use and should be avoided if possible. Invalid date will make hours picker presenting 24 hours.

``` qml
import QtQuick 2.4
import Ubuntu.Components 1.3
import Ubuntu.Components.Pickers 1.0
Column {
    Label {
        text: "Selected date: " + Qt.formatDate(datePicker.date, "dddd, dd-MMMM-yyyy")
    }
    DatePicker {
        id: datePicker
        minimum: {
            var d = new Date();
            d.setFullYear(d.getFullYear() - 1);
            return d;
        }
        maximum: Date.prototype.getInvalidDate.call()
    }
}
```

**Note**: do not use the [date](#date-prop) property when initializing minimum and maximum as it will cause binding loops.

<span id="layout"></span>
### Layout

As mentioned earlier, [DatePicker](index.html) combines up to three Picker tumblers depending on the mode requested. These tumblers are laid out in a row in the order the default date format of the [locale](#locale-prop) is.

<span id="date-picker-layout-rules"></span>
#### Date picker layout rules

The date picker consist of three pickers: year, month, and date. The exact contents of the month and date pickers depends on the available width:

-   full name for month, number and full day for date (“August” “28 Wednesday”)
-   otherwise full name for month, number and abbreviated day for date (“August” “28 Wed”);
-   otherwise full name for month, number for date (“August” “28”);
-   otherwise abbreviated name for month, number for date (“Aug” “28”).
-   otherwise number for month, number for date (“08” “28”).

*If the currently selected date becomes impossible due to year change (from a leap to a non-leap year when the date is set to February 29) or month change (e.g. from a month that has 31 days to one that has fewer when the date is set to 31), the date reduces automatically to the last day of the month (i.e February 28 or 30th day of the month).*

<span id="time-picker-layout-rules"></span>
#### Time picker layout rules

Time units are shown in fixed width picker tumblers, numbers padded with leading zeroes. There is no other special rule on the formatting of the time unit numbers.

<span id="how-minimum-maximum-affects-the-tumblers"></span>
#### How minimum/maximum affects the tumblers

If minimum and maximum are within the same year, the year picker will be insensitive. If minimum and maximum are within the same month, the month picker will also be insensitive.

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="date-prop"></span><span class="name">date</span> : <span class="type"><a href="#date-prop">date</a></span></p></td>
</tr>
</tbody>
</table>

The date chosen by the [DatePicker](index.html). The default value is the date at the component creation time. The property automatically updates year, month and day properties.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="day-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">day</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

For convenience, the **day** value of the [date](#date-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hours-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">hours</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

For convenience, the **hours** value of the [date](#date-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="locale-prop"></span><span class="name">locale</span> : <span class="type"><a href="http://doc.qt.io/qt-5/qml-var.html">var</a></span></p></td>
</tr>
</tbody>
</table>

The property defines the locale used in the picker. The default value is the system locale.

``` qml
DatePicker {
     locale: Qt.locale("hu_HU")
}
```

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="maximum-prop"></span><span class="name">maximum</span> : <span class="type"><a href="#date-prop">date</a></span></p></td>
</tr>
</tbody>
</table>

The maximum date (inclusive) to be shown in the picker. Both year and month values will be considered from the properties.

See [minimum](#minimum-prop) for more details.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minimum-prop"></span><span class="name">minimum</span> : <span class="type"><a href="#date-prop">date</a></span></p></td>
</tr>
</tbody>
</table>

The minimum date (inclusive) to be shown in the picker. Both year and month values will be considered from the properties.

The year and month picker values are filled based on these values. The year picker will be infinite (extending infinitely) if the maximum is an invalid date. If the distance between maximum and minimum is less than a year, the year picker will be shown disabled.

The month picker will be circular if the distance between maximum and minimum is at least one year, or if the maximum date is invalid.

The default values are the current date for the minimum, and 50 year distance value for maximum.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="minutes-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">minutes</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

For convenience, the **minutes** value of the [date](#date-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="mode-prop"></span><span class="name">mode</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Specifies what kind of date value selectors should be shown by the picker. This is a string of 'flags' separated by '|' separator, where flags are:

Date picker modes
Value
Description
Years
Specifies to show the year picker
Months
Specifies to show the month picker
Days
Specifies to show the day picker
Time picker modes
Value
Description
Hours
Specifies to show the hours picker
Minutes
Specifies to show the minutes picker
Seconds
Specifies to show the seconds picker

With some exceptions, any combination of these flags is allowed within the same group. Date and time picker modes cannot be combined.

The supported combinations are: *Years|Months|Days*, *Years|Months*, *Months|Days*, *Hours|Minutes|Seconds*, *Hours|Minutes* and *Minutes|Seconds*, as well as each mode flag individually.

The default value is "*Years|Months|Days*".

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="month-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">month</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

For convenience, the **month** value of the [date](#date-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="moving-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">moving</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

The property holds whether the component's pickers are moving.

**See also** [Picker::moving](../Ubuntu.Components.Pickers.Picker.md#moving-prop).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="seconds-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">seconds</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

For convenience, the **seconds** value of the [date](#date-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="week-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">week</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

For convenience, the **week** value of the [date](#date-prop) property.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="year-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">year</span> : <span class="type">int</span></p></td>
</tr>
</tbody>
</table>

For convenience, the **year** value of the [date](#date-prop) property.

