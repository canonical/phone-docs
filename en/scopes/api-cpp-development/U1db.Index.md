---
Title: U1db.Index
---
        
Index
=====

The Index class defines an index to be stored in the database and queried using Query. Changes in documents affected by the index also update the index in the database. More...

|                  |                                                           |
|------------------|-----------------------------------------------------------|
| Header:          | <span class="preprocessor">\#include &lt;Index&gt;</span> |
| Instantiated By: | Index                                                     |
| Inherits:        |                                                           |

<span id="public-functions"></span>
Public Functions
----------------

|             |                                                                         |
|-------------|-------------------------------------------------------------------------|
|             | **[Index](#Index)**(QObject \* *parent* = 0)                  |
| Database \* | **[getDatabase](#getDatabase)**()                             |
| QStringList | **[getExpression](#getExpression)**()                         |
| QString     | **[getName](#getName)**()                                     |
| void        | **[setDatabase](#setDatabase)**(Database \* *database*)       |
| void        | **[setExpression](#setExpression)**(QStringList *expression*) |
| void        | **[setName](#setName)**(const QString & *name*)               |

<span id="details"></span>
Detailed Description
--------------------

The Index class defines an index to be stored in the database and queried using Query. Changes in documents affected by the index also update the index in the database.

Member Function Documentation
-----------------------------

### <span id="Index"></span>Index::<span class="name">Index</span>(<span class="type">QObject</span> \* *parent* = 0)

Instantiate a new Index with an optional *parent*, usually by declaring it as a QML item.

### <span id="getDatabase"></span><span class="type">Database</span> \* Index::<span class="name">getDatabase</span>()

Returns the Database to lookup documents from and store the index in.

### <span id="getExpression"></span><span class="type">QStringList</span> Index::<span class="name">getExpression</span>()

Returns the expression of the index. Both name and expression must be specified.

### <span id="getName"></span><span class="type">QString</span> Index::<span class="name">getName</span>()

Returns the name of the index. Both name and expression must be specified.

### <span id="setDatabase"></span><span class="type">void</span> Index::<span class="name">setDatabase</span>(<span class="type">Database</span> \* *database*)

Sets the *database* to lookup documents from and store the index in. The dataInvalidated() signal will be emitted on all changes that could affect the index.

### <span id="setExpression"></span><span class="type">void</span> Index::<span class="name">setExpression</span>(<span class="type">QStringList</span> *expression*)

Sets the *expression* used. Both an expression and a name must be specified for an index to be created.

Also starts the process of creating the Index result list, which can then be queried or populate the Query model as is.

### <span id="setName"></span><span class="type">void</span> Index::<span class="name">setName</span>(const <span class="type">QString</span> & *name*)

Sets the *name* used. Both an expression and a name must be specified for an index to be created.

