---
Title: U1db.Synchronizer
---
        
Synchronizer
============

<span class="subtitle"></span>
Synchronizer handles synchronizing between two databases. More...

|                   |               |
|-------------------|---------------|
| Import Statement: | import U1db . |
| Instantiates:     | Synchronizer  |

<span id="properties"></span>
Properties
----------

-   ****[resolve\_to\_source](#resolve_to_source-prop)**** : bool
-   ****[source](#source-prop)**** : Database
-   ****[sync\_output](#sync_output-prop)**** : list&lt;Variant&gt;
-   ****[synchronize](#synchronize-prop)**** : bool
-   ****[targets](#targets-prop)**** : Variant` (preliminary)`

<span id="details"></span>
Detailed Description
--------------------

``` qml
Synchronizer {
    id: mySync
    synchronize: false
    source: myDatabase
    targets: [ {
        remote: true,
        ip: "127.0.0.1",
        port: 7777,
        name: "example1.u1db",
        resolve_to_source: true
    } ]
}
```

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="resolve_to_source-prop"></span><span class="name">resolve_to_source</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If true, conflicts during sync will be resolved in favor of the content from the source database.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="source-prop"></span><span class="name">source</span> : <span class="type"><a href="U1db.Database.md">Database</a></span></p></td>
</tr>
</tbody>
</table>

Returns the source [Database](../U1db.Database.md).

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="sync_output-prop"></span><span class="name">sync_output</span> : <span class="type">list</span>&lt;<span class="type">Variant</span>&gt;</p></td>
</tr>
</tbody>
</table>

Returns the output from a sync session. The list should contain numerous QVariantMaps, each of which will have various meta-data with informative information about what happened in the background of the session.

In some cases the information will be about errors or warnings, and in other cases simple log messages. Also included would noramlly be associated properties, elements and other data.

The information can be used in any number of ways, such as on screen within an app, testing, console output, logs and more. This is designed to be flexible enough that the app developer can decide themselves how to best use the data.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="synchronize-prop"></span><span class="name">synchronize</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

FIXME

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="targets-prop"></span><span class="name">targets</span> : <span class="type">Variant</span></p></td>
</tr>
</tbody>
</table>

**This QML property is under development and is subject to change.**

Sets meta-data for databases to be used during a synchronization session.

The QVariant is a list that can contain definitions for more than one database to be used as a target. For example:

``` cpp
targets: [{remote:true},
 {remote:true,
 ip:"127.0.0.1",
 port: 7777,
 name:"example1.u1db",
 resolve_to_source:true},
 {remote:"OK"}]
```

The above example defines three databases. Two of the three definitions in the example are invalid, the first ({remote:true}) and the third ({remote:"OK"}), because they are incomplete.

The second definition is a fully defined and valid definition for a local to remote synchronization of two databases:

``` cpp
{remote:true,
 ip:"127.0.0.1",
 port: 7777,
 name:"example1.u1db",
 resolve_to_source:true}
```

'remote' determines whether the database is on disk or located on a server. 'ip' and 'port' for a server are used only when 'remote' is set to true 'name' is the name of the local (on disk) or remote database. Note: If 'remote' is false this is the relative/absolute file location. '[resolve\_to\_source](#resolve_to_source-prop)' determines whether to resolve conflicts automatically in favor of the source (aka local) database's values or the target's.

