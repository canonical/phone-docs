---
Title: unity.scopes.QueryBase
---

# unity.scopes.QueryBase

<p>Abstract server-side base interface for a query that is executed inside a scope.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/QueryBase.h&gt;</code></p>
Inheritance diagram for unity::scopes::QueryBase:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/f781bf1b-ef20-45e7-8bb9-6abd9c664667-../unity.scopes.QueryBase/classunity_1_1scopes_1_1_query_base__inherit__graph.png" border="0" usemap="#unity_1_1scopes_1_1_query_base_inherit__map" alt="Inheritance graph"/>
<map name="unity_1_1scopes_1_1_query_base_inherit__map" id="unity_1_1scopes_1_1_query_base_inherit__map">
<area shape="rect" id="node2" href="https://developer.ubuntu.com../classunity_1_1scopes_1_1_activation_query_base.html" title="Base class for an activation request that is executed inside a scope. " alt="" coords="263,5,439,47"/><area shape="rect" id="node3" href="https://developer.ubuntu.com../classunity_1_1scopes_1_1_preview_query_base.html" title="Abstract base class to represent a particular preview. " alt="" coords="236,71,467,98"/><area shape="rect" id="node5" href="https://developer.ubuntu.com../classunity_1_1scopes_1_1_search_query_base.html" title="Abstract base class to represent a particular query. " alt="" coords="237,126,465,153"/><area shape="rect" id="node4" href="https://developer.ubuntu.com../classunity_1_1scopes_1_1qt_1_1_q_preview_query_base_a_p_i.html" title="Abstract base class to represent a particular preview. " alt="" coords="515,60,685,101"/><area shape="rect" id="node6" href="https://developer.ubuntu.com../classunity_1_1scopes_1_1qt_1_1_q_search_query_base_a_p_i.html" title="Abstract base class to represent a particular query. " alt="" coords="517,125,683,167"/></map>
<center><span class="legend">[legend]</span></center>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a596b19dbfd6efe96b834be75a9b64c68"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a596b19dbfd6efe96b834be75a9b64c68">cancelled</a> ()=0</td></tr>
<tr class="memdesc:a596b19dbfd6efe96b834be75a9b64c68"><td class="mdescLeft">&#160;</td><td class="mdescRight">Called by the scopes runtime when the query originator cancels a query.  More...<br /></td></tr>
<tr class="separator:a596b19dbfd6efe96b834be75a9b64c68"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a095e61eabe2042eeea5c4df1a444d7d4"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a095e61eabe2042eeea5c4df1a444d7d4">valid</a> () const </td></tr>
<tr class="memdesc:a095e61eabe2042eeea5c4df1a444d7d4"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check whether this query is still valid.  More...<br /></td></tr>
<tr class="separator:a095e61eabe2042eeea5c4df1a444d7d4"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab6a25ba587387a7f490b8b5a081e9ed6"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">unity::scopes::VariantMap</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ab6a25ba587387a7f490b8b5a081e9ed6">settings</a> () const </td></tr>
<tr class="memdesc:ab6a25ba587387a7f490b8b5a081e9ed6"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a dictionary with the scope's current settings.  More...<br /></td></tr>
<tr class="separator:ab6a25ba587387a7f490b8b5a081e9ed6"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Abstract server-side base interface for a query that is executed inside a scope. </p>
<dl class="section see"><dt>See also</dt><dd><a class="el" href="unity.scopes.SearchQueryBase.md" title="Abstract base class to represent a particular query. ">SearchQueryBase</a>, <a class="el" href="unity.scopes.PreviewQueryBase.md" title="Abstract base class to represent a particular preview. ">PreviewQueryBase</a>, <a class="el" href="unity.scopes.ActivationQueryBase.md" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a> </dd></dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::QueryBase::cancelled </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Called by the scopes runtime when the query originator cancels a query. </p>
<p>Your implementation of this method should ensure that the scope stops processing the current query as soon as possible. Any calls to a <code>push()</code> method once a query is cancelled are ignored, so continuing to push after cancellation only wastes CPU cycles. (<code>push()</code> returns <code>false</code> once a query is cancelled or exceeds its cardinality limit.) </p>
<p>Implemented in <a class="el" href="unity.scopes.qt.QPreviewQueryBaseAPI.md#ac68c5e63e55f818a31a358c8f87ccdeb">unity::scopes::qt::QPreviewQueryBaseAPI</a>, <a class="el" href="unity.scopes.qt.QSearchQueryBaseAPI.md#a81a9ed98e8b092e4cd48aed63bb49f1a">unity::scopes::qt::QSearchQueryBaseAPI</a>, and <a class="el" href="unity.scopes.ActivationQueryBase.md#af9b8e83ac6716db51aba942aca9cc6be">unity::scopes::ActivationQueryBase</a>.</p>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> unity::scopes::QueryBase::settings </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Returns a dictionary with the scope's current settings. </p>
<p>Instead of storing the return value, it is preferable to call <a class="el" href="#ab6a25ba587387a7f490b8b5a081e9ed6" title="Returns a dictionary with the scope&#39;s current settings. ">settings()</a> each time your implementation requires a settings value. This ensures that, if a user changes settings while the scope is running, the new settings take effect with the next query, preview, and so on.</p>
<dl class="section note"><dt>Note</dt><dd>The settings are available only after this <a class="el" href="index.html" title="Abstract server-side base interface for a query that is executed inside a scope. ">QueryBase</a> is instantiated; do not call this method from the constructor!</dd></dl>
<dl class="section return"><dt>Returns</dt><dd>The scope's current settings. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::QueryBase::valid </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check whether this query is still valid. </p>
<p><a class="el" href="#a095e61eabe2042eeea5c4df1a444d7d4" title="Check whether this query is still valid. ">valid()</a> returns false if this query is finished or was cancelled earlier. Note that it is possible that the runtime may call <a class="el" href="unity.scopes.SearchQueryBase.md#afc4f15b2266838d7da75b05ea37d504b" title="Called by scopes runtime to start the query. ">SearchQueryBase::run()</a>, <a class="el" href="unity.scopes.ActivationQueryBase.md#a61ed49d8bc56e677ff2eb1f30e6a6b6b" title="Return response to the activation request. ">ActivationQueryBase::activate()</a>, or <a class="el" href="unity.scopes.PreviewQueryBase.md#a81b89daf29cd1ada55286f2a3a871347" title="Called by scopes runtime to start the preview. ">PreviewQueryBase::run()</a> <em>after</em> <a class="el" href="#a596b19dbfd6efe96b834be75a9b64c68" title="Called by the scopes runtime when the query originator cancels a query. ">cancelled()</a> was called. Your implementation of these methods should check whether the query is still valid and, if not, do nothing.</p>
<p>This method is provided mainly for convenience: it can be used in your s <code>run()</code> or <code>activate()</code> implementation to avoid doing a lot of work setting up a query that was cancelled earlier. Note that, because cancellation can happen at any time during query execution, your implementation should always test the return value of <code>push()</code>. If <code>push()</code> returns <code>false</code>, the query was either cancelled or exceeded its cardinality limit. Either way, there is no point in continuing to push more results because, once <code>push()</code> returns <code>false</code>, the scopes runtime discards all subsequent results for the query. </p>
