---
Title: scope_harness.Result
---

# scope_harness.Result

<dl class="class">
<dt id="scope_harness.Result">
<em class="property">class </em><tt class="descclassname">scope_harness.</tt><tt class="descname">Result</tt><a class="headerlink" href="#scope_harness.Result" title="Permalink to this definition"></a></dt>
<dd><p>Represents a read-only view on a result returned by a scope</p>
<dl class="method">
<dt id="scope_harness.Result.__getitem__">
<tt class="descname">__getitem__</tt><big>(</big><em>(Result)arg1</em>, <em>(str)arg2</em><big>)</big> &rarr; object :<a class="headerlink" href="#scope_harness.Result.__getitem__" title="Permalink to this definition"></a></dt>
<dd><p>Get result attribute by name.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><strong>arg2</strong> (<em>string</em>) &#8211; attribute name</td>
</tr>
<tr class="field-even field"><th class="field-name">Returns:</th><td class="field-body">attribute value</td>
</tr>
<tr class="field-odd field"><th class="field-name">Raises:</th><td class="field-body">ValueError if not found</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="scope_harness.Result.__init__">
<tt class="descname">__init__</tt><big>(</big><big>)</big><a class="headerlink" href="#scope_harness.Result.__init__" title="Permalink to this definition"></a></dt>
<dd><p>Raises an exception
This class cannot be instantiated from Python</p>
</dd></dl>
<dl class="attribute">
<dt id="scope_harness.Result.__module__">
<tt class="descname">__module__</tt><em class="property"> = 'scope_harness'</em><a class="headerlink" href="#scope_harness.Result.__module__" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="method">
<dt id="scope_harness.Result.__reduce__">
<tt class="descname">__reduce__</tt><big>(</big><big>)</big><a class="headerlink" href="#scope_harness.Result.__reduce__" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.Result.art">
<tt class="descname">art</tt><a class="headerlink" href="#scope_harness.Result.art" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.Result.attributes">
<tt class="descname">attributes</tt><a class="headerlink" href="#scope_harness.Result.attributes" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.Result.background">
<tt class="descname">background</tt><a class="headerlink" href="#scope_harness.Result.background" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.Result.dnd_uri">
<tt class="descname">dnd_uri</tt><a class="headerlink" href="#scope_harness.Result.dnd_uri" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.Result.emblem">
<tt class="descname">emblem</tt><a class="headerlink" href="#scope_harness.Result.emblem" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="method">
<dt id="scope_harness.Result.long_press">
<tt class="descname">long_press</tt><big>(</big><em>(Result)arg1</em><big>)</big> &rarr; AbstractView :<a class="headerlink" href="#scope_harness.Result.long_press" title="Permalink to this definition"></a></dt>
<dd><p>Activates the result, as if user long-pressed it. Returns an instance of PreviewView (if result was previewed) or None  (if result&#8217;s uri was a canned scope query)</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Returns:</th><td class="field-body">PreviewView or None</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="attribute">
<dt id="scope_harness.Result.mascot">
<tt class="descname">mascot</tt><a class="headerlink" href="#scope_harness.Result.mascot" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.Result.subtitle">
<tt class="descname">subtitle</tt><a class="headerlink" href="#scope_harness.Result.subtitle" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.Result.summary">
<tt class="descname">summary</tt><a class="headerlink" href="#scope_harness.Result.summary" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="method">
<dt id="scope_harness.Result.tap">
<tt class="descname">tap</tt><big>(</big><em>(Result)arg1</em><big>)</big> &rarr; AbstractView :<a class="headerlink" href="#scope_harness.Result.tap" title="Permalink to this definition"></a></dt>
<dd><p>Activates the result, as if user tapped it. Returns an instance of PreviewView (if result was previewed) or ResultsView  (if result&#8217;s uri was a canned scope query, resulting in a new search)</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Returns:</th><td class="field-body">instance of PreviewView or ResultsView</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="scope_harness.Result.tap_action">
<tt class="descname">tap_action</tt><big>(</big><em>(Result)arg1</em>, <em>(str)arg2</em><big>)</big> &rarr; AbstractView :<a class="headerlink" href="#scope_harness.Result.tap_action" title="Permalink to this definition"></a></dt>
<dd><p>Activates result action. Returns the ResultsView where affected result may potentially be updated.</p>
</dd></dl>
<dl class="attribute">
<dt id="scope_harness.Result.title">
<tt class="descname">title</tt><a class="headerlink" href="#scope_harness.Result.title" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.Result.uri">
<tt class="descname">uri</tt><a class="headerlink" href="#scope_harness.Result.uri" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
</dd></dl>
