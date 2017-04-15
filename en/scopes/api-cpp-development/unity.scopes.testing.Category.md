---
Title: unity.scopes.testing.Category
---
        
Category
========

Implementation of <a href="index.html" title="Implementation of Category class for testing. ">Category</a> class for testing. [More...](#details)

`#include <unity/scopes/testing/Category.h>`

Inheritance diagram for unity::scopes::testing::Category:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/f4e14277-7271-4f7e-9968-1a3be9e3fd72-api/scopes/cpp/sdk-15.04.5/unity.scopes.testing.Category/classunity_1_1scopes_1_1testing_1_1_category__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

 
<a href="#ac3916483e349d40d917c679fbf3a554e">Category</a> (std::string const &<a href="../unity.scopes.Category.md#aa14a4f95af60187f890ef475d0d8cabe">id</a>, std::string const &<a href="../unity.scopes.Category.md#a6f11a12253de78d61761b49b45951221">title</a>, std::string const &<a href="../unity.scopes.Category.md#acb98bc96e054fcdf787684cc7d0422ca">icon</a>, <a href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a> const &<a href="../unity.scopes.Category.md#a2668bac76f600a009934faa8b7eeea6d">renderer_template</a>)
 
Creates category instance. More...
 
 
<a href="#abb48fefd29c1b45b1877ac103a301328">Category</a> (<a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> const &variant\_map)
 
Deserializes category from a variant data. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/2861cc6b-1de4-4a32-9561-1fcbb9e9a3ad-api/scopes/cpp/sdk-15.04.5/unity.scopes.testing.Category/closed.png) Public Member Functions inherited from <a href="unity.scopes.Category.md">unity::scopes::Category</a>
std::string 
<a href="../unity.scopes.Category.md#aa14a4f95af60187f890ef475d0d8cabe">id</a> () const
 
Get identifier of this Category. More...
 
std::string 
<a href="../unity.scopes.Category.md#a6f11a12253de78d61761b49b45951221">title</a> () const
 
Get title of this Category. More...
 
std::string 
<a href="../unity.scopes.Category.md#acb98bc96e054fcdf787684cc7d0422ca">icon</a> () const
 
Get icon of this Category. More...
 
CannedQuery::SCPtr 
<a href="../unity.scopes.Category.md#a88034923f3493c2cfb5500e7aeae35cc">query</a> () const
 
Query to perform when this category is expanded. More...
 
<a href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a> const & 
<a href="../unity.scopes.Category.md#a2668bac76f600a009934faa8b7eeea6d">renderer_template</a> () const
 
Get renderer template of this Category. More...
 
<span id="details"></span>
Detailed Description
--------------------

Implementation of <a href="index.html" title="Implementation of Category class for testing. ">Category</a> class for testing.

This class inherits from the <a href="unity.scopes.Category.md" title="A set of related results returned by a scope and displayed within a single pane in the Unity dash...">unity::scopes::Category</a> and provides a public constructor that allows for creating categories with no need to register them via a real instance of <a href="unity.scopes.SearchReply.md" title="Allows the results of a search query to be sent to the query source. ">unity::scopes::SearchReply</a>.

Constructor & Destructor Documentation
--------------------------------------

<span id="ac3916483e349d40d917c679fbf3a554e" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>unity::scopes::testing::Category::Category</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>title</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>icon</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a> const &amp; </td>
<td><em>renderer_template</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">inline</span></span></td>
</tr>
</tbody>
</table>

Creates category instance.

Parameters  
|                    |                                 |
|--------------------|---------------------------------|
| id                 | The identifier of this category |
| title              | The title of this category      |
| icon               | The icon of this category       |
| renderer\_template | The renderer template           |

<span id="abb48fefd29c1b45b1877ac103a301328" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>unity::scopes::testing::Category::Category</td>
<td>(</td>
<td><a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> const &amp; </td>
<td><em>variant_map</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">inline</span></span></td>
</tr>
</tbody>
</table>

Deserializes category from a variant data.

Parameters  
|              |                     |
|--------------|---------------------|
| variant\_map | Serialized category |

