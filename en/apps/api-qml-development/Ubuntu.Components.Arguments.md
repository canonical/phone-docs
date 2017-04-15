---
Title: Ubuntu.Components.Arguments
---
        
Arguments
=========

<span class="subtitle"></span>
The Arguments class provides a way to declare what command line parameters are expected by the application. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[arguments](#arguments-prop)**** : list&lt;Argument&gt;
-   ****[defaultArgument](#defaultArgument-prop)**** : Argument
-   ****[error](#error-prop)**** : bool
-   ****[errorMessage](#errorMessage-prop)**** : string
-   ****[values](#values-prop)**** : Object

<span id="methods"></span>
Methods
-------

-   void ****[printUsage](#printUsage-method)****()
-   void ****[quitWithError](#quitWithError-method)****(string *errorMessage*)

<span id="details"></span>
Detailed Description
--------------------

Example of use:

``` qml
Arguments {
    id: args
    defaultArgument.help: "Expects URL of the media to play."
    defaultArgument.valueNames: ["URL"]
    Argument {
        name: "fullscreen"
        help: "whether or not the media will be played fullscreen"
        required: false
    }
    Argument {
        name: "volume"
        help: "level to which to set the volume"
        required: false
        valueNames: ["VOLUME_LEVEL"]
    }
}
```

The code above ensures that at least one argument is passed on the command line which will then be available in QML via the [defaultArgument](#defaultArgument-prop) property. Optionally two other arguments can be passed:

*--fullscreen* that will be exposed as a boolean property: [values](#values-prop).fullscreen

*--volume* that will be exposed as a string property: [values](#values-prop).volume

``` qml
Item {
    Label {
        text: "volume = " + args.values.volume
    }
    Label {
        text: "fullscreen = " + args.values.fullscreen
    }
    Label {
        text: "URL = " + args.defaultArgument.at(0)
    }
}
```

If the application is launched with the incorrect arguments or with the *--usage* argument an help will be outputted on the command line and the application will exit:

``` cpp
Usage: application [--fullscreen] [--volume=VOLUME_LEVEL] URL
Options:
--fullscreen         whether or not the media will be played fullscreen
--volume=VOLUME_LEVE level to which to set the volume
Expects URL of the media to play.
```

**See also** [Argument](../Ubuntu.Components.Argument.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="arguments-prop"></span><span class="qmlreadonly">[read-only] </span><span class="qmldefault">[default] </span><span class="name">arguments</span> : <span class="type">list</span>&lt;<span class="type"><a href="Ubuntu.Components.Argument.md">Argument</a></span>&gt;</p></td>
</tr>
</tbody>
</table>

List of command line [arguments](../Ubuntu.Components.Argument.md) that are expected by the application.

See detailed description above for an example on how to use it.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="defaultArgument-prop"></span><span class="name">defaultArgument</span> : <span class="type"><a href="Ubuntu.Components.Argument.md">Argument</a></span></p></td>
</tr>
</tbody>
</table>

The default argument corresponds to the values passed on the command line without any name.

For example in:

``` cpp
./application --volume=42 http://myaddress
```

*http://myaddress* is the first value of the default argument.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="error-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">error</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether or not the command line arguments passed to the application correspond to the expected arguments.

Also set when calling [quitWithError](#quitWithError-method)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="errorMessage-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">errorMessage</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Error message describing how the command line arguments passed to the application failed to correspond to the expected arguments.

Also set when calling [quitWithError](#quitWithError-method)

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="values-prop"></span><span class="qmlreadonly">[read-only] </span><span class="name">values</span> : <span class="type">Object</span></p></td>
</tr>
</tbody>
</table>

Object of which properties have the values of the command line arguments.

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="printUsage-method"></span><span class="type">void</span> <span class="name">printUsage</span>()</p></td>
</tr>
</tbody>
</table>

Outputs help to the console on how to pass arguments to the application.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="quitWithError-method"></span><span class="type">void</span> <span class="name">quitWithError</span>(<span class="type">string</span> <em>errorMessage</em>)</p></td>
</tr>
</tbody>
</table>

Exits the application outputting *errorMessage* to the console.

