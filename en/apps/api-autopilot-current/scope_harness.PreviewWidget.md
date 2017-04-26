---
Title: scope_harness.PreviewWidget
---

# scope_harness.PreviewWidget

<dl class="class">
<dt id="scope_harness.PreviewWidget">
<em class="property">class </em><tt class="descclassname">scope_harness.</tt><tt class="descname">PreviewWidget</tt><a class="headerlink" href="#scope_harness.PreviewWidget" title="Permalink to this definition"></a></dt>
<dd><p>This class represents a single widget of a preview, such as an image or header. The &#8216;data&#8217; property is a regular python dictionary that corresponds to Scopes API VariantMap and contains actual key-values that constitute the widget. See the documentation of Unity Scopes API for more information about supported values.</p>
<dl class="attribute">
<dt id="scope_harness.PreviewWidget.data">
<tt class="descname">data</tt><a class="headerlink" href="#scope_harness.PreviewWidget.data" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="attribute">
<dt id="scope_harness.PreviewWidget.id">
<tt class="descname">id</tt><a class="headerlink" href="#scope_harness.PreviewWidget.id" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
<dl class="method">
<dt id="scope_harness.PreviewWidget.trigger">
<tt class="descname">trigger</tt><big>(</big><em>(PreviewWidget)arg1</em>, <em>(str)arg2</em>, <em>(object)arg3</em><big>)</big> &rarr; AbstractView :<a class="headerlink" href="#scope_harness.PreviewWidget.trigger" title="Permalink to this definition"></a></dt>
<dd><p>Trigger preview action.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first simple">
<li><strong>arg2</strong> (<em>string</em>) &#8211; action identifier</li>
<li><strong>arg3</strong> (<em>dict</em>) &#8211; dictionary holding additional action data, typically the value of <tt class="docutils literal"><span class="pre">data</span></tt> property.</li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name">Returns:</th><td class="field-body"><p class="first">instance of PreviewView or ResultsView.</p>
</td>
</tr>
<tr class="field-odd field"><th class="field-name">Raises:</th><td class="field-body"><p class="first last">ValueError if action couldn&#8217;t be executed</p>
</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="attribute">
<dt id="scope_harness.PreviewWidget.type">
<tt class="descname">type</tt><a class="headerlink" href="#scope_harness.PreviewWidget.type" title="Permalink to this definition"></a></dt>
<dd></dd></dl>
</dd></dl>
