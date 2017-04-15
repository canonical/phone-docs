---
Title: U1db.Index
---
        
Index
=====

<span class="subtitle"></span>
An Index defines what fields can be filtered using Query. More...

|                   |                                                                               |
|-------------------|-------------------------------------------------------------------------------|
| Import Statement: | import U1db .                                                                 |
| Instantiates:     | [](index.html)[Index](../../../../scopes/cpp/sdk-14.10/U1db.Index.md) |

<span id="properties"></span>
Properties
----------

-   ****[database](#database-prop)**** : Database
-   ****[expression](#expression-prop)**** : list&lt;string&gt;
-   ****[name](#name-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

Documents in the database will be included if they contain all fields in the expression.

``` qml
Index {
    database: myDatabase
    name: 'colorIndex'
    expression: [ 'color' ]
}
```

**See also** [Query](../U1db.Query.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="database-prop"></span><span class="name">database</span> : <span class="type"><a href="U1db.Database.md">Database</a></span></p></td>
</tr>
</tbody>
</table>

Sets the Database to lookup documents from and store the index in. The dataInvalidated() signal will be emitted on all changes that could affect the index.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="expression-prop"></span><span class="name">expression</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

Sets the expression used. Both an expression and a name must be specified for an index to be created.

Also starts the process of creating the Index result list, which can then be queried or populate the Query model as is.

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

Sets the name used. Both an expression and a name must be specified for an index to be created.

