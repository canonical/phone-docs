---
Title: unity.scopes.FilterState
---

# unity.scopes.FilterState

<p>Stores the state of multiple filters.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/FilterState.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a766de68bf8b5c99774dcd2f2e7e2ed39"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a766de68bf8b5c99774dcd2f2e7e2ed39">FilterState</a> ()</td></tr>
<tr class="memdesc:a766de68bf8b5c99774dcd2f2e7e2ed39"><td class="mdescLeft">&#160;</td><td class="mdescRight">Constructs a an empty filter state instance. <br /></td></tr>
<tr class="separator:a766de68bf8b5c99774dcd2f2e7e2ed39"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7c624fcc70cf767fdb6d6dc54e8a5015"><td class="memItemLeft" align="right" valign="top">bool&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7c624fcc70cf767fdb6d6dc54e8a5015">has_filter</a> (std::string const &amp;id) const </td></tr>
<tr class="memdesc:a7c624fcc70cf767fdb6d6dc54e8a5015"><td class="mdescLeft">&#160;</td><td class="mdescRight">Check if state for the given filter has been stored.  More...<br /></td></tr>
<tr class="separator:a7c624fcc70cf767fdb6d6dc54e8a5015"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a15c5759e79b6c75fcdd2cf802b6ffac2"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a15c5759e79b6c75fcdd2cf802b6ffac2">remove</a> (std::string const &amp;id)</td></tr>
<tr class="memdesc:a15c5759e79b6c75fcdd2cf802b6ffac2"><td class="mdescLeft">&#160;</td><td class="mdescRight">Removes the state for a specific filter.  More...<br /></td></tr>
<tr class="separator:a15c5759e79b6c75fcdd2cf802b6ffac2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment operators (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a0680e593c3b4383c11c01e3950eab393"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>FilterState</b> (<a class="el" href="index.html">FilterState</a> const &amp;other)</td></tr>
<tr class="separator:a0680e593c3b4383c11c01e3950eab393"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a4b11a81ee8f40cf5b86269b9eec0de44"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>FilterState</b> (<a class="el" href="index.html">FilterState</a> &amp;&amp;)</td></tr>
<tr class="separator:a4b11a81ee8f40cf5b86269b9eec0de44"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae6a5679d3e2c8a202648bd66431071e1"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">FilterState</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">FilterState</a> const &amp;other)</td></tr>
<tr class="separator:ae6a5679d3e2c8a202648bd66431071e1"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ae05c001c976bf55c0bada0de16760933"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">FilterState</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">FilterState</a> &amp;&amp;other)</td></tr>
<tr class="separator:ae05c001c976bf55c0bada0de16760933"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Stores the state of multiple filters. </p>
<p>The state can be examined by passing an instance of <a class="el" href="index.html" title="Stores the state of multiple filters. ">FilterState</a> to the appropriate methods of classes derived from <a class="el" href="unity.scopes.FilterBase.md" title="Base class for all implementations of filters. ">FilterBase</a>. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">bool unity::scopes::FilterState::has_filter </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>id</em></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Check if state for the given filter has been stored. </p>
<dl class="section return"><dt>Returns</dt><dd>True if state for a filter with the given ID is present; false otherwise. </dd></dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::FilterState::remove </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>id</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>Removes the state for a specific filter. </p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">id</td><td>The identity of the filter to remove. </td></tr>
</table>
</dd>
</dl>
