---
Title: unity.scopes.Category
---
        
Category
========

A set of related results returned by a scope and displayed within a single pane in the Unity dash. [More...](#details)

`#include <unity/scopes/Category.h>`

Inheritance diagram for unity::scopes::Category:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/2ac93ee0-62ef-4dc5-ad9d-d728e33d7bab-api/scopes/cpp/sdk-15.04.4/unity.scopes.Category/classunity_1_1scopes_1_1_category__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

std::string 
<a href="#aa14a4f95af60187f890ef475d0d8cabe">id</a> () const
 
Get identifier of this Category. More...
 
std::string 
<a href="#a6f11a12253de78d61761b49b45951221">title</a> () const
 
Get title of this Category. More...
 
std::string 
<a href="#acb98bc96e054fcdf787684cc7d0422ca">icon</a> () const
 
Get icon of this Category. More...
 
CannedQuery::SCPtr 
<a href="#a88034923f3493c2cfb5500e7aeae35cc">query</a> () const
 
Query to perform when this category is expanded. More...
 
<a href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a> const & 
<a href="#a2668bac76f600a009934faa8b7eeea6d">renderer_template</a> () const
 
Get renderer template of this Category. More...
 
<span id="details"></span>
Detailed Description
--------------------

A set of related results returned by a scope and displayed within a single pane in the Unity dash.

To create a <a href="index.html" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>, use SearchReplyProxy::register\_category.

See also  
ResultItem

Member Function Documentation
-----------------------------

<span id="acb98bc96e054fcdf787684cc7d0422ca" class="anchor"></span>
|                                           |     |     |     |       |
|-------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Category::icon | (   |     | )   | const |

Get icon of this <a href="index.html" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>.

Returns  
The category icon.

<span id="aa14a4f95af60187f890ef475d0d8cabe" class="anchor"></span>
|                                         |     |     |     |       |
|-----------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Category::id | (   |     | )   | const |

Get identifier of this <a href="index.html" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>.

Returns  
The category identifier.

<span id="a88034923f3493c2cfb5500e7aeae35cc" class="anchor"></span>
|                                                   |     |     |     |       |
|---------------------------------------------------|-----|-----|-----|-------|
| CannedQuery::SCPtr unity::scopes::Category::query | (   |     | )   | const |

Query to perform when this category is expanded.

Returns  
The expansion query or nullptr.

<span id="a2668bac76f600a009934faa8b7eeea6d" class="anchor"></span>
|                                                                                                                                          |     |     |     |       |
|------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a> const& unity::scopes::Category::renderer\_template | (   |     | )   | const |

Get renderer template of this <a href="index.html" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>.

Returns  
The category renderer template.

<span id="a6f11a12253de78d61761b49b45951221" class="anchor"></span>
|                                            |     |     |     |       |
|--------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Category::title | (   |     | )   | const |

Get title of this <a href="index.html" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">Category</a>.

Returns  
The category title.

