---
Title: unity.scopes.SearchReply
---

# unity.scopes.SearchReply

<p>Allows the results of a search query to be sent to the query source.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/SearchReply.h&gt;</code></p>
Inheritance diagram for unity::scopes::SearchReply:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/f8470f2c-a24b-465e-a084-ea7b447afd75-../unity.scopes.SearchReply/classunity_1_1scopes_1_1_search_reply__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a17fdd52a4a8b19d6f8e13e5d7f576344"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a17fdd52a4a8b19d6f8e13e5d7f576344">register_departments</a> (Department::SCPtr const &amp;parent)=0</td></tr>
<tr class="memdesc:a17fdd52a4a8b19d6f8e13e5d7f576344"><td class="mdescLeft">&#160;</td><td class="mdescRight">Register departments for the current search reply and provide the current department.  More...<br /></td></tr>
<tr class="separator:a17fdd52a4a8b19d6f8e13e5d7f576344"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aaa061806a96f50ff66abc6184135ea66"><td class="memItemLeft" align="right" valign="top">virtual Category::SCPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aaa061806a96f50ff66abc6184135ea66">register_category</a> (std::string const &amp;id, std::string const &amp;title, std::string const &amp;icon, <a class="el" href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a> const &amp;renderer_template=<a class="el" href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a>())=0</td></tr>
<tr class="memdesc:aaa061806a96f50ff66abc6184135ea66"><td class="mdescLeft">&#160;</td><td class="mdescRight">Register new category and send it to the source of the query.  More...<br /></td></tr>
<tr class="separator:aaa061806a96f50ff66abc6184135ea66"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3bf901e2b5c8b6db3c8e758a9ccbef1c"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a3bf901e2b5c8b6db3c8e758a9ccbef1c">register_category</a> (Category::SCPtr category)=0</td></tr>
<tr class="memdesc:a3bf901e2b5c8b6db3c8e758a9ccbef1c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Register an existing category instance and send it to the source of the query.  More...<br /></td></tr>
<tr class="separator:a3bf901e2b5c8b6db3c8e758a9ccbef1c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a55335c829bf950d36dee6c394569688a"><td class="memItemLeft" align="right" valign="top">virtual Category::SCPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a55335c829bf950d36dee6c394569688a">lookup_category</a> (std::string const &amp;id)=0</td></tr>
<tr class="memdesc:a55335c829bf950d36dee6c394569688a"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a previously registered category.  More...<br /></td></tr>
<tr class="separator:a55335c829bf950d36dee6c394569688a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a63d6de93152b3a972901c2d406ef5760"><td class="memItemLeft" align="right" valign="top">virtual bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a63d6de93152b3a972901c2d406ef5760">push</a> (<a class="el" href="unity.scopes.CategorisedResult.md">CategorisedResult</a> const &amp;result)=0</td></tr>
<tr class="memdesc:a63d6de93152b3a972901c2d406ef5760"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sends a single result to the source of a query.  More...<br /></td></tr>
<tr class="separator:a63d6de93152b3a972901c2d406ef5760"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad6c02e387248cfe382dd3d8c7cc9c589"><td class="memItemLeft" align="right" valign="top">virtual bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad6c02e387248cfe382dd3d8c7cc9c589">push</a> (experimental::Annotation const &amp;annotation)=0</td></tr>
<tr class="memdesc:ad6c02e387248cfe382dd3d8c7cc9c589"><td class="mdescLeft">&#160;</td><td class="mdescRight">Push an annotation.  More...<br /></td></tr>
<tr class="separator:ad6c02e387248cfe382dd3d8c7cc9c589"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a121842b4206980360c208a1f5828ef12"><td class="memItemLeft" align="right" valign="top">virtual bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a121842b4206980360c208a1f5828ef12">push</a> (<a class="el" href="unity.scopes.md#adab58c13cf604e0e64bd6b1a745364d3">Filters</a> const &amp;filters, <a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;filter_state)=0</td></tr>
<tr class="memdesc:a121842b4206980360c208a1f5828ef12"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sends all filters and their state to the source of a query.  More...<br /></td></tr>
<tr class="separator:a121842b4206980360c208a1f5828ef12"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aafc76a74146ebed8b8849797838ef5c5"><td class="memItemLeft" align="right" valign="top">virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aafc76a74146ebed8b8849797838ef5c5">~SearchReply</a> ()</td></tr>
<tr class="memdesc:aafc76a74146ebed8b8849797838ef5c5"><td class="mdescLeft">&#160;</td><td class="mdescRight">Destroys a Reply.  More...<br /></td></tr>
<tr class="separator:aafc76a74146ebed8b8849797838ef5c5"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a73d044ea7719f3538e391477d8dd7afb"><td class="memItemLeft" align="right" valign="top">virtual Category::SCPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a73d044ea7719f3538e391477d8dd7afb">register_category</a> (std::string const &amp;id, std::string const &amp;title, std::string const &amp;icon, <a class="el" href="unity.scopes.CannedQuery.md">CannedQuery</a> const &amp;query, <a class="el" href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a> const &amp;renderer_template=<a class="el" href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a>())=0</td></tr>
<tr class="memdesc:a73d044ea7719f3538e391477d8dd7afb"><td class="mdescLeft">&#160;</td><td class="mdescRight">Register new category and send it to the source of the query.  More...<br /></td></tr>
<tr class="separator:a73d044ea7719f3538e391477d8dd7afb"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4ba805136164b11bb358917070cde24d"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a4ba805136164b11bb358917070cde24d">push_surfacing_results_from_cache</a> ()=0</td></tr>
<tr class="memdesc:a4ba805136164b11bb358917070cde24d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Push the results that were produced by the most recent surfacing query.  More...<br /></td></tr>
<tr class="separator:a4ba805136164b11bb358917070cde24d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_reply"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_reply')"><img src="https://developer.ubuntu.com/static/devportal_uploaded/b0c5a149-0e9c-474c-a4dd-1d640a27a1be-../unity.scopes.SearchReply/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.Reply.md">unity::scopes::Reply</a></td></tr>
<tr class="memitem:a9ca653d5d7f7c97a781bc362f2af7749 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Reply.md#a9ca653d5d7f7c97a781bc362f2af7749">finished</a> ()=0</td></tr>
<tr class="memdesc:a9ca653d5d7f7c97a781bc362f2af7749 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="mdescLeft">&#160;</td><td class="mdescRight">Informs the source of a query that the query results are complete.  More...<br /></td></tr>
<tr class="separator:a9ca653d5d7f7c97a781bc362f2af7749 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a526c9cbb11f896210835fb3420324ba8 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Reply.md#a526c9cbb11f896210835fb3420324ba8">error</a> (std::exception_ptr ex)=0</td></tr>
<tr class="memdesc:a526c9cbb11f896210835fb3420324ba8 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="mdescLeft">&#160;</td><td class="mdescRight">Informs the source of a query that the query was terminated due to an error.  More...<br /></td></tr>
<tr class="separator:a526c9cbb11f896210835fb3420324ba8 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af35cbaba152e4919306f32b06bd81029 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="memItemLeft" align="right" valign="top">virtual void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Reply.md#af35cbaba152e4919306f32b06bd81029">info</a> (<a class="el" href="unity.scopes.OperationInfo.md">OperationInfo</a> const &amp;op_info)=0</td></tr>
<tr class="memdesc:af35cbaba152e4919306f32b06bd81029 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="mdescLeft">&#160;</td><td class="mdescRight">Informs the source of a query that additional information regarding the reply is available.  More...<br /></td></tr>
<tr class="separator:af35cbaba152e4919306f32b06bd81029 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a9f0cfeeee75a27e111ebd955523e1bb0 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="memItemLeft" align="right" valign="top">virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Reply.md#a9f0cfeeee75a27e111ebd955523e1bb0">~Reply</a> ()</td></tr>
<tr class="memdesc:a9f0cfeeee75a27e111ebd955523e1bb0 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="mdescLeft">&#160;</td><td class="mdescRight">Destroys a Reply.  More...<br /></td></tr>
<tr class="separator:a9f0cfeeee75a27e111ebd955523e1bb0 inherit pub_methods_classunity_1_1scopes_1_1_reply"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_object"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_object')"><img src="https://developer.ubuntu.com/static/devportal_uploaded/ad340bc8-8432-4b29-85f6-151291a220ea-../unity.scopes.SearchReply/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.Object.md">unity::scopes::Object</a></td></tr>
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
<p>Allows the results of a search query to be sent to the query source. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual unity::scopes::SearchReply::~SearchReply </td>
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
<p>Destroys a <a class="el" href="unity.scopes.Reply.md" title="Allows query termination to be sent to the source of a query. ">Reply</a>. </p>
<p>If a <a class="el" href="unity.scopes.Reply.md" title="Allows query termination to be sent to the source of a query. ">Reply</a> goes out of scope without a prior call to <a class="el" href="unity.scopes.Reply.md#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a>, the destructor implicitly calls <a class="el" href="unity.scopes.Reply.md#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a>. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual Category::SCPtr unity::scopes::SearchReply::lookup_category </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>id</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Returns a previously registered category. </p>
<dl class="section return"><dt>Returns</dt><dd>The category instance or <code>nullptr</code> if the category does not exist. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual bool unity::scopes::SearchReply::push </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.CategorisedResult.md">CategorisedResult</a> const &amp;&#160;</td>
<td class="paramname"><em>result</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Sends a single result to the source of a query. </p>
<p>Any calls to <a class="el" href="#a63d6de93152b3a972901c2d406ef5760" title="Sends a single result to the source of a query. ">push()</a> after <a class="el" href="unity.scopes.Reply.md#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a> was called are ignored. </p><dl class="section return"><dt>Returns</dt><dd>The return value is true if the result was accepted, false otherwise. A false return value can be due to <a class="el" href="unity.scopes.Reply.md#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a> having been called earlier, or the client that sent the query having cancelled that query. The return value is false also if the query has a cardinality limit and is reached or exceeded. (The return value is false for the last valid push and subsequent pushes.) </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual bool unity::scopes::SearchReply::push </td>
<td>(</td>
<td class="paramtype">experimental::Annotation const &amp;&#160;</td>
<td class="paramname"><em>annotation</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Push an annotation. </p>
<p>The annotation will be rendered at a next available spot below the category of last pushed result. To render an annotation in the top annotation area, push it before pushing search results. </p><dl class="section note"><dt>Note</dt><dd>The Unity shell can ignore some or all annotations, depending on available screen real estate. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual bool unity::scopes::SearchReply::push </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.md#adab58c13cf604e0e64bd6b1a745364d3">Filters</a> const &amp;&#160;</td>
<td class="paramname"><em>filters</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.FilterState.md">FilterState</a> const &amp;&#160;</td>
<td class="paramname"><em>filter_state</em>&#160;</td>
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
<p>Sends all filters and their state to the source of a query. </p>
<dl class="section return"><dt>Returns</dt><dd>True if the filters were accepted, false otherwise. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::SearchReply::push_surfacing_results_from_cache </td>
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
<p>Push the results that were produced by the most recent surfacing query. </p>
<p>The runtime automatically saves the results of the most recent surfacing query. If a scope cannot produce a result for a surfacing query (presumably, due to connectivity problems), calling <a class="el" href="#a4ba805136164b11bb358917070cde24d" title="Push the results that were produced by the most recent surfacing query. ">push_surfacing_results_from_cache()</a> pushes the results that were produced by the most recent successful surfacing query from the cache. If a scope cannot produce surfacing results, it can call this method to "replay" the previous results. In turn, this avoids the user being presented with an empty screen if he/she swipes to the scope while the device does not have connectivity.</p>
<p>This method has an effect only if called for a surfacing query (that is, a query with an empty query string). If called for a non-empty query, it does nothing.</p>
<p>You must call this method before calling <a class="el" href="unity.scopes.Reply.md#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a>, otherwise no cached results will be pushed (<a class="el" href="#a4ba805136164b11bb358917070cde24d" title="Push the results that were produced by the most recent surfacing query. ">push_surfacing_results_from_cache()</a> implicitly calls <a class="el" href="unity.scopes.Reply.md#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a>). </p>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual Category::SCPtr unity::scopes::SearchReply::register_category </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>title</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>icon</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a> const &amp;&#160;</td>
<td class="paramname"><em>renderer_template</em> = <code><a class="el" href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a>()</code>&#160;</td>
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
<p>Register new category and send it to the source of the query. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">id</td><td>The identifier of the category </td></tr>
<tr><td class="paramname">title</td><td>The title of the category </td></tr>
<tr><td class="paramname">icon</td><td>The icon of the category </td></tr>
<tr><td class="paramname">renderer_template</td><td>The renderer template to be used for results in this category</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>The category instance </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::scopes::InvalidArgumentException</td><td>if category with that id has already been registered.</td></tr>
</table>
</dd>
</dl>
<dl class="section note"><dt>Note</dt><dd>The UI uses category IDs for incremental rendering when refreshing search results. For this to work correctly, you need to make sure that you use the same category ID for different queries if the search results apply to the same category as for a previous search. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::SearchReply::register_category </td>
<td>(</td>
<td class="paramtype">Category::SCPtr&#160;</td>
<td class="paramname"><em>category</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Register an existing category instance and send it to the source of the query. </p>
<p>The purpose of this call is to register a category obtained via <a class="el" href="unity.scopes.SearchListenerBase.md#af246bd38c8ba9cec36dfae3d0607dbfc" title="Called once by the scopes runtime for each category that is returned by a query(). ">SearchListenerBase::push(Category::SCPtr const&amp;)</a> when aggregating results and categories from other scope(s).</p>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::InvalidArgumentException</td><td>if category is already registered. </td></tr>
</table>
</dd>
</dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual Category::SCPtr unity::scopes::SearchReply::register_category </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>id</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>title</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>icon</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.CannedQuery.md">CannedQuery</a> const &amp;&#160;</td>
<td class="paramname"><em>query</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a> const &amp;&#160;</td>
<td class="paramname"><em>renderer_template</em> = <code><a class="el" href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a>()</code>&#160;</td>
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
<p>Register new category and send it to the source of the query. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">id</td><td>The identifier of the category </td></tr>
<tr><td class="paramname">title</td><td>The title of the category </td></tr>
<tr><td class="paramname">icon</td><td>The icon of the category </td></tr>
<tr><td class="paramname">query</td><td>Query to perform when expanding this category </td></tr>
<tr><td class="paramname">renderer_template</td><td>The renderer template to be used for results in this category</td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>The category instance </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::scopes::InvalidArgumentException</td><td>if category with that id has already been registered. </td></tr>
</table>
</dd>
</dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual void unity::scopes::SearchReply::register_departments </td>
<td>(</td>
<td class="paramtype">Department::SCPtr const &amp;&#160;</td>
<td class="paramname"><em>parent</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">pure virtual</span></span>  </td>
</tr>
</table>
<p>Register departments for the current search reply and provide the current department. </p>
<p>Departments are optional. If scope supports departments, it is expected to register departments on every search as follows:</p>
<ul>
<li>
create a <a class="el" href="unity.scopes.Department.md" title="A department with optional sub-departments. ">Department</a> node for current department and attach to it a list of its subdepartments (unless current department is a leaf department) using <a class="el" href="unity.scopes.Department.md#ab17057cef9ce35f1302f5421a087c067" title="Set sub-departments of this department. ">unity::scopes::Department::set_subdepartments()</a> method. For every subdepartment on the list set "has_subdepartments" flag if applicable. </li>
<li>
provide an alternate label for current department with <a class="el" href="unity.scopes.Department.md#a9ab1192cdfcbce44b9164df11290c217" title="Set the alternate label (plural of the normal label) of this department. ">unity::scopes::Department::set_alternate_label()</a>. </li>
<li>
create a <a class="el" href="unity.scopes.Department.md" title="A department with optional sub-departments. ">Department</a> node for parent of current department (if applicable - not when in root department), and attach current <a class="el" href="unity.scopes.Department.md" title="A department with optional sub-departments. ">Department</a> node to it with <a class="el" href="unity.scopes.Department.md#ab17057cef9ce35f1302f5421a087c067" title="Set sub-departments of this department. ">unity::scopes::Department::set_subdepartments()</a> method. </li>
<li>
register the parent department with <a class="el" href="#a17fdd52a4a8b19d6f8e13e5d7f576344" title="Register departments for the current search reply and provide the current department. ">unity::scopes::SearchReply::register_departments()</a>. </li>
</ul>
<p>For example, assuming the user is visiting a "History" department in "Books", and "History" has sub-departments such as "World War Two" and "Ancient", the code that registers departments for current search in "History" may look like this: </p>
```
unity::scopes::Department::SPtr books = move(<a class="code" href="unity.scopes.Department.md#a11a3b8e9a3317f963d4bc9f46f79922b">unity::scopes::Department::create</a>(<span class="stringliteral">&quot;books&quot;</span>, query, <span class="stringliteral">&quot;Books&quot;</span>)); <span class="comment">// the parent of &quot;History&quot;</span>
unity::scopes::Department::SPtr history = move(<a class="code" href="unity.scopes.Department.md#a11a3b8e9a3317f963d4bc9f46f79922b">unity::scopes::Department::create</a>(<span class="stringliteral">&quot;history&quot;</span>, query, <span class="stringliteral">&quot;History&quot;</span>));
<a class="code" href="unity.scopes.md#ab8effc4ea05a59f2ddea896833f07231">unity::scopes::DepartmentList</a> history_depts({
move(<a class="code" href="unity.scopes.Department.md#a11a3b8e9a3317f963d4bc9f46f79922b">unity::scopes::Department::create</a>(<span class="stringliteral">&quot;ww2&quot;</span>, query, <span class="stringliteral">&quot;World War Two&quot;</span>)),
move(<a class="code" href="unity.scopes.Department.md#a11a3b8e9a3317f963d4bc9f46f79922b">unity::scopes::Department::create</a>(<span class="stringliteral">&quot;ancient&quot;</span>, query, <span class="stringliteral">&quot;Ancient&quot;</span>))});
history-&gt;set_subdepartments(history_depts);
books-&gt;set_subdepartments({history});
reply-&gt;register_departments(books);
```
<p>Current department should be the department returned by <a class="el" href="unity.scopes.CannedQuery.md#a61351960149bb4c0840f020c4e645f66" title="Returns the department id of this CannedQuery. ">unity::scopes::CannedQuery::department_id()</a>. Empty department id denotes the root deparment.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">parent</td><td>The parent department of current department, or current one if visiting root department. </td></tr>
</table>
</dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::LogicException</td><td>if departments are invalid (nullptr passed, current department not present in the parent's tree, duplicated department ids present in the tree). </td></tr>
</table>
</dd>
</dl>
