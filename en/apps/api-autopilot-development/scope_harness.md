---
Title: scope_harness
---

# scope_harness

<!-- Start Namespace Content -->
<h1>API<a class="headerlink" href="#api" title="Permalink to this headline"></a></h1>
<h2>Main classes<a class="headerlink" href="#main-classes" title="Permalink to this headline"></a></h2>
<!-- End Namespace Content -->
<h3>Elements</h3>
<dl>
<dt><a href="scope_harness.Category.md">Category</a></dt><dd>Represents a read-only view of a category returned by scope</dd>
<dt><a href="scope_harness.CategoryListMatcher.md">CategoryListMatcher</a></dt><dd>Matcher object that holds constraints for matching search categories.</dd>
<dt><a href="scope_harness.CategoryListMatcherMode.md">CategoryListMatcherMode</a></dt><dd>Match mode for category list</dd>
<dt><a href="scope_harness.CategoryMatcher.md">CategoryMatcher</a></dt><dd>Matcher object that holds constraints for matching search category.</dd>
<dt><a href="scope_harness.CategoryMatcherMode.md">CategoryMatcherMode</a></dt><dd>Match mode for category results</dd>
<dt><a href="scope_harness.ChildDepartment.md">ChildDepartment</a></dt><dd>Represents a read-only view of a child department.</dd>
<dt><a href="scope_harness.ChildDepartmentMatcher.md">ChildDepartmentMatcher</a></dt><dd>Matcher object that holds constraints for matching child departments of a department.</dd>
<dt><a href="scope_harness.CustomRegistry.md">CustomRegistry</a></dt><dd></dd>
<dt><a href="scope_harness.Department.md">Department</a></dt><dd>Represents a read-only view of a department returned by a scope. Use id, label, all_label properties to inspect it, and children property or child method to inspect child departments (instances of ChildDepartment).  This class supports __getitem__ call...</dd>
<dt><a href="scope_harness.DepartmentMatcher.md">DepartmentMatcher</a></dt><dd>Matcher object that holds constraints for matching departments.</dd>
<dt><a href="scope_harness.DepartmentMatcherMode.md">DepartmentMatcherMode</a></dt><dd>Match mode for departments</dd>
<dt><a href="scope_harness.MatchResult.md">MatchResult</a></dt><dd>Represents the result of matching and is the final object you want to check in your tests. An instance of MatchResult can be obtained by calling one of the match() methods of ResultMatcher, CategoryMatcher, CategoryListMatcher, DepartmentMatcher and Ch...</dd>
<dt><a href="scope_harness.Parameters.md">Parameters</a></dt><dd>Parameters for instantiating a CustomRegistry instace</dd>
<dt><a href="scope_harness.PreviewColumnMatcher.md">PreviewColumnMatcher</a></dt><dd>match( (PreviewColumnMatcher)arg1, (MatchResult)arg2, (object)arg3) -&gt; None</dd>
<dt><a href="scope_harness.PreviewMatcher.md">PreviewMatcher</a></dt><dd>match( (PreviewMatcher)arg1, (MatchResult)arg2, (PreviewWidgetList)arg3) -&gt; None</dd>
<dt><a href="scope_harness.PreviewView.md">PreviewView</a></dt><dd>This is a view on a preview returned by activation of search Result. Set column_count property to the desired number of columns, then inspect widgets in every column using widgets_in_column(index) method.</dd>
<dt><a href="scope_harness.PreviewWidget.md">PreviewWidget</a></dt><dd>This class represents a single widget of a preview, such as an image or header. The &#8216;data&#8217; property is a regular python dictionary that corresponds to Scopes API VariantMap and contains actual key-values that constitute the widget. See the ...</dd>
<dt><a href="scope_harness.PreviewWidgetList.md">PreviewWidgetList</a></dt><dd>A simple container for preview widgets returned by a scope. The number of widgets can be determined with python&#8217;s len() function and individual widgets can be accessed using [] operator. The [] indexing operator supports numeric index values as w...</dd>
<dt><a href="scope_harness.PreviewWidgetMatcher.md">PreviewWidgetMatcher</a></dt><dd>Matcher object that holds constraints for matching a preview widget.</dd>
<dt><a href="scope_harness.Result.md">Result</a></dt><dd>Represents a read-only view on a result returned by a scope</dd>
<dt><a href="scope_harness.ResultMatcher.md">ResultMatcher</a></dt><dd>Matcher object that holds constraints for matching search result.</dd>
<dt><a href="scope_harness.ResultsView.md">ResultsView</a></dt><dd>This is the main class for driving search and inspecting search results. Set search_query property to invoke search, then inspect categories property to access returned categories and their results. Use browse_department method to change active departm...</dd>
<dt><a href="scope_harness.ScopeHarness.md">ScopeHarness</a></dt><dd>This is the main class for scope harness testing. An instance of it needs to be created using one of the static class methods (new_from_*) before any tests can be perfor</dd>
<dt><a href="scope_harness.ScopeUri.md">ScopeUri</a></dt><dd>Helper class for creating scope:// uris</dd>
<dt><a href="scope_harness.SearchStatus.md">SearchStatus</a></dt><dd></dd>
<dt><a href="scope_harness.SettingsMatcher.md">SettingsMatcher</a></dt><dd>Matcher object that holds constraints for matchins settings (SettingsView) object.</dd>
<dt><a href="scope_harness.SettingsMatcherMode.md">SettingsMatcherMode</a></dt><dd>Match mode for settings</dd>
<dt><a href="scope_harness.SettingsOption.md">SettingsOption</a></dt><dd>This is a class holding properies of an option</dd>
<dt><a href="scope_harness.SettingsOptionMatcher.md">SettingsOptionMatcher</a></dt><dd>Matcher object that holds constraints for matching a settings option.</dd>
<dt><a href="scope_harness.SettingsOptionType.md">SettingsOptionType</a></dt><dd></dd>
<dt><a href="scope_harness.SettingsView.md">SettingsView</a></dt><dd>This is a view on a scope settings returned by settings() method of ResultsView.</dd>
</dl>
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
