---
Title: autopilot.introspection.types.Time
---

# autopilot.introspection.types.Time

<dl class="class">
<dt id="autopilot.introspection.types.Time">
<em class="property">class </em><tt class="descclassname">autopilot.introspection.types.</tt><tt class="descname">Time</tt><big>(</big><em>*args</em>, <em>**kwargs</em><big>)</big><a class="reference internal" href="#Time"></a><a class="headerlink" href="#autopilot.introspection.types.Time" title="Permalink to this definition"></a></dt>
<dd><p>The Time class represents a time, without a date component.</p>
<p>You can construct a Time instnace by passing the hours, minutes, seconds,
and milliseconds to the class constructor:</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_time</span> <span class="o">=</span> <span class="n">Time</span><span class="p">(</span><span class="mi">12</span><span class="p">,</span> <span class="mi">34</span><span class="p">,</span> <span class="mo">01</span><span class="p">,</span> <span class="mi">23</span><span class="p">)</span>
</pre>
<p>The values passed in must be valid for their positions (ie..- 0-23 for
hours, 0-59 for minutes and seconds, and 0-999 for milliseconds). Passing
invalid values will cause a ValueError to be raised.</p>
<p>The hours, minutes, seconds, and milliseconds can be accessed using either
index access or named properties:</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_time</span><span class="o">.</span><span class="n">hours</span> <span class="o">==</span> <span class="n">my_time</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span> <span class="o">==</span> <span class="mi">12</span>
<span class="go">True</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">my_time</span><span class="o">.</span><span class="n">minutes</span> <span class="o">==</span> <span class="n">my_time</span><span class="p">[</span><span class="mi">1</span><span class="p">]</span> <span class="o">==</span> <span class="mi">34</span>
<span class="go">True</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">my_time</span><span class="o">.</span><span class="n">seconds</span> <span class="o">==</span> <span class="n">my_time</span><span class="p">[</span><span class="mi">2</span><span class="p">]</span> <span class="o">==</span> <span class="mo">01</span>
<span class="go">True</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">my_time</span><span class="o">.</span><span class="n">milliseconds</span> <span class="o">==</span> <span class="n">my_time</span><span class="p">[</span><span class="mi">3</span><span class="p">]</span> <span class="o">==</span> <span class="mi">23</span>
<span class="go">True</span>
</pre>
<p>Time instances can be compared to other time instances, any mutable
sequence containing four integers, or datetime.time instances:</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="n">my_time</span> <span class="o">==</span> <span class="n">Time</span><span class="p">(</span><span class="mi">12</span><span class="p">,</span> <span class="mi">34</span><span class="p">,</span> <span class="mo">01</span><span class="p">,</span> <span class="mi">23</span><span class="p">)</span>
<span class="go">True</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">my_time</span> <span class="o">==</span> <span class="n">Time</span><span class="p">(</span><span class="mi">1</span><span class="p">,</span><span class="mi">2</span><span class="p">,</span><span class="mi">3</span><span class="p">,</span><span class="mi">4</span><span class="p">)</span>
<span class="go">False</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">my_time</span> <span class="o">==</span> <span class="p">[</span><span class="mi">12</span><span class="p">,</span> <span class="mi">34</span><span class="p">,</span> <span class="mo">01</span><span class="p">,</span> <span class="mi">23</span><span class="p">]</span>
<span class="go">True</span>
<span class="gp">&gt;&gt;&gt; </span><span class="n">my_time</span> <span class="o">==</span> <span class="n">datetime</span><span class="o">.</span><span class="n">time</span><span class="p">(</span><span class="mi">12</span><span class="p">,</span> <span class="mi">34</span><span class="p">,</span> <span class="mo">01</span><span class="p">,</span> <span class="mi">23000</span><span class="p">)</span>
<span class="go">True</span>
</pre>
<p>Note that the Time class stores milliseconds, while the <tt class="docutils literal"><span class="pre">datettime.time</span></tt>
class stores microseconds.</p>
<p>Finally, you can get a <tt class="docutils literal"><span class="pre">datetime.time</span></tt> instance from a Time instance:</p>
<pre><span class="gp">&gt;&gt;&gt; </span><span class="nb">isinstance</span><span class="p">(</span><span class="n">my_time</span><span class="o">.</span><span class="n">time</span><span class="p">,</span> <span class="n">datetime</span><span class="o">.</span><span class="n">time</span><span class="p">)</span>
<span class="go">True</span>
</pre>
</dd></dl>
