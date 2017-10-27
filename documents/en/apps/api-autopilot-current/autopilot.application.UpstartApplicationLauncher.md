---
Title: autopilot.application.UpstartApplicationLauncher
---

# autopilot.application.UpstartApplicationLauncher

<dl class="class">
<dt id="autopilot.application.UpstartApplicationLauncher">
<em class="property">class </em><tt class="descclassname">autopilot.application.</tt><tt class="descname">UpstartApplicationLauncher</tt><big>(</big><em>case_addDetail=None</em>, <em>emulator_base=None</em>, <em>dbus_bus='session'</em><big>)</big><a class="headerlink" href="#autopilot.application.UpstartApplicationLauncher" title="Permalink to this definition"></a></dt>
<dd><p>A launcher class that launches applications with UpstartAppLaunch.A class that knows how to launch an application with a certain type of
introspection enabled.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first last simple">
<li><strong>case_addDetail</strong> &#8211; addDetail method to use.</li>
<li><strong>proxy_base</strong> &#8211; custom proxy base class to use, defaults to None</li>
<li><strong>dbus_bus</strong> &#8211; dbus bus to use, if set to something other than the
default (&#8216;session&#8217;) the environment will be patched</li>
</ul>
</td>
</tr>
</tbody>
</table>
<dl class="method">
<dt id="autopilot.application.UpstartApplicationLauncher.launch">
<tt class="descname">launch</tt><big>(</big><em>app_id</em>, <em>app_uris=[]</em><big>)</big><a class="headerlink" href="#autopilot.application.UpstartApplicationLauncher.launch" title="Permalink to this definition"></a></dt>
<dd><p>Launch an application with upstart.</p>
<p>This method launches an application via the <tt class="docutils literal"><span class="pre">upstart-app-launch</span></tt>
library, on platforms that support it.</p>
<p>Usage is similar to NormalApplicationLauncher:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.application</span> <span class="kn">import</span> <span class="n">UpstartApplicationLauncher</span>
<span class="n">launcher</span> <span class="o">=</span> <span class="n">UpstartApplicationLauncher</span><span class="p">()</span>
<span class="n">launcher</span><span class="o">.</span><span class="n">setUp</span><span class="p">()</span>
<span class="n">app_proxy</span> <span class="o">=</span> <span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span><span class="s">&#39;gallery-app&#39;</span><span class="p">)</span>
</pre>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first simple">
<li><strong>app_id</strong> &#8211; name of the application to launch</li>
<li><strong>app_uris</strong> &#8211; list of separate application uris to launch</li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name" colspan="2">Raises RuntimeError:</th></tr>
<tr class="field-even field"><td>&nbsp;</td><td class="field-body"><p class="first">If the specified application cannot be launched.</p>
</td>
</tr>
<tr class="field-odd field"><th class="field-name">Returns:</th><td class="field-body"><p class="first last">proxy object for the launched package application</p>
</td>
</tr>
</tbody>
</table>
</dd></dl>
</dd></dl>
<dl class="function">
<dt id="autopilot.application.get_application_launcher_wrapper">
<tt class="descclassname">autopilot.application.</tt><tt class="descname">get_application_launcher_wrapper</tt><big>(</big><em>app_path</em><big>)</big><a class="headerlink" href="#autopilot.application.get_application_launcher_wrapper" title="Permalink to this definition"></a></dt>
<dd><p>Return an instance of <tt class="xref py py-class docutils literal"><span class="pre">ApplicationLauncher</span></tt> that knows how to
launch the application at &#8216;app_path&#8217;.</p>
</dd></dl>
