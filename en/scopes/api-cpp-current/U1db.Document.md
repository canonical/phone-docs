---
Title: U1db.Document
---
        
Document
========

The Document class proxies a single document stored in the Database. More...

|                  |                                                                     |
|------------------|---------------------------------------------------------------------|
| Header:          | <span class="preprocessor">\#include &lt;Document&gt;</span>        |
| Instantiated By: | [Document](../../../../apps/qml/sdk-14.10/U1db.Document.md) |
| Inherits:        |                                                                     |

<span id="public-functions"></span>
Public Functions
----------------

|             |                                                                   |
|-------------|-------------------------------------------------------------------|
|             | **[Document](#Document)**(QObject \* *parent* = 0)      |
| QVariant    | **[getContents](#getContents)**()                       |
| bool        | **[getCreate](#getCreate)**()                           |
| Database \* | **[getDatabase](#getDatabase)**()                       |
| QVariant    | **[getDefaults](#getDefaults)**()                       |
| QString     | **[getDocId](#getDocId)**()                             |
| void        | **[setContents](#setContents)**(QVariant *contents*)    |
| void        | **[setCreate](#setCreate)**(bool *create*)              |
| void        | **[setDatabase](#setDatabase)**(Database \* *database*) |
| void        | **[setDefaults](#setDefaults)**(QVariant *defaults*)    |
| void        | **[setDocId](#setDocId)**(const QString & *docId*)      |

<span id="details"></span>
Detailed Description
--------------------

The Document class proxies a single document stored in the Database.

Member Function Documentation
-----------------------------

### <span id="Document"></span>Document::<span class="name">Document</span>(<span class="type">QObject</span> \* *parent* = 0)

Instantiate a new Document with an optional *parent*, usually by declaring it as a QML item.

### <span id="getContents"></span><span class="type">QVariant</span> Document::<span class="name">getContents</span>()

Returns the current contents of the document.

### <span id="getCreate"></span><span class="type">bool</span> Document::<span class="name">getCreate</span>()

Returns whether the document will be newly created if it doesn't exist.

### <span id="getDatabase"></span><span class="type">[Database](../../../../apps/qml/sdk-14.10/U1db.Database.md)</span> \* Document::<span class="name">getDatabase</span>()

Returns the [Database](../../../../apps/qml/sdk-14.10/U1db.Database.md).

### <span id="getDefaults"></span><span class="type">QVariant</span> Document::<span class="name">getDefaults</span>()

Returns the defaults to be used when the document is newly created because it doesn't exist, if create is true.

### <span id="getDocId"></span><span class="type">QString</span> Document::<span class="name">getDocId</span>()

Returns the docId.

### <span id="setContents"></span><span class="type">void</span> Document::<span class="name">setContents</span>(<span class="type">QVariant</span> *contents*)

Updates the *contents* of the document. A valid docId must be set.

### <span id="setCreate"></span><span class="type">void</span> Document::<span class="name">setCreate</span>(<span class="type">bool</span> *create*)

If *create* is true, docId is not empty and no document with the same docId exists, defaults will be used to store the document.

### <span id="setDatabase"></span><span class="type">void</span> Document::<span class="name">setDatabase</span>(<span class="type">[Database](../../../../apps/qml/sdk-14.10/U1db.Database.md)</span> \* *database*)

The *database* is used to lookup the contents of the document, reflecting changes done to it and conversely changes are saved to the database.

### <span id="setDefaults"></span><span class="type">void</span> Document::<span class="name">setDefaults</span>(<span class="type">QVariant</span> *defaults*)

The default contents of the document, which are used only if create is true, docId is not empty and no document with the same docId exists in the database yet. If the *defaults* change, it's up to the API user to handle it.

### <span id="setDocId"></span><span class="type">void</span> Document::<span class="name">setDocId</span>(const <span class="type">QString</span> & *docId*)

The *docId* can be that of an existing document in the database and will determine what [getContents](#getContents)() returns. If no such documents exists, [setDefaults](#setDefaults)() can be used to supply a preset.

