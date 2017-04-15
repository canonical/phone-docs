---
Title: U1db.Synchronizer
---
        
Synchronizer
============

The Synchronizer class handles synchronizing between two databases. More...

|                  |                                                                             |
|------------------|-----------------------------------------------------------------------------|
| Header:          | <span class="preprocessor">\#include &lt;Synchronizer&gt;</span>            |
| Instantiated By: | [Synchronizer](../../../../apps/qml/sdk-14.10/U1db.Synchronizer.md) |
| Inherits:        |                                                                             |

<span id="public-functions"></span>
Public Functions
----------------

|                       |                                                                                     |
|-----------------------|-------------------------------------------------------------------------------------|
|                       | **[Synchronizer](#Synchronizer)**(QObject \* *parent* = 0)                |
| bool                  | **[getResolveToSource](#getResolveToSource)**()                           |
| Database \*           | **[getSource](#getSource)**()                                             |
| bool                  | **[getSync](#getSync)**()                                                 |
| QList&lt;QVariant&gt; | **[getSyncOutput](#getSyncOutput)**()                                     |
| QVariant              | **[getTargets](#getTargets)**()                                           |
| void                  | **[setResolveToSource](#setResolveToSource)**(bool *resolve\_to\_source*) |
| void                  | **[setSource](#setSource)**(Database \* *source*)                         |
| void                  | **[setSync](#setSync)**(bool *synchronize*)                               |
| void                  | **[setSyncOutput](#setSyncOutput)**(QList&lt;QVariant&gt; *sync\_output*) |
| void                  | **[setTargets](#setTargets)**(QVariant *targets*)                         |

<span id="details"></span>
Detailed Description
--------------------

The Synchronizer class handles synchronizing between two databases.

Member Function Documentation
-----------------------------

### <span id="Synchronizer"></span>Synchronizer::<span class="name">Synchronizer</span>(<span class="type">QObject</span> \* *parent* = 0)

Create a new Synchronizer element, with an optional *parent*, usually by declaring it as a QML item.

Synchronizer elements sync two databases together, a 'source' database and a remote or local 'target' database.

Short description of properties:

id: The element's identification.

bool synchronize: Is the element actively synching or not. Should be set to false.

U1DB::Database source: The id of a local database that will be used for synchronization.

QVariant targets: One or more target databases that will be synched with the local database.

bool targets.remote: Is the target database a remote or local database.

QString targets.ip: The ip address of a remote database (if applicable).

int targets.port: Port number of the remote server.

QString targets.name: The name of the database.

bool targets.resolve\_to\_source: In case of conflict should the sync resolve to the source's data (if true).

Example use with u1db-serve:

1. In a terminal cd into a directory where the u1db Python reference implemented has been downloaded from lp:u1db. 2. Using Python create a database called 'example1.u1db' using u1db, and a document 'helloworld':

\# python

&gt;&gt;&gt; import u1db &gt;&gt;&gt; db = u1db.open("example1.u1db",create=True) &gt;&gt;&gt; content = {"hello": { "world": { "message":"Hello World Updated" } } } &gt;&gt;&gt; db.create\_doc(content, doc\_id="helloworld")

ctrl+d

3. From the u1db directory above type './u1db-serve --port=7777' and hit enter. 4. Open another terminal tab. 5. Change into a directory containing u1db-qt (assuming this class is included in that directory and the installed version on the host computer). 6. Change into the directory where u1db-qt-example-6.qml is located. 7. Type 'qmlscene u1db-qt-example-6.qml' and hit enter. 8. Click the button labelled 'Sync'. 9. Check the terminal windows for output from either the client or server.

### <span id="getResolveToSource"></span><span class="type">bool</span> Synchronizer::<span class="name">getResolveToSource</span>()

Returns **true** if conflicts during sync will be resolved in favor of the content from the source database.

### <span id="getSource"></span><span class="type">[Database](../../../../apps/qml/sdk-14.10/U1db.Database.md)</span> \* Synchronizer::<span class="name">getSource</span>()

Returns the source [Database](../../../../apps/qml/sdk-14.10/U1db.Database.md).

### <span id="getSync"></span><span class="type">bool</span> Synchronizer::<span class="name">getSync</span>()

Returns the current value of synchronize. If true then the synchronize session is initiated.

This should probaby always be set to false on application start up. The application developer should use some trigger to switch it to true when needed (e.g. button click).

### <span id="getSyncOutput"></span><span class="type">QList</span>&lt;<span class="type">QVariant</span>&gt; Synchronizer::<span class="name">getSyncOutput</span>()

FIXME

### <span id="getTargets"></span><span class="type">QVariant</span> Synchronizer::<span class="name">getTargets</span>()

Returns meta-data for all target databases.

### <span id="setResolveToSource"></span><span class="type">void</span> Synchronizer::<span class="name">setResolveToSource</span>(<span class="type">bool</span> *resolve\_to\_source*)

If *resolve\_to\_source* is true, conflicts during sync will be resolved in favor of the content from the source database.

### <span id="setSource"></span><span class="type">void</span> Synchronizer::<span class="name">setSource</span>(<span class="type">[Database](../../../../apps/qml/sdk-14.10/U1db.Database.md)</span> \* *source*)

Sets the *source* database.

### <span id="setSync"></span><span class="type">void</span> Synchronizer::<span class="name">setSync</span>(<span class="type">bool</span> *synchronize*)

FIXME *synchronize*

### <span id="setSyncOutput"></span><span class="type">void</span> Synchronizer::<span class="name">setSyncOutput</span>(<span class="type">QList</span>&lt;<span class="type">QVariant</span>&gt; *sync\_output*)

Sets the current value for the active session's *sync\_output*.

### <span id="setTargets"></span><span class="type">void</span> Synchronizer::<span class="name">setTargets</span>(<span class="type">QVariant</span> *targets*)

FIXME *targets*

