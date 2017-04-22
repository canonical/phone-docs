---
Title: autopilot.platform
---

# autopilot.platform

<!-- Start Namespace Content -->
<span id="autopilot-platform-functions-for-platform-detection"></span>
<dl class="function">
<dt id="autopilot.platform.model">
<tt class="descclassname">autopilot.platform.</tt><tt class="descname">model</tt><big>(</big><big>)</big><a class="headerlink" href="#autopilot.platform.model" title="Permalink to this definition"></a></dt>
<dd><p>Get the model name of the current platform.</p>
<p>For desktop / laptop installations, this will return &#8220;Desktop&#8221;.
Otherwise, the current hardware model will be returned. For example:</p>
<pre><span class="n">platform</span><span class="o">.</span><span class="n">model</span><span class="p">()</span>
<span class="o">...</span> <span class="s">&quot;Galaxy Nexus&quot;</span>
</pre>
</dd></dl>
<dl class="function">
<dt id="autopilot.platform.image_codename">
<tt class="descclassname">autopilot.platform.</tt><tt class="descname">image_codename</tt><big>(</big><big>)</big><a class="headerlink" href="#autopilot.platform.image_codename" title="Permalink to this definition"></a></dt>
<dd><p>Get the image codename.</p>
<p>For desktop / laptop installations this will return &#8220;Desktop&#8221;.
Otherwise, the codename of the image that was installed will be
returned. For example:</p>
<p>platform.image_codename()</p>
<p>... &#8220;maguro&#8221;</p>
</dd></dl>
<dl class="function">
<dt id="autopilot.platform.is_tablet">
<tt class="descclassname">autopilot.platform.</tt><tt class="descname">is_tablet</tt><big>(</big><big>)</big><a class="headerlink" href="#autopilot.platform.is_tablet" title="Permalink to this definition"></a></dt>
<dd><p>Indicate whether system is a tablet.</p>
<p>The &#8216;ro.build.characteristics&#8217; property is checked for &#8216;tablet&#8217;.
For example:</p>
<p>platform.tablet()</p>
<p>... True</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Returns:</th><td class="field-body">boolean indicating whether this is a tablet</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="function">
<dt id="autopilot.platform.get_display_server">
<tt class="descclassname">autopilot.platform.</tt><tt class="descname">get_display_server</tt><big>(</big><big>)</big><a class="headerlink" href="#autopilot.platform.get_display_server" title="Permalink to this definition"></a></dt>
<dd><p>Returns display server type.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Returns:</th><td class="field-body">string indicating display server type. Either &#8220;X11&#8221;, &#8220;MIR&#8221; or
&#8220;UNKNOWN&#8221;</td>
</tr>
</tbody>
</table>
</dd></dl>
<!-- End Namespace Content -->
