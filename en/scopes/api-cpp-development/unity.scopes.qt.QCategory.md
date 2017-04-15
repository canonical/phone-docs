---
Title: unity.scopes.qt.QCategory
---
        
QCategory
=========

A set of related results returned by a scope and displayed within a single pane in the Unity dash. [More...](#details)

`#include <unity/scopes/qt/QCategory.h>`

pub-methods
------------------------------------------------------

QString 
<a href="#a63a38bcb7635a7669c378b772892ef44">id</a> () const
 
Get identifier of this Category. More...
 
QString 
<a href="#a91ec8bb3764dc291bd7452fc74fde297">title</a> () const
 
Get title of this Category. More...
 
QString 
<a href="#a534ad8fe06ec11c70a5438b47b93c27a">icon</a> () const
 
Get icon of this Category. More...
 
CannedQuery::SCPtr 
<a href="#a58567db06e8b5c981fed2911c86591f8">query</a> () const
 
Query to perform when this category is expanded. More...
 
<a href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a> const & 
<a href="#a6af889b4f3e3c5e70f48df0e09511ac8">renderer_template</a> () const
 
Get renderer template of this Category. More...
 
<span id="details"></span>
Detailed Description
--------------------

A set of related results returned by a scope and displayed within a single pane in the Unity dash.

To create a <a href="index.html" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">QCategory</a>, use QReplyProxy::register\_category.

Member Function Documentation
-----------------------------

<span id="a534ad8fe06ec11c70a5438b47b93c27a" class="anchor"></span>
|                                            |     |     |     |       |
|--------------------------------------------|-----|-----|-----|-------|
| QString unity::scopes::qt::QCategory::icon | (   |     | )   | const |

Get icon of this <a href="unity.scopes.Category.md" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>.

Returns  
The category icon.

<span id="a63a38bcb7635a7669c378b772892ef44" class="anchor"></span>
|                                          |     |     |     |       |
|------------------------------------------|-----|-----|-----|-------|
| QString unity::scopes::qt::QCategory::id | (   |     | )   | const |

Get identifier of this <a href="unity.scopes.Category.md" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>.

Returns  
The category identifier.

<span id="a58567db06e8b5c981fed2911c86591f8" class="anchor"></span>
|                                                        |     |     |     |       |
|--------------------------------------------------------|-----|-----|-----|-------|
| CannedQuery::SCPtr unity::scopes::qt::QCategory::query | (   |     | )   | const |

Query to perform when this category is expanded.

Returns  
The expansion query or nullptr.

<span id="a6af889b4f3e3c5e70f48df0e09511ac8" class="anchor"></span>
|                                                                                                                                               |     |     |     |       |
|-----------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a> const& unity::scopes::qt::QCategory::renderer\_template | (   |     | )   | const |

Get renderer template of this <a href="unity.scopes.Category.md" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>.

Returns  
The category renderer template.

<span id="a91ec8bb3764dc291bd7452fc74fde297" class="anchor"></span>
|                                             |     |     |     |       |
|---------------------------------------------|-----|-----|-----|-------|
| QString unity::scopes::qt::QCategory::title | (   |     | )   | const |

Get title of this <a href="unity.scopes.Category.md" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>.

Returns  
The category title.

