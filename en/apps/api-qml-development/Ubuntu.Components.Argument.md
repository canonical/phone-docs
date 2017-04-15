---
Title: Ubuntu.Components.Argument
---
        
Argument
========

<span class="subtitle"></span>
The Argument class specifies what type a given command line parameter should be. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="properties"></span>
Properties
----------

-   ****[help](#help-prop)**** : string
-   ****[name](#name-prop)**** : string
-   ****[required](#required-prop)**** : bool
-   ****[valueNames](#valueNames-prop)**** : list&lt;string&gt;

<span id="methods"></span>
Methods
-------

-   string ****[at](#at-method)****(int *i*)

<span id="details"></span>
Detailed Description
--------------------

**Important**: Argument is not used on its own but must be a child of [Arguments](../Ubuntu.Components.Arguments.md).

An Argument is defined by its [name](#name-prop) and [valueNames](#valueNames-prop) properties which correspond to a command line parameter (e.g. *--target*) and the values passed to it (e.g. *--target=http://myaddress*).

For example, the following code allows to retrieve parameters on the command line of the form *--target=URL*:

``` qml
Argument {
    name: "target"
    help: "address of the resource to retrieve"
    required: true
    valueNames: ["URL"]
}
```

To retrieve a value passed to the parameter knowing its position, use the [at](#at-method) method.

**See also** [Arguments](../Ubuntu.Components.Arguments.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="help-prop"></span><span class="name">help</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

Help displayed when launching the application with --usage.

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

Name identifying the command line argument.

For example 'target' corrsesponds to the *'--target'* command line argument.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="required-prop"></span><span class="name">required</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

Whether or not this argument needs to be passed on the command line when launching the application.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="valueNames-prop"></span><span class="name">valueNames</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

Names given to the values of this argument. They are used when displaying the expected command line arguments of the application.

Typically all capital letters (e.g. URL).

Method Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="at-method"></span><span class="type">string</span> <span class="name">at</span>(<span class="type">int</span> <em>i</em>)</p></td>
</tr>
</tbody>
</table>

Returns the *i*th value of the argument. Values are counted from 0.

