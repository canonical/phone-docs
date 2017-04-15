---
Title: unity.scopes.CategorisedResult
---
        
CategorisedResult
=================

A result, including the category it belongs to. [More...](#details)

`#include <unity/scopes/CategorisedResult.h>`

Inheritance diagram for unity::scopes::CategorisedResult:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/b03e47f6-2b74-4dc3-89e2-854c6844e256-api/scopes/cpp/sdk-15.04.4/unity.scopes.CategorisedResult/classunity_1_1scopes_1_1_categorised_result__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

 
<a href="#a28968f35dc3dc3cc1d2d2407e180933c">CategorisedResult</a> (Category::SCPtr <a href="#aa6d3def1bc1a254046d7c5a34ecefa85">category</a>)
 
Creates a CategorisedResult with given category, with all base attributes initially empty. More...
 
void 
<a href="#a8978affd683add658580499c9e954dbe">set_category</a> (Category::SCPtr <a href="#aa6d3def1bc1a254046d7c5a34ecefa85">category</a>)
 
Updates the category of this result. More...
 
Category::SCPtr 
<a href="#aa6d3def1bc1a254046d7c5a34ecefa85">category</a> () const
 
Return category of this result. Get the category instance this result belongs to. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**CategorisedResult** (<a href="index.html">CategorisedResult</a> const &other)
 
<a href="index.html">CategorisedResult</a> & 
**operator=** (<a href="index.html">CategorisedResult</a> const &other)
 
 
**CategorisedResult** (<a href="index.html">CategorisedResult</a> &&)
 
<a href="index.html">CategorisedResult</a> & 
**operator=** (<a href="index.html">CategorisedResult</a> &&)
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/a8107957-43ef-4d6b-80b3-1f6ff44e48d1-api/scopes/cpp/sdk-15.04.4/unity.scopes.CategorisedResult/closed.png) Public Member Functions inherited from <a href="unity.scopes.Result.md">unity::scopes::Result</a>
virtual 
<a href="../unity.scopes.Result.md#af50d9e95694cc46f4c76369e97aec927">~Result</a> ()
 
void 
<a href="../unity.scopes.Result.md#a744776333a9748ba41dace7c6943ca4d">store</a> (<a href="unity.scopes.Result.md">Result</a> const &other, bool intercept\_activation=false)
 
Stores a Result inside this Result instance. More...
 
bool 
<a href="../unity.scopes.Result.md#a8213bb7b0aedae09af8d621e1a7e136b">has_stored_result</a> () const
 
Check if this Result instance has a stored result. More...
 
<a href="unity.scopes.Result.md">Result</a> 
<a href="../unity.scopes.Result.md#a99b158932252c709cb2d4861db566a0a">retrieve</a> () const
 
Get a stored result. More...
 
void 
<a href="../unity.scopes.Result.md#ad69c1e88a1245c4c1f13fcba333c8d7e">set_uri</a> (std::string const &<a href="../unity.scopes.Result.md#a5642d5984ba110c3b7d268cc2668f413">uri</a>)
 
Set the "uri" attribute of this result.
 
void 
<a href="../unity.scopes.Result.md#adf8cf3d863babb02107fb5ef35acc925">set_title</a> (std::string const &<a href="../unity.scopes.Result.md#a318887472ccc1034a64a3ec1d3b0d7d6">title</a>)
 
Set the "title" attribute of this result. More...
 
void 
<a href="../unity.scopes.Result.md#a3f2e512b10dbf2ed867d260ec33a89a1">set_art</a> (std::string const &image)
 
Set the "art" attribute of this result. More...
 
void 
<a href="../unity.scopes.Result.md#aaea2d65663a8553b90a87b5b92c47f8f">set_dnd_uri</a> (std::string const &<a href="../unity.scopes.Result.md#af98171266eeac7360f1c1ef7b0f58958">dnd_uri</a>)
 
Set the "dnd\_uri" attribute of this result. More...
 
void 
<a href="../unity.scopes.Result.md#a5a132eb82702829e2fd026e088e4aa08">set_intercept_activation</a> ()
 
Indicates to the receiver that this scope should intercept activation requests for this result. More...
 
bool 
<a href="../unity.scopes.Result.md#ac3e57ec9bf9a3bc5a517f91ff9605f6b">direct_activation</a> () const
 
Check if this result should be activated directly by the shell because the scope doesn't handle activation of this result. More...
 
<a href="../unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> 
<a href="../unity.scopes.Result.md#a1a91e1cbb08e91366e92b7bcd76861d2">target_scope_proxy</a> () const
 
Get the proxy of a scope that handles activation and preview of this result. More...
 
<a href="unity.scopes.Variant.md">Variant</a> & 
<a href="../unity.scopes.Result.md#a157ebfcc5c28649af2761ef58f68de76">operator[]</a> (std::string const &key)
 
Returns reference of a Result attribute. More...
 
<a href="unity.scopes.Variant.md">Variant</a> const & 
<a href="../unity.scopes.Result.md#a4e0664aba7b2613883a24f98450b71c0">operator[]</a> (std::string const &key) const
 
Returns a const reference to a Result attribute. More...
 
std::string 
<a href="../unity.scopes.Result.md#a5642d5984ba110c3b7d268cc2668f413">uri</a> () const noexcept
 
Get the "uri" property of this Result. More...
 
std::string 
<a href="../unity.scopes.Result.md#a318887472ccc1034a64a3ec1d3b0d7d6">title</a> () const noexcept
 
Get the "title" property of this Result. More...
 
std::string 
<a href="../unity.scopes.Result.md#aeaeafd3fd83172104e501474191a6e4d">art</a> () const noexcept
 
Get the "art" property of this Result. More...
 
std::string 
<a href="../unity.scopes.Result.md#af98171266eeac7360f1c1ef7b0f58958">dnd_uri</a> () const noexcept
 
Get the "dnd\_uri" property of this Result. More...
 
bool 
<a href="../unity.scopes.Result.md#a442b87e28f762addb0d81ccd03a11532">contains</a> (std::string const &key) const
 
Check if this Result has an attribute. More...
 
<a href="unity.scopes.Variant.md">Variant</a> const & 
<a href="../unity.scopes.Result.md#a490b5b5da2c3d7b122cfadae25cde3af">value</a> (std::string const &key) const
 
Get the value of an attribute. More...
 
<a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> 
<a href="../unity.scopes.Result.md#acd3c05fe73b442facc1cb8d0fc0ffce2">serialize</a> () const
 
Returns a dictionary of all attributes of this Result instance. More...
 
bool 
<a href="../unity.scopes.Result.md#a454b78b004b954575c159deda871dd97">is_account_login_result</a> () const
 
Check if this result is an online account login result. More...
 
bool 
<a href="../unity.scopes.Result.md#aa60fe8b5e2b5959b5f6f3883e5f2facf">operator==</a> (<a href="unity.scopes.Result.md">Result</a> const &other) const
 
Compare result. More...
 
 
**Result** (<a href="unity.scopes.Result.md">Result</a> const &other)
 
 
**Result** (<a href="unity.scopes.Result.md">Result</a> &&)
 
<a href="unity.scopes.Result.md">Result</a> & 
**operator=** (<a href="unity.scopes.Result.md">Result</a> const &other)
 
<a href="unity.scopes.Result.md">Result</a> & 
**operator=** (<a href="unity.scopes.Result.md">Result</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

A result, including the category it belongs to.

Constructor & Destructor Documentation
--------------------------------------

<span id="a28968f35dc3dc3cc1d2d2407e180933c" class="anchor"></span>
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
<td>unity::scopes::CategorisedResult::CategorisedResult</td>
<td>(</td>
<td>Category::SCPtr </td>
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

Creates a <a href="index.html" title="A result, including the category it belongs to. ">CategorisedResult</a> with given category, with all base attributes initially empty.

Parameters  
|          |                              |
|----------|------------------------------|
| category | The category for the result. |

Member Function Documentation
-----------------------------

<span id="aa6d3def1bc1a254046d7c5a34ecefa85" class="anchor"></span>
|                                                            |     |     |     |       |
|------------------------------------------------------------|-----|-----|-----|-------|
| Category::SCPtr unity::scopes::CategorisedResult::category | (   |     | )   | const |

Return category of this result. Get the category instance this result belongs to.

Returns  
The category instance.

<span id="a8978affd683add658580499c9e954dbe" class="anchor"></span>
|                                                      |     |                  |            |     |     |
|------------------------------------------------------|-----|------------------|------------|-----|-----|
| void unity::scopes::CategorisedResult::set\_category | (   | Category::SCPtr  | *category* | )   |     |

Updates the category of this result.

Parameters  
|          |                              |
|----------|------------------------------|
| category | The category for the result. |

