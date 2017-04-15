---
Title: U1db.Database
---
        
Database
========

The Database class implements on-disk storage for documents and indexes. More...

|                  |                                                                     |
|------------------|---------------------------------------------------------------------|
| Header:          | <span class="preprocessor">\#include &lt;Database&gt;</span>        |
| Instantiated By: | [Database](../../../../apps/qml/sdk-14.10/U1db.Database.md) |
| Inherits:        |                                                                     |

<span id="public-functions"></span>
Public Functions
----------------

|                      |                                                                                             |
|----------------------|---------------------------------------------------------------------------------------------|
|                      | **[Database](#Database)**(QObject \* *parent* = 0)                                |
| void                 | **[deleteDoc](#deleteDoc)**(const QString & *docId*)                              |
| QVariant             | **[getDoc](#getDoc)**(const QString & *docId*)                                    |
| QVariant             | **[getDocUnchecked](#getDocUnchecked)**(const QString & *docId*) const            |
| QStringList          | **[getIndexExpressions](#getIndexExpressions)**(const QString & *indexName*)      |
| QStringList          | **[getIndexKeys](#getIndexKeys)**(const QString & *indexName*)                    |
| QString              | **[getPath](#getPath)**()                                                         |
| QString              | **[lastError](#lastError)**()                                                     |
| QList&lt;QString&gt; | **[listDocs](#listDocs)**()                                                       |
| QString              | **[putDoc](#putDoc)**(QVariant *contents*, const QString & *docId* = QString())   |
| QString              | **[putIndex](#putIndex)**(const QString & *indexName*, QStringList *expressions*) |
| void                 | **[resetModel](#resetModel)**()                                                   |
| void                 | **[setPath](#setPath)**(const QString & *path*)                                   |

<span id="details"></span>
Detailed Description
--------------------

The Database class implements on-disk storage for documents and indexes.

Database can be used as a QAbstractListModel, delegates will then have access to *docId* and *contents* analogous to the properties of Document.

Member Function Documentation
-----------------------------

### <span id="Database"></span>Database::<span class="name">Database</span>(<span class="type">QObject</span> \* *parent* = 0)

Instantiate a new Database with an optional *parent*, usually by declaring it as a QML item.

### <span id="deleteDoc"></span><span class="type">void</span> Database::<span class="name">deleteDoc</span>(const <span class="type">QString</span> & *docId*)

Deletes the document identified by *docId*.

### <span id="getDoc"></span><span class="type">QVariant</span> Database::<span class="name">getDoc</span>(const <span class="type">QString</span> & *docId*)

Returns the contents of a document by *docId* in a form that QML recognizes as a Variant object, it's identical to Document::getContents() with the same *docId*.

### <span id="getDocUnchecked"></span><span class="type">QVariant</span> Database::<span class="name">getDocUnchecked</span>(const <span class="type">QString</span> & *docId*) const

Same functionality as [Database::getDoc](../../../../apps/qml/sdk-14.10/U1db.Database.md#getDoc-method)() except it won't set Database::lastError() and it doesn't implicitly try to initialize the underlying database. *docId* must be a valid unique ID string Use cases: model implementations, Document::getContents()

### <span id="getIndexExpressions"></span><span class="type">QStringList</span> Database::<span class="name">getIndexExpressions</span>(const <span class="type">QString</span> & *indexName*)

Gets the expressions saved with [putIndex](#putIndex)(). *indexName*: the unique name of an existing index

### <span id="getIndexKeys"></span><span class="type">QStringList</span> Database::<span class="name">getIndexKeys</span>(const <span class="type">QString</span> & *indexName*)

Lists the index keys of an index created with [putIndex](#putIndex)(). *indexName*: the unique name of an existing index

### <span id="getPath"></span><span class="type">QString</span> Database::<span class="name">getPath</span>()

Returns the path of the database.

### <span id="lastError"></span><span class="type">QString</span> Database::<span class="name">lastError</span>()

The last error as a string if the last operation failed.

### <span id="listDocs"></span><span class="type">QList</span>&lt;<span class="type">QString</span>&gt; Database::<span class="name">listDocs</span>()

Returns a list of all stored documents by their docId.

### <span id="putDoc"></span><span class="type">QString</span> Database::<span class="name">putDoc</span>(<span class="type">QVariant</span> *contents*, const <span class="type">QString</span> & *docId* = QString())

Updates the existing *contents* of the document identified by *docId* if there's no error. If no *docId* is given or *docId* is an empty string the *contents* will be stored under an autogenerated name. Returns the new revision of the document, or -1 on failure.

### <span id="putIndex"></span><span class="type">QString</span> Database::<span class="name">putIndex</span>(const <span class="type">QString</span> & *indexName*, <span class="type">QStringList</span> *expressions*)

Stores a new index under the given *indexName*, with *expressions*. An existing index won't be replaced implicitly, an error will be set in that case.

### <span id="resetModel"></span><span class="type">void</span> Database::<span class="name">resetModel</span>()

Database::resetModel

Resets the Database model.

### <span id="setPath"></span><span class="type">void</span> Database::<span class="name">setPath</span>(const <span class="type">QString</span> & *path*)

A relative *path* can be given to store the database in an app-specific writable folder. This is recommended as it ensures to work with confinement. If more control is needed absolute paths or local file URIs can be used. By default or if the path is empty everything is stored in memory.

