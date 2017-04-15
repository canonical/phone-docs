---
Title: U1db.overview
---
        
All Modules
===========

<span class="subtitle"></span>
details
-   [Tutorial](../U1db.tutorial.md) gives a quick start guide from storing a document to querying a database and displaying it in [Ubuntu Components](../../../../apps/qml/sdk-15.04/UbuntuUserInterfaceToolkit.overview-ubuntu-sdk.md).
-   [Design Concepts](../U1db.concepts.md) provides an overview of the design and terminology.

document-storage
Available through:

``` cpp
import U1db 1.0 as U1db
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Database</p></td>
<td><p>Implements on-disk storage for documents and indexes</p></td>
</tr>
<tr class="even">
<td><p>Document</p></td>
<td><p>Proxies a single document stored in the Database</p></td>
</tr>
<tr class="odd">
<td><p>Index</p></td>
<td><p>An Index defines what fields can be filtered using Query</p></td>
</tr>
<tr class="even">
<td><p>Query</p></td>
<td><p>Filters documents based on the query and index</p></td>
</tr>
<tr class="odd">
<td><p>Synchronizer</p></td>
<td><p>Handles synchronizing between two databases</p></td>
</tr>
</tbody>
</table>

