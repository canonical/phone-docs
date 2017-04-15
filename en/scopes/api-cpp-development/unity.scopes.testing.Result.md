---
Title: unity.scopes.testing.Result
---
        
Result
======

A simple class implementation of <a href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">unity::scopes::Result</a> that provides a default constructor. [More...](#details)

`#include <unity/scopes/testing/Result.h>`

Inheritance diagram for unity::scopes::testing::Result:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/d2200805-f550-40f1-b6db-4aa869180942-api/scopes/cpp/sdk-15.04.5/unity.scopes.testing.Result/classunity_1_1scopes_1_1testing_1_1_result__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

 
<a href="#a66e95120f4af1ab4eb0f6676080ba34f">Result</a> ()
 
Default constructor, creates <a href="index.html" title="A simple class implementation of unity::scopes::Result that provides a default constructor. ">Result</a> instance with no attributes.
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/5c964ab1-29e9-414d-8816-2d97d24ffec8-api/scopes/cpp/sdk-15.04.5/unity.scopes.testing.Result/closed.png) Public Member Functions inherited from <a href="unity.scopes.Result.md">unity::scopes::Result</a>
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

A simple class implementation of <a href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">unity::scopes::Result</a> that provides a default constructor.

