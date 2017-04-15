---
Title: unity.scopes.PreviewQueryBase
---
        
PreviewQueryBase
================

Abstract base class to represent a particular preview. [More...](#details)

`#include <unity/scopes/PreviewQueryBase.h>`

Inheritance diagram for unity::scopes::PreviewQueryBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/2763e997-b211-430f-a6e2-42c170f25574-api/scopes/cpp/sdk-15.04.5/unity.scopes.PreviewQueryBase/classunity_1_1scopes_1_1_preview_query_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual void 
<a href="#a81b89daf29cd1ada55286f2a3a871347">run</a> (<a href="../unity.scopes.md#a7b46ef0e880da4c75314fe60bdd55754">PreviewReplyProxy</a> const &reply)=0
 
Called by scopes runtime to start the preview. More...
 
<a href="unity.scopes.Result.md">Result</a> 
<a href="#af6887f9d12ffb69c94b2ddab8c1f99ba">result</a> () const
 
Get result for this preview request. More...
 
<a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> 
<a href="#a40f82d521b7c31a3b29f4c1143242d62">action_metadata</a> () const
 
Get metadata for this preview request. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/d06a7fbd-f47e-4027-9e21-3cb9203d2581-api/scopes/cpp/sdk-15.04.5/unity.scopes.PreviewQueryBase/closed.png) Public Member Functions inherited from <a href="unity.scopes.QueryBase.md">unity::scopes::QueryBase</a>
virtual void 
<a href="../unity.scopes.QueryBase.md#a596b19dbfd6efe96b834be75a9b64c68">cancelled</a> ()=0
 
Called by the scopes runtime when the query originator cancels a query. More...
 
bool 
<a href="../unity.scopes.QueryBase.md#a095e61eabe2042eeea5c4df1a444d7d4">valid</a> () const
 
Check whether this query is still valid. More...
 
<a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">unity::scopes::VariantMap</a> 
<a href="../unity.scopes.QueryBase.md#ab6a25ba587387a7f490b8b5a081e9ed6">settings</a> () const
 
Returns a dictionary with the scope's current settings. More...
 
pro-methods
---------------------------------------------------------

 
<a href="#acb87c2d6c81760696d75e9f0a378d6e7">PreviewQueryBase</a> (<a href="unity.scopes.Result.md">Result</a> const &<a href="#af6887f9d12ffb69c94b2ddab8c1f99ba">result</a>, <a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &metadata)
 
Instantiates a PreviewQueryBase. More...
 
<span id="details"></span>
Detailed Description
--------------------

Abstract base class to represent a particular preview.

A scope must return an instance of this class from its implementation of <a href="../unity.scopes.ScopeBase.md#a154b9b4cfc0f40572cfec60dd819396f" title="Invoked when a scope is requested to create a preview for a particular result. ">ScopeBase::preview()</a>.

Note  
The constructor of the instance must complete in a timely manner. Do not perform anything in the constructor that might block.

Constructor & Destructor Documentation
--------------------------------------

<span id="acb87c2d6c81760696d75e9f0a378d6e7" class="anchor"></span>
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
<td>unity::scopes::PreviewQueryBase::PreviewQueryBase</td>
<td>(</td>
<td><a href="unity.scopes.Result.md">Result</a> const &amp; </td>
<td><em>result</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp; </td>
<td><em>metadata</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">protected</span></span></td>
</tr>
</tbody>
</table>

Instantiates a <a href="index.html" title="Abstract base class to represent a particular preview. ">PreviewQueryBase</a>.

Parameters  
|          |                                  |
|----------|----------------------------------|
| result   | The result to be previewed.      |
| metadata | Additional data for the preview. |

Member Function Documentation
-----------------------------

<span id="a40f82d521b7c31a3b29f4c1143242d62" class="anchor"></span>
|                                                                                                                                     |     |     |     |       |
|-------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> unity::scopes::PreviewQueryBase::action\_metadata | (   |     | )   | const |

Get metadata for this preview request.

Returns  
search metadata

<!-- -->

Exceptions  
|                       |                                                                      |
|-----------------------|----------------------------------------------------------------------|
| unity::LogicException | if preview metadata was not initialized (the default ctor was used). |

<span id="af6887f9d12ffb69c94b2ddab8c1f99ba" class="anchor"></span>
|                                                                                                           |     |     |     |       |
|-----------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.Result.md">Result</a> unity::scopes::PreviewQueryBase::result | (   |     | )   | const |

Get result for this preview request.

Exceptions  
|                       |                                                            |
|-----------------------|------------------------------------------------------------|
| unity::LogicException | if result was not initialized (the default ctor was used). |

<!-- -->

Returns  
result

<span id="a81b89daf29cd1ada55286f2a3a871347" class="anchor"></span>
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
<td>virtual void unity::scopes::PreviewQueryBase::run</td>
<td>(</td>
<td><a href="../unity.scopes.md#a7b46ef0e880da4c75314fe60bdd55754">PreviewReplyProxy</a> const &amp; </td>
<td><em>reply</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Called by scopes runtime to start the preview.

Your implementation of <a href="#a81b89daf29cd1ada55286f2a3a871347" title="Called by scopes runtime to start the preview. ">run()</a> can use the reply proxy to push results for the preview. You can push results from within <a href="#a81b89daf29cd1ada55286f2a3a871347" title="Called by scopes runtime to start the preview. ">run()</a>, in which case the preview implicitly completes when <a href="#a81b89daf29cd1ada55286f2a3a871347" title="Called by scopes runtime to start the preview. ">run()</a> returns. Alternatively, <a href="#a81b89daf29cd1ada55286f2a3a871347" title="Called by scopes runtime to start the preview. ">run()</a> can store the reply proxy and return immediately. In this case, you can use the stored proxy to push results from another thread. It is safe to call `push()` from multiple threads without synchronization.

The preview completes either when <a href="#a81b89daf29cd1ada55286f2a3a871347" title="Called by scopes runtime to start the preview. ">run()</a> returns, or when the last stored reply proxy goes out of scope (whichever happens last).

Parameters  
|       |                                                     |
|-------|-----------------------------------------------------|
| reply | The proxy on which to push results for the preview. |

Implemented in <a href="../unity.scopes.qt.QPreviewQueryBaseAPI.md#ab9aea9df41977a7d999967e525b3b3cf">unity::scopes::qt::QPreviewQueryBaseAPI</a>.

