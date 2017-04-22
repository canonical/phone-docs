---
Title: autopilot.introspection.types.PlainType
---

# autopilot.introspection.types.PlainType

<dl class="class">
<dt id="autopilot.introspection.types.PlainType">
<em class="property">class </em><tt class="descclassname">autopilot.introspection.types.</tt><tt class="descname">PlainType</tt><a class="reference internal" href="#PlainType"></a><a class="headerlink" href="#autopilot.introspection.types.PlainType" title="Permalink to this definition"></a></dt>
<dd><p>Plain type support in autopilot proxy objects.</p>
<p>Instances of this class will be used for all plain attrubites. The word
&#8220;plain&#8221; in this context means anything that&#8217;s marshalled as a string,
boolean or integer type across dbus.</p>
<p>Instances of these classes can be used just like the underlying type. For
example, given an object property called &#8216;length&#8217; that is marshalled over
dbus as an integer value, the following will be true:</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="nb">isinstance</span><span class="p">(</span><span class="nb">object</span><span class="o">.</span><span class="n">length</span><span class="p">,</span> <span class="n">PlainType</span><span class="p">)</span>
<span class="go">True</span>
<span class="gp">&gt;&gt;&gt; </span><span class="nb">isinstance</span><span class="p">(</span><span class="nb">object</span><span class="o">.</span><span class="n">length</span><span class="p">,</span> <span class="nb">int</span><span class="p">)</span>
<span class="go">True</span>
<span class="gp">&gt;&gt;&gt; </span><span class="k">print</span><span class="p">(</span><span class="nb">object</span><span class="o">.</span><span class="n">length</span><span class="p">)</span>
<span class="go">123</span>
<span class="gp">&gt;&gt;&gt; </span><span class="k">print</span><span class="p">(</span><span class="nb">object</span><span class="o">.</span><span class="n">length</span> <span class="o">+</span> <span class="mi">32</span><span class="p">)</span>
<span class="go">155</span>
</pre>
<p>However, a special case exists for boolean values: because you cannot
subclass from the &#8216;bool&#8217; type, the following check will fail (
<tt class="docutils literal"><span class="pre">object.visible</span></tt> is a boolean property):</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="nb">isinstance</span><span class="p">(</span><span class="nb">object</span><span class="o">.</span><span class="n">visible</span><span class="p">,</span> <span class="nb">bool</span><span class="p">)</span>
<span class="go">False</span>
</pre>
<p>However boolean values will behave exactly as you expect them to.</p>
</dd></dl>
