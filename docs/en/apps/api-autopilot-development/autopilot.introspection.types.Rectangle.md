---
Title: autopilot.introspection.types.Rectangle
---

# autopilot.introspection.types.Rectangle

<dl class="class">
<dt id="autopilot.introspection.types.Rectangle">
<em class="property">class </em><tt class="descclassname">autopilot.introspection.types.</tt><tt class="descname">Rectangle</tt><big>(</big><em>*args</em>, <em>**kwargs</em><big>)</big><a class="reference internal" href="#Rectangle"></a><a class="headerlink" href="#autopilot.introspection.types.Rectangle" title="Permalink to this definition"></a></dt>
<dd><p>The RectangleType class represents a rectangle in cartesian space.</p>
<p>To construct a rectangle, pass the x, y, width and height parameters in to
the class constructor:</p>
<pre><span class="n">my_rect</span> <span class="o">=</span> <span class="n">Rectangle</span><span class="p">(</span><span class="mi">12</span><span class="p">,</span><span class="mi">13</span><span class="p">,</span><span class="mi">100</span><span class="p">,</span><span class="mi">150</span><span class="p">)</span>
</pre>
<p>These attributes can be accessed either using named attributes, or via
sequence indexes:</p>
<pre><span class="go">&gt;&gt;&gt;my_rect = Rectangle(12,13,100,150)</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">my_rect</span><span class="o">.</span><span class="n">x</span> <span class="o">==</span> <span class="n">my_rect</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span> <span class="o">==</span> <span class="mi">12</span>
<span class="go">True</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">my_rect</span><span class="o">.</span><span class="n">y</span> <span class="o">==</span> <span class="n">my_rect</span><span class="p">[</span><span class="mi">1</span><span class="p">]</span> <span class="o">==</span> <span class="mi">13</span>
<span class="go">True</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">my_rect</span><span class="o">.</span><span class="n">w</span> <span class="o">==</span> <span class="n">my_rect</span><span class="p">[</span><span class="mi">2</span><span class="p">]</span> <span class="o">==</span> <span class="mi">100</span>
<span class="go">True</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">my_rect</span><span class="o">.</span><span class="n">h</span> <span class="o">==</span> <span class="n">my_rect</span><span class="p">[</span><span class="mi">3</span><span class="p">]</span> <span class="o">==</span> <span class="mi">150</span>
<span class="go">True</span>
</pre>
<p>You may also access the width and height values using the <tt class="docutils literal"><span class="pre">width</span></tt> and
<tt class="docutils literal"><span class="pre">height</span></tt> properties:</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_rect</span><span class="o">.</span><span class="n">width</span> <span class="o">==</span> <span class="n">my_rect</span><span class="o">.</span><span class="n">w</span>
<span class="go">True</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">my_rect</span><span class="o">.</span><span class="n">height</span> <span class="o">==</span> <span class="n">my_rect</span><span class="o">.</span><span class="n">h</span>
<span class="go">True</span>
</pre>
<p>Rectangles can be compared using <tt class="docutils literal"><span class="pre">==</span></tt> and <tt class="docutils literal"><span class="pre">!=</span></tt>, either to another
Rectangle instance, or to any mutable sequence type:</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_rect</span> <span class="o">==</span> <span class="p">[</span><span class="mi">12</span><span class="p">,</span> <span class="mi">13</span><span class="p">,</span> <span class="mi">100</span><span class="p">,</span> <span class="mi">150</span><span class="p">]</span>
<span class="go">True</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">my_rect</span> <span class="o">!=</span> <span class="n">Rectangle</span><span class="p">(</span><span class="mi">1</span><span class="p">,</span><span class="mi">2</span><span class="p">,</span><span class="mi">3</span><span class="p">,</span><span class="mi">4</span><span class="p">)</span>
<span class="go">True</span>
</pre>
</dd></dl>
