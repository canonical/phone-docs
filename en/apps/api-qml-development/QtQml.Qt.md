---
Title: QtQml.Qt
---
        
Qt
==

<span class="subtitle"></span>
Provides a global object with useful enums and functions from Qt. More...

|                   |                  |
|-------------------|------------------|
| Import Statement: | import QtQml 2.2 |

<span id="properties"></span>
Properties
----------

-   ****[application](#application-prop)**** : object
-   ****[inputMethod](#inputMethod-prop)**** : object
-   ****[platform](#platform-prop)**** : object

<span id="methods"></span>
Methods
-------

-   string ****[atob](#atob-method)****(data)
-   ****[binding](#binding-method)****(function)
-   string ****[btoa](#btoa-method)****(data)
-   color ****[colorEqual](#colorEqual-method)****(color *lhs*, string *rhs*)
-   object ****[createComponent](#createComponent-method)****(url, mode, parent)
-   object ****[createQmlObject](#createQmlObject-method)****(string *qml*, object *parent*, string *filepath*)
-   color ****[darker](#darker-method)****(color *baseColor*, real *factor*)
-   ****[font](#font-method)****(object *fontSpecifier*)
-   list&lt;string&gt; ****[fontFamilies](#fontFamilies-method)****()
-   string ****[formatDate](#formatDate-method)****(datetime *date*, variant *format*)
-   string ****[formatDateTime](#formatDateTime-method)****(datetime *dateTime*, variant *format*)
-   string ****[formatTime](#formatTime-method)****(datetime *time*, variant *format*)
-   color ****[hsla](#hsla-method)****(real *hue*, real *saturation*, real *lightness*, real *alpha*)
-   object ****[include](#include-method)****(string *url*, jsobject *callback*)
-   bool ****[isQtObject](#isQtObject-method)****(object)
-   color ****[lighter](#lighter-method)****(color *baseColor*, real *factor*)
-   ****[locale](#locale-method)****(name)
-   string ****[md5](#md5-method)****(data)
-   ****[matrix4x4](#matrix4x4-method)****(real *m11*, real *m12*, real *m13*, real *m14*, real *m21*, real *m22*, real *m23*, real *m24*, real *m31*, real *m32*, real *m33*, real *m34*, real *m41*, real *m42*, real *m43*, real *m44*)
-   bool ****[openUrlExternally](#openUrlExternally-method)****(url *target*)
-   point ****[point](#point-method)****(int *x*, int *y*)
-   string ****[qsTr](#qsTr-method)****(string *sourceText*, string *disambiguation*, int *n*)
-   string ****[qsTrId](#qsTrId-method)****(string *id*, int *n*)
-   string ****[qsTrIdNoOp](#qsTrIdNoOp-method)****(string *id*)
-   string ****[qsTrNoOp](#qsTrNoOp-method)****(string *sourceText*, string *disambiguation*)
-   string ****[qsTranslate](#qsTranslate-method)****(string *context*, string *sourceText*, string *disambiguation*, int *n*)
-   string ****[qsTranslateNoOp](#qsTranslateNoOp-method)****(string *context*, string *sourceText*, string *disambiguation*)
-   ****[quaternion](#quaternion-method)****(real *scalar*, real *x*, real *y*, real *z*)
-   ****[quit](#quit-method)****()
-   rect ****[rect](#rect-method)****(int *x*, int *y*, int *width*, int *height*)
-   url ****[resolvedUrl](#resolvedUrl-method)****(url *url*)
-   color ****[rgba](#rgba-method)****(real *red*, real *green*, real *blue*, real *alpha*)
-   ****[size](#size-method)****(int *width*, int *height*)
-   color ****[tint](#tint-method)****(color *baseColor*, color *tintColor*)
-   ****[vector2d](#vector2d-method)****(real *x*, real *y*)
-   ****[vector3d](#vector3d-method)****(real *x*, real *y*, real *z*)
-   ****[vector4d](#vector4d-method)****(real *x*, real *y*, real *z*, real *w*)

<span id="details"></span>
Detailed Description
--------------------

<span id="qmlglobalqtobject"></span>
The `Qt` object is a global object with utility functions, properties and enums.

It is not instantiable; to use it, call the members of the global `Qt` object directly. For example:

``` qml
import QtQuick 2.0
Text {
    color: Qt.rgba(1, 0, 0, 1)
    text: Qt.md5("hello, world")
}
```

<span id="enums"></span>
Enums
-----

The Qt object contains the enums available in the [Qt Namespace](index.html). For example, you can access the Qt::LeftButton and Qt::RightButton enumeration values as `Qt.LeftButton` and `Qt.RightButton`.

<span id="types"></span>
Types
-----

The Qt object also contains helper functions for creating objects of specific data types. This is primarily useful when setting the properties of an item when the property has one of the following types:

-   `rect` - use [Qt.rect()](#rect-method)
-   `point` - use [Qt.point()](#point-method)
-   `size` - use [Qt.size()](#size-method)

If the `QtQuick` module has been imported, the following helper functions for creating objects of specific data types are also available for clients to use:

-   `color` - use [Qt.rgba()](#rgba-method), [Qt.hsla()](#hsla-method), [Qt.darker()](#darker-method), [Qt.lighter()](#lighter-method) or [Qt.tint()](#tint-method)
-   `font` - use [Qt.font()](#font-method)
-   `vector2d` - use [Qt.vector2d()](#vector2d-method)
-   `vector3d` - use [Qt.vector3d()](#vector3d-method)
-   `vector4d` - use [Qt.vector4d()](#vector4d-method)
-   `quaternion` - use [Qt.quaternion()](#quaternion-method)
-   `matrix4x4` - use [Qt.matrix4x4()](#matrix4x4-method)

There are also string based constructors for these types. See [QML Basic Types](../QtQml.qtqml-typesystem-basictypes.md) for more information.

<span id="date-time-formatters"></span>
Date/Time Formatters
--------------------

The Qt object contains several functions for formatting QDateTime, QDate and QTime values.

-   [string Qt.formatDateTime(datetime date, variant format)](#formatDateTime-method)
-   [string Qt.formatDate(datetime date, variant format)](#formatDate-method)
-   [string Qt.formatTime(datetime date, variant format)](#formatTime-method)

The format specification is described at [Qt.formatDateTime](#formatDateTime-method).

<span id="dynamic-object-creation"></span>
Dynamic Object Creation
-----------------------

The following functions on the global object allow you to dynamically create QML items from files or strings. See [Dynamic QML Object Creation from JavaScript](../QtQml.qtqml-javascript-dynamicobjectcreation.md) for an overview of their use.

-   [object Qt.createComponent(url)](#createComponent-method)
-   [object Qt.createQmlObject(string qml, object parent, string filepath)](#createQmlObject-method)

<span id="other-functions"></span>
Other Functions
---------------

The following functions are also on the Qt object.

-   [Qt.quit()](#quit-method)
-   [Qt.md5(string)](#md5-method)
-   [string Qt.btoa(string)](#btoa-method)
-   [string Qt.atob(string)](#atob-method)
-   [object Qt.binding(function)](#binding-method)
-   [object Qt.locale()](#locale-method)
-   [string Qt.resolvedUrl(string)](#resolvedUrl-method)
-   [Qt.openUrlExternally(string)](#openUrlExternally-method)
-   [list&lt;string&gt; Qt.fontFamilies()](#fontFamilies-method)

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="application-prop"></span><span class="name">application</span> : <span class="type">object</span></p></td>
</tr>
</tbody>
</table>

The `application` object provides access to global application state properties shared by many QML components.

Its properties are:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code>application.active</code></td>
<td>Deprecated, use Qt.application.state == Qt.ApplicationActive instead.</td>
</tr>
<tr class="even">
<td><code>application.state</code></td>
<td>This read-only property indicates the current state of the application.
<p>Possible values are:</p>
<ul>
<li>Qt.ApplicationActive - The application is the top-most and focused application, and the user is able to interact with the application.</li>
<li>Qt.ApplicationInactive - The application is visible or partially visible, but not selected to be in front, the user cannot interact with the application. On desktop platforms, this typically means that the user activated another application. On mobile platforms, it is more common to enter this state when the OS is interrupting the user with for example incoming calls, SMS-messages or dialogs. This is usually a transient state during which the application is paused. The user may return focus to your application, but most of the time it will be the first indication that the application is going to be suspended. While in this state, consider pausing or stopping any activity that should not continue when the user cannot interact with your application, such as a video, a game, animations, or sensors. You should also avoid performing CPU-intensive tasks which might slow down the application in front.</li>
<li>Qt.ApplicationSuspended - The application is suspended and not visible to the user. On mobile platforms, the application typically enters this state when the user returns to the home screen or switches to another application. While in this state, the application should ensure that the user perceives it as always alive and does not lose his progress, saving any persistent data. The application should cease all activities and be prepared for code execution to stop. While suspended, the application can be killed at any time without further warnings (for example when low memory forces the OS to purge suspended applications).</li>
<li>Qt.ApplicationHidden - The application is hidden and runs in the background. This is the normal state for applications that need to do background processing, like playing music, while the user interacts with other applications. The application should free up all graphical resources when entering this state. A Qt Quick application should not usually handle this state at the QML level. Instead, you should unload the entire UI and reload the QML files whenever the application becomes active again.</li>
</ul></td>
</tr>
<tr class="odd">
<td><code>application.layoutDirection</code></td>
<td>This read-only property can be used to query the default layout direction of the application. On system start-up, the default layout direction depends on the application's language. The property has a value of <code>Qt.RightToLeft</code> in locales where text and graphic elements are read from right to left, and <code>Qt.LeftToRight</code> where the reading direction flows from left to right. You can bind to this property to customize your application layouts to support both layout directions.
<p>Possible values are:</p>
<ul>
<li>Qt.LeftToRight - Text and graphics elements should be positioned from left to right.</li>
<li>Qt.RightToLeft - Text and graphics elements should be positioned from right to left.</li>
</ul></td>
</tr>
<tr class="even">
<td><code>application.arguments</code></td>
<td>This is a string list of the arguments the executable was invoked with.</td>
</tr>
<tr class="odd">
<td><code>application.name</code></td>
<td>This is the application name set on the QCoreApplication instance. This property can be written to in order to set the application name.</td>
</tr>
<tr class="even">
<td><code>application.version</code></td>
<td>This is the application version set on the QCoreApplication instance. This property can be written to in order to set the application version.</td>
</tr>
<tr class="odd">
<td><code>application.organization</code></td>
<td>This is the organization name set on the QCoreApplication instance. This property can be written to in order to set the organization name.</td>
</tr>
<tr class="even">
<td><code>application.domain</code></td>
<td>This is the organization domain set on the QCoreApplication instance. This property can be written to in order to set the organization domain.</td>
</tr>
<tr class="odd">
<td><code>application.supportsMultipleWindows</code></td>
<td>This read-only property can be used to determine whether or not the platform supports multiple windows. Some embedded platforms do not support multiple windows, for example.</td>
</tr>
</tbody>
</table>

The object also has one signal, aboutToQuit(), which is the same as QCoreApplication::aboutToQuit().

The following example uses the `application` object to indicate whether the application is currently active:

``` qml
import QtQuick 2.0
Rectangle {
    width: 300; height: 55
    color: Qt.application.active ? "white" : "lightgray"
    Text {
        text: "Application " + (Qt.application.active ? "active" : "inactive")
        opacity: Qt.application.active ? 1.0 : 0.5
        anchors.centerIn: parent
    }
}
```

Note that when using QML without a QGuiApplication, the following properties will be undefined:

-   application.active
-   application.state
-   application.layoutDirection

This QML property was introduced in Qt 5.1.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="inputMethod-prop"></span><span class="name">inputMethod</span> : <span class="type">object</span></p></td>
</tr>
</tbody>
</table>

The `inputMethod` object allows access to application's QInputMethod object and all its properties and slots. See the QInputMethod documentation for further details.

This QML property was introduced in Qt 5.0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="platform-prop"></span><span class="name">platform</span> : <span class="type">object</span></p></td>
</tr>
</tbody>
</table>

The `platform` object provides info about the underlying platform.

Its properties are:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code>platform.os</code></td>
<td>This read-only property contains the name of the operating system.
<p>Possible values are:</p>
<ul>
<li><code>&quot;android&quot;</code> - Android</li>
<li><code>&quot;blackberry&quot;</code> - BlackBerry OS</li>
<li><code>&quot;ios&quot;</code> - iOS</li>
<li><code>&quot;linux&quot;</code> - Linux</li>
<li><code>&quot;osx&quot;</code> - OS X</li>
<li><code>&quot;unix&quot;</code> - Other Unix-based OS</li>
<li><code>&quot;windows&quot;</code> - Windows</li>
<li><code>&quot;wince&quot;</code> - Windows CE</li>
</ul></td>
</tr>
</tbody>
</table>

This QML property was introduced in Qt 4.8.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="atob-method"></span><span class="type">string</span> <span class="name">atob</span>(<span class="type">data</span>)</p></td>
</tr>
</tbody>
</table>

ASCII to binary - this function returns a base64 decoding of `data`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="binding-method"></span><span class="name">binding</span>(<span class="type">function</span>)</p></td>
</tr>
</tbody>
</table>

Returns a JavaScript object representing a [property binding](../QtQml.qtqml-syntax-propertybinding.md).

There are two main use-cases for the function: firstly, to apply a property binding imperatively from JavaScript code:

``` qml
Item {
    property bool someCondition: true
    property int edgePosition
    Component.onCompleted: {
        if (someCondition == true) {
            // bind to the result of the binding expression passed to Qt.binding()
            edgePosition = Qt.binding(function() { return x + width })
        }
    }
}
```

and secondly, to apply a property binding when initializing property values of dynamically constructed objects (via [Component.createObject()](../QtQml.Component.md#createObject-method) or Loader.setSource()).

For example, assuming the existence of a DynamicText component:

``` qml
import QtQuick 2.0
Text {
    id: textElement
    width: 200
    height: 200
    text: "Default text"
    property string dynamicText: "Dynamic text"
    onTextChanged: console.log(text)
}
```

the output from:

``` qml
Item {
    id: root
    property string dynamicText: "Root text"
    Component.onCompleted: {
        var c = Qt.createComponent("DynamicText.qml")
        var obj1 = c.createObject(root, { 'text': Qt.binding(function() { return dynamicText + ' extra text' }) })
        root.dynamicText = "Modified root text"
        var obj2 = c.createObject(root, { 'text': Qt.binding(function() { return this.dynamicText + ' extra text' }) })
        obj2.dynamicText = "Modified text element text"
    }
}
```

and from:

``` qml
Item {
    id: root
    property string dynamicText: "Root text"
    Loader {
        id: loaderOne
        onLoaded: root.dynamicText = "Modified root text"
    }
    Loader {
        id: loaderTwo
        onLoaded: item.dynamicText = "Modified dynamic text"
    }
    Component.onCompleted: {
        loaderOne.setSource("DynamicText.qml", { 'text': Qt.binding(function() { return dynamicText + ' extra text' }) })
        loaderTwo.setSource("DynamicText.qml", { 'text': Qt.binding(function() { return this.dynamicText + ' extra text' }) })
    }
}
```

should both be:

``` cpp
Root text extra text
Modified root text extra text
Dynamic text extra text
Modified dynamic text extra text
```

This function cannot be used in property binding declarations (see the documentation on [binding declarations and binding assignments](../QtQml.qtqml-syntax-propertybinding.md#qml-javascript-assignment)) except when the result is stored in an array bound to a var property.

``` qml
Item {
    width: 50
    property var storedBindings: [ Qt.binding(function() { return x + width }) ] // stored
    property int a: Qt.binding(function() { return x + width }) // error!
    property int b
    Component.onCompleted: {
        b = storedBindings[0] // causes binding assignment
    }
}
```

**Note:** In Qt Quick 1, all function assignments were treated as binding assignments. The Qt.binding() function is new to Qt Quick 2.

This QML method was introduced in Qt 5.0.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="btoa-method"></span><span class="type">string</span> <span class="name">btoa</span>(<span class="type">data</span>)</p></td>
</tr>
</tbody>
</table>

Binary to ASCII - this function returns a base64 encoding of `data`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="colorEqual-method"></span><span class="type">color</span> <span class="name">colorEqual</span>(<span class="type">color</span> <em>lhs</em>, <span class="type">string</span> <em>rhs</em>)</p></td>
</tr>
</tbody>
</table>

Returns true if both `lhs` and `rhs` yield equal color values. Both arguments may be either color values or string values. If a string value is supplied it must be convertible to a color, as described for the color basic type.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="createComponent-method"></span><span class="type">object</span> <span class="name">createComponent</span>(<span class="type">url</span>, <span class="type">mode</span>, <span class="type">parent</span>)</p></td>
</tr>
</tbody>
</table>

Returns a Component object created using the QML file at the specified *url*, or `null` if an empty string was given.

The returned component's [Component::status](../QtQml.Component.md#status-prop) property indicates whether the component was successfully created. If the status is `Component.Error`, see [Component::errorString()](../QtQml.Component.md#errorString-method) for an error description.

If the optional *mode* parameter is set to `Component.Asynchronous`, the component will be loaded in a background thread. The [Component::status](../QtQml.Component.md#status-prop) property will be `Component.Loading` while it is loading. The status will change to `Component.Ready` if the component loads successfully, or `Component.Error` if loading fails.

If the optional *parent* parameter is given, it should refer to the object that will become the parent for the created [Component](../QtQml.Component.md) object.

Call [Component.createObject()](../QtQml.Component.md#createObject-method) on the returned component to create an object instance of the component.

For example:

``` qml
import QtQuick 2.0
Item {
    id: container
    width: 300; height: 300
    function loadButton() {
        var component = Qt.createComponent("Button.qml");
        if (component.status == Component.Ready) {
            var button = component.createObject(container);
            button.color = "red";
        }
    }
    Component.onCompleted: loadButton()
}
```

See [Dynamic QML Object Creation from JavaScript](../QtQml.qtqml-javascript-dynamicobjectcreation.md) for more information on using this function.

To create a QML object from an arbitrary string of QML (instead of a file), use [Qt.createQmlObject()](#createQmlObject-method).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="createQmlObject-method"></span><span class="type">object</span> <span class="name">createQmlObject</span>(<span class="type">string</span> <em>qml</em>, <span class="type">object</span> <em>parent</em>, <span class="type">string</span> <em>filepath</em>)</p></td>
</tr>
</tbody>
</table>

Returns a new object created from the given *string* of QML which will have the specified *parent*, or `null` if there was an error in creating the object.

If *filepath* is specified, it will be used for error reporting for the created object.

Example (where `parentItem` is the id of an existing QML item):

``` qml
var newObject = Qt.createQmlObject('import QtQuick 2.0; Rectangle {color: "red"; width: 20; height: 20}',
    parentItem, "dynamicSnippet1");
```

In the case of an error, a Qt Script Error object is thrown. This object has an additional property, `qmlErrors`, which is an array of the errors encountered. Each object in this array has the members `lineNumber`, `columnNumber`, `fileName` and `message`. For example, if the above snippet had misspelled color as 'colro' then the array would contain an object like the following: { "lineNumber" : 1, "columnNumber" : 32, "fileName" : "dynamicSnippet1", "message" : "Cannot assign to non-existent property "colro""}.

Note that this function returns immediately, and therefore may not work if the *qml* string loads new components (that is, external QML files that have not yet been loaded). If this is the case, consider using [Qt.createComponent()](#createComponent-method) instead.

See [Dynamic QML Object Creation from JavaScript](../QtQml.qtqml-javascript-dynamicobjectcreation.md) for more information on using this function.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="darker-method"></span><span class="type">color</span> <span class="name">darker</span>(<span class="type">color</span> <em>baseColor</em>, <span class="type">real</span> <em>factor</em>)</p></td>
</tr>
</tbody>
</table>

Returns a color darker than `baseColor` by the `factor` provided.

If the factor is greater than 1.0, this function returns a darker color. Setting factor to 3.0 returns a color that has one-third the brightness. If the factor is less than 1.0, the return color is lighter, but we recommend using the Qt.[lighter()](#lighter-method) function for this purpose. If the factor is 0 or negative, the return value is unspecified.

The function converts the current RGB color to HSV, divides the value (V) component by factor and converts the color back to RGB.

If `factor` is not supplied, returns a color 50% darker than `baseColor` (factor 2.0).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="font-method"></span><span class="name">font</span>(<span class="type">object</span> <em>fontSpecifier</em>)</p></td>
</tr>
</tbody>
</table>

Returns a Font with the properties specified in the `fontSpecifier` object or the nearest matching font. The `fontSpecifier` object should contain key-value pairs where valid keys are the font type's subproperty names, and the values are valid values for each subproperty. Invalid keys will be ignored.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="fontFamilies-method"></span><span class="type">list</span>&lt;<span class="type">string</span>&gt; <span class="name">fontFamilies</span>()</p></td>
</tr>
</tbody>
</table>

Returns a list of the font families available to the application.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="formatDate-method"></span><span class="type">string</span> <span class="name">formatDate</span>(<span class="type">datetime</span> <em>date</em>, <span class="type">variant</span> <em>format</em>)</p></td>
</tr>
</tbody>
</table>

Returns a string representation of `date`, optionally formatted according to `format`.

The *date* parameter may be a JavaScript `Date` object, a date property, a QDate, or QDateTime value. The *format* parameter may be any of the possible format values as described for Qt.formatDateTime().

If *format* is not specified, *date* is formatted using Qt.DefaultLocaleShortDate.

**See also** [Locale](../QtQml.Locale.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="formatDateTime-method"></span><span class="type">string</span> <span class="name">formatDateTime</span>(<span class="type">datetime</span> <em>dateTime</em>, <span class="type">variant</span> <em>format</em>)</p></td>
</tr>
</tbody>
</table>

Returns a string representation of `datetime`, optionally formatted according to `format`.

The *date* parameter may be a JavaScript `Date` object, a date property, a QDate, QTime, or QDateTime value.

If *format* is not provided, *dateTime* is formatted using Qt.DefaultLocaleShortDate. Otherwise, *format* should be either:

-   One of the Qt::DateFormat enumeration values, such as `Qt.DefaultLocaleShortDate` or `Qt.ISODate`
-   A string that specifies the format of the returned string, as detailed below.

If *format* specifies a format string, it should use the following expressions to specify the date:

| Expression | Output                                                                                     |
|------------|--------------------------------------------------------------------------------------------|
| d          | the day as number without a leading zero (1 to 31)                                         |
| dd         | the day as number with a leading zero (01 to 31)                                           |
| ddd        | the abbreviated localized day name (e.g. 'Mon' to 'Sun'). Uses QDate::shortDayName().      |
| dddd       | the long localized day name (e.g. 'Monday' to 'Qt::Sunday'). Uses QDate::longDayName().    |
| M          | the month as number without a leading zero (1-12)                                          |
| MM         | the month as number with a leading zero (01-12)                                            |
| MMM        | the abbreviated localized month name (e.g. 'Jan' to 'Dec'). Uses QDate::shortMonthName().  |
| MMMM       | the long localized month name (e.g. 'January' to 'December'). Uses QDate::longMonthName(). |
| yy         | the year as two digit number (00-99)                                                       |
| yyyy       | the year as four digit number                                                              |

In addition the following expressions can be used to specify the time:

| Expression | Output                                                                |
|------------|-----------------------------------------------------------------------|
| h          | the hour without a leading zero (0 to 23 or 1 to 12 if AM/PM display) |
| hh         | the hour with a leading zero (00 to 23 or 01 to 12 if AM/PM display)  |
| m          | the minute without a leading zero (0 to 59)                           |
| mm         | the minute with a leading zero (00 to 59)                             |
| s          | the second without a leading zero (0 to 59)                           |
| ss         | the second with a leading zero (00 to 59)                             |
| z          | the milliseconds without leading zeroes (0 to 999)                    |
| zzz        | the milliseconds with leading zeroes (000 to 999)                     |
| AP         | use AM/PM display. *AP* will be replaced by either "AM" or "PM".      |
| ap         | use am/pm display. *ap* will be replaced by either "am" or "pm".      |

All other input characters will be ignored. Any sequence of characters that are enclosed in single quotes will be treated as text and not be used as an expression. Two consecutive single quotes ("''") are replaced by a single quote in the output.

For example, if the following date/time value was specified:

``` cpp
// 21 May 2001 14:13:09
var dateTime = new Date(2001, 5, 21, 14, 13, 09)
```

This *dateTime* value could be passed to `Qt.formatDateTime()`, [Qt.formatDate()](#formatDate-method) or [Qt.formatTime()](#formatTime-method) with the *format* values below to produce the following results:

| Format          | Result        |
|-----------------|---------------|
| "dd.MM.yyyy"    | 21.05.2001    |
| "ddd MMMM d yy" | Tue May 21 01 |
| "hh:mm:ss.zzz"  | 14:13:09.042  |
| "h:m:s ap"      | 2:13:9 pm     |

**See also** [Locale](../QtQml.Locale.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="formatTime-method"></span><span class="type">string</span> <span class="name">formatTime</span>(<span class="type">datetime</span> <em>time</em>, <span class="type">variant</span> <em>format</em>)</p></td>
</tr>
</tbody>
</table>

Returns a string representation of `time`, optionally formatted according to `format`.

The *time* parameter may be a JavaScript `Date` object, a QTime, or QDateTime value. The *format* parameter may be any of the possible format values as described for [Qt.formatDateTime()](#formatDateTime-method).

If *format* is not specified, *time* is formatted using Qt.DefaultLocaleShortDate.

**See also** [Locale](../QtQml.Locale.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="hsla-method"></span><span class="type">color</span> <span class="name">hsla</span>(<span class="type">real</span> <em>hue</em>, <span class="type">real</span> <em>saturation</em>, <span class="type">real</span> <em>lightness</em>, <span class="type">real</span> <em>alpha</em>)</p></td>
</tr>
</tbody>
</table>

Returns a color with the specified `hue`, `saturation`, `lightness` and `alpha` components. All components should be in the range 0-1 inclusive.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="include-method"></span><span class="type">object</span> <span class="name">include</span>(<span class="type">string</span> <em>url</em>, <span class="type">jsobject</span> <em>callback</em>)</p></td>
</tr>
</tbody>
</table>

Includes another JavaScript file. This method can only be used from within JavaScript files, and not regular QML files.

This imports all functions from *url* into the current script's namespace.

Qt.include() returns an object that describes the status of the operation. The object has a single property, `status`, that is set to one of the following values:

| Symbol                | Value | Description                                                                                                                     |
|-----------------------|-------|---------------------------------------------------------------------------------------------------------------------------------|
| result.OK             | 0     | The include completed successfully.                                                                                             |
| result.LOADING        | 1     | Data is being loaded from the network.                                                                                          |
| result.NETWORK\_ERROR | 2     | A network error occurred while fetching the url.                                                                                |
| result.EXCEPTION      | 3     | A JavaScript exception occurred while executing the included code. An additional `exception` property will be set in this case. |

The `status` property will be updated as the operation progresses.

If provided, *callback* is invoked when the operation completes. The callback is passed the same object as is returned from the Qt.include() call.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="isQtObject-method"></span><span class="type">bool</span> <span class="name">isQtObject</span>(<span class="type">object</span>)</p></td>
</tr>
</tbody>
</table>

Returns true if `object` is a valid reference to a Qt or QML object, otherwise false.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="lighter-method"></span><span class="type">color</span> <span class="name">lighter</span>(<span class="type">color</span> <em>baseColor</em>, <span class="type">real</span> <em>factor</em>)</p></td>
</tr>
</tbody>
</table>

Returns a color lighter than `baseColor` by the `factor` provided.

If the factor is greater than 1.0, this functions returns a lighter color. Setting factor to 1.5 returns a color that is 50% brighter. If the factor is less than 1.0, the return color is darker, but we recommend using the Qt.[darker()](#darker-method) function for this purpose. If the factor is 0 or negative, the return value is unspecified.

The function converts the current RGB color to HSV, multiplies the value (V) component by factor and converts the color back to RGB.

If `factor` is not supplied, returns a color 50% lighter than `baseColor` (factor 1.5).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="locale-method"></span><span class="name">locale</span>(<span class="type">name</span>)</p></td>
</tr>
</tbody>
</table>

Returns a JS object representing the locale with the specified name, which has the format "language\[\_territory\]\[.codeset\]\[@modifier\]" or "C", where:

-   language is a lowercase, two-letter, ISO 639 language code,
-   territory is an uppercase, two-letter, ISO 3166 country code,
-   and codeset and modifier are ignored.

If the string violates the locale format, or language is not a valid ISO 369 code, the "C" locale is used instead. If country is not present, or is not a valid ISO 3166 code, the most appropriate country is chosen for the specified language.

**See also** [Locale](../QtQml.Locale.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="md5-method"></span><span class="type">string</span> <span class="name">md5</span>(<span class="type">data</span>)</p></td>
</tr>
</tbody>
</table>

Returns a hex string of the md5 hash of `data`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="matrix4x4-method"></span><span class="name">matrix4x4</span>(<span class="type">real</span> <em>m11</em>, <span class="type">real</span> <em>m12</em>, <span class="type">real</span> <em>m13</em>, <span class="type">real</span> <em>m14</em>, <span class="type">real</span> <em>m21</em>, <span class="type">real</span> <em>m22</em>, <span class="type">real</span> <em>m23</em>, <span class="type">real</span> <em>m24</em>, <span class="type">real</span> <em>m31</em>, <span class="type">real</span> <em>m32</em>, <span class="type">real</span> <em>m33</em>, <span class="type">real</span> <em>m34</em>, <span class="type">real</span> <em>m41</em>, <span class="type">real</span> <em>m42</em>, <span class="type">real</span> <em>m43</em>, <span class="type">real</span> <em>m44</em>)</p></td>
</tr>
</tbody>
</table>

Returns a Matrix4x4 with the specified values. Alternatively, the function may be called with a single argument where that argument is a JavaScript array which contains the sixteen matrix values.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="openUrlExternally-method"></span><span class="type">bool</span> <span class="name">openUrlExternally</span>(<span class="type">url</span> <em>target</em>)</p></td>
</tr>
</tbody>
</table>

Attempts to open the specified `target` url in an external application, based on the user's desktop preferences. Returns true if it succeeds, and false otherwise.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="point-method"></span><span class="type"><a href="#point-method">point</a></span> <span class="name">point</span>(<span class="type">int</span> <em>x</em>, <span class="type">int</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Returns a Point with the specified `x` and `y` coordinates.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="qsTr-method"></span><span class="type">string</span> <span class="name">qsTr</span>(<span class="type">string</span> <em>sourceText</em>, <span class="type">string</span> <em>disambiguation</em>, <span class="type">int</span> <em>n</em>)</p></td>
</tr>
</tbody>
</table>

Returns a translated version of *sourceText*, optionally based on a *disambiguation* string and value of *n* for strings containing plurals; otherwise returns *sourceText* itself if no appropriate translated string is available.

If the same *sourceText* is used in different roles within the same translation context, an additional identifying string may be passed in for *disambiguation*.

Example:

``` qml
Text { text: qsTr("hello") }
```

**See also** Internationalization and Localization with Qt Quick.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="qsTrId-method"></span><span class="type">string</span> <span class="name">qsTrId</span>(<span class="type">string</span> <em>id</em>, <span class="type">int</span> <em>n</em>)</p></td>
</tr>
</tbody>
</table>

Returns a translated string identified by *id*. If no matching string is found, the id itself is returned. This should not happen under normal conditions.

If *n* &gt;= 0, all occurrences of `%n` in the resulting string are replaced with a decimal representation of *n*. In addition, depending on *n*'s value, the translation text may vary.

Example:

``` qml
Text { text: qsTrId("hello_id") }
```

It is possible to supply a source string template like:

`//% <string>`

or

`\begincomment% <string> \endcomment`

Example:

``` qml
Text {
    //% "hello"
    text: qsTrId("hello_id")
}
```

Creating binary translation (QM) files suitable for use with this function requires passing the `-idbased` option to the `lrelease` tool.

**See also** QT\_TRID\_NOOP() and Internationalization and Localization with Qt Quick.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="qsTrIdNoOp-method"></span><span class="type">string</span> <span class="name">qsTrIdNoOp</span>(<span class="type">string</span> <em>id</em>)</p></td>
</tr>
</tbody>
</table>

Marks *id* for dynamic translation.

Returns the *id*.

QT\_TRID\_NOOP is used in conjunction with the dynamic translation function [qsTrId()](#qsTrId-method). It identifies a string as requiring translation (so it can be identified by `lupdate`), but leaves the actual translation to [qsTrId()](#qsTrId-method).

Example:

``` qml
Item {
    property string greetingId: QT_TRID_NOOP("hello_id")
    Text { text: qsTrId(greetingId) }
}
```

**See also** [qsTrId()](#qsTrId-method) and Internationalization and Localization with Qt Quick.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="qsTrNoOp-method"></span><span class="type">string</span> <span class="name">qsTrNoOp</span>(<span class="type">string</span> <em>sourceText</em>, <span class="type">string</span> <em>disambiguation</em>)</p></td>
</tr>
</tbody>
</table>

Marks *sourceText* for dynamic translation; i.e, the stored *sourceText* will not be altered.

If the same *sourceText* is used in different roles within the same translation context, an additional identifying string may be passed in for *disambiguation*.

Returns the *sourceText*.

QT\_TR\_NOOP is used in conjunction with the dynamic translation functions [qsTr()](#qsTr-method) and [qsTranslate()](#qsTranslate-method). It identifies a string as requiring translation (so it can be identified by `lupdate`), but leaves the actual translation to the dynamic functions.

Example:

``` qml
Item {
    property string greeting: QT_TR_NOOP("hello")
    Text { text: qsTr(greeting) }
}
```

**See also** Internationalization and Localization with Qt Quick.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="qsTranslate-method"></span><span class="type">string</span> <span class="name">qsTranslate</span>(<span class="type">string</span> <em>context</em>, <span class="type">string</span> <em>sourceText</em>, <span class="type">string</span> <em>disambiguation</em>, <span class="type">int</span> <em>n</em>)</p></td>
</tr>
</tbody>
</table>

Returns a translated version of *sourceText* within the given *context*, optionally based on a *disambiguation* string and value of *n* for strings containing plurals; otherwise returns *sourceText* itself if no appropriate translated string is available.

If the same *sourceText* is used in different roles within the same translation *context*, an additional identifying string may be passed in for *disambiguation*.

Example:

``` qml
Text { text: qsTranslate("CustomContext", "hello") }
```

**See also** Internationalization and Localization with Qt Quick.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="qsTranslateNoOp-method"></span><span class="type">string</span> <span class="name">qsTranslateNoOp</span>(<span class="type">string</span> <em>context</em>, <span class="type">string</span> <em>sourceText</em>, <span class="type">string</span> <em>disambiguation</em>)</p></td>
</tr>
</tbody>
</table>

Marks *sourceText* for dynamic translation in the given *context*; i.e, the stored *sourceText* will not be altered.

If the same *sourceText* is used in different roles within the same translation context, an additional identifying string may be passed in for *disambiguation*.

Returns the *sourceText*.

QT\_TRANSLATE\_NOOP is used in conjunction with the dynamic translation functions [qsTr()](#qsTr-method) and [qsTranslate()](#qsTranslate-method). It identifies a string as requiring translation (so it can be identified by `lupdate`), but leaves the actual translation to the dynamic functions.

Example:

``` qml
Item {
    property string greeting: QT_TRANSLATE_NOOP("CustomContext", "hello")
    Text { text: qsTranslate("CustomContext", greeting) }
}
```

**See also** Internationalization and Localization with Qt Quick.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="quaternion-method"></span><span class="name">quaternion</span>(<span class="type">real</span> <em>scalar</em>, <span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>, <span class="type">real</span> <em>z</em>)</p></td>
</tr>
</tbody>
</table>

Returns a Quaternion with the specified `scalar`, `x`, `y`, and `z`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="quit-method"></span><span class="name">quit</span>()</p></td>
</tr>
</tbody>
</table>

This function causes the QQmlEngine::quit() signal to be emitted. Within the Prototyping with qmlscene, this causes the launcher application to exit; to quit a C++ application when this method is called, connect the QQmlEngine::quit() signal to the QCoreApplication::quit() slot.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rect-method"></span><span class="type"><a href="#rect-method">rect</a></span> <span class="name">rect</span>(<span class="type">int</span> <em>x</em>, <span class="type">int</span> <em>y</em>, <span class="type">int</span> <em>width</em>, <span class="type">int</span> <em>height</em>)</p></td>
</tr>
</tbody>
</table>

Returns a `rect` with the top-left corner at `x`, `y` and the specified `width` and `height`.

The returned object has `x`, `y`, `width` and `height` attributes with the given values.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="resolvedUrl-method"></span><span class="type">url</span> <span class="name">resolvedUrl</span>(<span class="type">url</span> <em>url</em>)</p></td>
</tr>
</tbody>
</table>

Returns *url* resolved relative to the URL of the caller.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="rgba-method"></span><span class="type">color</span> <span class="name">rgba</span>(<span class="type">real</span> <em>red</em>, <span class="type">real</span> <em>green</em>, <span class="type">real</span> <em>blue</em>, <span class="type">real</span> <em>alpha</em>)</p></td>
</tr>
</tbody>
</table>

Returns a color with the specified `red`, `green`, `blue` and `alpha` components. All components should be in the range 0-1 inclusive.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="size-method"></span><span class="name">size</span>(<span class="type">int</span> <em>width</em>, <span class="type">int</span> <em>height</em>)</p></td>
</tr>
</tbody>
</table>

Returns a Size with the specified `width` and `height`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="tint-method"></span><span class="type">color</span> <span class="name">tint</span>(<span class="type">color</span> <em>baseColor</em>, <span class="type">color</span> <em>tintColor</em>)</p></td>
</tr>
</tbody>
</table>

This function allows tinting one color with another.

The tint color should usually be mostly transparent, or you will not be able to see the underlying color. The below example provides a slight red tint by having the tint color be pure red which is only 1/16th opaque.

``` qml
Item {
    Rectangle {
        x: 0; width: 80; height: 80
        color: "lightsteelblue"
    }
    Rectangle {
        x: 100; width: 80; height: 80
        color: Qt.tint("lightsteelblue", "#10FF0000")
    }
}
```

![](https://developer.ubuntu.com/static/devportal_uploaded/a4426f29-bf96-4312-b9aa-4599f2e35f69-api/apps/qml/sdk-15.04.6/QtQml.Qt/images/declarative-rect_tint.png)

Tint is most useful when a subtle change is intended to be conveyed due to some event; you can then use tinting to more effectively tune the visible color.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="vector2d-method"></span><span class="name">vector2d</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>)</p></td>
</tr>
</tbody>
</table>

Returns a Vector2D with the specified `x` and `y`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="vector3d-method"></span><span class="name">vector3d</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>, <span class="type">real</span> <em>z</em>)</p></td>
</tr>
</tbody>
</table>

Returns a Vector3D with the specified `x`, `y` and `z`.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="vector4d-method"></span><span class="name">vector4d</span>(<span class="type">real</span> <em>x</em>, <span class="type">real</span> <em>y</em>, <span class="type">real</span> <em>z</em>, <span class="type">real</span> <em>w</em>)</p></td>
</tr>
</tbody>
</table>

Returns a Vector4D with the specified `x`, `y`, `z` and `w`.

