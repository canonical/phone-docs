---
Title: unity.scopes.CannedQuery
---

# unity.scopes.CannedQuery

<p>Parameters of a search query.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/CannedQuery.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a590181347391bcd1115579187fb70995"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a590181347391bcd1115579187fb70995">CannedQuery</a> (std::string const &amp;<a class="el" href="#a406aa5a8fb73a602664e254d8efe25c9">scope_id</a>)</td></tr>
<tr class="memdesc:a590181347391bcd1115579187fb70995"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates a query for given scope with empty query string. <br /></td></tr>
<tr class="separator:a590181347391bcd1115579187fb70995"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aeffdaa76040590f874c86d4bfd884afc"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aeffdaa76040590f874c86d4bfd884afc">CannedQuery</a> (std::string const &amp;<a class="el" href="#a406aa5a8fb73a602664e254d8efe25c9">scope_id</a>, std::string const &amp;query_str, std::string const &amp;<a class="el" href="#a61351960149bb4c0840f020c4e645f66">department_id</a>)</td></tr>
<tr class="memdesc:aeffdaa76040590f874c86d4bfd884afc"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates a query for given scope with specific query string and in given department. <br /></td></tr>
<tr class="separator:aeffdaa76040590f874c86d4bfd884afc"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a41981f398edaa4d7dc7623b323c952c3"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a41981f398edaa4d7dc7623b323c952c3">set_department_id</a> (std::string const &amp;dep_id)</td></tr>
<tr class="memdesc:a41981f398edaa4d7dc7623b323c952c3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets or updates the department. <br /></td></tr>
<tr class="separator:a41981f398edaa4d7dc7623b323c952c3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acc65fc4671dae0bccaba0aa811d05bc2"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#acc65fc4671dae0bccaba0aa811d05bc2">set_query_string</a> (std::string const &amp;query_str)</td></tr>
<tr class="memdesc:acc65fc4671dae0bccaba0aa811d05bc2"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets or updates the query string. <br /></td></tr>
<tr class="separator:acc65fc4671dae0bccaba0aa811d05bc2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aca9bbdc1ff14b20f3e7b04f2584b6a41"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aca9bbdc1ff14b20f3e7b04f2584b6a41">set_filter_state</a> (<a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;<a class="el" href="#a94eab58b1e02501f49fba55418b043bf">filter_state</a>)</td></tr>
<tr class="memdesc:aca9bbdc1ff14b20f3e7b04f2584b6a41"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets filter state. <br /></td></tr>
<tr class="separator:aca9bbdc1ff14b20f3e7b04f2584b6a41"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a406aa5a8fb73a602664e254d8efe25c9"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a406aa5a8fb73a602664e254d8efe25c9">scope_id</a> () const </td></tr>
<tr class="memdesc:a406aa5a8fb73a602664e254d8efe25c9"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the scope identifier of this CannedQuery.  More...<br /></td></tr>
<tr class="separator:a406aa5a8fb73a602664e254d8efe25c9"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a61351960149bb4c0840f020c4e645f66"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a61351960149bb4c0840f020c4e645f66">department_id</a> () const </td></tr>
<tr class="memdesc:a61351960149bb4c0840f020c4e645f66"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the department id of this CannedQuery.  More...<br /></td></tr>
<tr class="separator:a61351960149bb4c0840f020c4e645f66"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a29d05795a3255655a5de3754e3dfa73f"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a29d05795a3255655a5de3754e3dfa73f">query_string</a> () const </td></tr>
<tr class="memdesc:a29d05795a3255655a5de3754e3dfa73f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the query string of this CannedQuery.  More...<br /></td></tr>
<tr class="separator:a29d05795a3255655a5de3754e3dfa73f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a993c2d80b4d3c15b22f58fe6951e8c3d"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a993c2d80b4d3c15b22f58fe6951e8c3d">to_uri</a> () const </td></tr>
<tr class="memdesc:a993c2d80b4d3c15b22f58fe6951e8c3d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a string representation of this CannedQuery object as a URI using scope:// schema.  More...<br /></td></tr>
<tr class="separator:a993c2d80b4d3c15b22f58fe6951e8c3d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a94eab58b1e02501f49fba55418b043bf"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.FilterState.md">FilterState</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a94eab58b1e02501f49fba55418b043bf">filter_state</a> () const </td></tr>
<tr class="memdesc:a94eab58b1e02501f49fba55418b043bf"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get state of the filters for this CannedQuery.  More...<br /></td></tr>
<tr class="separator:a94eab58b1e02501f49fba55418b043bf"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6799b92d42f8f19116604b0cdd81135f"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a6799b92d42f8f19116604b0cdd81135f">set_user_data</a> (<a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;value)</td></tr>
<tr class="memdesc:a6799b92d42f8f19116604b0cdd81135f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Attach arbitrary data.  More...<br /></td></tr>
<tr class="separator:a6799b92d42f8f19116604b0cdd81135f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac495aa13c8fa07b623baa7b7795fa214"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac495aa13c8fa07b623baa7b7795fa214">has_user_data</a> () const </td></tr>
<tr class="memdesc:ac495aa13c8fa07b623baa7b7795fa214"><td class="mdescLeft">&#160;</td><td class="mdescRight">Checks if user data has been attached to this query.  More...<br /></td></tr>
<tr class="separator:ac495aa13c8fa07b623baa7b7795fa214"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aec4f31c9decc1ef1cb58e3ca924fa2f1"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Variant.md">Variant</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aec4f31c9decc1ef1cb58e3ca924fa2f1">user_data</a> () const </td></tr>
<tr class="memdesc:aec4f31c9decc1ef1cb58e3ca924fa2f1"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get user data attached to this query.  More...<br /></td></tr>
<tr class="separator:aec4f31c9decc1ef1cb58e3ca924fa2f1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a5010b18abe5eb65e0733ae250a03b9b8"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>CannedQuery</b> (<a class="el" href="index.html">CannedQuery</a> const &amp;other)</td></tr>
<tr class="separator:a5010b18abe5eb65e0733ae250a03b9b8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a45495af2b392e76307e706e77d3d3cfe"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>CannedQuery</b> (<a class="el" href="index.html">CannedQuery</a> &amp;&amp;)</td></tr>
<tr class="separator:a45495af2b392e76307e706e77d3d3cfe"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab8b5babe831ccc7e7787b3645a509eed"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">CannedQuery</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">CannedQuery</a> const &amp;other)</td></tr>
<tr class="separator:ab8b5babe831ccc7e7787b3645a509eed"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab19c9686b813f23abc6358933b76cd2b"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">CannedQuery</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">CannedQuery</a> &amp;&amp;)</td></tr>
<tr class="separator:ab19c9686b813f23abc6358933b76cd2b"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Static Public Member Functions</h2></td></tr>
<tr class="memitem:a30fbeb531d683f6d6c032c703b15a634"><td class="memItemLeft" align="right" valign="top">static <a class="el" href="index.html">CannedQuery</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a30fbeb531d683f6d6c032c703b15a634">from_uri</a> (std::string const &amp;uri)</td></tr>
<tr class="memdesc:a30fbeb531d683f6d6c032c703b15a634"><td class="mdescLeft">&#160;</td><td class="mdescRight">Recreates a CannedQuery object from a scope:// URI.  More...<br /></td></tr>
<tr class="separator:a30fbeb531d683f6d6c032c703b15a634"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Parameters of a search query. </p>
<p>Holds all parameters of a search query: the target scope id, query string, department id, and state of the filters. <a class="el" href="index.html" title="Parameters of a search query. ">CannedQuery</a> can also carry arbitrary data (set by calling <a class="el" href="#a6799b92d42f8f19116604b0cdd81135f" title="Attach arbitrary data. ">CannedQuery::set_user_data(Variant const&amp;)</a>) which can then be retrieved back with <a class="el" href="#aec4f31c9decc1ef1cb58e3ca924fa2f1" title="Get user data attached to this query. ">CannedQuery::user_data()</a> when <a class="el" href="index.html" title="Parameters of a search query. ">CannedQuery</a> object is received in <a class="el" href="unity.scopes.ScopeBase.md#a0e4969ff26dc1d396d74c56d896fd564" title="Called by the scopes runtime when a scope needs to instantiate a query. ">ScopeBase::search</a>. This arbitrary data can be used to store any state-related information that may be useful for the scope when new search request is performed.</p>
<p>Can be converted to/from scope:// uri schema string. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::CannedQuery::department_id </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Returns the department id of this <a class="el" href="index.html" title="Parameters of a search query. ">CannedQuery</a>. </p>
<dl class="section return"><dt>Returns</dt><dd>The department id. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.FilterState.md">FilterState</a> unity::scopes::CannedQuery::filter_state </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get state of the filters for this <a class="el" href="index.html" title="Parameters of a search query. ">CannedQuery</a>. </p>
<p>Pass this state to methods of specific filter instances (such as <a class="el" href="unity.scopes.OptionSelectorFilter.md#a3015abeb0439ccd29bd61afa9b7059df" title="Get the active options from a FilterState instance for this filter. ">unity::scopes::OptionSelectorFilter::active_options()</a>)to examine filter state. </p><dl class="section return"><dt>Returns</dt><dd>The state of the filters. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname"><a class="el" href="index.html">CannedQuery</a> unity::scopes::CannedQuery::from_uri </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>uri</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">static</span></span>  </td>
</tr>
</table>
<p>Recreates a <a class="el" href="index.html" title="Parameters of a search query. ">CannedQuery</a> object from a scope:// URI. </p>
<dl class="section return"><dt>Returns</dt><dd>a <a class="el" href="index.html" title="Parameters of a search query. ">CannedQuery</a> instance </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">InvalidArgumentException</td><td>if the URI cannot be parsed. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::CannedQuery::has_user_data </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Checks if user data has been attached to this query. </p>
<dl class="section return"><dt>Returns</dt><dd>true if data is available. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::CannedQuery::query_string </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Returns the query string of this <a class="el" href="index.html" title="Parameters of a search query. ">CannedQuery</a>. </p>
<dl class="section return"><dt>Returns</dt><dd>The query string. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::CannedQuery::scope_id </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Returns the scope identifier of this <a class="el" href="index.html" title="Parameters of a search query. ">CannedQuery</a>. </p>
<dl class="section return"><dt>Returns</dt><dd>The scope identifier. </dd></dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::CannedQuery::set_user_data </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;&#160;</td>
<td class="paramname"><em>value</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Attach arbitrary data. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">value</td><td>Data to attach to this canned query </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::CannedQuery::to_uri </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Returns a string representation of this <a class="el" href="index.html" title="Parameters of a search query. ">CannedQuery</a> object as a URI using scope:// schema. </p>
<dl class="section return"><dt>Returns</dt><dd>The URI for the query. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.Variant.md">Variant</a> unity::scopes::CannedQuery::user_data </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get user data attached to this query. </p>
<dl class="section return"><dt>Returns</dt><dd>Data variant </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td>if user data is not available. </td></tr>
</table>
</dd>
</dl>
