---
Title: unity.scopes.qt.XmlReader
---
        
XmlReader
=========

Class that downloads http XML files synchronously. [More...](#details)

`#include <unity/scopes/qt/XmlReader.h>`

pub-methods
------------------------------------------------------

QXmlStreamReaderSptr 
<a href="#a9a5eebad22c444bf8be96f1536dd1261">read</a> (QUrl const &uri) const
 
Downloads a remote XML document and returns a parser containing the data. More...
 
QXmlStreamReaderSptr 
<a href="#a63c00ae978813fc9d9a71e754d8e905f">read</a> (QString const &host, QXmlStreamReaderParameters const &parameters) const
 
Downloads a remote XML document and returns a parser containing the data. More...
 
<span id="details"></span>
Detailed Description
--------------------

Class that downloads http XML files synchronously.

Executes a remote HTTP query synchronously to return a XML parser filled with the downloaded data.

Member Function Documentation
-----------------------------

<span id="a9a5eebad22c444bf8be96f1536dd1261" class="anchor"></span>
|                                                         |     |               |       |     |       |
|---------------------------------------------------------|-----|---------------|-------|-----|-------|
| QXmlStreamReaderSptr unity::scopes::qt::XmlReader::read | (   | QUrl const &  | *uri* | )   | const |

Downloads a remote XML document and returns a parser containing the data.

Parameters  
|     |                 |
|-----|-----------------|
| uri | URI to download |

<!-- -->

Returns  
shared pointer of a QXmlStreamReader containing the downloaded data.

<span id="a63c00ae978813fc9d9a71e754d8e905f" class="anchor"></span>
|                                                         |     |                                     |               |
|---------------------------------------------------------|-----|-------------------------------------|---------------|
| QXmlStreamReaderSptr unity::scopes::qt::XmlReader::read | (   | QString const &                     | *host*,       |
|                                                         |     | QXmlStreamReaderParameters const &  | *parameters*  |
|                                                         | )   |                                     | const         |

Downloads a remote XML document and returns a parser containing the data.

Parameters  
|            |                                                                                             |
|------------|---------------------------------------------------------------------------------------------|
| host       | the remote host name                                                                        |
| parameters | The parameters that will build the final query, defined by a list of pairs of key and value |

<!-- -->

Returns  
shared pointer of a QXmlStreamReader containing the downloaded data.

