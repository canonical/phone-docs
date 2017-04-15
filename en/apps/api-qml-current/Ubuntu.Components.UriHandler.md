---
Title: Ubuntu.Components.UriHandler
---
        
UriHandler
==========

<span class="subtitle"></span>
Singleton signalling for opened URIs. More...

|                   |                              |
|-------------------|------------------------------|
| Import Statement: | import Ubuntu.Components 1.3 |

<span id="signals"></span>
Signals
-------

-   ****[onOpened](#onOpened-signal)****(list&lt;string&gt; *uris*)

<span id="details"></span>
Detailed Description
--------------------

[UriHandler](index.html) is a singleton handling opened URIs. The application can be signalled of opened URIs through the opened signal. The content of the "APP\_ID" environment variable is used to determine the object path. If the D-Bus session bus is not connected or the "APP\_ID" variable is not set or empty, the handler stays uninitialized.

Example of use:

``` qml
Connections {
    target: UriHandler
    onOpened: print(uris)
}
```

Signal Documentation
--------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="onOpened-signal"></span><span class="name">onOpened</span>(<span class="type">list</span>&lt;<span class="type">string</span>&gt; <em>uris</em>)</p></td>
</tr>
</tbody>
</table>

The signal is triggered when URIs are opened.

