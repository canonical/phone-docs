---
Title: unity.scopes.CategorisedResult
---

# unity.scopes.CategorisedResult

<p>A result, including the category it belongs to.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/CategorisedResult.h&gt;</code></p>
Inheritance diagram for unity::scopes::CategorisedResult:
<img src="https://developer.ubuntu.com/static/devportal_uploaded/37662741-5bf8-4d90-969d-bf1a00677beb-../unity.scopes.CategorisedResult/classunity_1_1scopes_1_1_categorised_result__inherit__graph.png" border="0" alt="Inheritance graph"/>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a28968f35dc3dc3cc1d2d2407e180933c"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a28968f35dc3dc3cc1d2d2407e180933c">CategorisedResult</a> (Category::SCPtr <a class="el" href="#aa6d3def1bc1a254046d7c5a34ecefa85">category</a>)</td></tr>
<tr class="memdesc:a28968f35dc3dc3cc1d2d2407e180933c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Creates a CategorisedResult with given category, with all base attributes initially empty.  More...<br /></td></tr>
<tr class="separator:a28968f35dc3dc3cc1d2d2407e180933c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8978affd683add658580499c9e954dbe"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a8978affd683add658580499c9e954dbe">set_category</a> (Category::SCPtr <a class="el" href="#aa6d3def1bc1a254046d7c5a34ecefa85">category</a>)</td></tr>
<tr class="memdesc:a8978affd683add658580499c9e954dbe"><td class="mdescLeft">&#160;</td><td class="mdescRight">Updates the category of this result.  More...<br /></td></tr>
<tr class="separator:a8978affd683add658580499c9e954dbe"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa6d3def1bc1a254046d7c5a34ecefa85"><td class="memItemLeft" align="right" valign="top">Category::SCPtr&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aa6d3def1bc1a254046d7c5a34ecefa85">category</a> () const </td></tr>
<tr class="memdesc:aa6d3def1bc1a254046d7c5a34ecefa85"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return category of this result. Get the category instance this result belongs to.  More...<br /></td></tr>
<tr class="separator:aa6d3def1bc1a254046d7c5a34ecefa85"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:ac1cdb47fe113748db7977c4cd30d5024"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>CategorisedResult</b> (<a class="el" href="index.html">CategorisedResult</a> const &amp;other)</td></tr>
<tr class="separator:ac1cdb47fe113748db7977c4cd30d5024"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac84418647404768955080879ef851735"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">CategorisedResult</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">CategorisedResult</a> const &amp;other)</td></tr>
<tr class="separator:ac84418647404768955080879ef851735"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5ebd111e53b92da5423211545e480d0b"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>CategorisedResult</b> (<a class="el" href="index.html">CategorisedResult</a> &amp;&amp;)</td></tr>
<tr class="separator:a5ebd111e53b92da5423211545e480d0b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a04884020d59d81ade02afe7aa77865fd"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">CategorisedResult</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">CategorisedResult</a> &amp;&amp;)</td></tr>
<tr class="separator:a04884020d59d81ade02afe7aa77865fd"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="inherit_header pub_methods_classunity_1_1scopes_1_1_result"><td colspan="2" onclick="javascript:toggleInherit('pub_methods_classunity_1_1scopes_1_1_result')"><img src="https://developer.ubuntu.com/static/devportal_uploaded/970db98c-a891-4cf0-ad5c-ebc17f3baf17-../unity.scopes.CategorisedResult/closed.png" alt="-"/>&#160;Public Member Functions inherited from <a class="el" href="unity.scopes.Result.md">unity::scopes::Result</a></td></tr>
<tr class="memitem:af50d9e95694cc46f4c76369e97aec927 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top">virtual&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#af50d9e95694cc46f4c76369e97aec927">~Result</a> ()</td></tr>
<tr class="separator:af50d9e95694cc46f4c76369e97aec927 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a744776333a9748ba41dace7c6943ca4d inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#a744776333a9748ba41dace7c6943ca4d">store</a> (<a class="el" href="unity.scopes.Result.md">Result</a> const &amp;other, bool intercept_activation=false)</td></tr>
<tr class="memdesc:a744776333a9748ba41dace7c6943ca4d inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Stores a Result inside this Result instance.  More...<br /></td></tr>
<tr class="separator:a744776333a9748ba41dace7c6943ca4d inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8213bb7b0aedae09af8d621e1a7e136b inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#a8213bb7b0aedae09af8d621e1a7e136b">has_stored_result</a> () const </td></tr>
<tr class="memdesc:a8213bb7b0aedae09af8d621e1a7e136b inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this Result instance has a stored result.  More...<br /></td></tr>
<tr class="separator:a8213bb7b0aedae09af8d621e1a7e136b inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a99b158932252c709cb2d4861db566a0a inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Result.md">Result</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#a99b158932252c709cb2d4861db566a0a">retrieve</a> () const </td></tr>
<tr class="memdesc:a99b158932252c709cb2d4861db566a0a inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get a stored result.  More...<br /></td></tr>
<tr class="separator:a99b158932252c709cb2d4861db566a0a inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad69c1e88a1245c4c1f13fcba333c8d7e inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top">
void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#ad69c1e88a1245c4c1f13fcba333c8d7e">set_uri</a> (std::string const &amp;<a class="el" href="unity.scopes.Result.md#a5642d5984ba110c3b7d268cc2668f413">uri</a>)</td></tr>
<tr class="memdesc:ad69c1e88a1245c4c1f13fcba333c8d7e inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the "uri" attribute of this result. <br /></td></tr>
<tr class="separator:ad69c1e88a1245c4c1f13fcba333c8d7e inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:adf8cf3d863babb02107fb5ef35acc925 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#adf8cf3d863babb02107fb5ef35acc925">set_title</a> (std::string const &amp;<a class="el" href="unity.scopes.Result.md#a318887472ccc1034a64a3ec1d3b0d7d6">title</a>)</td></tr>
<tr class="memdesc:adf8cf3d863babb02107fb5ef35acc925 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the "title" attribute of this result.  More...<br /></td></tr>
<tr class="separator:adf8cf3d863babb02107fb5ef35acc925 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a3f2e512b10dbf2ed867d260ec33a89a1 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#a3f2e512b10dbf2ed867d260ec33a89a1">set_art</a> (std::string const &amp;image)</td></tr>
<tr class="memdesc:a3f2e512b10dbf2ed867d260ec33a89a1 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the "art" attribute of this result.  More...<br /></td></tr>
<tr class="separator:a3f2e512b10dbf2ed867d260ec33a89a1 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aaea2d65663a8553b90a87b5b92c47f8f inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#aaea2d65663a8553b90a87b5b92c47f8f">set_dnd_uri</a> (std::string const &amp;<a class="el" href="unity.scopes.Result.md#af98171266eeac7360f1c1ef7b0f58958">dnd_uri</a>)</td></tr>
<tr class="memdesc:aaea2d65663a8553b90a87b5b92c47f8f inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Set the "dnd_uri" attribute of this result.  More...<br /></td></tr>
<tr class="separator:aaea2d65663a8553b90a87b5b92c47f8f inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5a132eb82702829e2fd026e088e4aa08 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#a5a132eb82702829e2fd026e088e4aa08">set_intercept_activation</a> ()</td></tr>
<tr class="memdesc:a5a132eb82702829e2fd026e088e4aa08 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Indicates to the receiver that this scope should intercept activation requests for this result.  More...<br /></td></tr>
<tr class="separator:a5a132eb82702829e2fd026e088e4aa08 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac3e57ec9bf9a3bc5a517f91ff9605f6b inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#ac3e57ec9bf9a3bc5a517f91ff9605f6b">direct_activation</a> () const </td></tr>
<tr class="memdesc:ac3e57ec9bf9a3bc5a517f91ff9605f6b inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this result should be activated directly by the shell because the scope doesn't handle activation of this result.  More...<br /></td></tr>
<tr class="separator:ac3e57ec9bf9a3bc5a517f91ff9605f6b inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1a91e1cbb08e91366e92b7bcd76861d2 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#a1a91e1cbb08e91366e92b7bcd76861d2">target_scope_proxy</a> () const </td></tr>
<tr class="memdesc:a1a91e1cbb08e91366e92b7bcd76861d2 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the proxy of a scope that handles activation and preview of this result.  More...<br /></td></tr>
<tr class="separator:a1a91e1cbb08e91366e92b7bcd76861d2 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a157ebfcc5c28649af2761ef58f68de76 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Variant.md">Variant</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#a157ebfcc5c28649af2761ef58f68de76">operator[]</a> (std::string const &amp;key)</td></tr>
<tr class="memdesc:a157ebfcc5c28649af2761ef58f68de76 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns reference of a Result attribute.  More...<br /></td></tr>
<tr class="separator:a157ebfcc5c28649af2761ef58f68de76 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4e0664aba7b2613883a24f98450b71c0 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#a4e0664aba7b2613883a24f98450b71c0">operator[]</a> (std::string const &amp;key) const </td></tr>
<tr class="memdesc:a4e0664aba7b2613883a24f98450b71c0 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a const reference to a Result attribute.  More...<br /></td></tr>
<tr class="separator:a4e0664aba7b2613883a24f98450b71c0 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5642d5984ba110c3b7d268cc2668f413 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#a5642d5984ba110c3b7d268cc2668f413">uri</a> () const noexcept</td></tr>
<tr class="memdesc:a5642d5984ba110c3b7d268cc2668f413 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the "uri" property of this Result.  More...<br /></td></tr>
<tr class="separator:a5642d5984ba110c3b7d268cc2668f413 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a318887472ccc1034a64a3ec1d3b0d7d6 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#a318887472ccc1034a64a3ec1d3b0d7d6">title</a> () const noexcept</td></tr>
<tr class="memdesc:a318887472ccc1034a64a3ec1d3b0d7d6 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the "title" property of this Result.  More...<br /></td></tr>
<tr class="separator:a318887472ccc1034a64a3ec1d3b0d7d6 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aeaeafd3fd83172104e501474191a6e4d inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#aeaeafd3fd83172104e501474191a6e4d">art</a> () const noexcept</td></tr>
<tr class="memdesc:aeaeafd3fd83172104e501474191a6e4d inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the "art" property of this Result.  More...<br /></td></tr>
<tr class="separator:aeaeafd3fd83172104e501474191a6e4d inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af98171266eeac7360f1c1ef7b0f58958 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#af98171266eeac7360f1c1ef7b0f58958">dnd_uri</a> () const noexcept</td></tr>
<tr class="memdesc:af98171266eeac7360f1c1ef7b0f58958 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the "dnd_uri" property of this Result.  More...<br /></td></tr>
<tr class="separator:af98171266eeac7360f1c1ef7b0f58958 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a442b87e28f762addb0d81ccd03a11532 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#a442b87e28f762addb0d81ccd03a11532">contains</a> (std::string const &amp;key) const </td></tr>
<tr class="memdesc:a442b87e28f762addb0d81ccd03a11532 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this Result has an attribute.  More...<br /></td></tr>
<tr class="separator:a442b87e28f762addb0d81ccd03a11532 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a490b5b5da2c3d7b122cfadae25cde3af inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.Variant.md">Variant</a> const &amp;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#a490b5b5da2c3d7b122cfadae25cde3af">value</a> (std::string const &amp;key) const </td></tr>
<tr class="memdesc:a490b5b5da2c3d7b122cfadae25cde3af inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the value of an attribute.  More...<br /></td></tr>
<tr class="separator:a490b5b5da2c3d7b122cfadae25cde3af inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:acd3c05fe73b442facc1cb8d0fc0ffce2 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#acd3c05fe73b442facc1cb8d0fc0ffce2">serialize</a> () const </td></tr>
<tr class="memdesc:acd3c05fe73b442facc1cb8d0fc0ffce2 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Returns a dictionary of all attributes of this Result instance.  More...<br /></td></tr>
<tr class="separator:acd3c05fe73b442facc1cb8d0fc0ffce2 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a454b78b004b954575c159deda871dd97 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#a454b78b004b954575c159deda871dd97">is_account_login_result</a> () const </td></tr>
<tr class="memdesc:a454b78b004b954575c159deda871dd97 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this result is an online account login result.  More...<br /></td></tr>
<tr class="separator:a454b78b004b954575c159deda871dd97 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aa60fe8b5e2b5959b5f6f3883e5f2facf inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="unity.scopes.Result.md#aa60fe8b5e2b5959b5f6f3883e5f2facf">operator==</a> (<a class="el" href="unity.scopes.Result.md">Result</a> const &amp;other) const </td></tr>
<tr class="memdesc:aa60fe8b5e2b5959b5f6f3883e5f2facf inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="mdescLeft">&#160;</td><td class="mdescRight">Compare result.  More...<br /></td></tr>
<tr class="separator:aa60fe8b5e2b5959b5f6f3883e5f2facf inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a0e48c4b3cf193f94bd513b79d74a7f6c inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>Result</b> (<a class="el" href="unity.scopes.Result.md">Result</a> const &amp;other)</td></tr>
<tr class="separator:a0e48c4b3cf193f94bd513b79d74a7f6c inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a987b0f1e2013c15c8aa77385e6a7aca3 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>Result</b> (<a class="el" href="unity.scopes.Result.md">Result</a> &amp;&amp;)</td></tr>
<tr class="separator:a987b0f1e2013c15c8aa77385e6a7aca3 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7d1c263180e854dcef81082158ddd72e inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.Result.md">Result</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="unity.scopes.Result.md">Result</a> const &amp;other)</td></tr>
<tr class="separator:a7d1c263180e854dcef81082158ddd72e inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a1333a50e7c1800fc15f15729a88eac09 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.Result.md">Result</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="unity.scopes.Result.md">Result</a> &amp;&amp;)</td></tr>
<tr class="separator:a1333a50e7c1800fc15f15729a88eac09 inherit pub_methods_classunity_1_1scopes_1_1_result"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>A result, including the category it belongs to. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="mlabels">
<tr>
<td class="mlabels-left">
<table class="memname">
<tr>
<td class="memname">unity::scopes::CategorisedResult::CategorisedResult </td>
<td>(</td>
<td class="paramtype">Category::SCPtr&#160;</td>
<td class="paramname"><em>category</em></td><td>)</td>
<td></td>
</tr>
</table>
</td>
<td class="mlabels-right">
<span class="mlabels"><span class="mlabel">explicit</span></span>  </td>
</tr>
</table>
<p>Creates a <a class="el" href="index.html" title="A result, including the category it belongs to. ">CategorisedResult</a> with given category, with all base attributes initially empty. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">category</td><td>The category for the result. </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">Category::SCPtr unity::scopes::CategorisedResult::category </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Return category of this result. Get the category instance this result belongs to. </p>
<dl class="section return"><dt>Returns</dt><dd>The category instance. </dd></dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::CategorisedResult::set_category </td>
<td>(</td>
<td class="paramtype">Category::SCPtr&#160;</td>
<td class="paramname"><em>category</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Updates the category of this result. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">category</td><td>The category for the result. </td></tr>
</table>
</dd>
</dl>
