---
Title: unity.scopes.Result
---

# unity.scopes.Result

<p>The attributes of a result returned by a <a class="el" href="unity.scopes.Scope.md" title="Allows queries, preview requests, and activation requests to be sent to a scope. ">Scope</a>.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/Result.h&gt;</code></p>
Inheritance diagram for unity::scopes::Result:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/40c96b50-f2ad-4e85-ab36-97399c0e87d1-../unity.scopes.Result/classunity_1_1scopes_1_1_result__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:af50d9e95694cc46f4c76369e97aec927"><td class="memItemLeft" align="right" valign="top">virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af50d9e95694cc46f4c76369e97aec927">~Result</a> ()</td></tr>
<tr class="separator:af50d9e95694cc46f4c76369e97aec927"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a744776333a9748ba41dace7c6943ca4d"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a744776333a9748ba41dace7c6943ca4d">store</a> (<a class="el" href="index.html">Result</a> const &amp;other, bool intercept_activation=false)</td></tr>
<tr class="memdesc:a744776333a9748ba41dace7c6943ca4d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Stores a Result inside this Result instance.  More...<br /></td></tr>
<tr class="separator:a744776333a9748ba41dace7c6943ca4d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8213bb7b0aedae09af8d621e1a7e136b"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a8213bb7b0aedae09af8d621e1a7e136b">has_stored_result</a> () const </td></tr>
<tr class="memdesc:a8213bb7b0aedae09af8d621e1a7e136b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this Result instance has a stored result.  More...<br /></td></tr>
<tr class="separator:a8213bb7b0aedae09af8d621e1a7e136b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a99b158932252c709cb2d4861db566a0a"><td class="memItemLeft" align="right" valign="top"><a class="el" href="index.html">Result</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a99b158932252c709cb2d4861db566a0a">retrieve</a> () const </td></tr>
<tr class="memdesc:a99b158932252c709cb2d4861db566a0a"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get a stored result.  More...<br /></td></tr>
<tr class="separator:a99b158932252c709cb2d4861db566a0a"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad69c1e88a1245c4c1f13fcba333c8d7e"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad69c1e88a1245c4c1f13fcba333c8d7e">set_uri</a> (std::string const &amp;<a class="el" href="#a5642d5984ba110c3b7d268cc2668f413">uri</a>)</td></tr>
<tr class="memdesc:ad69c1e88a1245c4c1f13fcba333c8d7e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the "uri" attribute of this result. <br /></td></tr>
<tr class="separator:ad69c1e88a1245c4c1f13fcba333c8d7e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:adf8cf3d863babb02107fb5ef35acc925"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#adf8cf3d863babb02107fb5ef35acc925">set_title</a> (std::string const &amp;<a class="el" href="#a318887472ccc1034a64a3ec1d3b0d7d6">title</a>)</td></tr>
<tr class="memdesc:adf8cf3d863babb02107fb5ef35acc925"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the "title" attribute of this result.  More...<br /></td></tr>
<tr class="separator:adf8cf3d863babb02107fb5ef35acc925"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3f2e512b10dbf2ed867d260ec33a89a1"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a3f2e512b10dbf2ed867d260ec33a89a1">set_art</a> (std::string const &amp;image)</td></tr>
<tr class="memdesc:a3f2e512b10dbf2ed867d260ec33a89a1"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the "art" attribute of this result.  More...<br /></td></tr>
<tr class="separator:a3f2e512b10dbf2ed867d260ec33a89a1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aaea2d65663a8553b90a87b5b92c47f8f"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aaea2d65663a8553b90a87b5b92c47f8f">set_dnd_uri</a> (std::string const &amp;<a class="el" href="#af98171266eeac7360f1c1ef7b0f58958">dnd_uri</a>)</td></tr>
<tr class="memdesc:aaea2d65663a8553b90a87b5b92c47f8f"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the "dnd_uri" attribute of this result.  More...<br /></td></tr>
<tr class="separator:aaea2d65663a8553b90a87b5b92c47f8f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5a132eb82702829e2fd026e088e4aa08"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5a132eb82702829e2fd026e088e4aa08">set_intercept_activation</a> ()</td></tr>
<tr class="memdesc:a5a132eb82702829e2fd026e088e4aa08"><td class="mdescLeft">&#160;</td><td class="mdescRight">Indicates to the receiver that this scope should intercept activation requests for this result.  More...<br /></td></tr>
<tr class="separator:a5a132eb82702829e2fd026e088e4aa08"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac3e57ec9bf9a3bc5a517f91ff9605f6b"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac3e57ec9bf9a3bc5a517f91ff9605f6b">direct_activation</a> () const </td></tr>
<tr class="memdesc:ac3e57ec9bf9a3bc5a517f91ff9605f6b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this result should be activated directly by the shell because the scope doesn't handle activation of this result.  More...<br /></td></tr>
<tr class="separator:ac3e57ec9bf9a3bc5a517f91ff9605f6b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1a91e1cbb08e91366e92b7bcd76861d2"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a1a91e1cbb08e91366e92b7bcd76861d2">target_scope_proxy</a> () const </td></tr>
<tr class="memdesc:a1a91e1cbb08e91366e92b7bcd76861d2"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the proxy of a scope that handles activation and preview of this result.  More...<br /></td></tr>
<tr class="separator:a1a91e1cbb08e91366e92b7bcd76861d2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a157ebfcc5c28649af2761ef58f68de76"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Variant.md">Variant</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a157ebfcc5c28649af2761ef58f68de76">operator[]</a> (std::string const &amp;key)</td></tr>
<tr class="memdesc:a157ebfcc5c28649af2761ef58f68de76"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns reference of a Result attribute.  More...<br /></td></tr>
<tr class="separator:a157ebfcc5c28649af2761ef58f68de76"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4e0664aba7b2613883a24f98450b71c0"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a4e0664aba7b2613883a24f98450b71c0">operator[]</a> (std::string const &amp;key) const </td></tr>
<tr class="memdesc:a4e0664aba7b2613883a24f98450b71c0"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a const reference to a Result attribute.  More...<br /></td></tr>
<tr class="separator:a4e0664aba7b2613883a24f98450b71c0"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5642d5984ba110c3b7d268cc2668f413"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5642d5984ba110c3b7d268cc2668f413">uri</a> () const noexcept</td></tr>
<tr class="memdesc:a5642d5984ba110c3b7d268cc2668f413"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the "uri" property of this Result.  More...<br /></td></tr>
<tr class="separator:a5642d5984ba110c3b7d268cc2668f413"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a318887472ccc1034a64a3ec1d3b0d7d6"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a318887472ccc1034a64a3ec1d3b0d7d6">title</a> () const noexcept</td></tr>
<tr class="memdesc:a318887472ccc1034a64a3ec1d3b0d7d6"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the "title" property of this Result.  More...<br /></td></tr>
<tr class="separator:a318887472ccc1034a64a3ec1d3b0d7d6"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aeaeafd3fd83172104e501474191a6e4d"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aeaeafd3fd83172104e501474191a6e4d">art</a> () const noexcept</td></tr>
<tr class="memdesc:aeaeafd3fd83172104e501474191a6e4d"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the "art" property of this Result.  More...<br /></td></tr>
<tr class="separator:aeaeafd3fd83172104e501474191a6e4d"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af98171266eeac7360f1c1ef7b0f58958"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af98171266eeac7360f1c1ef7b0f58958">dnd_uri</a> () const noexcept</td></tr>
<tr class="memdesc:af98171266eeac7360f1c1ef7b0f58958"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the "dnd_uri" property of this Result.  More...<br /></td></tr>
<tr class="separator:af98171266eeac7360f1c1ef7b0f58958"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a442b87e28f762addb0d81ccd03a11532"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a442b87e28f762addb0d81ccd03a11532">contains</a> (std::string const &amp;key) const </td></tr>
<tr class="memdesc:a442b87e28f762addb0d81ccd03a11532"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this Result has an attribute.  More...<br /></td></tr>
<tr class="separator:a442b87e28f762addb0d81ccd03a11532"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a490b5b5da2c3d7b122cfadae25cde3af"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a490b5b5da2c3d7b122cfadae25cde3af">value</a> (std::string const &amp;key) const </td></tr>
<tr class="memdesc:a490b5b5da2c3d7b122cfadae25cde3af"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the value of an attribute.  More...<br /></td></tr>
<tr class="separator:a490b5b5da2c3d7b122cfadae25cde3af"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acd3c05fe73b442facc1cb8d0fc0ffce2"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#acd3c05fe73b442facc1cb8d0fc0ffce2">serialize</a> () const </td></tr>
<tr class="memdesc:acd3c05fe73b442facc1cb8d0fc0ffce2"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a dictionary of all attributes of this Result instance.  More...<br /></td></tr>
<tr class="separator:acd3c05fe73b442facc1cb8d0fc0ffce2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a454b78b004b954575c159deda871dd97"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a454b78b004b954575c159deda871dd97">is_account_login_result</a> () const </td></tr>
<tr class="memdesc:a454b78b004b954575c159deda871dd97"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this result is an online account login result.  More...<br /></td></tr>
<tr class="separator:a454b78b004b954575c159deda871dd97"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa60fe8b5e2b5959b5f6f3883e5f2facf"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa60fe8b5e2b5959b5f6f3883e5f2facf">operator==</a> (<a class="el" href="index.html">Result</a> const &amp;other) const </td></tr>
<tr class="memdesc:aa60fe8b5e2b5959b5f6f3883e5f2facf"><td class="mdescLeft">&#160;</td><td class="mdescRight">Compare result.  More...<br /></td></tr>
<tr class="separator:aa60fe8b5e2b5959b5f6f3883e5f2facf"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a0e48c4b3cf193f94bd513b79d74a7f6c"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>Result</b> (<a class="el" href="index.html">Result</a> const &amp;other)</td></tr>
<tr class="separator:a0e48c4b3cf193f94bd513b79d74a7f6c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a987b0f1e2013c15c8aa77385e6a7aca3"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>Result</b> (<a class="el" href="index.html">Result</a> &amp;&amp;)</td></tr>
<tr class="separator:a987b0f1e2013c15c8aa77385e6a7aca3"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7d1c263180e854dcef81082158ddd72e"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">Result</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">Result</a> const &amp;other)</td></tr>
<tr class="separator:a7d1c263180e854dcef81082158ddd72e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1333a50e7c1800fc15f15729a88eac09"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">Result</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">Result</a> &amp;&amp;)</td></tr>
<tr class="separator:a1333a50e7c1800fc15f15729a88eac09"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>The attributes of a result returned by a <a class="el" href="unity.scopes.Scope.md" title="Allows queries, preview requests, and activation requests to be sent to a scope. ">Scope</a>. </p>
<p>The <a class="el" href="index.html" title="The attributes of a result returned by a Scope. ">Result</a> API provides convenience methods for some typical attributes (title, art), but scopes are free to add and use any custom attributes with <code>operator[]</code>. The only required attribute is 'uri' and it must not be empty before calling Reply::push(). </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">virtual unity::scopes::Result::~Result </td>
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
<p>Destructor. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::Result::art </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">noexcept</span></span>  </td>
</tr>
</table>
<p>Get the "art" property of this <a class="el" href="index.html" title="The attributes of a result returned by a Scope. ">Result</a>. </p>
<p>This method returns an empty string if this attribute is not of type Variant::Type::String (e.g. it was set with operator[]). </p><dl class="section return"><dt>Returns</dt><dd>The value of "art" or the empty string. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::Result::contains </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>key</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if this <a class="el" href="index.html" title="The attributes of a result returned by a Scope. ">Result</a> has an attribute. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The attribute name. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>True if the attribute is set. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::Result::direct_activation </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if this result should be activated directly by the shell because the scope doesn't handle activation of this result. </p>
<dl class="section return"><dt>Returns</dt><dd>True if this result needs to be activated directly. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::Result::dnd_uri </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">noexcept</span></span>  </td>
</tr>
</table>
<p>Get the "dnd_uri" property of this <a class="el" href="index.html" title="The attributes of a result returned by a Scope. ">Result</a>. </p>
<p>This method returns an empty string if this attribute is not of type Variant::Type::String type (e.g. it was set with operator[]). </p><dl class="section return"><dt>Returns</dt><dd>The value of "dnd_uri" or the empty string. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::Result::has_stored_result </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if this <a class="el" href="index.html" title="The attributes of a result returned by a Scope. ">Result</a> instance has a stored result. </p>
<dl class="section return"><dt>Returns</dt><dd>True if there is a stored result </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::Result::is_account_login_result </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if this result is an online account login result. </p>
<dl class="section return"><dt>Returns</dt><dd>True if this result is an online account login result. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::Result::operator== </td>
<td>(</td>
<td class="paramtype"><a class="el" href="index.html">Result</a> const &amp;&#160;</td>
<td class="paramname"><em>other</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Compare result. </p>
<dl class="section return"><dt>Returns</dt><dd>True if results have all attributes equal. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.Variant.md">Variant</a>&amp; unity::scopes::Result::operator[] </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>key</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Returns reference of a <a class="el" href="index.html" title="The attributes of a result returned by a Scope. ">Result</a> attribute. </p>
<p>This method can be used to read or initialize both standard ("uri", "title", "art", "dnd_uri") and custom metadata attributes. Referencing a non-existing attribute automatically creates it with a default value of Variant::Type::Null. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The name of the attribute. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A reference to the attribute. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::Invalidargument</td><td>if no attribute with the given name exists. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.Variant.md">Variant</a> const&amp; unity::scopes::Result::operator[] </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>key</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Returns a const reference to a <a class="el" href="index.html" title="The attributes of a result returned by a Scope. ">Result</a> attribute. </p>
<p>This method can be used for read-only access to both standard ("uri", "title", "art", "dnd_uri") and custom metadata attributes. Referencing a non-existing attribute throws unity::InvalidArgumentException. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The name of the attribute. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>A const reference to the attribute. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::Invalidargument</td><td>if no attribute with the given name exists. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="index.html">Result</a> unity::scopes::Result::retrieve </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get a stored result. </p>
<dl class="section return"><dt>Returns</dt><dd>stored result </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::InvalidArgumentException</td><td>if no result was stored in this <a class="el" href="index.html" title="The attributes of a result returned by a Scope. ">Result</a> instance. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> unity::scopes::Result::serialize </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Returns a dictionary of all attributes of this <a class="el" href="index.html" title="The attributes of a result returned by a Scope. ">Result</a> instance. </p>
<dl class="section return"><dt>Returns</dt><dd>All base attributes and custom attributes set with add_metadata(). </dd></dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Result::set_art </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>image</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set the "art" attribute of this result. </p>
<p>Equivalent to calling <code>result["art"] = image;</code> </p>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Result::set_dnd_uri </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>dnd_uri</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set the "dnd_uri" attribute of this result. </p>
<p>Equivalent to calling <code>result["dnd_uri"] = dnd_uri;</code> </p>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Result::set_intercept_activation </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td></td>
</tr>
</table>
<p>Indicates to the receiver that this scope should intercept activation requests for this result. </p>
<p>By default, a scope receives preview requests for the results it creates, but does not receive activation requests (they are handled directly by the shell). Intercepting activation implies intercepting preview requests as well; this is important for scopes that forward results from other scopes and call <a class="el" href="#a5a132eb82702829e2fd026e088e4aa08" title="Indicates to the receiver that this scope should intercept activation requests for this result...">set_intercept_activation()</a> on these scopes. A scope that sets intercept activation flag for a result should re-implement <a class="el" href="unity.scopes.ScopeBase.md#a49a0b9ada0eeb4c71e6a2181c3d8c9e7" title="Called by the scopes runtime when a scope needs to respond to a result activation request...">ScopeBase::activate()</a> and provide an implementation of <a class="el" href="unity.scopes.ActivationQueryBase.md" title="Base class for an activation request that is executed inside a scope. ">ActivationQueryBase</a> that handles the actual activation. If not called, the result will be activated directly by the Unity shell whithout involving the scope, assuming an appropriate URI schema handler is present on the system. </p>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Result::set_title </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>title</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Set the "title" attribute of this result. </p>
<p>Equivalent to calling <code>result["title"] = title;</code> </p>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::Result::store </td>
<td>(</td>
<td class="paramtype"><a class="el" href="index.html">Result</a> const &amp;&#160;</td>
<td class="paramname"><em>other</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">bool&#160;</td>
<td class="paramname"><em>intercept_activation</em> = <code>false</code>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Stores a <a class="el" href="index.html" title="The attributes of a result returned by a Scope. ">Result</a> inside this <a class="el" href="index.html" title="The attributes of a result returned by a Scope. ">Result</a> instance. </p>
<p>This method is meant to be used by aggregator scopes which want to modify results they receive, but want to keep a copy of the original result so that they can be correctly handled by the original scopes who created them when it comes to activation or previews. Scopes middleware will automatically pass the correct inner stored result to the activation or preview request handler of a scope which created it. </p><dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">other</td><td>The original result to store within this result. </td></tr>
<tr><td class="paramname">intercept_activation</td><td>True if this scope should receive activation and preview requests. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> unity::scopes::Result::target_scope_proxy </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the proxy of a scope that handles activation and preview of this result. </p>
<p>The proxy is available only when receiving this result from a scope, otherwise this method throws LogicException. Activation requests should be sent to a scope returned by this method only if <a class="el" href="#ac3e57ec9bf9a3bc5a517f91ff9605f6b" title="Check if this result should be activated directly by the shell because the scope doesn&#39;t handle activ...">direct_activation()</a> is false. </p><dl class="section return"><dt>Returns</dt><dd>The scope proxy. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::Result::title </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">noexcept</span></span>  </td>
</tr>
</table>
<p>Get the "title" property of this <a class="el" href="index.html" title="The attributes of a result returned by a Scope. ">Result</a>. </p>
<p>This method returns an empty string if this attribute is not of type Variant::Type::String (e.g. it was set with operator[]). </p><dl class="section return"><dt>Returns</dt><dd>The value of "title" or the empty string. </dd></dl>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::Result::uri </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">noexcept</span></span>  </td>
</tr>
</table>
<p>Get the "uri" property of this <a class="el" href="index.html" title="The attributes of a result returned by a Scope. ">Result</a>. </p>
<p>This method returns an empty string if this attribute is not of type Variant::Type::String (e.g. it was set with operator[]). </p><dl class="section return"><dt>Returns</dt><dd>The value of "uri" or the empty string. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.Variant.md">Variant</a> const&amp; unity::scopes::Result::value </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>key</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the value of an attribute. </p>
<p>Note: if int64_t value has been stored in the <a class="el" href="index.html" title="The attributes of a result returned by a Scope. ">Result</a> but it doesn't exceed maxium range of 32 bit integer and if results come from the cache (see <a class="el" href="unity.scopes.SearchReply.md#a4ba805136164b11bb358917070cde24d" title="Push the results that were produced by the most recent surfacing query. ">SearchReply::push_surfacing_results_from_cache()</a>), then the value may be made available as 32 bit int; therefore the code should always check the type of returned <a class="el" href="unity.scopes.Variant.md" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> and depending on that use Variant::get_int() or Variant::get_int_64_t() when dealing with 64-bit integers. This is not needed when using 32 bit integers only.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">key</td><td>The attribute name. </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>The attribute value. </dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::InvalidArgumentException</td><td>if given attribute hasn't been set. </td></tr>
</table>
</dd>
</dl>
