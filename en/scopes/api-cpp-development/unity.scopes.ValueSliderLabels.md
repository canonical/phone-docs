---
Title: unity.scopes.ValueSliderLabels
---

# unity.scopes.ValueSliderLabels

<p>Labels used by a <a class="el" href="unity.scopes.ValueSliderFilter.md" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>.  
<a href="#details">More...</a></p>
<p><code>#include &lt;unity/scopes/ValueSliderLabels.h&gt;</code></p>
<table class="memberdecls">
<tr class="heading"><td colspan="2"><h2 class="groupheader">
Public Member Functions</h2></td></tr>
<tr class="memitem:aee36eeedc9ec3d756e4b093575a5431e"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#aee36eeedc9ec3d756e4b093575a5431e">ValueSliderLabels</a> (std::string const &amp;<a class="el" href="#a199d67722ee50d4eec47c2f089670cf2">min_label</a>, std::string const &amp;<a class="el" href="#a5f471aecdaa04dbdf13112a74f524a86">max_label</a>)</td></tr>
<tr class="memdesc:aee36eeedc9ec3d756e4b093575a5431e"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create a ValueSliderLabels instance with labels for minimum and maximum values only.  More...<br /></td></tr>
<tr class="separator:aee36eeedc9ec3d756e4b093575a5431e"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a6b31441606d8e090cad12908800fb409"><td class="memItemLeft" align="right" valign="top">&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a6b31441606d8e090cad12908800fb409">ValueSliderLabels</a> (std::string const &amp;<a class="el" href="#a199d67722ee50d4eec47c2f089670cf2">min_label</a>, std::string const &amp;<a class="el" href="#a5f471aecdaa04dbdf13112a74f524a86">max_label</a>, <a class="el" href="unity.scopes.md#aa2ccb5d7acadeb38f44e9405f1b55c6b">ValueLabelPairList</a> const &amp;<a class="el" href="#adcd0e3d956206f272b6fec704b87a386">extra_labels</a>)</td></tr>
<tr class="memdesc:a6b31441606d8e090cad12908800fb409"><td class="mdescLeft">&#160;</td><td class="mdescRight">Create a ValueSliderLabels instance with labels for minimum and maximum, as well as extra labels.  More...<br /></td></tr>
<tr class="separator:a6b31441606d8e090cad12908800fb409"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a199d67722ee50d4eec47c2f089670cf2"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a199d67722ee50d4eec47c2f089670cf2">min_label</a> () const </td></tr>
<tr class="memdesc:a199d67722ee50d4eec47c2f089670cf2"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the label for the minimum value of the filter.  More...<br /></td></tr>
<tr class="separator:a199d67722ee50d4eec47c2f089670cf2"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a5f471aecdaa04dbdf13112a74f524a86"><td class="memItemLeft" align="right" valign="top">std::string&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#a5f471aecdaa04dbdf13112a74f524a86">max_label</a> () const </td></tr>
<tr class="memdesc:a5f471aecdaa04dbdf13112a74f524a86"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the label for the maximum value of the filter.  More...<br /></td></tr>
<tr class="separator:a5f471aecdaa04dbdf13112a74f524a86"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:adcd0e3d956206f272b6fec704b87a386"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="unity.scopes.md#aa2ccb5d7acadeb38f44e9405f1b55c6b">ValueLabelPairList</a>&#160;</td><td class="memItemRight" valign="bottom"><a class="el" href="#adcd0e3d956206f272b6fec704b87a386">extra_labels</a> () const </td></tr>
<tr class="memdesc:adcd0e3d956206f272b6fec704b87a386"><td class="mdescLeft">&#160;</td><td class="mdescRight">Get the labels for intermediate values of the filter. <br /></td></tr>
<tr class="separator:adcd0e3d956206f272b6fec704b87a386"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr><td colspan="2">Copy and assignment</td></tr>
<tr><td colspan="2"><p>Copy and assignment (move and non-move versions) have the usual value semantics. </p>
</td></tr>
<tr class="memitem:a5f5df72206034763f06fc27bc948f148"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>ValueSliderLabels</b> (<a class="el" href="index.html">ValueSliderLabels</a> const &amp;other)</td></tr>
<tr class="separator:a5f5df72206034763f06fc27bc948f148"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a7547d9304f3556e909ccbba873028c70"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>ValueSliderLabels</b> (<a class="el" href="index.html">ValueSliderLabels</a> &amp;&amp;)</td></tr>
<tr class="separator:a7547d9304f3556e909ccbba873028c70"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a2663d22111d07dd91d54e0b8e73fe939"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">ValueSliderLabels</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">ValueSliderLabels</a> const &amp;other)</td></tr>
<tr class="separator:a2663d22111d07dd91d54e0b8e73fe939"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:ab96f23678cef47269d0571bcefae3106"><td class="memItemLeft" align="right" valign="top">
<a class="el" href="index.html">ValueSliderLabels</a> &amp;&#160;</td><td class="memItemRight" valign="bottom"><b>operator=</b> (<a class="el" href="index.html">ValueSliderLabels</a> &amp;&amp;)</td></tr>
<tr class="separator:ab96f23678cef47269d0571bcefae3106"><td class="memSeparator" colspan="2">&#160;</td></tr>
<tr class="memitem:a583ed4b6a0b0e341c99385b82952ab43"><td class="memItemLeft" align="right" valign="top">
&#160;</td><td class="memItemRight" valign="bottom"><b>~ValueSliderLabels</b> ()</td></tr>
<tr class="separator:a583ed4b6a0b0e341c99385b82952ab43"><td class="memSeparator" colspan="2">&#160;</td></tr>
</table>
<a name="details" id="details"></a><h2 class="groupheader">Detailed Description</h2>
<p>Labels used by a <a class="el" href="unity.scopes.ValueSliderFilter.md" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>. </p>
<p>The <a class="el" href="index.html" title="Labels used by a ValueSliderFilter. ">ValueSliderLabels</a> class holds labels for a <a class="el" href="unity.scopes.ValueSliderFilter.md" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>. Labels for the minimum and maximum values must be provided. In addition, an arbitrary number of extra labels can be defined; these labels mark intermediate values between the minimum and maximum value. </p>
<h2 class="groupheader">Constructor &amp; Destructor Documentation</h2>
<table class="memname">
<tr>
<td class="memname">unity::scopes::ValueSliderLabels::ValueSliderLabels </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>min_label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>max_label</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Create a <a class="el" href="index.html" title="Labels used by a ValueSliderFilter. ">ValueSliderLabels</a> instance with labels for minimum and maximum values only. </p>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::InvalidArgumentException</td><td>for invalid (empty or duplicated) labels. </td></tr>
</table>
</dd>
</dl>
<table class="memname">
<tr>
<td class="memname">unity::scopes::ValueSliderLabels::ValueSliderLabels </td>
<td>(</td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>min_label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype">std::string const &amp;&#160;</td>
<td class="paramname"><em>max_label</em>, </td>
</tr>
<tr>
<td class="paramkey"></td>
<td></td>
<td class="paramtype"><a class="el" href="unity.scopes.md#aa2ccb5d7acadeb38f44e9405f1b55c6b">ValueLabelPairList</a> const &amp;&#160;</td>
<td class="paramname"><em>extra_labels</em>&#160;</td>
</tr>
<tr>
<td></td>
<td>)</td>
<td></td><td></td>
</tr>
</table>
<p>Create a <a class="el" href="index.html" title="Labels used by a ValueSliderFilter. ">ValueSliderLabels</a> instance with labels for minimum and maximum, as well as extra labels. </p>
<p>Note that any extra labels act only as a guidance for the user (i.e. they do not limit the available choices). The Unity shell is free to omit some or all of the labels depending on the available screen space.</p>
<dl class="params"><dt>Parameters</dt><dd>
<table class="params">
<tr><td class="paramname">min_label</td><td>The label for minimum value of the associated <a class="el" href="unity.scopes.ValueSliderFilter.md" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a> filter. </td></tr>
<tr><td class="paramname">max_label</td><td>The label for maximum value of the associated <a class="el" href="unity.scopes.ValueSliderFilter.md" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a> filter. </td></tr>
<tr><td class="paramname">extra_labels</td><td>Additional labels for values between minimum and maximum values.</td></tr>
</table>
</dd>
</dl>
<dl class="exception"><dt>Exceptions</dt><dd>
<table class="exception">
<tr><td class="paramname">unity::InvalidArgumentException</td><td>on invalid labels (empty or duplicate labels, non-increasing values). </td></tr>
</table>
</dd>
</dl>
<h2 class="groupheader">Member Function Documentation</h2>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::ValueSliderLabels::max_label </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the label for the maximum value of the filter. </p>
<dl class="section return"><dt>Returns</dt><dd>The label for the maximum value </dd></dl>
<table class="memname">
<tr>
<td class="memname">std::string unity::scopes::ValueSliderLabels::min_label </td>
<td>(</td>
<td class="paramname"></td><td>)</td>
<td> const</td>
</tr>
</table>
<p>Get the label for the minimum value of the filter. </p>
<dl class="section return"><dt>Returns</dt><dd>The label for the minimum value </dd></dl>
