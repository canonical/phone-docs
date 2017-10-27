---
Title: unity.scopes.ScopeMetadata
---

# unity.scopes.ScopeMetadata

<p>Holds scope attributes such as name, description, icon etc.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/ScopeMetadata.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Types</h2></td></tr>
<tr class="memitem:a6fb29deb86215b969a721b9c67328eeb"><td class="memItemLeft" align="right" valign="top">enum &#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a6fb29deb86215b969a721b9c67328eeb">ResultsTtlType</a> { <b>None</b>, 
<b>Small</b>, 
<b>Medium</b>, 
<b>Large</b>
}</td></tr>
<tr class="memdesc:a6fb29deb86215b969a721b9c67328eeb"><td class="mdescLeft">&#160;</td><td class="mdescRight">Enum representing the expected valid lifetime of results from the scope. <br /></td></tr>
<tr class="separator:a6fb29deb86215b969a721b9c67328eeb"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:abc13282db1a0d899e6a1daf2a40beba8"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#abc13282db1a0d899e6a1daf2a40beba8">scope_id</a> () const </td></tr>
<tr class="memdesc:abc13282db1a0d899e6a1daf2a40beba8"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the scope identifier.  More...<br /></td></tr>
<tr class="separator:abc13282db1a0d899e6a1daf2a40beba8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2d3a7700ed04e0f4b6ccb054d869d8c2"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a2d3a7700ed04e0f4b6ccb054d869d8c2">proxy</a> () const </td></tr>
<tr class="memdesc:a2d3a7700ed04e0f4b6ccb054d869d8c2"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the proxy object for this scope.  More...<br /></td></tr>
<tr class="separator:a2d3a7700ed04e0f4b6ccb054d869d8c2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7aca280ea8e8b1a96ac24b8f7efabfe8"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7aca280ea8e8b1a96ac24b8f7efabfe8">display_name</a> () const </td></tr>
<tr class="memdesc:a7aca280ea8e8b1a96ac24b8f7efabfe8"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the display name for this scope.  More...<br /></td></tr>
<tr class="separator:a7aca280ea8e8b1a96ac24b8f7efabfe8"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:adc16d2c66411956f96a6ba3f0b33d811"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#adc16d2c66411956f96a6ba3f0b33d811">description</a> () const </td></tr>
<tr class="memdesc:adc16d2c66411956f96a6ba3f0b33d811"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the description for this scope.  More...<br /></td></tr>
<tr class="separator:adc16d2c66411956f96a6ba3f0b33d811"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a67465b69a72c548c1c46919dff6809d7"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a67465b69a72c548c1c46919dff6809d7">author</a> () const </td></tr>
<tr class="memdesc:a67465b69a72c548c1c46919dff6809d7"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the author for this scope.  More...<br /></td></tr>
<tr class="separator:a67465b69a72c548c1c46919dff6809d7"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aabeec6ec7dad68309af95c5a1731673c"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aabeec6ec7dad68309af95c5a1731673c">art</a> () const </td></tr>
<tr class="memdesc:aabeec6ec7dad68309af95c5a1731673c"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the art for this scope.  More...<br /></td></tr>
<tr class="separator:aabeec6ec7dad68309af95c5a1731673c"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af6d6753b013551a2d465a21f8f8bf131"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af6d6753b013551a2d465a21f8f8bf131">icon</a> () const </td></tr>
<tr class="memdesc:af6d6753b013551a2d465a21f8f8bf131"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the icon for this scope.  More...<br /></td></tr>
<tr class="separator:af6d6753b013551a2d465a21f8f8bf131"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5c8ae76986842475d4eaf4d2304f6143"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5c8ae76986842475d4eaf4d2304f6143">search_hint</a> () const </td></tr>
<tr class="memdesc:a5c8ae76986842475d4eaf4d2304f6143"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the search hint for this scope.  More...<br /></td></tr>
<tr class="separator:a5c8ae76986842475d4eaf4d2304f6143"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:abdeacf5f5dbdb8c75b5a2cbc32e80d82"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#abdeacf5f5dbdb8c75b5a2cbc32e80d82">hot_key</a> () const </td></tr>
<tr class="memdesc:abdeacf5f5dbdb8c75b5a2cbc32e80d82"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the hot key for this scope.  More...<br /></td></tr>
<tr class="separator:abdeacf5f5dbdb8c75b5a2cbc32e80d82"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a24360dffb0183b75e064148d5952fdcb"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a24360dffb0183b75e064148d5952fdcb">invisible</a> () const </td></tr>
<tr class="memdesc:a24360dffb0183b75e064148d5952fdcb"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this scope should be hidden in the Dash.  More...<br /></td></tr>
<tr class="separator:a24360dffb0183b75e064148d5952fdcb"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5929e9ed85eabc03a1bd2324a1234fd6"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5929e9ed85eabc03a1bd2324a1234fd6">appearance_attributes</a> () const </td></tr>
<tr class="memdesc:a5929e9ed85eabc03a1bd2324a1234fd6"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get optional display attributes.  More...<br /></td></tr>
<tr class="separator:a5929e9ed85eabc03a1bd2324a1234fd6"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6c4592204ef51a8a6eec2f6cc65ba8cb"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a6c4592204ef51a8a6eec2f6cc65ba8cb">scope_directory</a> () const </td></tr>
<tr class="memdesc:a6c4592204ef51a8a6eec2f6cc65ba8cb"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get directory where scope config files and .so file lives.  More...<br /></td></tr>
<tr class="separator:a6c4592204ef51a8a6eec2f6cc65ba8cb"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:af2aaf529613cd41a1a9a3895271eab32"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af2aaf529613cd41a1a9a3895271eab32">serialize</a> () const </td></tr>
<tr class="memdesc:af2aaf529613cd41a1a9a3895271eab32"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return a dictionary of all metadata attributes.  More...<br /></td></tr>
<tr class="separator:af2aaf529613cd41a1a9a3895271eab32"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:aab63ca25ab0e3ff312908e07d3334ae0"><td class="memItemLeft" align="right" valign="top"><a class="el" href="#a6fb29deb86215b969a721b9c67328eeb">ResultsTtlType</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aab63ca25ab0e3ff312908e07d3334ae0">results_ttl_type</a> () const </td></tr>
<tr class="memdesc:aab63ca25ab0e3ff312908e07d3334ae0"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return the TTL for the results this scope produces.  More...<br /></td></tr>
<tr class="separator:aab63ca25ab0e3ff312908e07d3334ae0"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6351dda2c91889a06f0ec31e669ab385"><td class="memItemLeft" align="right" valign="top"><a class="el" href="unity.scopes.md#aa3bf32d584efd902bca79698a07dd934">VariantArray</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a6351dda2c91889a06f0ec31e669ab385">settings_definitions</a> () const </td></tr>
<tr class="memdesc:a6351dda2c91889a06f0ec31e669ab385"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return the settings definitions for this scope.  More...<br /></td></tr>
<tr class="separator:a6351dda2c91889a06f0ec31e669ab385"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a688ff4dbec4f71d8b6bcd3b0879b737b"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a688ff4dbec4f71d8b6bcd3b0879b737b">location_data_needed</a> () const </td></tr>
<tr class="memdesc:a688ff4dbec4f71d8b6bcd3b0879b737b"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this scope wants location data.  More...<br /></td></tr>
<tr class="separator:a688ff4dbec4f71d8b6bcd3b0879b737b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae804c65fc5a6a3fdf85d6c2a0280c3af"><td class="memItemLeft" align="right" valign="top">std::vector&lt; std::string &gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ae804c65fc5a6a3fdf85d6c2a0280c3af">child_scope_ids</a> () const </td></tr>
<tr class="memdesc:ae804c65fc5a6a3fdf85d6c2a0280c3af"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return the list of scope identifiers aggregated by this scope.  More...<br /></td></tr>
<tr class="separator:ae804c65fc5a6a3fdf85d6c2a0280c3af"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ac7a2cf80883ad3de1d726728fc0b8e72"><td class="memItemLeft" align="right" valign="top">int&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ac7a2cf80883ad3de1d726728fc0b8e72">version</a> () const </td></tr>
<tr class="memdesc:ac7a2cf80883ad3de1d726728fc0b8e72"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return the version of the scope.  More...<br /></td></tr>
<tr class="separator:ac7a2cf80883ad3de1d726728fc0b8e72"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ad195fd0f83a5afb2aaaf738ee237b045"><td class="memItemLeft" align="right" valign="top">std::set&lt; std::string &gt;&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#ad195fd0f83a5afb2aaaf738ee237b045">keywords</a> () const </td></tr>
<tr class="memdesc:ad195fd0f83a5afb2aaaf738ee237b045"><td class="mdescLeft">&#160;</td><td class="mdescRight">Return the set of keywords specified by this scope.  More...<br /></td></tr>
<tr class="separator:ad195fd0f83a5afb2aaaf738ee237b045"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a80ba381c5b402b3c4cd57f0f52271cab"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a80ba381c5b402b3c4cd57f0f52271cab">is_aggregator</a> () const </td></tr>
<tr class="memdesc:a80ba381c5b402b3c4cd57f0f52271cab"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if this scope is an aggregator.  More...<br /></td></tr>
<tr class="separator:a80ba381c5b402b3c4cd57f0f52271cab"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:aef700d4bee866b1ae15cc30232256f1f"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>ScopeMetadata</b> (<a class="el" href="index.html">ScopeMetadata</a> const &amp;other)</td></tr>
<tr class="separator:aef700d4bee866b1ae15cc30232256f1f"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a01b7b68f295a960bda90eda90a02a035"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>ScopeMetadata</b> (<a class="el" href="index.html">ScopeMetadata</a> &amp;&amp;)</td></tr>
<tr class="separator:a01b7b68f295a960bda90eda90a02a035"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2fa9b35ac14a150b4a029331dcfcba46"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">ScopeMetadata</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">ScopeMetadata</a> const &amp;other)</td></tr>
<tr class="separator:a2fa9b35ac14a150b4a029331dcfcba46"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a8977022019f1f983df98f1e21180454d"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">ScopeMetadata</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">ScopeMetadata</a> &amp;&amp;)</td></tr>
<tr class="separator:a8977022019f1f983df98f1e21180454d"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Holds scope attributes such as name, description, icon etc. </p>
<p>The information stored by <a class="el" href="index.html" title="Holds scope attributes such as name, description, icon etc. ">ScopeMetadata</a> comes from the .ini file for the given scope (for local scopes) or is fetched from the remote server (for scopes running on Smart Scopes Server). Use <a class="el" href="unity.scopes.Registry.md" title="White pages service for available scopes. ">unity::scopes::Registry</a> to get the metadata for a specific scope or all scopes. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> unity::scopes::ScopeMetadata::appearance_attributes </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get optional display attributes. </p>
<p>Appearance attributes define customized look of the scope in Scopes <a class="el" href="unity.scopes.Scope.md" title="Allows queries, preview requests, and activation requests to be sent to a scope. ">Scope</a>. </p><dl class="section return"><dt>Returns</dt><dd>Map of attributes (may be empty) </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::ScopeMetadata::art </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the art for this scope. </p>
<dl class="section return"><dt>Returns</dt><dd>The scope art. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::ScopeMetadata::author </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the author for this scope. </p>
<dl class="section return"><dt>Returns</dt><dd>The scope author. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::vector&lt;std::string&gt; unity::scopes::ScopeMetadata::child_scope_ids </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Return the list of scope identifiers aggregated by this scope. </p>
<p>The list returned by this method comes from the .ini file. The scope author must ensure that it contains all scopes that an aggregator might collect results from. This list may contain scopes that are not currently installed and are optional for proper functioning of the aggregator scope.</p>
<dl class="section return"><dt>Returns</dt><dd>The list of scopes ids aggregated by this scope. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::ScopeMetadata::description </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the description for this scope. </p>
<dl class="section return"><dt>Returns</dt><dd>The scope description. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::ScopeMetadata::display_name </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the display name for this scope. </p>
<dl class="section return"><dt>Returns</dt><dd>The scope display name. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::ScopeMetadata::hot_key </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the hot key for this scope. </p>
<dl class="section return"><dt>Returns</dt><dd>The hot key. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::ScopeMetadata::icon </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the icon for this scope. </p>
<dl class="section return"><dt>Returns</dt><dd>The scope icon. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::ScopeMetadata::invisible </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if this scope should be hidden in the Dash. </p>
<dl class="section return"><dt>Returns</dt><dd>True if this scope is invisible. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::ScopeMetadata::is_aggregator </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if this scope is an aggregator. </p>
<dl class="section return"><dt>Returns</dt><dd>True if this scope is an aggregator. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::set&lt;std::string&gt; unity::scopes::ScopeMetadata::keywords </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Return the set of keywords specified by this scope. </p>
<p>The set returned by this method is formulated from the value specified under the "Keywords" key in the scope's .ini file.</p>
<dl class="section return"><dt>Returns</dt><dd>The set of keywords specified by this scope. </dd></dl>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::ScopeMetadata::location_data_needed </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if this scope wants location data. </p>
<dl class="section return"><dt>Returns</dt><dd>True if this scope wants location data. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.md#a94db15da410f8419e4da711db842aaae">ScopeProxy</a> unity::scopes::ScopeMetadata::proxy </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the proxy object for this scope. </p>
<dl class="section return"><dt>Returns</dt><dd>The scope proxy. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="#a6fb29deb86215b969a721b9c67328eeb">ResultsTtlType</a> unity::scopes::ScopeMetadata::results_ttl_type </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Return the TTL for the results this scope produces. </p>
<dl class="section return"><dt>Returns</dt><dd>Enum of timeout type. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::ScopeMetadata::scope_directory </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get directory where scope config files and .so file lives. </p>
<p>Note that the directory is not set for remote scopes; in such case this method throws <a class="el" href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a>.</p>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname"><a class="el" href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a></td><td>if directory is not set </td></tr>
</table>
</dd>
</dl>
<dl class="section return"><dt>Returns</dt><dd>path string </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::ScopeMetadata::scope_id </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the scope identifier. </p>
<dl class="section return"><dt>Returns</dt><dd>The ID of the scope. </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::ScopeMetadata::search_hint </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the search hint for this scope. </p>
<dl class="section return"><dt>Returns</dt><dd>The search hint. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> unity::scopes::ScopeMetadata::serialize </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Return a dictionary of all metadata attributes. </p>
<dl class="section return"><dt>Returns</dt><dd>Dictionary of all metadata attributes. </dd></dl>
<table class="memname">
<tr>
<td class="memname"><a class="el" href="unity.scopes.md#aa3bf32d584efd902bca79698a07dd934">VariantArray</a> unity::scopes::ScopeMetadata::settings_definitions </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Return the settings definitions for this scope. </p>
<dl class="section return"><dt>Returns</dt><dd>The settings definition as a VariantArray. The array contains the definition of the settings in their original order.</dd></dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname"><a class="el" href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a></td><td>if the scope has no settings </td></tr>
</table>
</dd>
</dl>
<dl class="section see"><dt>See also</dt><dd>TBD TODO </dd></dl>
<table class="memname">
<tr>
<td class="memname">int unity::scopes::ScopeMetadata::version </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Return the version of the scope. </p>
<dl class="section return"><dt>Returns</dt><dd>The version or, if the scope does not define its version, the value <code>0</code>. </dd></dl>
