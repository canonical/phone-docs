---
Title: unity.scopes.ScopeBase
---
        
ScopeBase
=========

Base class for a scope implementation. [More...](#details)

`#include <unity/scopes/ScopeBase.h>`

Inheritance diagram for unity::scopes::ScopeBase:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/8e0d3424-0fb7-464a-b9d6-27dd15e011b9-api/scopes/cpp/sdk-15.04.4/unity.scopes.ScopeBase/classunity_1_1scopes_1_1_scope_base__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual void 
<a href="#ac25f3f326e2cf25de2f2eca18de5926c">start</a> (std::string const &scope\_id)
 
Called by the scopes runtime after the create function completes. More...
 
virtual void 
<a href="#a80c5fec9e985dbb315d780ef2a56bfbf">stop</a> ()
 
Called by the scopes runtime when the scope should shut down. More...
 
virtual void 
<a href="#a386e99b98318a70f25db84bbe11c0292">run</a> ()
 
Called by the scopes runtime after it has called start() to hand a thread of control to the scope. More...
 
virtual SearchQueryBase::UPtr 
<a href="#a0e4969ff26dc1d396d74c56d896fd564">search</a> (<a href="unity.scopes.CannedQuery.md">CannedQuery</a> const &query, <a href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &metadata)=0
 
Called by the scopes runtime when a scope needs to instantiate a query. More...
 
virtual ActivationQueryBase::UPtr 
<a href="#a49a0b9ada0eeb4c71e6a2181c3d8c9e7">activate</a> (<a href="unity.scopes.Result.md">Result</a> const &result, <a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &metadata)
 
Called by the scopes runtime when a scope needs to respond to a result activation request. More...
 
virtual ActivationQueryBase::UPtr 
<a href="#a2f4d476fa790349c9a7de52be3232d11">perform_action</a> (<a href="unity.scopes.Result.md">Result</a> const &result, <a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &metadata, std::string const &widget\_id, std::string const &action\_id)
 
Invoked when a scope is requested to handle a preview action. More...
 
virtual PreviewQueryBase::UPtr 
<a href="#a154b9b4cfc0f40572cfec60dd819396f">preview</a> (<a href="unity.scopes.Result.md">Result</a> const &result, <a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &metadata)=0
 
Invoked when a scope is requested to create a preview for a particular result. More...
 
virtual std::string 
<a href="#a32744a21076d9dacc98362412c6a63d5">scope_directory</a> () const final
 
Returns the directory that stores the scope's configuration files and shared library. More...
 
virtual std::string 
<a href="#a36cfdda42db58da399390e7c5df2385e">cache_directory</a> () const final
 
Returns a directory that is (exclusively) writable for the scope. More...
 
virtual std::string 
<a href="#a4f54564b752a3451e05bd11171abb27e">app_directory</a> () const final
 
Returns a directory that is shared with an app in the same click package. More...
 
virtual std::string 
<a href="#ade8de1dca94e10aa9788624710ab49eb">tmp_directory</a> () const final
 
Returns a tmp directory that is (exclusively) writable for the scope. More...
 
virtual <a href="../unity.scopes.md#a45babc254d3548863d79ee54f266e84d">unity::scopes::RegistryProxy</a> 
<a href="#af874b8b3c5c28dcaacc416076c9dfc35">registry</a> () const final
 
Returns the proxy to the registry. More...
 
virtual <a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> 
<a href="#acddeebb3357c6941b3b77617133cda23">settings</a> () const final
 
Returns a dictionary with the scope's current settings. More...
 
virtual <a href="../unity.scopes.md#a4daaa9ad07daf596af4dacd6e0b7be9a">ChildScopeList</a> 
<a href="#abc864e2fa714b9424a89293fea6972bc">find_child_scopes</a> () const
 
Returns a defaulted list of child scopes aggregated by this scope. More...
 
virtual <a href="../unity.scopes.md#a4daaa9ad07daf596af4dacd6e0b7be9a">ChildScopeList</a> 
<a href="#a4016075ab95bbf1b5dfa1444e9d750e0">child_scopes</a> () const final
 
Returns the current list of child scopes aggregated by this scope. More...
 
virtual ActivationQueryBase::UPtr 
<a href="#a7ac39ca44f4790dd36900657692d0565">activate_result_action</a> (<a href="unity.scopes.Result.md">Result</a> const &result, <a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &metadata, std::string const &action\_id)
 
Invoked when a scope is requested to handle a result in-card action. More...
 
pub-static-methods
--------------------------------------------------------------------

static void 
<a href="#a4cbdf8cb790e6f44e388e70ab456e686">runtime_version</a> (int &v\_major, int &v\_minor, int &v\_micro) noexcept
 
Returns the version information for the scopes API that the scope was linked with.
 
<span id="details"></span>
Detailed Description
--------------------

Base class for a scope implementation.

Scopes are accessed by the scopes runtime as a shared library (one library per scope). Each scope must implement a class that derives from <a href="index.html" title="Base class for a scope implementation. ">ScopeBase</a>, for example:

<span class="preprocessor">\#include &lt;unity/scopes/ScopeBase.h&gt;</span>

<span class="keyword">class </span>MyScope : <span class="keyword">public</span> <a href="index.html" class="code">unity::scopes::ScopeBase</a>

{

<span class="keyword">public</span>:

MyScope();

<span class="keyword">virtual</span> ~MyScope();

<span class="keyword">virtual</span> <span class="keywordtype">void</span> <a href="#ac25f3f326e2cf25de2f2eca18de5926c" class="code">start</a>(std::string <span class="keyword">const</span>& scope\_id); <span class="comment">// Optional</span>

<span class="keyword">virtual</span> <span class="keywordtype">void</span> <a href="#a80c5fec9e985dbb315d780ef2a56bfbf" class="code">stop</a>(); <span class="comment">// Optional</span>

<span class="keyword">virtual</span> <span class="keywordtype">void</span> <a href="#a386e99b98318a70f25db84bbe11c0292" class="code">run</a>(); <span class="comment">// Optional</span>

<span class="comment">// ...</span>

};

In addition, the library must provide two functions with "C" linkage:

-   a create function that must return a pointer to the derived instance
-   a destroy function that is passed the pointer returned by the create function

Typically, the create and destroy functions will simply call `new` and `delete`, respectively. If the create function throws an exception, the destroy function will not be called. If the create function returns NULL, the destroy function *will* be called with NULL as its argument.

Rather than hard-coding the names of the functions, use the UNITY\_SCOPE\_CREATE\_FUNCTION and UNITY\_SCOPE\_DESTROY\_FUNCTION macros, for example:

<a href="index.html" class="code">unity::scopes::ScopeBase</a>\*

UNITY\_SCOPE\_CREATE\_FUNCTION()

{

<span class="keywordflow">return</span> <span class="keyword">new</span> MyScope;

}

<span class="keywordtype">void</span>

UNITY\_SCOPE\_DESTROY\_FUNCTION(unity::scopes::ScopeBase\* scope)

{

<span class="keyword">delete</span> scope;

}

After the scopes runtime has obtained a pointer to the class instance from the create function, it calls <a href="#ac25f3f326e2cf25de2f2eca18de5926c" title="Called by the scopes runtime after the create function completes. ">start()</a>, which allows the scope to intialize itself. This is followed by a call to <a href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a>. The call to <a href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a> is made by a separate thread; its only purpose is to pass a thread of control to the scope, for example, to run an event loop. When the scope should complete its activities, the runtime calls <a href="#a80c5fec9e985dbb315d780ef2a56bfbf" title="Called by the scopes runtime when the scope should shut down. ">stop()</a>. The calls to the create function, <a href="#ac25f3f326e2cf25de2f2eca18de5926c" title="Called by the scopes runtime after the create function completes. ">start()</a>, <a href="#a80c5fec9e985dbb315d780ef2a56bfbf" title="Called by the scopes runtime when the scope should shut down. ">stop()</a>, and the destroy function) are made by the same thread.

The scope implementation, if it does not return from <a href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a>, is expected to return from <a href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a> in response to a call to <a href="#a80c5fec9e985dbb315d780ef2a56bfbf" title="Called by the scopes runtime when the scope should shut down. ">stop()</a> in a timely manner.

Member Function Documentation
-----------------------------

<span id="a49a0b9ada0eeb4c71e6a2181c3d8c9e7" class="anchor"></span>
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
<td>ActivationQueryBase::UPtr unity::scopes::ScopeBase::activate</td>
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
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called by the scopes runtime when a scope needs to respond to a result activation request.

This method must return an instance that is derived from `ActivationQueryBase`. The implementation of this method must return in a timely manner, that is, it should perform only minimal initialization that is guaranteed to complete quickly. The call to <a href="#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">activate()</a> is made by an arbitrary thread. The default implementation returns an instance of <a href="unity.scopes.ActivationQueryBase.md" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a> that responds with ActivationResponse::Status::NotHandled.

Parameters  
|          |                                      |
|----------|--------------------------------------|
| result   | The result that should be activated. |
| metadata | additional data sent by the client.  |

<!-- -->

Returns  
The activation instance.

<span id="a7ac39ca44f4790dd36900657692d0565" class="anchor"></span>
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
<td>ActivationQueryBase::UPtr unity::scopes::ScopeBase::activate_result_action</td>
<td>(</td>
<td><a href="unity.scopes.Result.md">Result</a> const &amp; </td>
<td><em>result</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp; </td>
<td><em>metadata</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>action_id</em> </td>
</tr>
<tr class="even">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Invoked when a scope is requested to handle a result in-card action.

This method must return an instance that is derived from `ActivationQueryBase`. The implementation of this method must return in a timely manner, that is, it should perform only minimal initialization that is guaranteed to complete quickly. The call to <a href="#a7ac39ca44f4790dd36900657692d0565" title="Invoked when a scope is requested to handle a result in-card action. ">activate_result_action()</a> is made by an arbitrary thread. The default implementation returns an instance of <a href="unity.scopes.ActivationQueryBase.md" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a> that responds with ActivationResponse::Status::NotHandled.

Parameters  
|            |                                                  |
|------------|--------------------------------------------------|
| result     | The result whose action was activated.           |
| metadata   | Additional data sent by the client.              |
| action\_id | The identifier of the action that was activated. |

<!-- -->

Returns  
The activation instance.

<span id="a4f54564b752a3451e05bd11171abb27e" class="anchor"></span>
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
<td>std::string unity::scopes::ScopeBase::app_directory</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">final</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Returns a directory that is shared with an app in the same click package.

If a scope and an app share a single click package, this directory and the files in it are writable by the app, and read-only to the scope. This allows the app to write information into the filesystem that can be read by the scope (but not vice versa).

Note  
The app directory is available only after this <a href="index.html" title="Base class for a scope implementation. ">ScopeBase</a> is instantiated; do not call this method from the constructor!

<!-- -->

Returns  
The root directory of a filesystem sub-tree that the scope shares with an application installed from the same click-package.

<!-- -->

Exceptions  
|                |                                                  |
|----------------|--------------------------------------------------|
| LogicException | if called from the constructor of this instance. |

<span id="a36cfdda42db58da399390e7c5df2385e" class="anchor"></span>
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
<td>std::string unity::scopes::ScopeBase::cache_directory</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">final</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Returns a directory that is (exclusively) writable for the scope.

This directory allows scopes to store persistent information, such as cached content or similar.

Note  
The cache directory is available only after this <a href="index.html" title="Base class for a scope implementation. ">ScopeBase</a> is instantiated; do not call this method from the constructor!

<!-- -->

Returns  
The root directory of a filesystem sub-tree that is writable for the scope.

<!-- -->

Exceptions  
|                |                                                  |
|----------------|--------------------------------------------------|
| LogicException | if called from the constructor of this instance. |

<span id="a4016075ab95bbf1b5dfa1444e9d750e0" class="anchor"></span>
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
<td><a href="../unity.scopes.md#a4daaa9ad07daf596af4dacd6e0b7be9a">ChildScopeList</a> unity::scopes::ScopeBase::child_scopes</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">final</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Returns the current list of child scopes aggregated by this scope.

An aggregator should respect the "enabled" states of each child scope, returning results only for the child scopes that are enabled.

Returns  
The list of child scopes aggregated by this scope.

<span id="abc864e2fa714b9424a89293fea6972bc" class="anchor"></span>
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
<td><a href="../unity.scopes.md#a4daaa9ad07daf596af4dacd6e0b7be9a">ChildScopeList</a> unity::scopes::ScopeBase::find_child_scopes</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Returns a defaulted list of child scopes aggregated by this scope.

The scope author must ensure that the list returned by this method contains all scopes that this aggregator may collect results from. The "enabled" state for each child returned should be set to a default value (i.e. whether the child is enabled or disabled by default when newly discovered).

The default behaviour of this method is to simply return all available scopes on the system in enabled state. This translates to: "Any scope may potentially be aggregated by this scope".

Note  
Only aggregator scopes should implement this method.

<!-- -->

Returns  
The list of child scopes aggregated by this scope.

<span id="a2f4d476fa790349c9a7de52be3232d11" class="anchor"></span>
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
<td>ActivationQueryBase::UPtr unity::scopes::ScopeBase::perform_action</td>
<td>(</td>
<td><a href="unity.scopes.Result.md">Result</a> const &amp; </td>
<td><em>result</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp; </td>
<td><em>metadata</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>widget_id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>action_id</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Invoked when a scope is requested to handle a preview action.

This method must return an instance that is derived from `ActivationQueryBase`. The implementation of this method must return in a timely manner, that is, it should perform only minimal initialization that is guaranteed to complete quickly. The call to <a href="#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">activate()</a> is made by an arbitrary thread. The default implementation returns an instance of <a href="unity.scopes.ActivationQueryBase.md" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a> that responds with ActivationResponse::Status::NotHandled.

Parameters  
|            |                                                                 |
|------------|-----------------------------------------------------------------|
| result     | The result that was previewed.                                  |
| metadata   | Additional data sent by client.                                 |
| widget\_id | The identifier of the 'actions' widget of the activated action. |
| action\_id | The identifier of the action that was activated.                |

<!-- -->

Returns  
The activation instance.

<span id="a154b9b4cfc0f40572cfec60dd819396f" class="anchor"></span>
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
<td>virtual PreviewQueryBase::UPtr unity::scopes::ScopeBase::preview</td>
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
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Invoked when a scope is requested to create a preview for a particular result.

This method must return an instance that is derived from `PreviewQueryBase`. The implementation of this method must return in a timely manner, that is, it should perform only minimal initialization that is guaranteed to complete quickly. The call to <a href="#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">activate()</a> is made by an arbitrary thread.

Parameters  
|          |                                      |
|----------|--------------------------------------|
| result   | The result that should be previewed. |
| metadata | Additional data sent by the client.  |

<!-- -->

Returns  
The preview instance.

Implemented in <a href="../unity.scopes.qt.QScopeBaseAPI.md#a839ca01a0085c27edc5ee6fa060f7b75">unity::scopes::qt::QScopeBaseAPI</a>.

<span id="af874b8b3c5c28dcaacc416076c9dfc35" class="anchor"></span>
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
<td><a href="../unity.scopes.md#a45babc254d3548863d79ee54f266e84d">RegistryProxy</a> unity::scopes::ScopeBase::registry</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">final</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Returns the proxy to the registry.

Note  
The registry proxy is available only after this <a href="index.html" title="Base class for a scope implementation. ">ScopeBase</a> is instantiated; do not call this method from the constructor!

<!-- -->

Returns  
The proxy to the registry.

<!-- -->

Exceptions  
|                |                                                  |
|----------------|--------------------------------------------------|
| LogicException | if called from the constructor of this instance. |

<span id="a386e99b98318a70f25db84bbe11c0292" class="anchor"></span>
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
<td>void unity::scopes::ScopeBase::run</td>
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

Called by the scopes runtime after it has called <a href="#ac25f3f326e2cf25de2f2eca18de5926c" title="Called by the scopes runtime after the create function completes. ">start()</a> to hand a thread of control to the scope.

<a href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a> passes a thread of control to the scope to do with as it sees fit, for example, to run an event loop. During finalization, the scopes runtime joins with the thread that called <a href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a>. This means that, if the scope implementation does not return from <a href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a>, it is expected to arrange for <a href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a> to complete in a timely manner in response to a call to <a href="#a80c5fec9e985dbb315d780ef2a56bfbf" title="Called by the scopes runtime when the scope should shut down. ">stop()</a>. Failure to do so will cause deadlock during finalization.

If <a href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a> throws an exception, the runtime handles the exception and calls <a href="#a80c5fec9e985dbb315d780ef2a56bfbf" title="Called by the scopes runtime when the scope should shut down. ">stop()</a> in response.

<span id="a32744a21076d9dacc98362412c6a63d5" class="anchor"></span>
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
<td>std::string unity::scopes::ScopeBase::scope_directory</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">final</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Returns the directory that stores the scope's configuration files and shared library.

Note  
The scope directory is available only after this <a href="index.html" title="Base class for a scope implementation. ">ScopeBase</a> is instantiated; do not call this method from the constructor!

<!-- -->

Returns  
The scope's configuration directory.

<!-- -->

Exceptions  
|                |                                                  |
|----------------|--------------------------------------------------|
| LogicException | if called from the constructor of this instance. |

<span id="a0e4969ff26dc1d396d74c56d896fd564" class="anchor"></span>
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
<td>virtual SearchQueryBase::UPtr unity::scopes::ScopeBase::search</td>
<td>(</td>
<td><a href="unity.scopes.CannedQuery.md">CannedQuery</a> const &amp; </td>
<td><em>query</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &amp; </td>
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
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Called by the scopes runtime when a scope needs to instantiate a query.

This method must return an instance that is derived from `QueryBase`. The implementation of this method must return in a timely manner, that is, it should perform only minimal initialization that is guaranteed to complete quickly. The call to <a href="#a0e4969ff26dc1d396d74c56d896fd564" title="Called by the scopes runtime when a scope needs to instantiate a query. ">search()</a> is made by an arbitrary thread.

Parameters  
|          |                                                                  |
|----------|------------------------------------------------------------------|
| query    | The query string to be executed by the returned object instance. |
| metadata | additional data sent by the client.                              |

<!-- -->

Returns  
The query instance.

Implemented in <a href="../unity.scopes.qt.QScopeBaseAPI.md#ac5023d43f3169eb51283ebd6488da631">unity::scopes::qt::QScopeBaseAPI</a>.

<span id="acddeebb3357c6941b3b77617133cda23" class="anchor"></span>
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
<td><a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">unity::scopes::VariantMap</a> unity::scopes::ScopeBase::settings</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">final</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Returns a dictionary with the scope's current settings.

Instead of storing the return value, it is preferable to call <a href="#acddeebb3357c6941b3b77617133cda23" title="Returns a dictionary with the scope&#39;s current settings. ">settings()</a> each time your implementation requires a settings value. This ensures that, if a user changes settings while the scope is running, the new settings take effect with the next query.

Note  
The settings are available only after this <a href="index.html" title="Base class for a scope implementation. ">ScopeBase</a> is instantiated; do not call this method from the constructor!

<!-- -->

Returns  
The scope's current settings.

<!-- -->

Exceptions  
|                   |                                                  |
|-------------------|--------------------------------------------------|
| LogicException    | if called from the constructor of this instance. |
| ResourceException | if settings database file is corrupted.          |
| FileException     | if settings database file is not readable.       |

<span id="ac25f3f326e2cf25de2f2eca18de5926c" class="anchor"></span>
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
<td>void unity::scopes::ScopeBase::start</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>scope_id</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Called by the scopes runtime after the create function completes.

If <a href="#ac25f3f326e2cf25de2f2eca18de5926c" title="Called by the scopes runtime after the create function completes. ">start()</a> throws an exception, <a href="#a80c5fec9e985dbb315d780ef2a56bfbf" title="Called by the scopes runtime when the scope should shut down. ">stop()</a> will *not* be called.

The call to <a href="#ac25f3f326e2cf25de2f2eca18de5926c" title="Called by the scopes runtime after the create function completes. ">start()</a> is made by the same thread that calls the create function.

Parameters  
|           |                                                                     |
|-----------|---------------------------------------------------------------------|
| scope\_id | The name of the scope as defined by the scope's configuration file. |

Reimplemented in <a href="../unity.scopes.qt.QScopeBaseAPI.md#aefcd8d1262a89d1c9b6c63dbdc8bfcea">unity::scopes::qt::QScopeBaseAPI</a>.

<span id="a80c5fec9e985dbb315d780ef2a56bfbf" class="anchor"></span>
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
<td>void unity::scopes::ScopeBase::stop</td>
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

Called by the scopes runtime when the scope should shut down.

A scope should deallocate as many resources as possible when <a href="#a80c5fec9e985dbb315d780ef2a56bfbf" title="Called by the scopes runtime when the scope should shut down. ">stop()</a> is called, for example, deallocate any caches and close network connections. In addition, if the scope implements <a href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a> and did not return from <a href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a>, it must return from <a href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a> in response to the call to <a href="#a80c5fec9e985dbb315d780ef2a56bfbf" title="Called by the scopes runtime when the scope should shut down. ">stop()</a>.

Exceptions from <a href="#a80c5fec9e985dbb315d780ef2a56bfbf" title="Called by the scopes runtime when the scope should shut down. ">stop()</a> are ignored.

The call to <a href="#a80c5fec9e985dbb315d780ef2a56bfbf" title="Called by the scopes runtime when the scope should shut down. ">stop()</a> is made by the same thread that calls the create function and <a href="#ac25f3f326e2cf25de2f2eca18de5926c" title="Called by the scopes runtime after the create function completes. ">start()</a>.

Reimplemented in <a href="../unity.scopes.qt.QScopeBaseAPI.md#a7cfc17b94cc01761ac53acc1613ab8ce">unity::scopes::qt::QScopeBaseAPI</a>.

<span id="ade8de1dca94e10aa9788624710ab49eb" class="anchor"></span>
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
<td>std::string unity::scopes::ScopeBase::tmp_directory</td>
<td>(</td>
<td></td>
<td>)</td>
<td>const</td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">final</span><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Returns a tmp directory that is (exclusively) writable for the scope.

This directory is periodically cleaned of unused files. The exact amount of time may vary, but is on the order of a few hours. The directory is also cleaned during reboot.

Note  
The tmp directory is available only after this <a href="index.html" title="Base class for a scope implementation. ">ScopeBase</a> is instantiated; do not call this method from the constructor!

<!-- -->

Returns  
A directory for temporary files.

<!-- -->

Exceptions  
|                |                                                  |
|----------------|--------------------------------------------------|
| LogicException | if called from the constructor of this instance. |

