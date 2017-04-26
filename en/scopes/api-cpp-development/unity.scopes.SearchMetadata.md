---
Title: unity.scopes.SearchMetadata
---

# unity.scopes.SearchMetadata

<p>Metadata passed with search requests.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/SearchMetadata.h&gt;</code></p>
Inheritance diagram for unity::scopes::SearchMetadata:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/4b48c407-a62c-4667-9477-0cf2dbddc115-../unity.scopes.SearchMetadata/classunity_1_1scopes_1_1_search_metadata__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:afbef43ec4b8977f3a4bd334795ba53db"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#afbef43ec4b8977f3a4bd334795ba53db">SearchMetadata</a> (std::string const &amp;<a class="el" href="unity.scopes.QueryMetadata.md#a3ca25150669d96171aec6ab56ef6bb0e">locale</a>, std::string const &amp;<a class="el" href="unity.scopes.QueryMetadata.md#a494f592f3055fba4da6554a6d8fb7c42">form_factor</a>)</td></tr>
<tr class="memdesc:afbef43ec4b8977f3a4bd334795ba53db"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create SearchMetadata with the given locale and form factor.  More...<br /></td></tr>
<tr class="separator:afbef43ec4b8977f3a4bd334795ba53db"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aed4a61dc45656bc36f07ca2802a8c6e0"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aed4a61dc45656bc36f07ca2802a8c6e0">SearchMetadata</a> (int <a class="el" href="#a439fca5f1acb2476784e43ca4d01cd3f">cardinality</a>, std::string const &amp;<a class="el" href="unity.scopes.QueryMetadata.md#a3ca25150669d96171aec6ab56ef6bb0e">locale</a>, std::string const &amp;<a class="el" href="unity.scopes.QueryMetadata.md#a494f592f3055fba4da6554a6d8fb7c42">form_factor</a>)</td></tr>
<tr class="memdesc:aed4a61dc45656bc36f07ca2802a8c6e0"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create SearchMetadata with the given cardinality, locale, and form factor.  More...<br /></td></tr>
<tr class="separator:aed4a61dc45656bc36f07ca2802a8c6e0"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af6ee25cabcefae0204753bd78d5c67f2"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af6ee25cabcefae0204753bd78d5c67f2">set_cardinality</a> (int <a class="el" href="#a439fca5f1acb2476784e43ca4d01cd3f">cardinality</a>)</td></tr>
<tr class="memdesc:af6ee25cabcefae0204753bd78d5c67f2"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set cardinality.  More...<br /></td></tr>
<tr class="separator:af6ee25cabcefae0204753bd78d5c67f2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a439fca5f1acb2476784e43ca4d01cd3f"><td class="memItemLeft" align="right" valign="top">int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a439fca5f1acb2476784e43ca4d01cd3f">cardinality</a> () const </td></tr>
<tr class="memdesc:a439fca5f1acb2476784e43ca4d01cd3f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get cardinality.  More...<br /></td></tr>
<tr class="separator:a439fca5f1acb2476784e43ca4d01cd3f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa7f858cb1d9716381836b0e8e9a01d06"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa7f858cb1d9716381836b0e8e9a01d06">set_location</a> (<a class="el" href="unity.scopes.Location.md">Location</a> const &amp;<a class="el" href="#a150922b97294bcda195030648a1f6f1b">location</a>)</td></tr>
<tr class="memdesc:aa7f858cb1d9716381836b0e8e9a01d06"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set location.  More...<br /></td></tr>
<tr class="separator:aa7f858cb1d9716381836b0e8e9a01d06"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a150922b97294bcda195030648a1f6f1b"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Location.md">Location</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a150922b97294bcda195030648a1f6f1b">location</a> () const </td></tr>
<tr class="memdesc:a150922b97294bcda195030648a1f6f1b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get location.  More...<br /></td></tr>
<tr class="separator:a150922b97294bcda195030648a1f6f1b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3d71111819dbfc9e409ab2ae1d9dce7f"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a3d71111819dbfc9e409ab2ae1d9dce7f">has_location</a> () const </td></tr>
<tr class="memdesc:a3d71111819dbfc9e409ab2ae1d9dce7f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Does the SearchMetadata have a location.  More...<br /></td></tr>
<tr class="separator:a3d71111819dbfc9e409ab2ae1d9dce7f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a06b9b4acc427e5124f400763bb4f14d0"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a06b9b4acc427e5124f400763bb4f14d0">remove_location</a> ()</td></tr>
<tr class="memdesc:a06b9b4acc427e5124f400763bb4f14d0"><td class="mdescLeft">&#160;</td><td class="mdescRight">Remove location data entirely.  More...<br /></td></tr>
<tr class="separator:a06b9b4acc427e5124f400763bb4f14d0"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a20dd440f94658a78eff73a8d66ea98c0"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a20dd440f94658a78eff73a8d66ea98c0">set_aggregated_keywords</a> (std::set&lt; std::string &gt; const &amp;<a class="el" href="#ab00673c4b1264388e0673d525e6d883e">aggregated_keywords</a>)</td></tr>
<tr class="memdesc:a20dd440f94658a78eff73a8d66ea98c0"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the list of scope keywords used to initiate this search request.  More...<br /></td></tr>
<tr class="separator:a20dd440f94658a78eff73a8d66ea98c0"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab00673c4b1264388e0673d525e6d883e"><td class="memItemLeft" align="right" valign="top">std::set&lt; std::string &gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ab00673c4b1264388e0673d525e6d883e">aggregated_keywords</a> () const </td></tr>
<tr class="memdesc:ab00673c4b1264388e0673d525e6d883e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the list of scope keywords used to initiate this search request.  More...<br /></td></tr>
<tr class="separator:ab00673c4b1264388e0673d525e6d883e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab999e0fd62e31b4c5e3095264ed81672"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ab999e0fd62e31b4c5e3095264ed81672">is_aggregated</a> () const </td></tr>
<tr class="memdesc:ab999e0fd62e31b4c5e3095264ed81672"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this search request originated from an aggregator scope.  More...<br /></td></tr>
<tr class="separator:ab999e0fd62e31b4c5e3095264ed81672"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7b8bf8376371fd3e90b4b84484822ba2"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7b8bf8376371fd3e90b4b84484822ba2">set_hint</a> (std::string const &amp;key, <a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;value)</td></tr>
<tr class="memdesc:a7b8bf8376371fd3e90b4b84484822ba2"><td class="mdescLeft">&#160;</td><td class="mdescRight">Sets a hint.  More...<br /></td></tr>
<tr class="separator:a7b8bf8376371fd3e90b4b84484822ba2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab112cd1adfb1fdd24a1960c7db444531"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ab112cd1adfb1fdd24a1960c7db444531">hints</a> () const </td></tr>
<tr class="memdesc:ab112cd1adfb1fdd24a1960c7db444531"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get all hints.  More...<br /></td></tr>
<tr class="separator:ab112cd1adfb1fdd24a1960c7db444531"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac2815cd1941d463eeffd82fde76c79c7"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac2815cd1941d463eeffd82fde76c79c7">contains_hint</a> (std::string const &amp;key) const </td></tr>
<tr class="memdesc:ac2815cd1941d463eeffd82fde76c79c7"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this SearchMetadata has a hint.  More...<br /></td></tr>
<tr class="separator:ac2815cd1941d463eeffd82fde76c79c7"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0f8ec6f0f54b6ecc0fee1cfcf6d630a3"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Variant.md">Variant</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a0f8ec6f0f54b6ecc0fee1cfcf6d630a3">operator[]</a> (std::string const &amp;key)</td></tr>
<tr class="memdesc:a0f8ec6f0f54b6ecc0fee1cfcf6d630a3"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a reference to a hint.  More...<br /></td></tr>
<tr class="separator:a0f8ec6f0f54b6ecc0fee1cfcf6d630a3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a811a5da751cfe716e04a30bb8273ad8c"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a811a5da751cfe716e04a30bb8273ad8c">operator[]</a> (std::string const &amp;key) const </td></tr>
<tr class="memdesc:a811a5da751cfe716e04a30bb8273ad8c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a const reference to a hint.  More...<br /></td></tr>
<tr class="separator:a811a5da751cfe716e04a30bb8273ad8c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a8cfb009f8bd3df8e363a088cbdf74671"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>SearchMetadata</b> (<a class="el" href="index.html">SearchMetadata</a> const &amp;other)</td></tr>
<tr class="separator:a8cfb009f8bd3df8e363a088cbdf74671"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2799ec969b5621674c2291ef933547e1"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>SearchMetadata</b> (<a class="el" href="index.html">SearchMetadata</a> &amp;&amp;)</td></tr>
<tr class="separator:a2799ec969b5621674c2291ef933547e1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a52c3883c60fa312a306062c94a209ec6"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">SearchMetadata</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">SearchMetadata</a> const &amp;other)</td></tr>
<tr class="separator:a52c3883c60fa312a306062c94a209ec6"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a70f02e2124009c8ded20f2441c627b67"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">SearchMetadata</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">SearchMetadata</a> &amp;&amp;)</td></tr>
<tr class="separator:a70f02e2124009c8ded20f2441c627b67"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_query_metadata"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_query_metadata')"><img src="https://developer.ubuntu.com/static/devportal_uploaded/56fb6e5c-dcc6-47f0-ac4b-cce0eb053b7e-../unity.scopes.SearchMetadata/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.QueryMetadata.md">unity::scopes::QueryMetadata</a></td></tr>
<tr class="memitem:a3ca25150669d96171aec6ab56ef6bb0e inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.QueryMetadata.md#a3ca25150669d96171aec6ab56ef6bb0e">locale</a> () const </td></tr>
<tr class="memdesc:a3ca25150669d96171aec6ab56ef6bb0e inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the locale string.  More...<br /></td></tr>
<tr class="separator:a3ca25150669d96171aec6ab56ef6bb0e inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a494f592f3055fba4da6554a6d8fb7c42 inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.QueryMetadata.md#a494f592f3055fba4da6554a6d8fb7c42">form_factor</a> () const </td></tr>
<tr class="memdesc:a494f592f3055fba4da6554a6d8fb7c42 inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the form factor string.  More...<br /></td></tr>
<tr class="separator:a494f592f3055fba4da6554a6d8fb7c42 inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5b2395aff97cbe1009759de03f270bf3 inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.QueryMetadata.md#a5b2395aff97cbe1009759de03f270bf3">set_internet_connectivity</a> (<a class="el" href="unity.scopes.QueryMetadata.md#a20eb916661728a7d9c00485e28f88701">ConnectivityStatus</a> connectivity_status)</td></tr>
<tr class="memdesc:a5b2395aff97cbe1009759de03f270bf3 inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set internet connectivity status.  More...<br /></td></tr>
<tr class="separator:a5b2395aff97cbe1009759de03f270bf3 inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3da06f370e53b5e381ec8cf33d8ee191 inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.QueryMetadata.md#a20eb916661728a7d9c00485e28f88701">ConnectivityStatus</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.QueryMetadata.md#a3da06f370e53b5e381ec8cf33d8ee191">internet_connectivity</a> () const </td></tr>
<tr class="memdesc:a3da06f370e53b5e381ec8cf33d8ee191 inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get internet connectivity status.  More...<br /></td></tr>
<tr class="separator:a3da06f370e53b5e381ec8cf33d8ee191 inherit pub_methods_classunity_1_1scopes_1_1_query_metadata"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Additional Inherited Members</h2></td></tr>
<tr class="inherit_header pub_types_classunity_1_1scopes_1_1_query_metadata"><td colspan="2" onclick="javascript:toggleInherit('pub_types_classunity_1_1scopes_1_1_query_metadata')"><img src="https://developer.ubuntu.com/static/devportal_uploaded/01c15e3e-dc41-4a2c-832c-a726a80c523d-../unity.scopes.SearchMetadata/closed.png" alt="-"/>&#160;Public Types inherited from <a class="el" href="unity.scopes.QueryMetadata.md">unity::scopes::QueryMetadata</a></td></tr>
<tr class="memitem:a20eb916661728a7d9c00485e28f88701 inherit pub_types_classunity_1_1scopes_1_1_query_metadata"><td class="memItemLeft" align="right" valign="top">enum &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.QueryMetadata.md#a20eb916661728a7d9c00485e28f88701">ConnectivityStatus</a> { <b>Unknown</b>, 
<b>Connected</b>, 
<b>Disconnected</b>
}</td></tr>
<tr class="memdesc:a20eb916661728a7d9c00485e28f88701"><td class="mdescLeft">&#160;</td><td class="mdescRight">Indicates the internet connectivity status.  <a href="unity.scopes.QueryMetadata.md#a20eb916661728a7d9c00485e28f88701">More...</a><br /></td></tr>
<tr class="separator:a20eb916661728a7d9c00485e28f88701 inherit pub_types_classunity_1_1scopes_1_1_query_metadata"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Metadata passed with search requests. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname">unity::scopes::SearchMetadata::SearchMetadata </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>locale</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>form_factor</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Create <a class="el" href="index.html" title="Metadata passed with search requests. ">SearchMetadata</a> with the given locale and form factor. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">locale</td><td>locale string, eg. en_EN </td></tr>
<tr><td class="paramname">form_factor</td><td>form factor name, e.g. phone, desktop, phone-version etc. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">unity::scopes::SearchMetadata::SearchMetadata </td>
<td>(</td>
<td class="paramtype">int&#160;</td>
<td class="paramname"><em>cardinality</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>locale</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>form_factor</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Create <a class="el" href="index.html" title="Metadata passed with search requests. ">SearchMetadata</a> with the given cardinality, locale, and form factor. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">cardinality</td><td>maximum number of search results </td></tr>
<tr><td class="paramname">locale</td><td>locale string, eg. en_EN </td></tr>
<tr><td class="paramname">form_factor</td><td>form factor name, e.g. phone, desktop, phone-version etc. </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">std::set&lt; std::string &gt; unity::scopes::SearchMetadata::aggregated_keywords </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the list of scope keywords used to initiate this search request. </p>
<dl class="section return"><dt>Returns</dt><dd>The list of scope keywords used to initiate this search request. </dd></dl>
<table class="memname">
<tr>
<td class="memname">int unity::scopes::SearchMetadata::cardinality </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get cardinality. </p>
<dl class="section return"><dt>Returns</dt><dd>The maxmium number of search results, or 0 for no limit. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::SearchMetadata::contains_hint </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>key</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if this <a class="el" href="index.html" title="Metadata passed with search requests. ">SearchMetadata</a> has a hint. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The hint name. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>True if the hint is set. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::SearchMetadata::has_location </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Does the <a class="el" href="index.html" title="Metadata passed with search requests. ">SearchMetadata</a> have a location. </p>
<dl class="section return"><dt>Returns</dt><dd>True if there is a location property. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> unity::scopes::SearchMetadata::hints </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get all hints. </p>
<dl class="section return"><dt>Returns</dt><dd>Hints dictionary. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::NotFoundException</td><td>if no hints are available. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::SearchMetadata::is_aggregated </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if this search request originated from an aggregator scope. </p>
<dl class="section return"><dt>Returns</dt><dd>True if this search request originated from an aggregator scope. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.Location.md">Location</a> unity::scopes::SearchMetadata::location </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get location. </p>
<dl class="section return"><dt>Returns</dt><dd><a class="el" href="unity.scopes.Location.md" title="Holds location attributes such as latitude, longitude, etc. ">Location</a> data representing the current location, including attributes such as city and country. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::NotFoundException</td><td>if no location data is available. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.Variant.md">Variant</a> &amp; unity::scopes::SearchMetadata::operator[] </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>key</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Returns a reference to a hint. </p>
<p>This method can be used to read or set hints. Setting a value of an existing hint overwrites its previous value. Referencing a non-existing hint automatically creates it with a default value of Variant::Type::Null. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The name of the hint. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A reference to the hint. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp; unity::scopes::SearchMetadata::operator[] </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>key</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Returns a const reference to a hint. </p>
<p>This method can be used for read-only access to hints. Referencing a non-existing hint throws unity::InvalidArgumentException. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The name of the hint. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A const reference to the hint. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::NotFoundException</td><td>if no hint with the given name exists. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::SearchMetadata::remove_location </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
<p>Remove location data entirely. </p>
<p>This method does nothing if no location data is present. </p>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::SearchMetadata::set_aggregated_keywords </td>
<td>(</td>
<td class="paramtype">std::set&lt; std::string &gt; const &amp;&#160;</td>
<td class="paramname"><em>aggregated_keywords</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set the list of scope keywords used to initiate this search request. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">aggregated_keywords</td><td>The list of scope keywords used to initiate this search request. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::SearchMetadata::set_cardinality </td>
<td>(</td>
<td class="paramtype">int&#160;</td>
<td class="paramname"><em>cardinality</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set cardinality. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">cardinality</td><td>The maximum number of search results. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::SearchMetadata::set_hint </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>key</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;&#160;</td>
<td class="paramname"><em>value</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Sets a hint. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The name of the hint. </td></tr>
<tr><td class="paramname">value</td><td>Hint value </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::SearchMetadata::set_location </td>
<td>(</td>
<td class="paramtype"><a class="el" href="unity.scopes.Location.md">Location</a> const &amp;&#160;</td>
<td class="paramname"><em>location</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set location. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">location</td><td><a class="el" href="unity.scopes.Location.md" title="Holds location attributes such as latitude, longitude, etc. ">Location</a> data. </td></tr>
</table>
</dd>
</dl>
