---
Title: unity.scopes.qt.QPreviewReply
---
        
QPreviewReply
=============

Allows the results of a preview to be sent to the preview requester. [More...](#details)

`#include <unity/scopes/qt/QPreviewReply.h>`

Inheritance diagram for unity::scopes::qt::QPreviewReply:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/0bd30626-ebad-45d4-bb4b-a15f353587de-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QPreviewReply/classunity_1_1scopes_1_1qt_1_1_q_preview_reply__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

bool 
<a href="#abe5967042a22327f6ec9d5a1f595968c">register_layout</a> (QColumnLayoutList const &layouts)
 
Registers a list of column layouts for the current preview. More...
 
bool 
<a href="#a87571e9d961382e967ae6f12560bd755">push</a> (QPreviewWidgetList const &widget\_list)
 
Sends widget definitions to the sender of the preview query. More...
 
bool 
<a href="#a31c34e45f1eab196c74d3c314881e147">push</a> (QString const &key, QVariant const &value)
 
Sends data for a preview widget attribute. More...
 
<span id="details"></span>
Detailed Description
--------------------

Allows the results of a preview to be sent to the preview requester.

Member Function Documentation
-----------------------------

<span id="a87571e9d961382e967ae6f12560bd755" class="anchor"></span>
|                                             |     |                             |                |     |     |
|---------------------------------------------|-----|-----------------------------|----------------|-----|-----|
| bool unity::scopes::qt::QPreviewReply::push | (   | QPreviewWidgetList const &  | *widget\_list* | )   |     |

Sends widget definitions to the sender of the preview query.

This method can be called mutiple times to send widgets in stages.

Returns  
True if the query is still alive, false if the query failed or was cancelled.

<span id="a31c34e45f1eab196c74d3c314881e147" class="anchor"></span>
|                                             |     |                   |          |
|---------------------------------------------|-----|-------------------|----------|
| bool unity::scopes::qt::QPreviewReply::push | (   | QString const &   | *key*,   |
|                                             |     | QVariant const &  | *value*  |
|                                             | )   |                   |          |

Sends data for a preview widget attribute.

Returns  
True if the query is still alive, false if the query failed or was cancelled.

<span id="abe5967042a22327f6ec9d5a1f595968c" class="anchor"></span>
|                                                         |     |                            |           |     |     |
|---------------------------------------------------------|-----|----------------------------|-----------|-----|-----|
| bool unity::scopes::qt::QPreviewReply::register\_layout | (   | QColumnLayoutList const &  | *layouts* | )   |     |

Registers a list of column layouts for the current preview.

Layouts must be registered before pushing a <a href="../unity.scopes.md#aed3b7b1daf2e49d0a820ef931caa792d" title="List of preview widgets (see unity::scopes::PreviewWidget) ">unity::scopes::PreviewWidgetList</a>, and must be registered only once.

Returns  
True if the query is still alive, false if the query failed or was cancelled.

<!-- -->

Exceptions  
|                       |                                                                                                                                                                                        |
|-----------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::LogicException | <a href="#abe5967042a22327f6ec9d5a1f595968c" title="Registers a list of column layouts for the current preview. ">register_layout()</a> is called more than once. |

