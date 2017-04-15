---
Title: unity.scopes.qt.QCategorisedResult
---
        
QCategorisedResult
==================

A result, including the category it belongs to. [More...](#details)

`#include <unity/scopes/qt/QCategorisedResult.h>`

Inheritance diagram for unity::scopes::qt::QCategorisedResult:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/bf5ffbe2-46cd-43ec-a8fc-cda23add73f4-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QCategorisedResult/classunity_1_1scopes_1_1qt_1_1_q_categorised_result__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

 
<a href="#aaa0d31b18c65dff255c13ff014d11b7d">QCategorisedResult</a> (QCategory::SCPtr <a href="#a8516116413e83bdedb978c71f803f118">category</a>)
 
Creates a CategorisedResult with given category, with all base attributes initially empty. More...
 
void 
<a href="#ab24057bbd0ee446a40cb0b9d38ef696d">set_category</a> (QCategory::SCPtr <a href="#a8516116413e83bdedb978c71f803f118">category</a>)
 
Updates the category of this result. More...
 
QCategory::SCPtr 
<a href="#a8516116413e83bdedb978c71f803f118">category</a> () const
 
Return category of this result. Get the category instance this result belongs to. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**QCategorisedResult** (<a href="index.html">QCategorisedResult</a> const &other)
 
<a href="index.html">QCategorisedResult</a> & 
**operator=** (<a href="index.html">QCategorisedResult</a> const &other)
 
 
**QCategorisedResult** (<a href="index.html">QCategorisedResult</a> &&)
 
<a href="index.html">QCategorisedResult</a> & 
**operator=** (<a href="index.html">QCategorisedResult</a> &&)
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/c6c349ee-6e85-44be-855b-9062eb932f9f-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QCategorisedResult/closed.png) Public Member Functions inherited from <a href="unity.scopes.qt.QResult.md">unity::scopes::qt::QResult</a>
virtual 
<a href="../unity.scopes.qt.QResult.md#ad1bc050f67237c601821cc5836c76b94">~QResult</a> ()
 
void 
<a href="../unity.scopes.qt.QResult.md#a56592ac2bbf7a752f9aa99ea26226cee">store</a> (<a href="unity.scopes.qt.QResult.md">QResult</a> const &other, bool intercept\_activation=false)
 
Stores a Result inside this Result instance. More...
 
bool 
<a href="../unity.scopes.qt.QResult.md#affcb80d29930b57d8dc6aa268820d451">has_stored_result</a> () const
 
Check if this Result instance has a stored result. More...
 
<a href="unity.scopes.qt.QResult.md">QResult</a> 
<a href="../unity.scopes.qt.QResult.md#a3827c6b06d202ca6079f08b666f2c0ea">retrieve</a> () const
 
Get a stored result. More...
 
void 
<a href="../unity.scopes.qt.QResult.md#a1aa2ae9082f1e6507d18dc650f4d6d9d">set_uri</a> (QString const &<a href="../unity.scopes.qt.QResult.md#a253c1f08aae4338a3f89e192538e99f8">uri</a>)
 
Set the "uri" attribute of this result.
 
void 
<a href="../unity.scopes.qt.QResult.md#a1f3defe1265de15c763a591b0da87cf0">set_title</a> (QString const &<a href="../unity.scopes.qt.QResult.md#aafcb8c20516636cadb4be0e285ab20f6">title</a>)
 
Set the "title" attribute of this result. More...
 
void 
<a href="../unity.scopes.qt.QResult.md#a1f4f912a02b84f077bc85879a72a90be">set_art</a> (QString const &image)
 
Set the "art" attribute of this result. More...
 
void 
<a href="../unity.scopes.qt.QResult.md#aa091842db377921d6b0dd388f823a245">set_dnd_uri</a> (QString const &<a href="../unity.scopes.qt.QResult.md#a3da993e25ee4a714fc5feedb29892d05">dnd_uri</a>)
 
Set the "dnd\_uri" attribute of this result. More...
 
void 
<a href="../unity.scopes.qt.QResult.md#a92fcf6ff2271c442c5190dab63ec4042">set_intercept_activation</a> ()
 
Indicates to the receiver that this scope should intercept activation requests for this result. More...
 
bool 
<a href="../unity.scopes.qt.QResult.md#aa905c2b7854efd8d8031cb80044ccb9f">direct_activation</a> () const
 
Check if this result should be activated directly by the shell because the scope doesn't handle activation of this result. More...
 
<a href="../unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> 
<a href="../unity.scopes.qt.QResult.md#a273100ac7b782044294250f939e3dba0">target_scope_proxy</a> () const
 
Get the proxy of a scope that handles activation and preview of this result. More...
 
QVariant & 
<a href="../unity.scopes.qt.QResult.md#a3b939c0d073ad78286e3cb8b8525ba2a">operator[]</a> (QString const &key)
 
Returns reference of a Result attribute. More...
 
QVariant const & 
<a href="../unity.scopes.qt.QResult.md#a205f7595cf44c96b610cc7813b126db2">operator[]</a> (QString const &key) const
 
Returns a const reference to a Result attribute. More...
 
QString 
<a href="../unity.scopes.qt.QResult.md#a253c1f08aae4338a3f89e192538e99f8">uri</a> () const noexcept
 
Get the "uri" property of this Result. More...
 
QString 
<a href="../unity.scopes.qt.QResult.md#aafcb8c20516636cadb4be0e285ab20f6">title</a> () const noexcept
 
Get the "title" property of this Result. More...
 
QString 
<a href="../unity.scopes.qt.QResult.md#ada4ef189c8a95ceb96bcf777dc312b24">art</a> () const noexcept
 
Get the "art" property of this Result. More...
 
QString 
<a href="../unity.scopes.qt.QResult.md#a3da993e25ee4a714fc5feedb29892d05">dnd_uri</a> () const noexcept
 
Get the "dnd\_uri" property of this Result. More...
 
bool 
<a href="../unity.scopes.qt.QResult.md#adde088969220153fde8dca7a4c4d117a">contains</a> (QString const &key) const
 
Check if this Result has an attribute. More...
 
QVariant const & 
<a href="../unity.scopes.qt.QResult.md#a7ed3240ad58f23d88e9de63e15062598">value</a> (QString const &key) const
 
Get the value of an attribute. More...
 
QVariantMap 
<a href="../unity.scopes.qt.QResult.md#a9188d2a2e431c71d85b142539f654e44">serialize</a> () const
 
Returns a dictionary of all attributes of this Result instance. More...
 
 
**QResult** (<a href="unity.scopes.qt.QResult.md">QResult</a> const &other)
 
 
**QResult** (<a href="unity.scopes.qt.QResult.md">QResult</a> &&)
 
<a href="unity.scopes.qt.QResult.md">QResult</a> & 
**operator=** (<a href="unity.scopes.qt.QResult.md">QResult</a> const &other)
 
<a href="unity.scopes.qt.QResult.md">QResult</a> & 
**operator=** (<a href="unity.scopes.qt.QResult.md">QResult</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

A result, including the category it belongs to.

Constructor & Destructor Documentation
--------------------------------------

<span id="aaa0d31b18c65dff255c13ff014d11b7d" class="anchor"></span>
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
<td>unity::scopes::qt::QCategorisedResult::QCategorisedResult</td>
<td>(</td>
<td>QCategory::SCPtr </td>
<td><em>category</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">explicit</span></span></td>
</tr>
</tbody>
</table>

Creates a <a href="unity.scopes.CategorisedResult.md" title="A result, including the category it belongs to. ">CategorisedResult</a> with given category, with all base attributes initially empty.

Parameters  
|          |                              |
|----------|------------------------------|
| category | The category for the result. |

Member Function Documentation
-----------------------------

<span id="a8516116413e83bdedb978c71f803f118" class="anchor"></span>
|                                                                  |     |     |     |       |
|------------------------------------------------------------------|-----|-----|-----|-------|
| QCategory::SCPtr unity::scopes::qt::QCategorisedResult::category | (   |     | )   | const |

Return category of this result. Get the category instance this result belongs to.

Returns  
The category instance.

<span id="ab24057bbd0ee446a40cb0b9d38ef696d" class="anchor"></span>
|                                                           |     |                   |            |     |     |
|-----------------------------------------------------------|-----|-------------------|------------|-----|-----|
| void unity::scopes::qt::QCategorisedResult::set\_category | (   | QCategory::SCPtr  | *category* | )   |     |

Updates the category of this result.

Parameters  
|          |                              |
|----------|------------------------------|
| category | The category for the result. |

