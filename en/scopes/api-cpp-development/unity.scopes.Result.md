---
Title: unity.scopes.Result
---
        
Result
======

The attributes of a result returned by a <a href="unity.scopes.Scope.md" title="Allows queries, preview requests, and activation requests to be sent to a scope. ">Scope</a>. [More...](#details)

`#include <unity/scopes/Result.h>`

Inheritance diagram for unity::scopes::Result:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/40c96b50-f2ad-4e85-ab36-97399c0e87d1-api/scopes/cpp/sdk-15.04.5/unity.scopes.Result/classunity_1_1scopes_1_1_result__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual 
<a href="#af50d9e95694cc46f4c76369e97aec927">~Result</a> ()
 
void 
<a href="#a744776333a9748ba41dace7c6943ca4d">store</a> (<a href="index.html">Result</a> const &other, bool intercept\_activation=false)
 
Stores a Result inside this Result instance. More...
 
bool 
<a href="#a8213bb7b0aedae09af8d621e1a7e136b">has_stored_result</a> () const
 
Check if this Result instance has a stored result. More...
 
<a href="index.html">Result</a> 
<a href="#a99b158932252c709cb2d4861db566a0a">retrieve</a> () const
 
Get a stored result. More...
 
void 
<a href="#ad69c1e88a1245c4c1f13fcba333c8d7e">set_uri</a> (std::string const &<a href="#a5642d5984ba110c3b7d268cc2668f413">uri</a>)
 
Set the "uri" attribute of this result.
 
void 
<a href="#adf8cf3d863babb02107fb5ef35acc925">set_title</a> (std::string const &<a href="#a318887472ccc1034a64a3ec1d3b0d7d6">title</a>)
 
Set the "title" attribute of this result. More...
 
void 
<a href="#a3f2e512b10dbf2ed867d260ec33a89a1">set_art</a> (std::string const &image)
 
Set the "art" attribute of this result. More...
 
void 
<a href="#aaea2d65663a8553b90a87b5b92c47f8f">set_dnd_uri</a> (std::string const &<a href="#af98171266eeac7360f1c1ef7b0f58958">dnd_uri</a>)
 
Set the "dnd\_uri" attribute of this result. More...
 
void 
<a href="#a5a132eb82702829e2fd026e088e4aa08">set_intercept_activation</a> ()
 
Indicates to the receiver that this scope should intercept activation requests for this result. More...
 
bool 
<a href="#ac3e57ec9bf9a3bc5a517f91ff9605f6b">direct_activation</a> () const
 
Check if this result should be activated directly by the shell because the scope doesn't handle activation of this result. More...
 
<a href="../unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> 
<a href="#a1a91e1cbb08e91366e92b7bcd76861d2">target_scope_proxy</a> () const
 
Get the proxy of a scope that handles activation and preview of this result. More...
 
<a href="unity.scopes.Variant.md">Variant</a> & 
<a href="#a157ebfcc5c28649af2761ef58f68de76">operator[]</a> (std::string const &key)
 
Returns reference of a Result attribute. More...
 
<a href="unity.scopes.Variant.md">Variant</a> const & 
<a href="#a4e0664aba7b2613883a24f98450b71c0">operator[]</a> (std::string const &key) const
 
Returns a const reference to a Result attribute. More...
 
std::string 
<a href="#a5642d5984ba110c3b7d268cc2668f413">uri</a> () const noexcept
 
Get the "uri" property of this Result. More...
 
std::string 
<a href="#a318887472ccc1034a64a3ec1d3b0d7d6">title</a> () const noexcept
 
Get the "title" property of this Result. More...
 
std::string 
<a href="#aeaeafd3fd83172104e501474191a6e4d">art</a> () const noexcept
 
Get the "art" property of this Result. More...
 
std::string 
<a href="#af98171266eeac7360f1c1ef7b0f58958">dnd_uri</a> () const noexcept
 
Get the "dnd\_uri" property of this Result. More...
 
bool 
<a href="#a442b87e28f762addb0d81ccd03a11532">contains</a> (std::string const &key) const
 
Check if this Result has an attribute. More...
 
<a href="unity.scopes.Variant.md">Variant</a> const & 
<a href="#a490b5b5da2c3d7b122cfadae25cde3af">value</a> (std::string const &key) const
 
Get the value of an attribute. More...
 
<a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> 
<a href="#acd3c05fe73b442facc1cb8d0fc0ffce2">serialize</a> () const
 
Returns a dictionary of all attributes of this Result instance. More...
 
bool 
<a href="#a454b78b004b954575c159deda871dd97">is_account_login_result</a> () const
 
Check if this result is an online account login result. More...
 
bool 
<a href="#aa60fe8b5e2b5959b5f6f3883e5f2facf">operator==</a> (<a href="index.html">Result</a> const &other) const
 
Compare result. More...
 
Copy and assignment

Copy and assignment (move and non-move versions) have the usual value semantics.

 
**Result** (<a href="index.html">Result</a> const &other)
 
 
**Result** (<a href="index.html">Result</a> &&)
 
<a href="index.html">Result</a> & 
**operator=** (<a href="index.html">Result</a> const &other)
 
<a href="index.html">Result</a> & 
**operator=** (<a href="index.html">Result</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

The attributes of a result returned by a <a href="unity.scopes.Scope.md" title="Allows queries, preview requests, and activation requests to be sent to a scope. ">Scope</a>.

The <a href="index.html" title="The attributes of a result returned by a Scope. ">Result</a> API provides convenience methods for some typical attributes (title, art), but scopes are free to add and use any custom attributes with `operator[]`. The only required attribute is 'uri' and it must not be empty before calling Reply::push().

Constructor & Destructor Documentation
--------------------------------------

<span id="af50d9e95694cc46f4c76369e97aec927" class="anchor"></span>
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
<td>virtual unity::scopes::Result::~Result</td>
<td>(</td>
<td></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Destructor.

Member Function Documentation
-----------------------------

<span id="aeaeafd3fd83172104e501474191a6e4d" class="anchor"></span>
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
<td>std::string unity::scopes::Result::art</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">noexcept</span></span></td>
</tr>
</tbody>
</table>

Get the "art" property of this <a href="index.html" title="The attributes of a result returned by a Scope. ">Result</a>.

This method returns an empty string if this attribute is not of type Variant::Type::String (e.g. it was set with operator\[\]).

Returns  
The value of "art" or the empty string.

<span id="a442b87e28f762addb0d81ccd03a11532" class="anchor"></span>
|                                      |     |                      |       |     |       |
|--------------------------------------|-----|----------------------|-------|-----|-------|
| bool unity::scopes::Result::contains | (   | std::string const &  | *key* | )   | const |

Check if this <a href="index.html" title="The attributes of a result returned by a Scope. ">Result</a> has an attribute.

Parameters  
|     |                     |
|-----|---------------------|
| key | The attribute name. |

<!-- -->

Returns  
True if the attribute is set.

<span id="ac3e57ec9bf9a3bc5a517f91ff9605f6b" class="anchor"></span>
|                                                |     |     |     |       |
|------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Result::direct\_activation | (   |     | )   | const |

Check if this result should be activated directly by the shell because the scope doesn't handle activation of this result.

Returns  
True if this result needs to be activated directly.

<span id="af98171266eeac7360f1c1ef7b0f58958" class="anchor"></span>
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
<td>std::string unity::scopes::Result::dnd_uri</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">noexcept</span></span></td>
</tr>
</tbody>
</table>

Get the "dnd\_uri" property of this <a href="index.html" title="The attributes of a result returned by a Scope. ">Result</a>.

This method returns an empty string if this attribute is not of type Variant::Type::String type (e.g. it was set with operator\[\]).

Returns  
The value of "dnd\_uri" or the empty string.

<span id="a8213bb7b0aedae09af8d621e1a7e136b" class="anchor"></span>
|                                                 |     |     |     |       |
|-------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Result::has\_stored\_result | (   |     | )   | const |

Check if this <a href="index.html" title="The attributes of a result returned by a Scope. ">Result</a> instance has a stored result.

Returns  
True if there is a stored result

<span id="a454b78b004b954575c159deda871dd97" class="anchor"></span>
|                                                        |     |     |     |       |
|--------------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Result::is\_account\_login\_result | (   |     | )   | const |

Check if this result is an online account login result.

Returns  
True if this result is an online account login result.

<span id="aa60fe8b5e2b5959b5f6f3883e5f2facf" class="anchor"></span>
|                                        |     |                                                     |         |     |       |
|----------------------------------------|-----|-----------------------------------------------------|---------|-----|-------|
| bool unity::scopes::Result::operator== | (   | <a href="index.html">Result</a> const &  | *other* | )   | const |

Compare result.

Returns  
True if results have all attributes equal.

<span id="a157ebfcc5c28649af2761ef58f68de76" class="anchor"></span>
|                                                                                                          |     |                      |       |     |     |
|----------------------------------------------------------------------------------------------------------|-----|----------------------|-------|-----|-----|
| <a href="unity.scopes.Variant.md">Variant</a>& unity::scopes::Result::operator\[\] | (   | std::string const &  | *key* | )   |     |

Returns reference of a <a href="index.html" title="The attributes of a result returned by a Scope. ">Result</a> attribute.

This method can be used to read or initialize both standard ("uri", "title", "art", "dnd\_uri") and custom metadata attributes. Referencing a non-existing attribute automatically creates it with a default value of Variant::Type::Null.

Parameters  
|     |                            |
|-----|----------------------------|
| key | The name of the attribute. |

<!-- -->

Returns  
A reference to the attribute.

<!-- -->

Exceptions  
|                        |                                             |
|------------------------|---------------------------------------------|
| unity::Invalidargument | if no attribute with the given name exists. |

<span id="a4e0664aba7b2613883a24f98450b71c0" class="anchor"></span>
|                                                                                                                |     |                      |       |     |       |
|----------------------------------------------------------------------------------------------------------------|-----|----------------------|-------|-----|-------|
| <a href="unity.scopes.Variant.md">Variant</a> const& unity::scopes::Result::operator\[\] | (   | std::string const &  | *key* | )   | const |

Returns a const reference to a <a href="index.html" title="The attributes of a result returned by a Scope. ">Result</a> attribute.

This method can be used for read-only access to both standard ("uri", "title", "art", "dnd\_uri") and custom metadata attributes. Referencing a non-existing attribute throws unity::InvalidArgumentException.

Parameters  
|     |                            |
|-----|----------------------------|
| key | The name of the attribute. |

<!-- -->

Returns  
A const reference to the attribute.

<!-- -->

Exceptions  
|                        |                                             |
|------------------------|---------------------------------------------|
| unity::Invalidargument | if no attribute with the given name exists. |

<span id="a99b158932252c709cb2d4861db566a0a" class="anchor"></span>
|                                                                            |     |     |     |       |
|----------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="index.html">Result</a> unity::scopes::Result::retrieve | (   |     | )   | const |

Get a stored result.

Returns  
stored result

<!-- -->

Exceptions  
|                                 |                                                                                                                                               |
|---------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|
| unity::InvalidArgumentException | if no result was stored in this <a href="index.html" title="The attributes of a result returned by a Scope. ">Result</a> instance. |

<span id="acd3c05fe73b442facc1cb8d0fc0ffce2" class="anchor"></span>
|                                                                                                                                   |     |     |     |       |
|-----------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> unity::scopes::Result::serialize | (   |     | )   | const |

Returns a dictionary of all attributes of this <a href="index.html" title="The attributes of a result returned by a Scope. ">Result</a> instance.

Returns  
All base attributes and custom attributes set with add\_metadata().

<span id="a3f2e512b10dbf2ed867d260ec33a89a1" class="anchor"></span>
|                                      |     |                      |         |     |     |
|--------------------------------------|-----|----------------------|---------|-----|-----|
| void unity::scopes::Result::set\_art | (   | std::string const &  | *image* | )   |     |

Set the "art" attribute of this result.

Equivalent to calling `result["art"] = image;`

<span id="aaea2d65663a8553b90a87b5b92c47f8f" class="anchor"></span>
|                                           |     |                      |            |     |     |
|-------------------------------------------|-----|----------------------|------------|-----|-----|
| void unity::scopes::Result::set\_dnd\_uri | (   | std::string const &  | *dnd\_uri* | )   |     |

Set the "dnd\_uri" attribute of this result.

Equivalent to calling `result["dnd_uri"] = dnd_uri;`

<span id="a5a132eb82702829e2fd026e088e4aa08" class="anchor"></span>
|                                                        |     |     |     |     |
|--------------------------------------------------------|-----|-----|-----|-----|
| void unity::scopes::Result::set\_intercept\_activation | (   |     | )   |     |

Indicates to the receiver that this scope should intercept activation requests for this result.

By default, a scope receives preview requests for the results it creates, but does not receive activation requests (they are handled directly by the shell). Intercepting activation implies intercepting preview requests as well; this is important for scopes that forward results from other scopes and call <a href="#a5a132eb82702829e2fd026e088e4aa08" title="Indicates to the receiver that this scope should intercept activation requests for this result...">set_intercept_activation()</a> on these scopes. A scope that sets intercept activation flag for a result should re-implement <a href="../unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">ScopeBase::activate()</a> and provide an implementation of <a href="unity.scopes.ActivationQueryBase.md" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a> that handles the actual activation. If not called, the result will be activated directly by the Unity shell whithout involving the scope, assuming an appropriate URI schema handler is present on the system.

<span id="adf8cf3d863babb02107fb5ef35acc925" class="anchor"></span>
|                                        |     |                      |         |     |     |
|----------------------------------------|-----|----------------------|---------|-----|-----|
| void unity::scopes::Result::set\_title | (   | std::string const &  | *title* | )   |     |

Set the "title" attribute of this result.

Equivalent to calling `result["title"] = title;`

<span id="a744776333a9748ba41dace7c6943ca4d" class="anchor"></span>
|                                   |     |                                                     |                                    |
|-----------------------------------|-----|-----------------------------------------------------|------------------------------------|
| void unity::scopes::Result::store | (   | <a href="index.html">Result</a> const &  | *other*,                           |
|                                   |     | bool                                                | *intercept\_activation* = `false`  |
|                                   | )   |                                                     |                                    |

Stores a <a href="index.html" title="The attributes of a result returned by a Scope. ">Result</a> inside this <a href="index.html" title="The attributes of a result returned by a Scope. ">Result</a> instance.

This method is meant to be used by aggregator scopes which want to modify results they receive, but want to keep a copy of the original result so that they can be correctly handled by the original scopes who created them when it comes to activation or previews. Scopes middleware will automatically pass the correct inner stored result to the activation or preview request handler of a scope which created it.

Parameters  
|                       |                                                                    |
|-----------------------|--------------------------------------------------------------------|
| other                 | The original result to store within this result.                   |
| intercept\_activation | True if this scope should receive activation and preview requests. |

<span id="a1a91e1cbb08e91366e92b7bcd76861d2" class="anchor"></span>
|                                                                                                                                              |     |     |     |       |
|----------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> unity::scopes::Result::target\_scope\_proxy | (   |     | )   | const |

Get the proxy of a scope that handles activation and preview of this result.

The proxy is available only when receiving this result from a scope, otherwise this method throws LogicException. Activation requests should be sent to a scope returned by this method only if <a href="#ac3e57ec9bf9a3bc5a517f91ff9605f6b" title="Check if this result should be activated directly by the shell because the scope doesn&#39;t handle activ...">direct_activation()</a> is false.

Returns  
The scope proxy.

<span id="a318887472ccc1034a64a3ec1d3b0d7d6" class="anchor"></span>
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
<td>std::string unity::scopes::Result::title</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">noexcept</span></span></td>
</tr>
</tbody>
</table>

Get the "title" property of this <a href="index.html" title="The attributes of a result returned by a Scope. ">Result</a>.

This method returns an empty string if this attribute is not of type Variant::Type::String (e.g. it was set with operator\[\]).

Returns  
The value of "title" or the empty string.

<span id="a5642d5984ba110c3b7d268cc2668f413" class="anchor"></span>
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
<td>std::string unity::scopes::Result::uri</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">noexcept</span></span></td>
</tr>
</tbody>
</table>

Get the "uri" property of this <a href="index.html" title="The attributes of a result returned by a Scope. ">Result</a>.

This method returns an empty string if this attribute is not of type Variant::Type::String (e.g. it was set with operator\[\]).

Returns  
The value of "uri" or the empty string.

<span id="a490b5b5da2c3d7b122cfadae25cde3af" class="anchor"></span>
|                                                                                                         |     |                      |       |     |       |
|---------------------------------------------------------------------------------------------------------|-----|----------------------|-------|-----|-------|
| <a href="unity.scopes.Variant.md">Variant</a> const& unity::scopes::Result::value | (   | std::string const &  | *key* | )   | const |

Get the value of an attribute.

Note: if int64\_t value has been stored in the <a href="index.html" title="The attributes of a result returned by a Scope. ">Result</a> but it doesn't exceed maxium range of 32 bit integer and if results come from the cache (see <a href="../unity.scopes.SearchReply.md#a4ba805136164b11bb358917070cde24d" title="Push the results that were produced by the most recent surfacing query. ">SearchReply::push_surfacing_results_from_cache()</a>), then the value may be made available as 32 bit int; therefore the code should always check the type of returned <a href="unity.scopes.Variant.md" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> and depending on that use Variant::get\_int() or Variant::get\_int\_64\_t() when dealing with 64-bit integers. This is not needed when using 32 bit integers only.

Parameters  
|     |                     |
|-----|---------------------|
| key | The attribute name. |

<!-- -->

Returns  
The attribute value.

<!-- -->

Exceptions  
|                                 |                                     |
|---------------------------------|-------------------------------------|
| unity::InvalidArgumentException | if given attribute hasn't been set. |

