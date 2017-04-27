---
Title: unity.scopes.ScopeBase
---

# unity.scopes.ScopeBase

<p>Base class for a scope implementation.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/ScopeBase.h&gt;</code></p>
Inheritance diagram for unity::scopes::ScopeBase:
<img src="../../../media/classunity_1_1scopes_1_1_scope_base__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:ac25f3f326e2cf25de2f2eca18de5926c"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac25f3f326e2cf25de2f2eca18de5926c">start</a> (std::string const &amp;scope_id)</td></tr>
<tr class="memdesc:ac25f3f326e2cf25de2f2eca18de5926c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes runtime after the create function completes.  More...<br /></td></tr>
<tr class="separator:ac25f3f326e2cf25de2f2eca18de5926c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a80c5fec9e985dbb315d780ef2a56bfbf"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a80c5fec9e985dbb315d780ef2a56bfbf">stop</a> ()</td></tr>
<tr class="memdesc:a80c5fec9e985dbb315d780ef2a56bfbf"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes runtime when the scope should shut down.  More...<br /></td></tr>
<tr class="separator:a80c5fec9e985dbb315d780ef2a56bfbf"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a386e99b98318a70f25db84bbe11c0292"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a386e99b98318a70f25db84bbe11c0292">run</a> ()</td></tr>
<tr class="memdesc:a386e99b98318a70f25db84bbe11c0292"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes runtime after it has called start() to hand a thread of control to the scope.  More...<br /></td></tr>
<tr class="separator:a386e99b98318a70f25db84bbe11c0292"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0e4969ff26dc1d396d74c56d896fd564"><td class="memItemLeft" align="right" valign="top">virtual SearchQueryBase::UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a0e4969ff26dc1d396d74c56d896fd564">search</a> (<a class="el" href="unity.scopes.CannedQuery.md">CannedQuery</a> const &amp;query, <a class="el" href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &amp;metadata)=0</td></tr>
<tr class="memdesc:a0e4969ff26dc1d396d74c56d896fd564"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes runtime when a scope needs to instantiate a query.  More...<br /></td></tr>
<tr class="separator:a0e4969ff26dc1d396d74c56d896fd564"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a49a0b9ada0eeb4c71e6a2181c3d8c9e7"><td class="memItemLeft" align="right" valign="top">virtual ActivationQueryBase::UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a49a0b9ada0eeb4c71e6a2181c3d8c9e7">activate</a> (<a class="el" href="unity.scopes.Result.md">Result</a> const &amp;result, <a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;metadata)</td></tr>
<tr class="memdesc:a49a0b9ada0eeb4c71e6a2181c3d8c9e7"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes runtime when a scope needs to respond to a result activation request.  More...<br /></td></tr>
<tr class="separator:a49a0b9ada0eeb4c71e6a2181c3d8c9e7"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2f4d476fa790349c9a7de52be3232d11"><td class="memItemLeft" align="right" valign="top">virtual ActivationQueryBase::UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a2f4d476fa790349c9a7de52be3232d11">perform_action</a> (<a class="el" href="unity.scopes.Result.md">Result</a> const &amp;result, <a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;metadata, std::string const &amp;widget_id, std::string const &amp;action_id)</td></tr>
<tr class="memdesc:a2f4d476fa790349c9a7de52be3232d11"><td class="mdescLeft">&#160;</td><td class="mdescRight">Invoked when a scope is requested to handle a preview action.  More...<br /></td></tr>
<tr class="separator:a2f4d476fa790349c9a7de52be3232d11"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a154b9b4cfc0f40572cfec60dd819396f"><td class="memItemLeft" align="right" valign="top">virtual PreviewQueryBase::UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a154b9b4cfc0f40572cfec60dd819396f">preview</a> (<a class="el" href="unity.scopes.Result.md">Result</a> const &amp;result, <a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;metadata)=0</td></tr>
<tr class="memdesc:a154b9b4cfc0f40572cfec60dd819396f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Invoked when a scope is requested to create a preview for a particular result.  More...<br /></td></tr>
<tr class="separator:a154b9b4cfc0f40572cfec60dd819396f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a32744a21076d9dacc98362412c6a63d5"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a32744a21076d9dacc98362412c6a63d5">scope_directory</a> () const final</td></tr>
<tr class="memdesc:a32744a21076d9dacc98362412c6a63d5"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the directory that stores the scope's configuration files and shared library.  More...<br /></td></tr>
<tr class="separator:a32744a21076d9dacc98362412c6a63d5"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a36cfdda42db58da399390e7c5df2385e"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a36cfdda42db58da399390e7c5df2385e">cache_directory</a> () const final</td></tr>
<tr class="memdesc:a36cfdda42db58da399390e7c5df2385e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a directory that is (exclusively) writable for the scope.  More...<br /></td></tr>
<tr class="separator:a36cfdda42db58da399390e7c5df2385e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4f54564b752a3451e05bd11171abb27e"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a4f54564b752a3451e05bd11171abb27e">app_directory</a> () const final</td></tr>
<tr class="memdesc:a4f54564b752a3451e05bd11171abb27e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a directory that is shared with an app in the same click package.  More...<br /></td></tr>
<tr class="separator:a4f54564b752a3451e05bd11171abb27e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ade8de1dca94e10aa9788624710ab49eb"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ade8de1dca94e10aa9788624710ab49eb">tmp_directory</a> () const final</td></tr>
<tr class="memdesc:ade8de1dca94e10aa9788624710ab49eb"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a tmp directory that is (exclusively) writable for the scope.  More...<br /></td></tr>
<tr class="separator:ade8de1dca94e10aa9788624710ab49eb"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af874b8b3c5c28dcaacc416076c9dfc35"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.md#a45babc254d3548863d79ee54f266e84d">unity::scopes::RegistryProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af874b8b3c5c28dcaacc416076c9dfc35">registry</a> () const final</td></tr>
<tr class="memdesc:af874b8b3c5c28dcaacc416076c9dfc35"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the proxy to the registry.  More...<br /></td></tr>
<tr class="separator:af874b8b3c5c28dcaacc416076c9dfc35"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acddeebb3357c6941b3b77617133cda23"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#acddeebb3357c6941b3b77617133cda23">settings</a> () const final</td></tr>
<tr class="memdesc:acddeebb3357c6941b3b77617133cda23"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a dictionary with the scope's current settings.  More...<br /></td></tr>
<tr class="separator:acddeebb3357c6941b3b77617133cda23"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:abc864e2fa714b9424a89293fea6972bc"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.md#a4daaa9ad07daf596af4dacd6e0b7be9a">ChildScopeList</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#abc864e2fa714b9424a89293fea6972bc">find_child_scopes</a> () const </td></tr>
<tr class="memdesc:abc864e2fa714b9424a89293fea6972bc"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a defaulted list of child scopes aggregated by this scope.  More...<br /></td></tr>
<tr class="separator:abc864e2fa714b9424a89293fea6972bc"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4016075ab95bbf1b5dfa1444e9d750e0"><td class="memItemLeft" align="right" valign="top">virtual <a class="el" href="unity.scopes.md#a4daaa9ad07daf596af4dacd6e0b7be9a">ChildScopeList</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a4016075ab95bbf1b5dfa1444e9d750e0">child_scopes</a> () const final</td></tr>
<tr class="memdesc:a4016075ab95bbf1b5dfa1444e9d750e0"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the current list of child scopes aggregated by this scope.  More...<br /></td></tr>
<tr class="separator:a4016075ab95bbf1b5dfa1444e9d750e0"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7ac39ca44f4790dd36900657692d0565"><td class="memItemLeft" align="right" valign="top">virtual ActivationQueryBase::UPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7ac39ca44f4790dd36900657692d0565">activate_result_action</a> (<a class="el" href="unity.scopes.Result.md">Result</a> const &amp;result, <a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;metadata, std::string const &amp;action_id)</td></tr>
<tr class="memdesc:a7ac39ca44f4790dd36900657692d0565"><td class="mdescLeft">&#160;</td><td class="mdescRight">Invoked when a scope is requested to handle a result in-card action.  More...<br /></td></tr>
<tr class="separator:a7ac39ca44f4790dd36900657692d0565"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Static Public Member Functions</h2></td></tr>
<tr class="memitem:a4cbdf8cb790e6f44e388e70ab456e686"><td class="memItemLeft" align="right" valign="top">
static void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a4cbdf8cb790e6f44e388e70ab456e686">runtime_version</a> (int &amp;v_major, int &amp;v_minor, int &amp;v_micro) noexcept</td></tr>
<tr class="memdesc:a4cbdf8cb790e6f44e388e70ab456e686"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the version information for the scopes API that the scope was linked with. <br /></td></tr>
<tr class="separator:a4cbdf8cb790e6f44e388e70ab456e686"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Base class for a scope implementation. </p>
<p>Scopes are accessed by the scopes runtime as a shared library (one library per scope). Each scope must implement a class that derives from <a class="el" href="index.html" title="Base class for a scope implementation. ">ScopeBase</a>, for example:</p>
```
<span class="preprocessor">#include &lt;unity/scopes/ScopeBase.h&gt;</span>
<span class="keyword">class </span>MyScope : <span class="keyword">public</span> <a class="code" href="index.html">unity::scopes::ScopeBase</a>
{
<span class="keyword">public</span>:
MyScope();
<span class="keyword">virtual</span> ~MyScope();
<span class="keyword">virtual</span> <span class="keywordtype">void</span> <a class="code" href="#ac25f3f326e2cf25de2f2eca18de5926c">start</a>(std::string <span class="keyword">const</span>&amp; scope_id);   <span class="comment">// Optional</span>
<span class="keyword">virtual</span> <span class="keywordtype">void</span> <a class="code" href="#a80c5fec9e985dbb315d780ef2a56bfbf">stop</a>();                               <span class="comment">// Optional</span>
<span class="keyword">virtual</span> <span class="keywordtype">void</span> <a class="code" href="#a386e99b98318a70f25db84bbe11c0292">run</a>();                                <span class="comment">// Optional</span>
<span class="comment">// ...</span>
};
```
<p>In addition, the library must provide two functions with "C" linkage:</p><ul>
<li>a create function that must return a pointer to the derived instance</li>
<li>a destroy function that is passed the pointer returned by the create function</li>
</ul>
<p>Typically, the create and destroy functions will simply call <code>new</code> and <code>delete</code>, respectively. If the create function throws an exception, the destroy function will not be called. If the create function returns NULL, the destroy function <em>will</em> be called with NULL as its argument.</p>
<p>Rather than hard-coding the names of the functions, use the UNITY_SCOPE_CREATE_FUNCTION and UNITY_SCOPE_DESTROY_FUNCTION macros, for example:</p>
```
<a class="code" href="index.html">unity::scopes::ScopeBase</a>*
UNITY_SCOPE_CREATE_FUNCTION()
{
<span class="keywordflow">return</span> <span class="keyword">new</span> MyScope;
}
<span class="keywordtype">void</span>
UNITY_SCOPE_DESTROY_FUNCTION(unity::scopes::ScopeBase* scope)
{
<span class="keyword">delete</span> scope;
}
```
<p>After the scopes runtime has obtained a pointer to the class instance from the create function, it calls <a class="el" href="#ac25f3f326e2cf25de2f2eca18de5926c" title="Called by the scopes runtime after the create function completes. ">start()</a>, which allows the scope to intialize itself. This is followed by a call to <a class="el" href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a>. The call to <a class="el" href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a> is made by a separate thread; its only purpose is to pass a thread of control to the scope, for example, to run an event loop. When the scope should complete its activities, the runtime calls <a class="el" href="#a80c5fec9e985dbb315d780ef2a56bfbf" title="Called by the scopes runtime when the scope should shut down. ">stop()</a>. The calls to the create function, <a class="el" href="#ac25f3f326e2cf25de2f2eca18de5926c" title="Called by the scopes runtime after the create function completes. ">start()</a>, <a class="el" href="#a80c5fec9e985dbb315d780ef2a56bfbf" title="Called by the scopes runtime when the scope should shut down. ">stop()</a>, and the destroy function) are made by the same thread.</p>
<p>The scope implementation, if it does not return from <a class="el" href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a>, is expected to return from <a class="el" href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a> in response to a call to <a class="el" href="#a80c5fec9e985dbb315d780ef2a56bfbf" title="Called by the scopes runtime when the scope should shut down. ">stop()</a> in a timely manner. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">ActivationQueryBase::UPtr unity::scopes::ScopeBase::activate </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.Result.md">Result</a> const &amp;&#160;</td>
<td class="paramname"><em>result</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;&#160;</td>
<td class="paramname"><em>metadata</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Called by the scopes runtime when a scope needs to respond to a result activation request. </p>
<p>This method must return an instance that is derived from <code><a class="el" href="unity.scopes.ActivationQueryBase.md" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a></code>. The implementation of this method must return in a timely manner, that is, it should perform only minimal initialization that is guaranteed to complete quickly. The call to <a class="el" href="#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">activate()</a> is made by an arbitrary thread. The default implementation returns an instance of <a class="el" href="unity.scopes.ActivationQueryBase.md" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a> that responds with ActivationResponse::Status::NotHandled. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">result</td><td>The result that should be activated. </td></tr>
<tr><td class="paramname">metadata</td><td>additional data sent by the client. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>The activation instance. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">ActivationQueryBase::UPtr unity::scopes::ScopeBase::activate_result_action </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.Result.md">Result</a> const &amp;&#160;</td>
<td class="paramname"><em>result</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;&#160;</td>
<td class="paramname"><em>metadata</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>action_id</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Invoked when a scope is requested to handle a result in-card action. </p>
<p>This method must return an instance that is derived from <code><a class="el" href="unity.scopes.ActivationQueryBase.md" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a></code>. The implementation of this method must return in a timely manner, that is, it should perform only minimal initialization that is guaranteed to complete quickly. The call to <a class="el" href="#a7ac39ca44f4790dd36900657692d0565" title="Invoked when a scope is requested to handle a result in-card action. ">activate_result_action()</a> is made by an arbitrary thread. The default implementation returns an instance of <a class="el" href="unity.scopes.ActivationQueryBase.md" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a> that responds with ActivationResponse::Status::NotHandled. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">result</td><td>The result whose action was activated. </td></tr>
<tr><td class="paramname">metadata</td><td>Additional data sent by the client. </td></tr>
<tr><td class="paramname">action_id</td><td>The identifier of the action that was activated. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>The activation instance. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::ScopeBase::app_directory </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">final</span><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Returns a directory that is shared with an app in the same click package. </p>
<p>If a scope and an app share a single click package, this directory and the files in it are writable by the app, and read-only to the scope. This allows the app to write information into the filesystem that can be read by the scope (but not vice versa).</p>
<dl class="section note"><dt>Note</dt><dd>The app directory is available only after this <a class="el" href="index.html" title="Base class for a scope implementation. ">ScopeBase</a> is instantiated; do not call this method from the constructor!</dd></dl>
<dl class="section return"><dt>Returns</dt><dd>The root directory of a filesystem sub-tree that the scope shares with an application installed from the same click-package. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">LogicException</td><td>if called from the constructor of this instance. </td></tr>
</table>
</dd>
</dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::ScopeBase::cache_directory </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">final</span><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Returns a directory that is (exclusively) writable for the scope. </p>
<p>This directory allows scopes to store persistent information, such as cached content or similar.</p>
<dl class="section note"><dt>Note</dt><dd>The cache directory is available only after this <a class="el" href="index.html" title="Base class for a scope implementation. ">ScopeBase</a> is instantiated; do not call this method from the constructor!</dd></dl>
<dl class="section return"><dt>Returns</dt><dd>The root directory of a filesystem sub-tree that is writable for the scope. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">LogicException</td><td>if called from the constructor of this instance. </td></tr>
</table>
</dd>
</dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.md#a4daaa9ad07daf596af4dacd6e0b7be9a">ChildScopeList</a> unity::scopes::ScopeBase::child_scopes </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">final</span><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Returns the current list of child scopes aggregated by this scope. </p>
<p>An aggregator should respect the "enabled" states of each child scope, returning results only for the child scopes that are enabled.</p>
<dl class="section return"><dt>Returns</dt><dd>The list of child scopes aggregated by this scope. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.md#a4daaa9ad07daf596af4dacd6e0b7be9a">ChildScopeList</a> unity::scopes::ScopeBase::find_child_scopes </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Returns a defaulted list of child scopes aggregated by this scope. </p>
<p>The scope author must ensure that the list returned by this method contains all scopes that this aggregator may collect results from. The "enabled" state for each child returned should be set to a default value (i.e. whether the child is enabled or disabled by default when newly discovered).</p>
<p>The default behaviour of this method is to simply return all available scopes on the system in enabled state. This translates to: "Any scope may potentially be aggregated
by this scope".</p>
<dl class="section note"><dt>Note</dt><dd>Only aggregator scopes should implement this method.</dd></dl>
<dl class="section return"><dt>Returns</dt><dd>The list of child scopes aggregated by this scope. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">ActivationQueryBase::UPtr unity::scopes::ScopeBase::perform_action </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.Result.md">Result</a> const &amp;&#160;</td>
<td class="paramname"><em>result</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;&#160;</td>
<td class="paramname"><em>metadata</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>widget_id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>action_id</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Invoked when a scope is requested to handle a preview action. </p>
<p>This method must return an instance that is derived from <code><a class="el" href="unity.scopes.ActivationQueryBase.md" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a></code>. The implementation of this method must return in a timely manner, that is, it should perform only minimal initialization that is guaranteed to complete quickly. The call to <a class="el" href="#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">activate()</a> is made by an arbitrary thread. The default implementation returns an instance of <a class="el" href="unity.scopes.ActivationQueryBase.md" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a> that responds with ActivationResponse::Status::NotHandled. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">result</td><td>The result that was previewed. </td></tr>
<tr><td class="paramname">metadata</td><td>Additional data sent by client. </td></tr>
<tr><td class="paramname">widget_id</td><td>The identifier of the 'actions' widget of the activated action. </td></tr>
<tr><td class="paramname">action_id</td><td>The identifier of the action that was activated. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>The activation instance. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual PreviewQueryBase::UPtr unity::scopes::ScopeBase::preview </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.Result.md">Result</a> const &amp;&#160;</td>
<td class="paramname"><em>result</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.ActionMetadata.md">ActionMetadata</a> const &amp;&#160;</td>
<td class="paramname"><em>metadata</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Invoked when a scope is requested to create a preview for a particular result. </p>
<p>This method must return an instance that is derived from <code><a class="el" href="unity.scopes.PreviewQueryBase.md" title="Abstract base class to represent a particular preview. ">PreviewQueryBase</a></code>. The implementation of this method must return in a timely manner, that is, it should perform only minimal initialization that is guaranteed to complete quickly. The call to <a class="el" href="#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">activate()</a> is made by an arbitrary thread. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">result</td><td>The result that should be previewed. </td></tr>
<tr><td class="paramname">metadata</td><td>Additional data sent by the client. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>The preview instance. </dd></dl>
<p>Implemented in <a class="el" href="unity.scopes.qt.QScopeBaseAPI.md#a839ca01a0085c27edc5ee6fa060f7b75">unity::scopes::qt::QScopeBaseAPI</a>.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.md#a45babc254d3548863d79ee54f266e84d">RegistryProxy</a> unity::scopes::ScopeBase::registry </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">final</span><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Returns the proxy to the registry. </p>
<dl class="section note"><dt>Note</dt><dd>The registry proxy is available only after this <a class="el" href="index.html" title="Base class for a scope implementation. ">ScopeBase</a> is instantiated; do not call this method from the constructor!</dd></dl>
<dl class="section return"><dt>Returns</dt><dd>The proxy to the registry. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">LogicException</td><td>if called from the constructor of this instance. </td></tr>
</table>
</dd>
</dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">void unity::scopes::ScopeBase::run </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Called by the scopes runtime after it has called <a class="el" href="#ac25f3f326e2cf25de2f2eca18de5926c" title="Called by the scopes runtime after the create function completes. ">start()</a> to hand a thread of control to the scope. </p>
<p><a class="el" href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a> passes a thread of control to the scope to do with as it sees fit, for example, to run an event loop. During finalization, the scopes runtime joins with the thread that called <a class="el" href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a>. This means that, if the scope implementation does not return from <a class="el" href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a>, it is expected to arrange for <a class="el" href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a> to complete in a timely manner in response to a call to <a class="el" href="#a80c5fec9e985dbb315d780ef2a56bfbf" title="Called by the scopes runtime when the scope should shut down. ">stop()</a>. Failure to do so will cause deadlock during finalization.</p>
<p>If <a class="el" href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a> throws an exception, the runtime handles the exception and calls <a class="el" href="#a80c5fec9e985dbb315d780ef2a56bfbf" title="Called by the scopes runtime when the scope should shut down. ">stop()</a> in response. </p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::ScopeBase::scope_directory </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">final</span><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Returns the directory that stores the scope's configuration files and shared library. </p>
<dl class="section note"><dt>Note</dt><dd>The scope directory is available only after this <a class="el" href="index.html" title="Base class for a scope implementation. ">ScopeBase</a> is instantiated; do not call this method from the constructor!</dd></dl>
<dl class="section return"><dt>Returns</dt><dd>The scope's configuration directory. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">LogicException</td><td>if called from the constructor of this instance. </td></tr>
</table>
</dd>
</dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual SearchQueryBase::UPtr unity::scopes::ScopeBase::search </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.CannedQuery.md">CannedQuery</a> const &amp;&#160;</td>
<td class="paramname"><em>query</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.SearchMetadata.md">SearchMetadata</a> const &amp;&#160;</td>
<td class="paramname"><em>metadata</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Called by the scopes runtime when a scope needs to instantiate a query. </p>
<p>This method must return an instance that is derived from <code><a class="el" href="unity.scopes.QueryBase.md" title="Abstract server-side base interface for a query that is executed inside a scope. ">QueryBase</a></code>. The implementation of this method must return in a timely manner, that is, it should perform only minimal initialization that is guaranteed to complete quickly. The call to <a class="el" href="#a0e4969ff26dc1d396d74c56d896fd564" title="Called by the scopes runtime when a scope needs to instantiate a query. ">search()</a> is made by an arbitrary thread. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">query</td><td>The query string to be executed by the returned object instance. </td></tr>
<tr><td class="paramname">metadata</td><td>additional data sent by the client. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>The query instance. </dd></dl>
<p>Implemented in <a class="el" href="unity.scopes.qt.QScopeBaseAPI.md#ac5023d43f3169eb51283ebd6488da631">unity::scopes::qt::QScopeBaseAPI</a>.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">unity::scopes::VariantMap</a> unity::scopes::ScopeBase::settings </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">final</span><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Returns a dictionary with the scope's current settings. </p>
<p>Instead of storing the return value, it is preferable to call <a class="el" href="#acddeebb3357c6941b3b77617133cda23" title="Returns a dictionary with the scope&#39;s current settings. ">settings()</a> each time your implementation requires a settings value. This ensures that, if a user changes settings while the scope is running, the new settings take effect with the next query.</p>
<dl class="section note"><dt>Note</dt><dd>The settings are available only after this <a class="el" href="index.html" title="Base class for a scope implementation. ">ScopeBase</a> is instantiated; do not call this method from the constructor!</dd></dl>
<dl class="section return"><dt>Returns</dt><dd>The scope's current settings. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">LogicException</td><td>if called from the constructor of this instance. </td></tr>
<tr><td class="paramname">ResourceException</td><td>if settings database file is corrupted. </td></tr>
<tr><td class="paramname">FileException</td><td>if settings database file is not readable. </td></tr>
</table>
</dd>
</dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">void unity::scopes::ScopeBase::start </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>scope_id</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Called by the scopes runtime after the create function completes. </p>
<p>If <a class="el" href="#ac25f3f326e2cf25de2f2eca18de5926c" title="Called by the scopes runtime after the create function completes. ">start()</a> throws an exception, <a class="el" href="#a80c5fec9e985dbb315d780ef2a56bfbf" title="Called by the scopes runtime when the scope should shut down. ">stop()</a> will <em>not</em> be called.</p>
<p>The call to <a class="el" href="#ac25f3f326e2cf25de2f2eca18de5926c" title="Called by the scopes runtime after the create function completes. ">start()</a> is made by the same thread that calls the create function.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">scope_id</td><td>The name of the scope as defined by the scope's configuration file. </td></tr>
</table>
</dd>
</dl>
<p>Reimplemented in <a class="el" href="unity.scopes.qt.QScopeBaseAPI.md#aefcd8d1262a89d1c9b6c63dbdc8bfcea">unity::scopes::qt::QScopeBaseAPI</a>.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">void unity::scopes::ScopeBase::stop </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Called by the scopes runtime when the scope should shut down. </p>
<p>A scope should deallocate as many resources as possible when <a class="el" href="#a80c5fec9e985dbb315d780ef2a56bfbf" title="Called by the scopes runtime when the scope should shut down. ">stop()</a> is called, for example, deallocate any caches and close network connections. In addition, if the scope implements <a class="el" href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a> and did not return from <a class="el" href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a>, it must return from <a class="el" href="#a386e99b98318a70f25db84bbe11c0292" title="Called by the scopes runtime after it has called start() to hand a thread of control to the scope...">run()</a> in response to the call to <a class="el" href="#a80c5fec9e985dbb315d780ef2a56bfbf" title="Called by the scopes runtime when the scope should shut down. ">stop()</a>.</p>
<p>Exceptions from <a class="el" href="#a80c5fec9e985dbb315d780ef2a56bfbf" title="Called by the scopes runtime when the scope should shut down. ">stop()</a> are ignored.</p>
<p>The call to <a class="el" href="#a80c5fec9e985dbb315d780ef2a56bfbf" title="Called by the scopes runtime when the scope should shut down. ">stop()</a> is made by the same thread that calls the create function and <a class="el" href="#ac25f3f326e2cf25de2f2eca18de5926c" title="Called by the scopes runtime after the create function completes. ">start()</a>. </p>
<p>Reimplemented in <a class="el" href="unity.scopes.qt.QScopeBaseAPI.md#a7cfc17b94cc01761ac53acc1613ab8ce">unity::scopes::qt::QScopeBaseAPI</a>.</p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::ScopeBase::tmp_directory </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">final</span><span class="mlabel">virtual</span></span>  </td>
</tr>
</table>
<p>Returns a tmp directory that is (exclusively) writable for the scope. </p>
<p>This directory is periodically cleaned of unused files. The exact amount of time may vary, but is on the order of a few hours. The directory is also cleaned during reboot.</p>
<dl class="section note"><dt>Note</dt><dd>The tmp directory is available only after this <a class="el" href="index.html" title="Base class for a scope implementation. ">ScopeBase</a> is instantiated; do not call this method from the constructor!</dd></dl>
<dl class="section return"><dt>Returns</dt><dd>A directory for temporary files. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">LogicException</td><td>if called from the constructor of this instance. </td></tr>
</table>
</dd>
</dl>
