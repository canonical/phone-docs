---
Title: autopilot.exceptions
---

# autopilot.exceptions

<!-- Start Namespace Content -->
<span id="autopilot-exceptions-autopilot-exceptions"></span>
<p>Autopilot Exceptions.</p>
<p>This module contains exceptions that autopilot may raise in various conditions.
Each exception is documented with when it is raised: a generic description in
this module, as well as a detailed description in the function or method that
raises it.</p>
<dl class="exception">
<dt id="autopilot.exceptions.BackendException">
<em class="property">exception </em><tt class="descclassname">autopilot.exceptions.</tt><tt class="descname">BackendException</tt><big>(</big><em>original_exception</em><big>)</big><a class="headerlink" href="#autopilot.exceptions.BackendException" title="Permalink to this definition"></a></dt>
<dd><p>An error occured while trying to initialise an autopilot backend.</p>
</dd></dl>
<dl class="exception">
<dt id="autopilot.exceptions.ProcessSearchError">
<em class="property">exception </em><tt class="descclassname">autopilot.exceptions.</tt><tt class="descname">ProcessSearchError</tt><a class="headerlink" href="#autopilot.exceptions.ProcessSearchError" title="Permalink to this definition"></a></dt>
<dd><p>Object introspection error occured.</p>
</dd></dl>
<dl class="exception">
<dt id="autopilot.exceptions.StateNotFoundError">
<em class="property">exception </em><tt class="descclassname">autopilot.exceptions.</tt><tt class="descname">StateNotFoundError</tt><big>(</big><em>class_name=None</em>, <em>**filters</em><big>)</big><a class="headerlink" href="#autopilot.exceptions.StateNotFoundError" title="Permalink to this definition"></a></dt>
<dd><p>Raised when a piece of state information is not found.</p>
<p>This exception is commonly raised when the application has destroyed (or
not yet created) the object you are trying to access in autopilot. This
typically happens for a number of possible reasons:</p>
<ul class="simple">
<li>The UI widget you are trying to access with
<a class="reference internal" href="../1.5.0/autopilot.introspection.ProxyBase.md#autopilot.introspection.ProxyBase.select_single" title="autopilot.introspection.ProxyBase.select_single"><tt class="xref py py-meth docutils literal"><span class="pre">select_single</span></tt></a> or
<a class="reference internal" href="../1.5.0/autopilot.introspection.ProxyBase.md#autopilot.introspection.ProxyBase.wait_select_single" title="autopilot.introspection.ProxyBase.wait_select_single"><tt class="xref py py-meth docutils literal"><span class="pre">wait_select_single</span></tt></a> or
<a class="reference internal" href="../1.5.0/autopilot.introspection.ProxyBase.md#autopilot.introspection.ProxyBase.select_many" title="autopilot.introspection.ProxyBase.select_many"><tt class="xref py py-meth docutils literal"><span class="pre">select_many</span></tt></a> does not exist
yet.</li>
<li>The UI widget you are trying to access has been destroyed by the
application.</li>
</ul>
</dd></dl>
<dl class="exception">
<dt id="autopilot.exceptions.InvalidXPathQuery">
<em class="property">exception </em><tt class="descclassname">autopilot.exceptions.</tt><tt class="descname">InvalidXPathQuery</tt><a class="headerlink" href="#autopilot.exceptions.InvalidXPathQuery" title="Permalink to this definition"></a></dt>
<dd><p>Raised when an XPathselect query is invalid or unsupported.</p>
</dd></dl>
<!-- End Namespace Content -->
<!-- div.inner-wrapper -->
<!-- div.wrapper -->
<footer class="global clearfix no-global">
<p class="top-link"><a href="#">Back to top</a>
</p>
<nav id="main-navigation" role="navigation">
<ul>
<li>
<h2><a href="https://developer.ubuntu.com/en/desktop/" class="">Desktop</a></h2>
<ul class="second-level-nav">
<li class="first"><a href="https://developer.ubuntu.com/en/desktop/" >Overview</a></li>
<li class="">
<a href="http://snapcraft.io/?utm_source=developer.ubuntu.com&amp;utm_medium=devportal&amp;utm_term=snaps%20snapcraft%20desktop&amp;utm_content=menu&amp;utm_campaign=duc_snappers" class="">Get started</a>
</li>
<li class="">
<a href="https://github.com/ubuntu/snappy-playpen" class="">Examples</a>
</li>
</ul>
</li>
<li>
<h2><a href="https://developer.ubuntu.com/en/phone/" class="">Phone</a></h2>
<ul class="second-level-nav">
<li class="first"><a href="https://developer.ubuntu.com/en/phone/" >Overview</a></li>
<li class="">
<a href="https://developer.ubuntu.com/en/phone/scopes/" class="">Scopes</a>
</li>
<li class="">
<a href="https://developer.ubuntu.com/en/phone/apps/" class="">Apps</a>
</li>
<li class="">
<a href="https://developer.ubuntu.com/en/phone/web/" class="">Web Apps</a>
</li>
<li class="">
<a href="https://developer.ubuntu.com/en/phone/platform/" class="">Platform</a>
</li>
<li class="">
<a href="https://developer.ubuntu.com/en/phone/devices/" class="">Devices</a>
</li>
</ul>
</li>
<li>
<h2><a href="https://developer.ubuntu.com/core" class="">Core</a></h2>
<ul class="second-level-nav">
<li class="first"><a href="https://developer.ubuntu.com/core" >Overview</a></li>
<li class="">
<a href="https://developer.ubuntu.com/core/get-started" class="">Get started</a>
</li>
<li class="">
<a href="https://developer.ubuntu.com/core/tutorials" class="">Tutorials</a>
</li>
<li class="">
<a href="https://developer.ubuntu.com/core/examples" class="">Examples</a>
</li>
<li class="">
<a href="https://developer.ubuntu.com/core/publish-and-distribute" class="">Publish and distribute</a>
</li>
<li class="">
<a href="https://developer.ubuntu.com/core/documentation" class="">Documentation</a>
</li>
<li class="">
<a href="https://developer.ubuntu.com/core/troubleshooting" class="">Troubleshooting</a>
</li>
</ul>
</li>
<li>
<h2><a href="https://developer.ubuntu.com/en/community/" class="">Community</a></h2>
<ul class="second-level-nav">
<li class="first"><a href="https://developer.ubuntu.com/en/community/" >Overview</a></li>
<li class="">
<a href="https://developer.ubuntu.com/en/community/training/" class="">App development training</a>
</li>
<li class="">
<a href="https://developer.ubuntu.com/en/community/core-apps/" class="">Core apps</a>
</li>
<li class="">
<a href="https://developer.ubuntu.com/en/community/blog/" class="">Blog</a>
</li>
</ul>
</li>
<li>
<h2><a href="https://developer.ubuntu.com/en/publish/" class="">Publish</a></h2>
<ul class="second-level-nav">
<li class="first"><a href="https://developer.ubuntu.com/en/publish/" >Overview</a></li>
<li class="">
<a href="https://developer.ubuntu.com/en/publish/application-states/" class="">Application states</a>
</li>
<li class="">
<a href="https://developer.ubuntu.com/en/publish/packaging-click-apps/" class="">Packaging click apps</a>
</li>
<li class="">
<a href="https://developer.ubuntu.com/en/publish/creating-a-good-icon/" class="">Creating a good icon</a>
</li>
<li class="">
<a href="https://developer.ubuntu.com/en/publish/web/" class="">Web</a>
</li>
<li class="">
<a href="https://developer.ubuntu.com/en/publish/security-policy-groups/" class="">Security policy groups</a>
</li>
<li class="">
<a href="https://developer.ubuntu.com/en/publish/choosing-a-license/" class="">Choosing a license</a>
</li>
<li class="">
<a href="https://developer.ubuntu.com/en/publish/other-forms-of-submitting-apps/" class="">Other forms of submitting apps</a>
</li>
<li class="">
<a href="https://developer.ubuntu.com/en/publish/scopes/" class="">Scopes</a>
</li>
</ul>
</li>
</ul>
<!-- /.footer-a -->
<ul class="clearfix">
<li>
<h2>View in:</h2>
<ul class="second-level-nav">
<li class="lang active">
<a href="index.html" title="Change to language: English">English</a>
</li>
<li class="lang">
<a href="index.html" title="Change to language: Simplified Chinese">Simplified Chinese</a>
</li>
</ul>
</li>
<li>
<h2><a href="http://ubuntu.com/download/">Download</a></h2>
<ul class="second-level-nav">
<li class="first"><a href="http://ubuntu.com/download">Overview</a>
</li>
<li><a href="http://ubuntu.com/download/cloud">Cloud</a>
</li>
<li><a href="http://ubuntu.com/download/server">Server</a>
</li>
<li><a href="http://ubuntu.com/download/desktop">Desktop</a>
</li>
<li><a href="http://ubuntu.com/download/ubuntu-kylin">Ubuntu Kylin</a>
</li>
<li><a href="http://ubuntu.com/download/alternative-downloads">Alternative downloads</a>
</li>
</ul>
</li>
<li>
<h2><a href="http://ubuntu.com/support/">Support</a></h2>
<ul class="second-level-nav">
<li class="first"><a href="http://ubuntu.com/support">Overview</a>
</li>
<li><a href="http://www.ubuntu.com/usn/">Security notices</a>
</li>
</ul>
</li>
<li>
<h2><a href="http://ubuntu.com/about/">About</a></h2>
<ul class="second-level-nav">
<li><a href="http://ubuntu.com/about/about-ubuntu">About Ubuntu</a>
</li>
<li><a href="http://www.canonical.com/careers">Careers</a>
</li>
<li><a href="http://ubuntu.com/about/canonical-and-ubuntu">Canonical and Ubuntu</a>
</li>
<li><a accesskey="7" href="http://ubuntu.com/about/contact-us">Contact us</a>
</li>
<li><a accesskey="2" href="http://insights.ubuntu.com/feed/">Canonical news feed</a>
</li>
</ul>
</li>
</ul>
</nav>
<p class="twelve-col">© 2015 Canonical Ltd. Ubuntu and Canonical are registered trademarks of Canonical Ltd.</p>
<ul class="inline clear">
<li><a href="http://www.ubuntu.com/legal">Legal information</a>
</li>
<li><a href="https://bugs.launchpad.net/developer-ubuntu-com/">Report a bug on this site</a>
</li>
</ul>
<span class="accessibility-aid"><a href="#">Go to the top of the page</a></span>
<!-- /.legal -->
</footer>
<script type='text/javascript' src='https://developer.ubuntu.com/static/devportal_static/developer_portal/syntaxhighlighter3/scripts/shCore.js?ver=3.0.83c'></script>
<script type='text/javascript' src='https://developer.ubuntu.com/static/devportal_static/developer_portal/syntaxhighlighter3/scripts/shAutoloader.js?ver=3.0.83c'></script>
<script type='text/javascript'>
(function(){
var corecss = document.createElement('link');
var themecss = document.createElement('link');
var corecssurl = "/static/devportal_static/developer_portal/syntaxhighlighter3/styles/shCore.css?ver=3.0.83c";
if ( corecss.setAttribute ) {
corecss.setAttribute( "rel", "stylesheet" );
corecss.setAttribute( "type", "text/css" );
corecss.setAttribute( "href", corecssurl );
} else {
corecss.rel = "stylesheet";
corecss.href = corecssurl;
}
document.getElementsByTagName("head")[0].insertBefore( corecss, document.getElementById("syntaxhighlighteranchor") );
var themecssurl = "/static/devportal_static/developer_portal/syntaxhighlighter3/styles/shThemeDefault.css?ver=3.0.83c";
if ( themecss.setAttribute ) {
themecss.setAttribute( "rel", "stylesheet" );
themecss.setAttribute( "type", "text/css" );
themecss.setAttribute( "href", themecssurl );
} else {
themecss.rel = "stylesheet";
themecss.href = themecssurl;
}
//document.getElementById("syntaxhighlighteranchor").appendChild(themecss);
document.getElementsByTagName("head")[0].insertBefore( themecss, document.getElementById("syntaxhighlighteranchor") );
})();
SyntaxHighlighter.config.strings.expandSource = '+ expand source';
SyntaxHighlighter.config.strings.help = '?';
SyntaxHighlighter.config.strings.alert = 'SyntaxHighlighter\n\n';
SyntaxHighlighter.config.strings.noBrush = 'Can\'t find brush for: ';
SyntaxHighlighter.config.strings.brushNotHtmlScript = 'Brush wasn\'t configured for html-script option: ';
SyntaxHighlighter.defaults['pad-line-numbers'] = false;
SyntaxHighlighter.defaults['toolbar'] = false;
SyntaxHighlighter.autoloader(
'js jscript javascript  /static/devportal_static/developer_portal/syntaxhighlighter3/scripts/shBrushJScript.js',
'c cpp                  /static/devportal_static/developer_portal/syntaxhighlighter3/scripts/shBrushCpp.js',
'xml html               /static/devportal_static/developer_portal/syntaxhighlighter3/scripts/shBrushXml.js',
'bash                   /static/devportal_static/developer_portal/syntaxhighlighter3/scripts/shBrushBash.js',
'python                 /static/devportal_static/developer_portal/syntaxhighlighter3/scripts/shBrushPython.js'
);
SyntaxHighlighter.all();
</script>
<!-- Use this only until Modernizr fixes Opera Mini background-size detection -->
<script>
var isOperaMini = (navigator.userAgent.indexOf('Opera Mini') > -1);
if(isOperaMini) {
var root = document.documentElement;
root.className += " opera-mini";
}
</script>
<script>
if(!core){ var core = {}; }
core.globalPrepend = 'body';
</script>
<script src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/js/plugins/yui-combined.min.js"></script>
<script src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/js/global.js"></script>
<script src="https://developer.ubuntu.com/assets/sites/guidelines/js/responsive/core.js"></script>
<script src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/js/global.js"></script>
<script src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/js/scratch.js"></script>
<script src="https://developer.ubuntu.com/assets/sites/ubuntu/latest/u/js/plugins/respond.min.js"></script>
<script type="text/javascript">
var _gaq = _gaq || [];
/* Save to developer.ubuntu.com profile */	
_gaq.push(['_setAccount', 'UA-1018242-33']);
_gaq.push(['_setDomainName', '.ubuntu.com']);
_gaq.push(['_trackPageview']);
/* Save to www.ubuntu.com profile */	
_gaq.push(['b._setAccount', 'UA-1018242-4']);
_gaq.push(['b._setDomainName', '.ubuntu.com']);
_gaq.push(['b._trackPageview']);
(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
</script>
</body>
</html>
