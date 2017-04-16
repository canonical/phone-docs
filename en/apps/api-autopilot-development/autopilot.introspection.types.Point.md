---
Title: autopilot.introspection.types.Point
---

# autopilot.introspection.types.Point

<dl class="class">
<dt id="autopilot.introspection.types.Point">
<em class="property">class </em><tt class="descclassname">autopilot.introspection.types.</tt><tt class="descname">Point</tt><big>(</big><em>*args</em>, <em>**kwargs</em><big>)</big><a class="reference internal" href="#Point"></a><a class="headerlink" href="#autopilot.introspection.types.Point" title="Permalink to this definition"></a></dt>
<dd><p>The Point class represents a 2D point in cartesian space.</p>
<p>To construct a Point, pass in the x, y parameters to the class
constructor:</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_point</span> <span class="o">=</span> <span class="n">Point</span><span class="p">(</span><span class="mi">50</span><span class="p">,</span><span class="mi">100</span><span class="p">)</span>
</pre>
<p>These attributes can be accessed either using named attributes, or via
sequence indexes:</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_point</span><span class="o">.</span><span class="n">x</span> <span class="o">==</span> <span class="n">my_point</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span> <span class="o">==</span> <span class="mi">50</span>
<span class="go">True</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">my_point</span><span class="o">.</span><span class="n">y</span> <span class="o">==</span> <span class="n">my_point</span><span class="p">[</span><span class="mi">1</span><span class="p">]</span> <span class="o">==</span> <span class="mi">100</span>
<span class="go">True</span>
</pre>
<p>Point instances can be compared using <tt class="docutils literal"><span class="pre">==</span></tt> and <tt class="docutils literal"><span class="pre">!=</span></tt>, either to another
Point instance, or to any mutable sequence type with the correct number of
items:</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_point</span> <span class="o">==</span> <span class="p">[</span><span class="mi">50</span><span class="p">,</span> <span class="mi">100</span><span class="p">]</span>
<span class="go">True</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">my_point</span> <span class="o">!=</span> <span class="n">Point</span><span class="p">(</span><span class="mi">5</span><span class="p">,</span> <span class="mi">10</span><span class="p">)</span>
<span class="go">True</span>
</pre>
</dd></dl>
