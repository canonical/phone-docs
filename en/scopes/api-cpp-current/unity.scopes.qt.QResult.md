---
Title: unity.scopes.qt.QResult
---
        
QResult
=======

The attributes of a result returned by a <a href="unity.scopes.Scope.md" title="Allows queries, preview requests, and activation requests to be sent to a scope. ">Scope</a>. [More...](#details)

`#include <unity/scopes/qt/QResult.h>`

Inheritance diagram for unity::scopes::qt::QResult:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/a3a063db-564a-42c6-8f53-23ffb5b2fb12-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QResult/classunity_1_1scopes_1_1qt_1_1_q_result__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual 
<a href="#ad1bc050f67237c601821cc5836c76b94">~QResult</a> ()
 
void 
<a href="#a56592ac2bbf7a752f9aa99ea26226cee">store</a> (<a href="index.html">QResult</a> const &other, bool intercept\_activation=false)
 
Stores a Result inside this Result instance. More...
 
bool 
<a href="#affcb80d29930b57d8dc6aa268820d451">has_stored_result</a> () const
 
Check if this Result instance has a stored result. More...
 
<a href="index.html">QResult</a> 
<a href="#a3827c6b06d202ca6079f08b666f2c0ea">retrieve</a> () const
 
Get a stored result. More...
 
void 
<a href="#a1aa2ae9082f1e6507d18dc650f4d6d9d">set_uri</a> (QString const &<a href="#a253c1f08aae4338a3f89e192538e99f8">uri</a>)
 
Set the "uri" attribute of this result.
 
void 
<a href="#a1f3defe1265de15c763a591b0da87cf0">set_title</a> (QString const &<a href="#aafcb8c20516636cadb4be0e285ab20f6">title</a>)
 
Set the "title" attribute of this result. More...
 
void 
<a href="#a1f4f912a02b84f077bc85879a72a90be">set_art</a> (QString const &image)
 
Set the "art" attribute of this result. More...
 
void 
<a href="#aa091842db377921d6b0dd388f823a245">set_dnd_uri</a> (QString const &<a href="#a3da993e25ee4a714fc5feedb29892d05">dnd_uri</a>)
 
Set the "dnd\_uri" attribute of this result. More...
 
void 
<a href="#a92fcf6ff2271c442c5190dab63ec4042">set_intercept_activation</a> ()
 
Indicates to the receiver that this scope should intercept activation requests for this result. More...
 
bool 
<a href="#aa905c2b7854efd8d8031cb80044ccb9f">direct_activation</a> () const
 
Check if this result should be activated directly by the shell because the scope doesn't handle activation of this result. More...
 
<a href="../unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> 
<a href="#a273100ac7b782044294250f939e3dba0">target_scope_proxy</a> () const
 
Get the proxy of a scope that handles activation and preview of this result. More...
 
QVariant & 
<a href="#a3b939c0d073ad78286e3cb8b8525ba2a">operator[]</a> (QString const &key)
 
Returns reference of a Result attribute. More...
 
QVariant const & 
<a href="#a205f7595cf44c96b610cc7813b126db2">operator[]</a> (QString const &key) const
 
Returns a const reference to a Result attribute. More...
 
QString 
<a href="#a253c1f08aae4338a3f89e192538e99f8">uri</a> () const noexcept
 
Get the "uri" property of this Result. More...
 
QString 
<a href="#aafcb8c20516636cadb4be0e285ab20f6">title</a> () const noexcept
 
Get the "title" property of this Result. More...
 
QString 
<a href="#ada4ef189c8a95ceb96bcf777dc312b24">art</a> () const noexcept
 
Get the "art" property of this Result. More...
 
QString 
<a href="#a3da993e25ee4a714fc5feedb29892d05">dnd_uri</a> () const noexcept
 
Get the "dnd\_uri" property of this Result. More...
 
bool 
<a href="#adde088969220153fde8dca7a4c4d117a">contains</a> (QString const &key) const
 
Check if this Result has an attribute. More...
 
QVariant const & 
<a href="#a7ed3240ad58f23d88e9de63e15062598">value</a> (QString const &key) const
 
Get the value of an attribute. More...
 
QVariantMap 
<a href="#a9188d2a2e431c71d85b142539f654e44">serialize</a> () const
 
Returns a dictionary of all attributes of this Result instance. More...
 
Copy and assignment

Copy and assignment (move and non-move versions) have the usual value semantics.

 
**QResult** (<a href="index.html">QResult</a> const &other)
 
 
**QResult** (<a href="index.html">QResult</a> &&)
 
<a href="index.html">QResult</a> & 
**operator=** (<a href="index.html">QResult</a> const &other)
 
<a href="index.html">QResult</a> & 
**operator=** (<a href="index.html">QResult</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

The attributes of a result returned by a <a href="unity.scopes.Scope.md" title="Allows queries, preview requests, and activation requests to be sent to a scope. ">Scope</a>.

The <a href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a> API provides convenience methods for some typical attributes (title, art), but scopes are free to add and use any custom attributes with `operator[]`. The only required attribute is 'uri' and it must not be empty before calling Reply::push().

Constructor & Destructor Documentation
--------------------------------------

<span id="ad1bc050f67237c601821cc5836c76b94" class="anchor"></span>
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
<td>virtual unity::scopes::qt::QResult::~QResult</td>
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

<span id="ada4ef189c8a95ceb96bcf777dc312b24" class="anchor"></span>
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
<td>QString unity::scopes::qt::QResult::art</td>
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

Get the "art" property of this <a href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a>.

This method returns an empty string if this attribute is not of type Variant::Type::String (e.g. it was set with operator\[\]).

Returns  
The value of "art" or the empty string.

<span id="adde088969220153fde8dca7a4c4d117a" class="anchor"></span>
|                                           |     |                  |       |     |       |
|-------------------------------------------|-----|------------------|-------|-----|-------|
| bool unity::scopes::qt::QResult::contains | (   | QString const &  | *key* | )   | const |

Check if this <a href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a> has an attribute.

Parameters  
|     |                     |
|-----|---------------------|
| key | The attribute name. |

<!-- -->

Returns  
True if the attribute is set.

<span id="aa905c2b7854efd8d8031cb80044ccb9f" class="anchor"></span>
|                                                     |     |     |     |       |
|-----------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::qt::QResult::direct\_activation | (   |     | )   | const |

Check if this result should be activated directly by the shell because the scope doesn't handle activation of this result.

Returns  
True if this result needs to be activated directly.

<span id="a3da993e25ee4a714fc5feedb29892d05" class="anchor"></span>
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
<td>QString unity::scopes::qt::QResult::dnd_uri</td>
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

Get the "dnd\_uri" property of this <a href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a>.

This method returns an empty string if this attribute is not of type Variant::Type::String type (e.g. it was set with operator\[\]).

Returns  
The value of "dnd\_uri" or the empty string.

<span id="affcb80d29930b57d8dc6aa268820d451" class="anchor"></span>
|                                                      |     |     |     |       |
|------------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::qt::QResult::has\_stored\_result | (   |     | )   | const |

Check if this <a href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a> instance has a stored result.

Returns  
True if there is a stored result

<span id="a3b939c0d073ad78286e3cb8b8525ba2a" class="anchor"></span>
|                                                    |     |                  |       |     |     |
|----------------------------------------------------|-----|------------------|-------|-----|-----|
| QVariant& unity::scopes::qt::QResult::operator\[\] | (   | QString const &  | *key* | )   |     |

Returns reference of a <a href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a> attribute.

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

<span id="a205f7595cf44c96b610cc7813b126db2" class="anchor"></span>
|                                                          |     |                  |       |     |       |
|----------------------------------------------------------|-----|------------------|-------|-----|-------|
| QVariant const& unity::scopes::qt::QResult::operator\[\] | (   | QString const &  | *key* | )   | const |

Returns a const reference to a <a href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a> attribute.

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

<span id="a3827c6b06d202ca6079f08b666f2c0ea" class="anchor"></span>
|                                                                                  |     |     |     |       |
|----------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="index.html">QResult</a> unity::scopes::qt::QResult::retrieve | (   |     | )   | const |

Get a stored result.

Returns  
stored result

<!-- -->

Exceptions  
|                                 |                                                                                                                                                                      |
|---------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::InvalidArgumentException | if no result was stored in this <a href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a> instance. |

<span id="a9188d2a2e431c71d85b142539f654e44" class="anchor"></span>
|                                                   |     |     |     |       |
|---------------------------------------------------|-----|-----|-----|-------|
| QVariantMap unity::scopes::qt::QResult::serialize | (   |     | )   | const |

Returns a dictionary of all attributes of this <a href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a> instance.

Returns  
All base attributes and custom attributes set with add\_metadata().

<span id="a1f4f912a02b84f077bc85879a72a90be" class="anchor"></span>
|                                           |     |                  |         |     |     |
|-------------------------------------------|-----|------------------|---------|-----|-----|
| void unity::scopes::qt::QResult::set\_art | (   | QString const &  | *image* | )   |     |

Set the "art" attribute of this result.

Equivalent to calling `result["art"] = image;`

<span id="aa091842db377921d6b0dd388f823a245" class="anchor"></span>
|                                                |     |                  |            |     |     |
|------------------------------------------------|-----|------------------|------------|-----|-----|
| void unity::scopes::qt::QResult::set\_dnd\_uri | (   | QString const &  | *dnd\_uri* | )   |     |

Set the "dnd\_uri" attribute of this result.

Equivalent to calling `result["dnd_uri"] = dnd_uri;`

<span id="a92fcf6ff2271c442c5190dab63ec4042" class="anchor"></span>
|                                                             |     |     |     |     |
|-------------------------------------------------------------|-----|-----|-----|-----|
| void unity::scopes::qt::QResult::set\_intercept\_activation | (   |     | )   |     |

Indicates to the receiver that this scope should intercept activation requests for this result.

By default, a scope receives preview requests for the results it creates, but does not receive activation requests (they are handled directly by the shell). Intercepting activation implies intercepting preview requests as well; this is important for scopes that forward results from other scopes and call <a href="#a92fcf6ff2271c442c5190dab63ec4042" title="Indicates to the receiver that this scope should intercept activation requests for this result...">set_intercept_activation()</a> on these scopes. A scope that sets intercept activation flag for a result should re-implement <a href="../unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">ScopeBase::activate()</a> and provide an implementation of <a href="unity.scopes.ActivationQueryBase.md" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a> that handles the actual activation. If not called, the result will be activated directly by the Unity shell whithout involving the scope, assuming an appropriate URI schema handler is present on the system.

<span id="a1f3defe1265de15c763a591b0da87cf0" class="anchor"></span>
|                                             |     |                  |         |     |     |
|---------------------------------------------|-----|------------------|---------|-----|-----|
| void unity::scopes::qt::QResult::set\_title | (   | QString const &  | *title* | )   |     |

Set the "title" attribute of this result.

Equivalent to calling `result["title"] = title;`

<span id="a56592ac2bbf7a752f9aa99ea26226cee" class="anchor"></span>
|                                        |     |                                                      |                                    |
|----------------------------------------|-----|------------------------------------------------------|------------------------------------|
| void unity::scopes::qt::QResult::store | (   | <a href="index.html">QResult</a> const &  | *other*,                           |
|                                        |     | bool                                                 | *intercept\_activation* = `false`  |
|                                        | )   |                                                      |                                    |

Stores a <a href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a> inside this <a href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a> instance.

This method is meant to be used by aggregator scopes which want to modify results they receive, but want to keep a copy of the original result so that they can be correctly handled by the original scopes who created them when it comes to activation or previews. Scopes middleware will automatically pass the correct inner stored result to the activation or preview request handler of a scope which created it.

Parameters  
|                       |                                                                    |
|-----------------------|--------------------------------------------------------------------|
| other                 | The original result to store within this result.                   |
| intercept\_activation | True if this scope should receive activation and preview requests. |

<span id="a273100ac7b782044294250f939e3dba0" class="anchor"></span>
|                                                                                                                                                   |     |     |     |       |
|---------------------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> unity::scopes::qt::QResult::target\_scope\_proxy | (   |     | )   | const |

Get the proxy of a scope that handles activation and preview of this result.

The proxy is available only when receiving this result from a scope, otherwise this method throws LogicException. Activation requests should be sent to a scope returned by this method only if <a href="#aa905c2b7854efd8d8031cb80044ccb9f" title="Check if this result should be activated directly by the shell because the scope doesn&#39;t handle activ...">direct_activation()</a> is false.

Returns  
The scope proxy.

<span id="aafcb8c20516636cadb4be0e285ab20f6" class="anchor"></span>
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
<td>QString unity::scopes::qt::QResult::title</td>
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

Get the "title" property of this <a href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a>.

This method returns an empty string if this attribute is not of type Variant::Type::String (e.g. it was set with operator\[\]).

Returns  
The value of "title" or the empty string.

<span id="a253c1f08aae4338a3f89e192538e99f8" class="anchor"></span>
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
<td>QString unity::scopes::qt::QResult::uri</td>
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

Get the "uri" property of this <a href="unity.scopes.Result.md" title="The attributes of a result returned by a Scope. ">Result</a>.

This method returns an empty string if this attribute is not of type Variant::Type::String (e.g. it was set with operator\[\]).

Returns  
The value of "uri" or the empty string.

<span id="a7ed3240ad58f23d88e9de63e15062598" class="anchor"></span>
|                                                   |     |                  |       |     |       |
|---------------------------------------------------|-----|------------------|-------|-----|-------|
| QVariant const& unity::scopes::qt::QResult::value | (   | QString const &  | *key* | )   | const |

Get the value of an attribute.

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

