---
Title: guides-installation
---

# guides-installation

<p class="topic-title first">Contents</p>
<ul class="simple">
<li><a class="reference internal" href="#installing-autopilot" id="id2">Installing Autopilot</a><ul>
<li><a class="reference internal" href="#ubuntu" id="id3">Ubuntu</a></li>
<li><a class="reference internal" href="#other-linux-s" id="id4">Other Linux&#8217;s</a></li>
</ul>
</li>
</ul>
<p>Autopilot is in continuous development, and the best way to get the latest version of autopilot is to run the latest Ubuntu development image. The autopilot developers traditionally support the Ubuntu release immediately prior to the development release via the autopilot PPA.</p>
<h2><a class="toc-backref" href="#id3">Ubuntu</a><a class="headerlink" href="#ubuntu" title="Permalink to this headline"></a></h2>
<p><strong>I am running the latest development image!</strong></p>
<p>In that case you can install autopilot directly from the repository and know you are getting the latest release. Check out the packages below.</p>
<p><strong>I am running a stable version of Ubuntu!</strong></p>
<p>You may install the version of autopilot in the archive directly, however it will not be up to date. Instead, you should add the latest autopilot ppa to your system (as of this writing, that is autopilot 1.5).</p>
<p>To add the PPA to your system, run the following command:</p>
<pre>sudo add-apt-repository ppa:autopilot/1.5 &amp;&amp; sudo apt-get update
</pre>
<p>Once the PPA has been added to your system, you should be able to install the autopilot packages below.</p>
<p><strong>Which packages should I install?</strong></p>
<p>Are you working on ubuntu touch applications? The <tt class="docutils literal"><span class="pre">autopilot-touch</span></tt> metapackage is for you:</p>
<pre>sudo apt-get install autopilot-touch
</pre>
<p>If you are sticking with gtk desktop applications, install the <tt class="docutils literal"><span class="pre">autopilot-desktop</span></tt> metapackage instead:</p>
<pre>sudo apt-get install autopilot-desktop
</pre>
<p>Feel free to install both metapackages to ensure you have support for all autopilot tests.</p>
<h2><a class="toc-backref" href="#id4">Other Linux&#8217;s</a><a class="headerlink" href="#other-linux-s" title="Permalink to this headline"></a></h2>
<p>You may have to download the source code, and either run from source, or build the packages locally. Your best bet is to ask in the autopilot IRC channel ( <a class="reference internal" href="faq-faq.md#help-and-support"><em>Q. Where can I get help / support?</em></a>).</p>
