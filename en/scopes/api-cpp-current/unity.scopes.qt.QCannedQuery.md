---
Title: unity.scopes.qt.QCannedQuery
---

# unity.scopes.qt.QCannedQuery

<p>Parameters of a search query.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/qt/QCannedQuery.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:adb7856712be37746fdc0038b4602b111"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#adb7856712be37746fdc0038b4602b111">QCannedQuery</a> (QString const &amp;<a class="el" href="#adf35e301629964cea60a0933e6d52110">scope_id</a>)</td></tr>
<tr class="memdesc:adb7856712be37746fdc0038b4602b111"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates a query for given scope with empty query string. <br /></td></tr>
<tr class="separator:adb7856712be37746fdc0038b4602b111"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a80403c0f728ed7af60a04c0debb06d6d"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a80403c0f728ed7af60a04c0debb06d6d">QCannedQuery</a> (QString const &amp;<a class="el" href="#adf35e301629964cea60a0933e6d52110">scope_id</a>, QString const &amp;query_str, QString const &amp;<a class="el" href="#aa8de764af79922d974e1bef6186be9ed">department_id</a>)</td></tr>
<tr class="memdesc:a80403c0f728ed7af60a04c0debb06d6d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates a query for given scope with specific query string and in given department. <br /></td></tr>
<tr class="separator:a80403c0f728ed7af60a04c0debb06d6d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a848d48689bffc6f96cb70848201b8696"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a848d48689bffc6f96cb70848201b8696">set_department_id</a> (QString const &amp;dep_id)</td></tr>
<tr class="memdesc:a848d48689bffc6f96cb70848201b8696"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets or updates the department. <br /></td></tr>
<tr class="separator:a848d48689bffc6f96cb70848201b8696"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aecb3afcf45e6a7e1a17d81786b665bda"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aecb3afcf45e6a7e1a17d81786b665bda">set_query_string</a> (QString const &amp;query_str)</td></tr>
<tr class="memdesc:aecb3afcf45e6a7e1a17d81786b665bda"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets or updates the query string. <br /></td></tr>
<tr class="separator:aecb3afcf45e6a7e1a17d81786b665bda"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:adab1469e1be84e02b0d2d2170b095673"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#adab1469e1be84e02b0d2d2170b095673">set_filter_state</a> (<a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;<a class="el" href="#a4d9c022cf212f83907fc9cac6c314586">filter_state</a>)</td></tr>
<tr class="memdesc:adab1469e1be84e02b0d2d2170b095673"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets filter state. <br /></td></tr>
<tr class="separator:adab1469e1be84e02b0d2d2170b095673"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:adf35e301629964cea60a0933e6d52110"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#adf35e301629964cea60a0933e6d52110">scope_id</a> () const </td></tr>
<tr class="memdesc:adf35e301629964cea60a0933e6d52110"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the scope identifier of this CannedQuery.  More...<br /></td></tr>
<tr class="separator:adf35e301629964cea60a0933e6d52110"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa8de764af79922d974e1bef6186be9ed"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa8de764af79922d974e1bef6186be9ed">department_id</a> () const </td></tr>
<tr class="memdesc:aa8de764af79922d974e1bef6186be9ed"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the department id of this CannedQuery.  More...<br /></td></tr>
<tr class="separator:aa8de764af79922d974e1bef6186be9ed"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad819a186fa6ad212959cd5c93b6fbf7e"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad819a186fa6ad212959cd5c93b6fbf7e">query_string</a> () const </td></tr>
<tr class="memdesc:ad819a186fa6ad212959cd5c93b6fbf7e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the query string of this CannedQuery.  More...<br /></td></tr>
<tr class="separator:ad819a186fa6ad212959cd5c93b6fbf7e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1ff2ee31add772d96a954a61b0d1d6f6"><td class="memItemLeft" align="right" valign="top">QString&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a1ff2ee31add772d96a954a61b0d1d6f6">to_uri</a> () const </td></tr>
<tr class="memdesc:a1ff2ee31add772d96a954a61b0d1d6f6"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a string representation of this CannedQuery object as a URI using scope:// schema.  More...<br /></td></tr>
<tr class="separator:a1ff2ee31add772d96a954a61b0d1d6f6"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4d9c022cf212f83907fc9cac6c314586"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.FilterState.md">FilterState</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a4d9c022cf212f83907fc9cac6c314586">filter_state</a> () const </td></tr>
<tr class="memdesc:a4d9c022cf212f83907fc9cac6c314586"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get state of the filters for this CannedQuery.  More...<br /></td></tr>
<tr class="separator:a4d9c022cf212f83907fc9cac6c314586"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acc27503e32e26b584c831435c485763c"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#acc27503e32e26b584c831435c485763c">has_user_data</a> () const </td></tr>
<tr class="memdesc:acc27503e32e26b584c831435c485763c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Checks if user data has been attached to this query.  More...<br /></td></tr>
<tr class="separator:acc27503e32e26b584c831435c485763c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acac6151094bc731f152490b468a03471"><td class="memItemLeft" align="right" valign="top">QVariant&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#acac6151094bc731f152490b468a03471">user_data</a> () const </td></tr>
<tr class="memdesc:acac6151094bc731f152490b468a03471"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get user data attached to this query.  More...<br /></td></tr>
<tr class="separator:acac6151094bc731f152490b468a03471"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a166d18bef19da46a50cb1796cd787d50"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>QCannedQuery</b> (<a class="el" href="index.html">QCannedQuery</a> const &amp;other)</td></tr>
<tr class="separator:a166d18bef19da46a50cb1796cd787d50"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:afef82845564309687d99fac091229886"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>QCannedQuery</b> (<a class="el" href="index.html">QCannedQuery</a> &amp;&amp;)</td></tr>
<tr class="separator:afef82845564309687d99fac091229886"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2f50aed90ce4c6e23fba3b7750ed09da"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">QCannedQuery</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">QCannedQuery</a> const &amp;other)</td></tr>
<tr class="separator:a2f50aed90ce4c6e23fba3b7750ed09da"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6c0cc8ee9b23bfd631d2dc1d73534651"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">QCannedQuery</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">QCannedQuery</a> &amp;&amp;)</td></tr>
<tr class="separator:a6c0cc8ee9b23bfd631d2dc1d73534651"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Static Public Member Functions</h2></td></tr>
<tr class="memitem:a7b049394639516f3895da0bc17b19bfc"><td class="memItemLeft" align="right" valign="top">static <a class="el" href="index.html">QCannedQuery</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7b049394639516f3895da0bc17b19bfc">from_uri</a> (QString const &amp;uri)</td></tr>
<tr class="memdesc:a7b049394639516f3895da0bc17b19bfc"><td class="mdescLeft">&#160;</td><td class="mdescRight">Recreates a CannedQuery object from a scope:// URI.  More...<br /></td></tr>
<tr class="separator:a7b049394639516f3895da0bc17b19bfc"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Parameters of a search query. </p>
<p>Holds all parameters of a search query: the target scope id, query string, department id, and state of the filters. Can be converted to/from scope:// uri schema string. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">QString QCannedQuery::department_id </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Returns the department id of this <a class="el" href="unity.scopes.CannedQuery.md" title="Parameters of a search query. ">CannedQuery</a>. </p>
<dl class="section return"><dt>Returns</dt><dd>The department id. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.FilterState.md">FilterState</a> QCannedQuery::filter_state </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get state of the filters for this <a class="el" href="unity.scopes.CannedQuery.md" title="Parameters of a search query. ">CannedQuery</a>. </p>
<p>Pass this state to methods of specific filter instances (such as <a class="el" href="unity.scopes.OptionSelectorFilter.md#a3015abeb0439ccd29bd61afa9b7059df" title="Get the active options from a FilterState instance for this filter. ">unity::scopes::OptionSelectorFilter::active_options()</a>)to examine filter state. </p><dl class="section return"><dt>Returns</dt><dd>The state of the filters. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname"><a class="el" href="index.html">QCannedQuery</a> QCannedQuery::from_uri </td>
<td>(</td>
<td class="paramtype">QString const &amp;&#160;</td>
<td class="paramname"><em>uri</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">static</span></span>  </td>
</tr>
</table>
<p>Recreates a <a class="el" href="unity.scopes.CannedQuery.md" title="Parameters of a search query. ">CannedQuery</a> object from a scope:// URI. </p>
<dl class="section return"><dt>Returns</dt><dd>a <a class="el" href="unity.scopes.CannedQuery.md" title="Parameters of a search query. ">CannedQuery</a> instance </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">InvalidArgumentException</td><td>if the URI cannot be parsed. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">bool QCannedQuery::has_user_data </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Checks if user data has been attached to this query. </p>
<dl class="section return"><dt>Returns</dt><dd>true if data is available. </dd></dl>
<table class="memname">
<tr>
<td class="memname">QString QCannedQuery::query_string </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Returns the query string of this <a class="el" href="unity.scopes.CannedQuery.md" title="Parameters of a search query. ">CannedQuery</a>. </p>
<dl class="section return"><dt>Returns</dt><dd>The query string. </dd></dl>
<table class="memname">
<tr>
<td class="memname">QString QCannedQuery::scope_id </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Returns the scope identifier of this <a class="el" href="unity.scopes.CannedQuery.md" title="Parameters of a search query. ">CannedQuery</a>. </p>
<dl class="section return"><dt>Returns</dt><dd>The scope identifier. </dd></dl>
<table class="memname">
<tr>
<td class="memname">QString QCannedQuery::to_uri </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Returns a string representation of this <a class="el" href="unity.scopes.CannedQuery.md" title="Parameters of a search query. ">CannedQuery</a> object as a URI using scope:// schema. </p>
<dl class="section return"><dt>Returns</dt><dd>The URI for the query. </dd></dl>
<table class="memname">
<tr>
<td class="memname">QVariant QCannedQuery::user_data </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get user data attached to this query. </p>
<dl class="section return"><dt>Returns</dt><dd>Data variant </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td>if data is not available. </td></tr>
</table>
</dd>
</dl>
