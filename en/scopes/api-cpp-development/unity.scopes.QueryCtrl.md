---
Title: unity.scopes.QueryCtrl
---

# unity.scopes.QueryCtrl

<p><a class="el" href="index.html" title="QueryCtrl allows a query to be cancelled. ">QueryCtrl</a> allows a query to be cancelled.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/QueryCtrl.h&gt;</code></p>
Inheritance diagram for unity::scopes::QueryCtrl:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/e7f824be-ebfd-4aad-ae34-8ad1de899d3b-../unity.scopes.QueryCtrl/classunity_1_1scopes_1_1_query_ctrl__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a83e309fba452407f79365ba2645f4e4d"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a83e309fba452407f79365ba2645f4e4d">cancel</a> ()=0</td></tr>
<tr class="memdesc:a83e309fba452407f79365ba2645f4e4d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Cancels an executing query.  More...<br /></td></tr>
<tr class="separator:a83e309fba452407f79365ba2645f4e4d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a041d668bdde675b264baf6b0c0df716b"><td class="memItemLeft" align="right" valign="top">virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a041d668bdde675b264baf6b0c0df716b">~QueryCtrl</a> ()</td></tr>
<tr class="memdesc:a041d668bdde675b264baf6b0c0df716b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Destroys a QueryCtrl.  More...<br /></td></tr>
<tr class="separator:a041d668bdde675b264baf6b0c0df716b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_object"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_object')"><img src="https://developer.ubuntu.com/static/devportal_uploaded/1144f876-762f-49c1-8db9-24cb608c5fec-../unity.scopes.QueryCtrl/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.Object.md">unity::scopes::Object</a></td></tr>
<tr class="memitem:ad7618cc9d878c40b389361d4acd473ae inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Object.md#ad7618cc9d878c40b389361d4acd473ae">endpoint</a> ()=0</td></tr>
<tr class="memdesc:ad7618cc9d878c40b389361d4acd473ae inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the endpoint this proxy connects to.  More...<br /></td></tr>
<tr class="separator:ad7618cc9d878c40b389361d4acd473ae inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1b55aea886f0a68cb8a578f7ee0b1cfd inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Object.md#a1b55aea886f0a68cb8a578f7ee0b1cfd">identity</a> ()=0</td></tr>
<tr class="memdesc:a1b55aea886f0a68cb8a578f7ee0b1cfd inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the identity of the target object of this proxy.  More...<br /></td></tr>
<tr class="separator:a1b55aea886f0a68cb8a578f7ee0b1cfd inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a40a997516629df3dacca9742dbddd6cb inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Object.md#a40a997516629df3dacca9742dbddd6cb">target_category</a> ()=0</td></tr>
<tr class="memdesc:a40a997516629df3dacca9742dbddd6cb inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the category of the target object of this proxy.  More...<br /></td></tr>
<tr class="separator:a40a997516629df3dacca9742dbddd6cb inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a41d9839f1e3cbcd6d8baee0736feccab inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memItemLeft" align="right" valign="top">virtual int64_t&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Object.md#a41d9839f1e3cbcd6d8baee0736feccab">timeout</a> ()=0</td></tr>
<tr class="memdesc:a41d9839f1e3cbcd6d8baee0736feccab inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns the timeout in milliseconds if this proxy is a twoway proxy.  More...<br /></td></tr>
<tr class="separator:a41d9839f1e3cbcd6d8baee0736feccab inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9ae27e1f30dc755abcd796a1e8a25150 inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memItemLeft" align="right" valign="top">virtual std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Object.md#a9ae27e1f30dc755abcd796a1e8a25150">to_string</a> ()=0</td></tr>
<tr class="memdesc:a9ae27e1f30dc755abcd796a1e8a25150 inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="mdescLeft">&#160;</td><td class="mdescRight">Converts a proxy into its string representation.  More...<br /></td></tr>
<tr class="separator:a9ae27e1f30dc755abcd796a1e8a25150 inherit pub_methods_classunity_1_1scopes_1_1_object"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p><a class="el" href="index.html" title="QueryCtrl allows a query to be cancelled. ">QueryCtrl</a> allows a query to be cancelled. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual unity::scopes::QueryCtrl::~QueryCtrl </td>
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
<p>Destroys a <a class="el" href="index.html" title="QueryCtrl allows a query to be cancelled. ">QueryCtrl</a>. </p>
<p>Letting a <a class="el" href="index.html" title="QueryCtrl allows a query to be cancelled. ">QueryCtrl</a> go out of scope has no effect on the query, that is, the destructor does <em>not</em> implicitly call <a class="el" href="#a83e309fba452407f79365ba2645f4e4d" title="Cancels an executing query. ">cancel()</a>. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::QueryCtrl::cancel </td>
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
<p>Cancels an executing query. </p>
<p>Calling <a class="el" href="#a83e309fba452407f79365ba2645f4e4d" title="Cancels an executing query. ">cancel()</a> informs the scope to which a query was sent that the query should be cancelled. Calling <a class="el" href="#a83e309fba452407f79365ba2645f4e4d" title="Cancels an executing query. ">cancel()</a> on a query that is complete has no effect. <a class="el" href="#a83e309fba452407f79365ba2645f4e4d" title="Cancels an executing query. ">cancel()</a> is guaranteed to not block the caller. </p>
