---
Title: unity.scopes.testing.Benchmark.Result
---

# unity.scopes.testing.Benchmark.Result

<p>The <a class="el" href="index.html" title="The Result struct encapsulates all of the result gathered from one individual benchmark run consistin...">Result</a> struct encapsulates all of the result gathered from one individual benchmark run consisting of multiple independent trials.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/testing/Benchmark.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Classes</h2></td></tr>
<tr class="memitem:"><td class="memItemLeft" align="right" valign="top">struct &#160;</td><td class="memItemRight" valign="bottom">Timing</td></tr>
<tr class="separator:"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:a6a5b4c13c5577319208b16f2fc6f376b"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a6a5b4c13c5577319208b16f2fc6f376b">load_from</a> (std::istream &amp;in)</td></tr>
<tr class="memdesc:a6a5b4c13c5577319208b16f2fc6f376b"><td class="mdescLeft">&#160;</td><td class="mdescRight">load_from restores a result from the given input stream.  More...<br /></td></tr>
<tr class="separator:a6a5b4c13c5577319208b16f2fc6f376b"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:affa8a2fa514327d6c776bb2524564683"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#affa8a2fa514327d6c776bb2524564683">save_to</a> (std::ostream &amp;out)</td></tr>
<tr class="memdesc:affa8a2fa514327d6c776bb2524564683"><td class="mdescLeft">&#160;</td><td class="mdescRight">save_to stores a result to the given output stream.  More...<br /></td></tr>
<tr class="separator:affa8a2fa514327d6c776bb2524564683"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7e39e38d5459491afcad135dfc085f20"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a7e39e38d5459491afcad135dfc085f20">load_from_xml</a> (std::istream &amp;in)</td></tr>
<tr class="memdesc:a7e39e38d5459491afcad135dfc085f20"><td class="mdescLeft">&#160;</td><td class="mdescRight">load_from_xml restores a result stored as xml from the given input stream.  More...<br /></td></tr>
<tr class="separator:a7e39e38d5459491afcad135dfc085f20"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a287d480be8dd59a705ad6d6608cb3abd"><td class="memItemLeft" align="right" valign="top">void&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a287d480be8dd59a705ad6d6608cb3abd">save_to_xml</a> (std::ostream &amp;out)</td></tr>
<tr class="memdesc:a287d480be8dd59a705ad6d6608cb3abd"><td class="mdescLeft">&#160;</td><td class="mdescRight">save_to_xml stores a result as xml to the given output stream.  More...<br /></td></tr>
<tr class="separator:a287d480be8dd59a705ad6d6608cb3abd"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table><table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Attributes</h2></td></tr>
<tr class="memitem:af4afaf13e8274b469e238169e03f6709"><td class="memItemLeft" align="right" valign="top">std::size_t&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#af4afaf13e8274b469e238169e03f6709">sample_size</a></td></tr>
<tr class="separator:af4afaf13e8274b469e238169e03f6709"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a888340f628b36ebfe7b4df0f2dd93593"><td class="memItemLeft" align="right" valign="top">
unity::scopes::testing::Benchmark::Result::Timing&#160;</td><td class="memItemRight" valign="bottom">timing</td></tr>
<tr class="memdesc:a888340f628b36ebfe7b4df0f2dd93593"><td class="mdescLeft">&#160;</td><td class="mdescRight">Runtime-specific sample data. <br /></td></tr>
<tr class="separator:a888340f628b36ebfe7b4df0f2dd93593"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>The <a class="el" href="index.html" title="The Result struct encapsulates all of the result gathered from one individual benchmark run consistin...">Result</a> struct encapsulates all of the result gathered from one individual benchmark run consisting of multiple independent trials. </p>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::testing::Benchmark::Result::load_from </td>
<td>(</td>
<td class="paramtype">std::istream &amp;&#160;</td>
<td class="paramname"><em>in</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>load_from restores a result from the given input stream. </p>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">std::runtime_error</td><td>in case of issues. </td></tr>
</table>
</dd>
</dl>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">in</td><td>The stream to read from. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::testing::Benchmark::Result::load_from_xml </td>
<td>(</td>
<td class="paramtype">std::istream &amp;&#160;</td>
<td class="paramname"><em>in</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>load_from_xml restores a result stored as xml from the given input stream. </p>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">std::runtime_error</td><td>in case of issues. </td></tr>
</table>
</dd>
</dl>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">in</td><td>The stream to read from. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::testing::Benchmark::Result::save_to </td>
<td>(</td>
<td class="paramtype">std::ostream &amp;&#160;</td>
<td class="paramname"><em>out</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>save_to stores a result to the given output stream. </p>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">std::runtime_error</td><td>in case of issues. </td></tr>
</table>
</dd>
</dl>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">out</td><td>The stream to write to. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">void unity::scopes::testing::Benchmark::Result::save_to_xml </td>
<td>(</td>
<td class="paramtype">std::ostream &amp;&#160;</td>
<td class="paramname"><em>out</em></td><td>)</td>
<td></td>
</tr>
</table>
<p>save_to_xml stores a result as xml to the given output stream. </p>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">std::runtime_error</td><td>in case of issues. </td></tr>
</table>
</dd>
</dl>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">out</td><td>The stream to write to. </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Data Documentation</h2>
<table class="memname">
<tr>
<td class="memname">std::size_t unity::scopes::testing::Benchmark::Result::sample_size</td>
</tr>
</table>
<p>Size of the sample, corresponds to number of trials. </p>
