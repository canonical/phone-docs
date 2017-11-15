---
Title: autopilot.introspection.types.Size
---

# autopilot.introspection.types.Size

<dl class="class">
<dt id="autopilot.introspection.types.Size">
<em class="property">class </em><tt class="descclassname">autopilot.introspection.types.</tt><tt class="descname">Size</tt><big>(</big><em>*args</em>, <em>**kwargs</em><big>)</big><a class="reference internal" href="#Size"></a><a class="headerlink" href="#autopilot.introspection.types.Size" title="Permalink to this definition"></a></dt>
<dd><p>The Size class represents a 2D size in cartesian space.</p>
<p>To construct a Size, pass in the width, height parameters to the class
constructor:</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_size</span> <span class="o">=</span> <span class="n">Size</span><span class="p">(</span><span class="mi">50</span><span class="p">,</span><span class="mi">100</span><span class="p">)</span>
</pre>
<p>These attributes can be accessed either using named attributes, or via
sequence indexes:</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_size</span><span class="o">.</span><span class="n">width</span> <span class="o">==</span> <span class="n">my_size</span><span class="o">.</span><span class="n">w</span> <span class="o">==</span> <span class="n">my_size</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span> <span class="o">==</span> <span class="mi">50</span>
<span class="go">True</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">my_size</span><span class="o">.</span><span class="n">height</span> <span class="o">==</span> <span class="n">my_size</span><span class="o">.</span><span class="n">h</span> <span class="o">==</span> <span class="n">my_size</span><span class="p">[</span><span class="mi">1</span><span class="p">]</span> <span class="o">==</span> <span class="mi">100</span>
<span class="go">True</span>
</pre>
<p>Size instances can be compared using <tt class="docutils literal"><span class="pre">==</span></tt> and <tt class="docutils literal"><span class="pre">!=</span></tt>, either to another
Size instance, or to any mutable sequence type with the correct number of
items:</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_size</span> <span class="o">==</span> <span class="p">[</span><span class="mi">50</span><span class="p">,</span> <span class="mi">100</span><span class="p">]</span>
<span class="go">True</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">my_size</span> <span class="o">!=</span> <span class="n">Size</span><span class="p">(</span><span class="mi">5</span><span class="p">,</span> <span class="mi">10</span><span class="p">)</span>
<span class="go">True</span>
</pre>
</dd></dl>
