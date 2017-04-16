---
Title: autopilot.process.Application
---

# autopilot.process.Application

<dl class="class">
<dt id="autopilot.process.Application">
<em class="property">class </em><tt class="descclassname">autopilot.process.</tt><tt class="descname">Application</tt><a class="reference internal" href="#Application"></a><a class="headerlink" href="#autopilot.process.Application" title="Permalink to this definition"></a></dt>
<dd><dl class="attribute">
<dt id="autopilot.process.Application.desktop_file">
<tt class="descname">desktop_file</tt><a class="reference internal" href="#Application.desktop_file"></a><a class="headerlink" href="#autopilot.process.Application.desktop_file" title="Permalink to this definition"></a></dt>
<dd><p>Get the application desktop file.</p>
<p>This returns just the filename, not the full path.
If the application no longer exists, this returns an empty string.</p>
</dd></dl>
<dl class="attribute">
<dt id="autopilot.process.Application.name">
<tt class="descname">name</tt><a class="reference internal" href="#Application.name"></a><a class="headerlink" href="#autopilot.process.Application.name" title="Permalink to this definition"></a></dt>
<dd><p>Get the application name.</p>
<p class="first admonition-title">Note</p>
<p class="last">This may change according to the current locale. If you want
a unique string to match applications against, use desktop_file
instead.</p>
</dd></dl>
<dl class="attribute">
<dt id="autopilot.process.Application.icon">
<tt class="descname">icon</tt><a class="reference internal" href="#Application.icon"></a><a class="headerlink" href="#autopilot.process.Application.icon" title="Permalink to this definition"></a></dt>
<dd><p>Get the application icon.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Returns:</th><td class="field-body">The name of the icon.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="attribute">
<dt id="autopilot.process.Application.is_active">
<tt class="descname">is_active</tt><a class="reference internal" href="#Application.is_active"></a><a class="headerlink" href="#autopilot.process.Application.is_active" title="Permalink to this definition"></a></dt>
<dd><p>Is the application active (i.e. has keyboard focus)?</p>
</dd></dl>
<dl class="attribute">
<dt id="autopilot.process.Application.is_urgent">
<tt class="descname">is_urgent</tt><a class="reference internal" href="#Application.is_urgent"></a><a class="headerlink" href="#autopilot.process.Application.is_urgent" title="Permalink to this definition"></a></dt>
<dd><p>Is the application currently signalling urgency?</p>
</dd></dl>
<dl class="attribute">
<dt id="autopilot.process.Application.user_visible">
<tt class="descname">user_visible</tt><a class="reference internal" href="#Application.user_visible"></a><a class="headerlink" href="#autopilot.process.Application.user_visible" title="Permalink to this definition"></a></dt>
<dd><p>Is this application visible to the user?</p>
<p class="first admonition-title">Note</p>
<p class="last">Some applications (such as the panel) are hidden to the user
but may still be returned.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.process.Application.get_windows">
<tt class="descname">get_windows</tt><big>(</big><big>)</big><a class="reference internal" href="#Application.get_windows"></a><a class="headerlink" href="#autopilot.process.Application.get_windows" title="Permalink to this definition"></a></dt>
<dd><p>Get a list of the application windows.</p>
</dd></dl>
</dd></dl>
