---
Title: U1db.Document
---
        
Document
========

<span class="subtitle"></span>
Document proxies a single document stored in the Database. More...

|                   |               |
|-------------------|---------------|
| Import Statement: | import U1db . |
| Instantiates:     | Document      |

<span id="properties"></span>
Properties
----------

-   ****[content](#content-prop)**** : Variant
-   ****[contents](#contents-prop)**** : Variant
-   ****[create](#create-prop)**** : bool
-   ****[docId](#docId-prop)**** : string

<span id="details"></span>
Detailed Description
--------------------

This is the declarative API equivalent of [Database::putDoc()](../U1db.Database.md#putDoc-method) and [Database::getDoc()](../U1db.Database.md#getDoc-method).

``` qml
Document {
    docId: 'myId'
    defaults: {
        color: 'blue'
    }
    create: true
}
```

**See also** [Database](../U1db.Database.md).

Property Documentation
----------------------

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="content-prop"></span><span class="name">content</span> : <span class="type">Variant</span></p></td>
</tr>
</tbody>
</table>

The default contents of the document, which are used only if create is true, [docId](#docId-prop) is not empty and no document with the same [docId](#docId-prop) exists in the database yet. If the *defaults* change, it's up to the API user to handle it.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="contents-prop"></span><span class="name">contents</span> : <span class="type">Variant</span></p></td>
</tr>
</tbody>
</table>

Updates the *contents* of the document. A valid [docId](#docId-prop) must be set.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="create-prop"></span><span class="name">create</span> : <span class="type">bool</span></p></td>
</tr>
</tbody>
</table>

If *create* is true, [docId](#docId-prop) is not empty and no document with the same [docId](#docId-prop) exists, defaults will be used to store the document.

<table>
<colgroup>
<col width="100%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><span id="docId-prop"></span><span class="name">docId</span> : <span class="type">string</span></p></td>
</tr>
</tbody>
</table>

The docId can be that of an existing document in the database and will determine what getContents() returns. If no such documents exists, setDefaults() can be used to supply a preset.

