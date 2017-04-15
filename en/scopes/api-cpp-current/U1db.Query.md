---
Title: U1db.Query
---
        
Query
=====

The Query class generates a filtered list of documents based on a query using the given Index. More...

|                  |                                                               |
|------------------|---------------------------------------------------------------|
| Header:          | <span class="preprocessor">\#include &lt;Query&gt;</span>     |
| Instantiated By: | [Query](../../../../apps/qml/sdk-14.10/U1db.Query.md) |
| Inherits:        |                                                               |

<span id="public-functions"></span>
Public Functions
----------------

|                       |                                                        |
|-----------------------|--------------------------------------------------------|
|                       | **[Query](#Query)**(QObject \* *parent* = 0) |
| QStringList           | **[getDocuments](#getDocuments)**()          |
| Index \*              | **[getIndex](#getIndex)**()                  |
| QVariant              | **[getQuery](#getQuery)**()                  |
| QList&lt;QVariant&gt; | **[getResults](#getResults)**()              |
| void                  | **[resetModel](#resetModel)**()              |
| void                  | **[setIndex](#setIndex)**(Index \* *index*)  |
| void                  | **[setQuery](#setQuery)**(QVariant *query*)  |

<span id="details"></span>
Detailed Description
--------------------

The Query class generates a filtered list of documents based on a query using the given Index.

Query can be used as a QAbstractListModel, delegates will then have access to *docId* and *contents* analogous to the properties of Document.

Member Function Documentation
-----------------------------

### <span id="Query"></span>Query::<span class="name">Query</span>(<span class="type">QObject</span> \* *parent* = 0)

Instantiate a new Query with an optional *parent*, usually by declaring it as a QML item.

**See also** [setQuery](#setQuery)().

### <span id="getDocuments"></span><span class="type">QStringList</span> Query::<span class="name">getDocuments</span>()

FIXME

### <span id="getIndex"></span><span class="type">[Index](../../../../apps/qml/sdk-14.10/U1db.Index.md)</span> \* Query::<span class="name">getIndex</span>()

FIXME

### <span id="getQuery"></span><span class="type">QVariant</span> Query::<span class="name">getQuery</span>()

FIXME

### <span id="getResults"></span><span class="type">QList</span>&lt;<span class="type">QVariant</span>&gt; Query::<span class="name">getResults</span>()

FIXME

### <span id="resetModel"></span><span class="type">void</span> Query::<span class="name">resetModel</span>()

Query::resetModel

Resets the model of the Query

### <span id="setIndex"></span><span class="type">void</span> Query::<span class="name">setIndex</span>(<span class="type">[Index](../../../../apps/qml/sdk-14.10/U1db.Index.md)</span> \* *index*)

FIXME *index*

### <span id="setQuery"></span><span class="type">void</span> Query::<span class="name">setQuery</span>(<span class="type">QVariant</span> *query*)

FIXME *query*

