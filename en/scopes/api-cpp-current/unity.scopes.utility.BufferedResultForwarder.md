---
Title: unity.scopes.utility.BufferedResultForwarder
---
        
BufferedResultForwarder
=======================

Base class for a client to receive and buffer the results of a query until another <a href="index.html" title="Base class for a client to receive and buffer the results of a query until another BufferedResultForw...">BufferedResultForwarder</a> becomes ready. [More...](#details)

Inheritance diagram for unity::scopes::utility::BufferedResultForwarder:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/319079d4-6ad1-4dbb-8648-5c4a4832b51f-api/scopes/cpp/sdk-15.04.4/unity.scopes.utility.BufferedResultForwarder/classunity_1_1scopes_1_1utility_1_1_buffered_result_forwarder__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

 
<a href="#acd998587334a306b04e3e3a5e548ff93">BufferedResultForwarder</a> (<a href="../unity.scopes.md#a9cd604d9b842ac3b2b8636c2165dec1f">unity::scopes::SearchReplyProxy</a> const &<a href="#a55fd083a188f5dd2a940b1f280409347">upstream</a>, BufferedResultForwarder::SPtr const &next\_forwarder=BufferedResultForwarder::SPtr())
 
Create a forwarder that sends (at least one) result to its upstream reply proxy before indicating that it is ready to its follower. More...
 
void 
<a href="#af712d8a72e6cd0818ab9d2c3274b25e6">push</a> (<a href="unity.scopes.CategorisedResult.md">CategorisedResult</a> result) override
 
Forwards a single result before calling `set_ready()`. More...
 
bool 
<a href="#a57ee331710c5bbaa806082b2dd8abc23">is_ready</a> () const
 
Check if this forwarder is ready. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/4d72ef98-90e6-43cd-95f7-d638a700bd5e-api/scopes/cpp/sdk-15.04.4/unity.scopes.utility.BufferedResultForwarder/closed.png) Public Member Functions inherited from <a href="unity.scopes.SearchListenerBase.md">unity::scopes::SearchListenerBase</a>
virtual void 
<a href="../unity.scopes.SearchListenerBase.md#a93ba33c6e1a0064ac9756134ccb11705">push</a> (Department::SCPtr const &parent)
 
Called at most once by the scopes runtime for a tree of departments returned by a query. More...
 
virtual void 
<a href="../unity.scopes.SearchListenerBase.md#ab96864e4b3d6718e4b87b81aa14657e3">push</a> (experimental::Annotation annotation)
 
Called once by the scopes runtime for each annotation that is returned by a query(). More...
 
virtual void 
<a href="../unity.scopes.SearchListenerBase.md#af246bd38c8ba9cec36dfae3d0607dbfc">push</a> (Category::SCPtr const &category)
 
Called once by the scopes runtime for each category that is returned by a query(). More...
 
virtual void 
<a href="../unity.scopes.SearchListenerBase.md#ac7904ac1f83fe60cddc8f08c6e7d971b">push</a> (<a href="../unity.scopes.md#adab58c13cf604e0e64bd6b1a745364d3">Filters</a> const &filters, <a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state)
 
Called once by the scopes to send all the filters and their state. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/fb78e954-c283-4ea4-8162-c98ba8d0d64a-api/scopes/cpp/sdk-15.04.4/unity.scopes.utility.BufferedResultForwarder/closed.png) Public Member Functions inherited from <a href="unity.scopes.ListenerBase.md">unity::scopes::ListenerBase</a>
virtual void 
<a href="../unity.scopes.ListenerBase.md#a3b38fa642754142f40968f3ff8d1bdc8">info</a> (<a href="unity.scopes.OperationInfo.md">OperationInfo</a> const &op\_info)
 
Called by the scopes runtime each time a scope reports additional information about the reply to a query. More...
 
pro-methods
---------------------------------------------------------

void 
<a href="#a20816aac742adffdc16b8e8405c61c87">set_ready</a> ()
 
Mark this forwarder as ready. More...
 
<a href="../unity.scopes.md#a9cd604d9b842ac3b2b8636c2165dec1f">unity::scopes::SearchReplyProxy</a> 
<a href="#a55fd083a188f5dd2a940b1f280409347">upstream</a> () const
 
Get the upstream proxy. More...
 
void 
<a href="#a9bd57e76c08a01560a700d665cc40e96">finished</a> (<a href="unity.scopes.CompletionDetails.md">CompletionDetails</a> const &details) override
 
Called once by the scopes runtime after the final result for a request was sent. More...
 
<span id="details"></span>
Detailed Description
--------------------

Base class for a client to receive and buffer the results of a query until another <a href="index.html" title="Base class for a client to receive and buffer the results of a query until another BufferedResultForw...">BufferedResultForwarder</a> becomes ready.

This class implements result buffering, useful for aggregator scopes that receive results from multiple child scopes and need to display categories in a specific order. The aggregator scope must create an instance of <a href="index.html" title="Base class for a client to receive and buffer the results of a query until another BufferedResultForw...">BufferedResultForwarder</a> for every child scope it queries and chain the instances together in the desired order.

The default implementation of <a href="index.html" title="Base class for a client to receive and buffer the results of a query until another BufferedResultForw...">BufferedResultForwarder</a> forwards the results it receives upstream and declares itself "ready" after receiving the first result. The results are then buffered until all prior forwarders have declared themselves ready. Buffering is very efficient—results are buffered only until proper order is guaranteed, and buffering is disabled for forwarders that do not need to wait for a predecessor to become ready. This means that results are pushed to the client (displayed) as early as possible.

The default implementation only pushes results and their categories, but ignores departments, filters, and annotations. If you wish to handle and forward these, you must to derive your own forwarder from <a href="index.html" title="Base class for a client to receive and buffer the results of a query until another BufferedResultForw...">BufferedResultForwarder</a> and override the appropropriate methods of the <a href="unity.scopes.SearchListenerBase.md">SearchListenerBase</a> class.

The default implementation buffers a single result before indicating to its follower that it is ready. This means that the first category from each child determines overall order. For example, if each child produces results for a single category, the chaining insures the correct order (results from child A followed by results from child B, or vice versa). However, if child A produces results for categories A1 and A2, and child B produces results for categories B1 and B2, the overall order could, for example, be A1, B1, A2, B2, or it could be A1, A2, B1, B2, or it could be A1, B2, B1, A2 (among others).

If you want to ensure that all categories from child A arrive in a particular order, followed by all categories from child B in a particular order, you must override <a href="#af712d8a72e6cd0818ab9d2c3274b25e6">push()</a> to, for example, collapse categories received from a child into a single category, or otherwise buffer results yourself until you have established the order you need.

Note that buffering fundamentally conflicts with the need to render results as soon as possible. You should avoid buffering more data than absolutely necessary in order for the display to start updating as soon as possible after a query was sent.

If you create a custom implementation of a forwarder, you *must* push results via the proxy returned by <a href="#a55fd083a188f5dd2a940b1f280409347" title="Get the upstream proxy. ">BufferedResultForwarder::upstream()</a>. (This is a different proxy than the one that is passed to the constructor.) Your forwarder then must declare itself ready by calling <a href="#a20816aac742adffdc16b8e8405c61c87" title="Mark this forwarder as ready. ">BufferedResultForwarder::set_ready()</a> as soon as it knows it will not push results for any new categories. In the case where your aggregator aggregates all results from given child scope into a single category, you can call `set_ready()` as soon as you have pushed the first result.

Here is a code example that shows how to write a result forwarder that creates a separate category for results from each of three children and controls the order in which these categories are rendered.

<span class="keyword">class </span>SearchReceiver : <span class="keyword">public</span> <a href="#acd998587334a306b04e3e3a5e548ff93" class="code">BufferedResultForwarder</a>

{

<span class="keyword">public</span>:

SearchReceiver(unity::scopes::Category::SCPtr target\_cat, <a href="../unity.scopes.md#a9cd604d9b842ac3b2b8636c2165dec1f" class="code">unity::scopes::SearchReplyProxy</a> <span class="keyword">const</span>& <a href="#a55fd083a188f5dd2a940b1f280409347" class="code">upstream</a>, BufferedResultForwarder::SPtr <span class="keyword">const</span>&

next\_forwarder = BufferedResultForwarder::SPtr())

: <a href="#acd998587334a306b04e3e3a5e548ff93" class="code">BufferedResultForwarder</a>(upstream, next\_forwarder),

category\_(target\_cat)

{

}

<span class="keywordtype">void</span> <a href="#af712d8a72e6cd0818ab9d2c3274b25e6" class="code">push</a>(CategorisedResult result)<span class="keyword"> override</span>

<span class="keyword"> </span>{

result.set\_category(category\_); <span class="comment">// put all incoming results in single category</span>

<a href="#a55fd083a188f5dd2a940b1f280409347" class="code">upstream</a>()-&gt;push(result); <span class="comment">// push modified result to the client</span>

<span class="comment">// we push into a single target category, so we're ready as soon as we received and pushed first result</span>

<a href="#a20816aac742adffdc16b8e8405c61c87" class="code">set_ready</a>();

}

<span class="keyword">private</span>:

unity::scopes::Category::SCPtr category\_;

};

<span class="keywordtype">void</span> AggregatorSearchQueryBase::run(<a href="../unity.scopes.md#a9cd604d9b842ac3b2b8636c2165dec1f" class="code">SearchReplyProxy</a> <span class="keyword">const</span>& upstream\_reply)

{

<span class="keyword">auto</span> cat1 = upstream\_reply-&gt;register\_category(<span class="stringliteral">"cat1"</span>, <span class="stringliteral">"Results from scope 1"</span>, <span class="stringliteral">""</span>, CategoryRenderer());

<span class="keyword">auto</span> cat2 = upstream\_reply-&gt;register\_category(<span class="stringliteral">"cat2"</span>, <span class="stringliteral">"Results from scope 2"</span>, <span class="stringliteral">""</span>, CategoryRenderer());

<span class="keyword">auto</span> cat3 = upstream\_reply-&gt;register\_category(<span class="stringliteral">"cat3"</span>, <span class="stringliteral">"Results from scope 3"</span>, <span class="stringliteral">""</span>, CategoryRenderer());

<span class="comment">// note: the order of construction is reversed</span>

<span class="keyword">auto</span> scope3fwd = std::make\_shared&lt;SearchReceiver&gt;(cat3, upstream\_reply);

<span class="keyword">auto</span> scope2fwd = std::make\_shared&lt;SearchReceiver&gt;(cat2, upstream\_reply, scope3fwd);

<span class="keyword">auto</span> scope1fwd = std::make\_shared&lt;SearchReceiver&gt;(cat1, upstream\_reply, scope2fwd);

<span class="comment">// invoke search for child scopes; make sure you do this only after all forwarders are created</span>

subsearch(scope1proxy, <span class="stringliteral">""</span>, scope1fwd);

subsearch(scope2proxy, <span class="stringliteral">""</span>, scope2fwd);

subsearch(scope3proxy, <span class="stringliteral">""</span>, scope3fwd);

}

See also  
<a href="unity.scopes.SearchListenerBase.md" title="Abstract base interface for a client to receive the results of a query. ">SearchListenerBase</a>.

Constructor & Destructor Documentation
--------------------------------------

<span id="acd998587334a306b04e3e3a5e548ff93" class="anchor"></span>
|                                                                          |     |                                                                                                                                |                                                        |
|--------------------------------------------------------------------------|-----|--------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------|
| unity::scopes::utility::BufferedResultForwarder::BufferedResultForwarder | (   | <a href="../unity.scopes.md#a9cd604d9b842ac3b2b8636c2165dec1f">unity::scopes::SearchReplyProxy</a> const &  | *upstream*,                                            |
|                                                                          |     | BufferedResultForwarder::SPtr const &                                                                                          | *next\_forwarder* = `BufferedResultForwarder::SPtr()`  |
|                                                                          | )   |                                                                                                                                |                                                        |

Create a forwarder that sends (at least one) result to its upstream reply proxy before indicating that it is ready to its follower.

Parameters  
|                 |                                                                                                                                                                                      |
|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| upstream        | The reply proxy for the upstream receiver.                                                                                                                                           |
| next\_forwarder | The forwarder that becomes ready once this forwarder calls <a href="#a20816aac742adffdc16b8e8405c61c87" title="Mark this forwarder as ready. ">set_ready()</a>. |

<!-- -->

Exceptions  
|                       |                                                                                                                                                                                                                                                   |
|-----------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::LogicException | when passed next\_forwarder that has already been linked to another <a href="index.html" title="Base class for a client to receive and buffer the results of a query until another BufferedResultForw...">BufferedResultForwarder</a>. |

Member Function Documentation
-----------------------------

<span id="a9bd57e76c08a01560a700d665cc40e96" class="anchor"></span>
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
<td>void unity::scopes::utility::BufferedResultForwarder::finished</td>
<td>(</td>
<td><a href="unity.scopes.CompletionDetails.md">CompletionDetails</a> const &amp; </td>
<td><em>details</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">override</span><span class="mlabel">protected</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called once by the scopes runtime after the final result for a request was sent.

Calls to <a href="#a9bd57e76c08a01560a700d665cc40e96" title="Called once by the scopes runtime after the final result for a request was sent. ">finished()</a> are made by an arbitrary thread.

Exceptions thrown from <a href="#a9bd57e76c08a01560a700d665cc40e96" title="Called once by the scopes runtime after the final result for a request was sent. ">finished()</a> are ignored.

Parameters  
|         |                                                                                                                                       |
|---------|---------------------------------------------------------------------------------------------------------------------------------------|
| details | Contains details about the completion status of a query as well as any additional information regarding the operation of the request. |

Implements <a href="../unity.scopes.ListenerBase.md#afb44937749b61c9e3ebfa20ec6e4634b">unity::scopes::ListenerBase</a>.

<span id="a57ee331710c5bbaa806082b2dd8abc23" class="anchor"></span>
|                                                                 |     |     |     |       |
|-----------------------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::utility::BufferedResultForwarder::is\_ready | (   |     | )   | const |

Check if this forwarder is ready.

Once ready, the forwarder no longer buffers any results and passes them to the upstream proxy immediately.

Returns  
`true` if this forwarder called <a href="#a20816aac742adffdc16b8e8405c61c87" title="Mark this forwarder as ready. ">set_ready()</a>, `false` otherwise.

<span id="af712d8a72e6cd0818ab9d2c3274b25e6" class="anchor"></span>
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
<td>void unity::scopes::utility::BufferedResultForwarder::push</td>
<td>(</td>
<td><a href="unity.scopes.CategorisedResult.md">CategorisedResult</a> </td>
<td><em>result</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">override</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Forwards a single result before calling `set_ready()`.

This default implementation forwards incoming results unchanged to the upstream reply proxy and marks the forwarder ready after forwarding the first result.

This method is called once by the scopes run time for each result that is returned by a query().

Parameters  
|        |                      |
|--------|----------------------|
| result | The received result. |

Implements <a href="../unity.scopes.SearchListenerBase.md#a3ebd3e8be67824c7a34068da6075bd99">unity::scopes::SearchListenerBase</a>.

<span id="a20816aac742adffdc16b8e8405c61c87" class="anchor"></span>
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
<td>void unity::scopes::utility::BufferedResultForwarder::set_ready</td>
<td>(</td>
<td></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">protected</span></span></td>
</tr>
</tbody>
</table>

Mark this forwarder as ready.

If you create a custom forwarder, you should call this method as soon as your forwarder will no longer push results for new categories.

<span id="a55fd083a188f5dd2a940b1f280409347" class="anchor"></span>
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
<td><a href="../unity.scopes.md#a9cd604d9b842ac3b2b8636c2165dec1f">unity::scopes::SearchReplyProxy</a> unity::scopes::utility::BufferedResultForwarder::upstream</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">protected</span></span></td>
</tr>
</tbody>
</table>

Get the upstream proxy.

Returns an instance of buffered reply proxy for all push, register\_departments, and register\_category operations. Note that this proxy is *not* the same proxy as the one passed to the constructor.

Returns  
The buffered reply proxy.

