---
Title: unity.scopes.qt.JsonReader
---
        
JsonReader
==========

Class that downloads http JSON files synchronously. [More...](#details)

`#include <unity/scopes/qt/JsonReader.h>`

pub-methods
------------------------------------------------------

QJsonDocumentSptr 
<a href="#ac57a289d5d336c5a998f848dff6959cc">read</a> (QUrl const &uri) const
 
Downloads a remote JSON document and returns a parser containing the data. More...
 
QJsonDocumentSptr 
<a href="#a4593b2f084cdf97635b67a2d71e090cd">read</a> (QString const &host, QJsonParameters const &parameters) const
 
Downloads a remote JSON document and returns a parser containing the data. More...
 
<span id="details"></span>
Detailed Description
--------------------

Class that downloads http JSON files synchronously.

Executes a remote HTTP query synchronously to return a JSON parser filled with the downloaded data.

Member Function Documentation
-----------------------------

<span id="ac57a289d5d336c5a998f848dff6959cc" class="anchor"></span>
|                                                       |     |               |       |     |       |
|-------------------------------------------------------|-----|---------------|-------|-----|-------|
| QJsonDocumentSptr unity::scopes::qt::JsonReader::read | (   | QUrl const &  | *uri* | )   | const |

Downloads a remote JSON document and returns a parser containing the data.

Parameters  
|     |                 |
|-----|-----------------|
| uri | URI to download |

<!-- -->

Returns  
shared pointer of a QJsonDocument containing the downloaded data.

<span id="a4593b2f084cdf97635b67a2d71e090cd" class="anchor"></span>
|                                                       |     |                          |               |
|-------------------------------------------------------|-----|--------------------------|---------------|
| QJsonDocumentSptr unity::scopes::qt::JsonReader::read | (   | QString const &          | *host*,       |
|                                                       |     | QJsonParameters const &  | *parameters*  |
|                                                       | )   |                          | const         |

Downloads a remote JSON document and returns a parser containing the data.

Parameters  
|            |                                                                                             |
|------------|---------------------------------------------------------------------------------------------|
| host       | the remote host name                                                                        |
| parameters | The parameters that will build the final query, defined by a list of pairs of key and value |

<!-- -->

Returns  
shared pointer of a QJsonDocument containing the downloaded data.

