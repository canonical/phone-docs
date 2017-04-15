---
Title: U1db.Query
---
        
Query
=====

<span class="subtitle"></span>
Query filters documents based on the query and index. More...

|                   |               |
|-------------------|---------------|
| Import Statement: | import U1db . |
| Instantiates:     | Query         |

<span id="properties"></span>
Properties
----------

-   ****[documents](#documents-prop)**** : list&lt;string&gt;
-   ****[index](#index-prop)**** : Index
-   ****[query](#query-prop)**** : Variant
-   ****[results](#results-prop)**** : list&lt;Variant&gt;

<span id="details"></span>
Detailed Description
--------------------

In a ListView the Query can be used as a model.

``` qml
ListView {
    model: Query {
        index: Index {
            name: 'colorIndex'
            expression: [ 'color' ]
            database: myDatabase
        }
        query: [ 'blue' ]
    }
    delegate: ListItem.Subtitled {
        text: docId
        subText: contents.color
    }
}
```

**See also** [Index](../U1db.Index.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="documents-prop"></span><span class="name">documents</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td>
</tr>
</tbody>
</table>

The docId's of all matched documents.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="index-prop"></span><span class="name">index</span> : <span class="type"><a href="U1db.Index.md">Index</a></span></p></td>
</tr>
</tbody>
</table>

Sets the Index to use. *index* must have a valid name and index expressions. If no query is set, the default is all results of the index.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="query-prop"></span><span class="name">query</span> : <span class="type">Variant</span></p></td>
</tr>
</tbody>
</table>

A query in one of the allowed forms: 'value', \['value'\] or \[{'sub-field': 'value'}\]. The default is equivalent to '\*'.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="results-prop"></span><span class="name">results</span> : <span class="type">list</span>&lt;<span class="type">Variant</span>&gt;</p></td>
</tr>
</tbody>
</table>

The results of the query as a list.

