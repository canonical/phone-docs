---
Title: autopilot.application.ClickApplicationLauncher
---

# autopilot.application.ClickApplicationLauncher

<dl class="class">
<dt id="autopilot.application.ClickApplicationLauncher">
<em class="property">class </em><tt class="descclassname">autopilot.application.</tt><tt class="descname">ClickApplicationLauncher</tt><big>(</big><em>case_addDetail=None</em>, <em>emulator_base=None</em>, <em>dbus_bus='session'</em><big>)</big><a class="headerlink" href="#autopilot.application.ClickApplicationLauncher" title="Permalink to this definition"></a></dt>
<dd><p>Fixture to manage launching a Click application.A class that knows how to launch an application with a certain type of
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
<dt id="autopilot.application.ClickApplicationLauncher.launch">
<tt class="descname">launch</tt><big>(</big><em>package_id</em>, <em>app_name=None</em>, <em>app_uris=[]</em><big>)</big><a class="headerlink" href="#autopilot.application.ClickApplicationLauncher.launch" title="Permalink to this definition"></a></dt>
<dd><p>Launch a click package application with introspection enabled.</p>
<p>This method takes care of launching a click package with introspection
exabled. You probably want to use this method if your application is
packaged in a click application, or is started via upstart.</p>
<p>Usage is similar to NormalApplicationLauncher.launch:</p>
<pre><span class="kn">from</span> <span class="nn">autopilot.application</span> <span class="kn">import</span> <span class="n">ClickApplicationLauncher</span>
<span class="n">launcher</span> <span class="o">=</span> <span class="n">ClickApplicationLauncher</span><span class="p">()</span>
<span class="n">launcher</span><span class="o">.</span><span class="n">setUp</span><span class="p">()</span>
<span class="n">app_proxy</span> <span class="o">=</span> <span class="n">launcher</span><span class="o">.</span><span class="n">launch</span><span class="p">(</span><span class="s">&#39;com.ubuntu.dropping-letters&#39;</span><span class="p">)</span>
</pre>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first simple">
<li><strong>package_id</strong> &#8211; The Click package name you want to launch. For
example: <tt class="docutils literal"><span class="pre">com.ubuntu.dropping-letters</span></tt></li>
<li><strong>app_name</strong> &#8211; Currently, only one application can be packaged in a
click package, and this parameter can be left at None. If
specified, it should be the application name you wish to launch.</li>
<li><strong>app_uris</strong> &#8211; Parameters used to launch the click package. This
parameter will be left empty if not used.</li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name">Raises:</th><td class="field-body"><ul class="first simple">
<li><strong>RuntimeError</strong> &#8211; If the specified package_id cannot be found in
the click package manifest.</li>
<li><strong>RuntimeError</strong> &#8211; If the specified app_name cannot be found within
the specified click package.</li>
</ul>
</td>
</tr>
<tr class="field-odd field"><th class="field-name">Returns:</th><td class="field-body"><p class="first last">proxy object for the launched package application</p>
</td>
</tr>
</tbody>
</table>
</dd></dl>
</dd></dl>
