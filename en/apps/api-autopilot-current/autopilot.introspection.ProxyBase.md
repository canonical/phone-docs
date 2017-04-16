---
Title: autopilot.introspection.ProxyBase
---

# autopilot.introspection.ProxyBase

<dl class="class">
<dt id="autopilot.introspection.ProxyBase">
<em class="property">class </em><tt class="descclassname">autopilot.introspection.</tt><tt class="descname">ProxyBase</tt><big>(</big><em>state_dict</em>, <em>path</em>, <em>backend</em><big>)</big><a class="headerlink" href="#autopilot.introspection.ProxyBase" title="Permalink to this definition"></a></dt>
<dd><p>A class that supports transparent data retrieval from the application
under test.</p>
<p>This class is the base class for all objects retrieved from the application
under test. It handles transparently refreshing attribute values when
needed, and contains many methods to select child objects in the
introspection tree.</p>
<p>This class must be used as a base class for any custom proxy classes.</p>
<p class="first admonition-title">See also</p>
<dl class="last docutils">
<dt>Tutorial Section <a class="reference internal" href="tutorial-advanced_autopilot.md#custom-proxy-classes"><em>Writing Custom Proxy Classes</em></a></dt>
<dd>Information on how to write custom proxy classes.</dd>
</dl>
<dl class="method">
<dt id="autopilot.introspection.ProxyBase.get_all_instances">
<tt class="descname">get_all_instances</tt><big>(</big><big>)</big><a class="headerlink" href="#autopilot.introspection.ProxyBase.get_all_instances" title="Permalink to this definition"></a></dt>
<dd><p>Get all instances of this class that exist within the Application
state tree.</p>
<p>For example, to get all the LauncherIcon instances:</p>
<pre><span class="n">icons</span> <span class="o">=</span> <span class="n">LauncherIcon</span><span class="o">.</span><span class="n">get_all_instances</span><span class="p">()</span>
</pre>
<p class="first admonition-title">Warning</p>
<p class="last">Using this method is slow - it requires a complete scan of the
introspection tree. You should only use this when you&#8217;re not sure
where the objects you are looking for are located. Depending on
the application you are testing, you may get duplicate results
using this method.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Returns:</th><td class="field-body">List (possibly empty) of class instances.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.introspection.ProxyBase.get_children">
<tt class="descname">get_children</tt><big>(</big><big>)</big><a class="headerlink" href="#autopilot.introspection.ProxyBase.get_children" title="Permalink to this definition"></a></dt>
<dd><p>Returns a list of all child objects.</p>
<p>This returns a list of all children. To return only children of a
specific type, use <a class="reference internal" href="#autopilot.introspection.ProxyBase.get_children_by_type" title="autopilot.introspection.ProxyBase.get_children_by_type"><tt class="xref py py-meth docutils literal"><span class="pre">get_children_by_type</span></tt></a>. To get objects
further down the introspection tree (i.e.- nodes that may not
necessarily be immeadiate children), use <a class="reference internal" href="#autopilot.introspection.ProxyBase.select_single" title="autopilot.introspection.ProxyBase.select_single"><tt class="xref py py-meth docutils literal"><span class="pre">select_single</span></tt></a> and
<a class="reference internal" href="#autopilot.introspection.ProxyBase.select_many" title="autopilot.introspection.ProxyBase.select_many"><tt class="xref py py-meth docutils literal"><span class="pre">select_many</span></tt></a>.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.introspection.ProxyBase.get_children_by_type">
<tt class="descname">get_children_by_type</tt><big>(</big><em>desired_type</em>, <em>**kwargs</em><big>)</big><a class="headerlink" href="#autopilot.introspection.ProxyBase.get_children_by_type" title="Permalink to this definition"></a></dt>
<dd><p>Get a list of children of the specified type.</p>
<p>Keyword arguments can be used to restrict returned instances. For
example:</p>
<pre><span class="n">get_children_by_type</span><span class="p">(</span><span class="s">&#39;Launcher&#39;</span><span class="p">,</span> <span class="n">monitor</span><span class="o">=</span><span class="mi">1</span><span class="p">)</span>
</pre>
<p>will return only Launcher instances that have an attribute &#8216;monitor&#8217;
that is equal to 1. The type can also be specified as a string, which
is useful if there is no emulator class specified:</p>
<pre><span class="n">get_children_by_type</span><span class="p">(</span><span class="s">&#39;Launcher&#39;</span><span class="p">,</span> <span class="n">monitor</span><span class="o">=</span><span class="mi">1</span><span class="p">)</span>
</pre>
<p>Note however that if you pass a string, and there is an emulator class
defined, autopilot will not use it.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><strong>desired_type</strong> &#8211; Either a string naming the type you want, or a
class of the type you want (the latter is used when defining
custom emulators)</td>
</tr>
</tbody>
</table>
<p class="first admonition-title">See also</p>
<p class="last">Tutorial Section <a class="reference internal" href="tutorial-advanced_autopilot.md#custom-proxy-classes"><em>Writing Custom Proxy Classes</em></a></p>
</dd></dl>
<dl class="method">
<dt id="autopilot.introspection.ProxyBase.get_parent">
<tt class="descname">get_parent</tt><big>(</big><em>type_name=''</em>, <em>**kwargs</em><big>)</big><a class="headerlink" href="#autopilot.introspection.ProxyBase.get_parent" title="Permalink to this definition"></a></dt>
<dd><p>Returns the parent of this object.</p>
<p>One may also use this method to get a specific parent node from the
introspection tree, with type equal to <em>type_name</em> or matching the
keyword filters present in <em>kwargs</em>.
Note: The priority order is closest parent.</p>
<p>If no filters are provided and this object has no parent (i.e.- it is
the root of the introspection tree). Then it returns itself.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><strong>type_name</strong> &#8211; Either a string naming the type you want, or a class
of the appropriate type (the latter case is for overridden emulator
classes).</td>
</tr>
<tr class="field-even field"><th class="field-name" colspan="2">Raises StateNotFoundError:</th></tr>
<tr class="field-even field"><td>&nbsp;</td><td class="field-body">if the requested object was not found.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.introspection.ProxyBase.get_path">
<tt class="descname">get_path</tt><big>(</big><big>)</big><a class="headerlink" href="#autopilot.introspection.ProxyBase.get_path" title="Permalink to this definition"></a></dt>
<dd><p>Return the absolute path of the dbus node</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.introspection.ProxyBase.get_properties">
<tt class="descname">get_properties</tt><big>(</big><big>)</big><a class="headerlink" href="#autopilot.introspection.ProxyBase.get_properties" title="Permalink to this definition"></a></dt>
<dd><p>Returns a dictionary of all the properties on this class.</p>
<p>This can be useful when you want to log all the properties exported
from your application for a particular object. Every property in the
returned dictionary can be accessed as attributes of the object as
well.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.introspection.ProxyBase.get_root_instance">
<tt class="descname">get_root_instance</tt><big>(</big><big>)</big><a class="headerlink" href="#autopilot.introspection.ProxyBase.get_root_instance" title="Permalink to this definition"></a></dt>
<dd><p>Get the object at the root of this tree.</p>
<p>This will return an object that represents the root of the
introspection tree.</p>
</dd></dl>
<dl class="classmethod">
<dt id="autopilot.introspection.ProxyBase.get_type_query_name">
<em class="property">classmethod </em><tt class="descname">get_type_query_name</tt><big>(</big><big>)</big><a class="headerlink" href="#autopilot.introspection.ProxyBase.get_type_query_name" title="Permalink to this definition"></a></dt>
<dd><p>Return the Type node name to use within the search query.</p>
<p>This allows for a Custom Proxy Object to be named differently to the
underlying node type name.</p>
<p>For instance if you have a QML type defined in the file RedRect.qml:</p>
<pre>import QtQuick 2.0
Rectangle {
color: red;
}
</pre>
<p>You can then define a Custom Proxy Object  for this type like so:</p>
<dl class="docutils">
<dt>class RedRect(DBusIntrospectionObject):</dt>
<dd><p class="first">&#64;classmethod
def get_type_query_name(cls):</p>
<blockquote class="last">
</blockquote>
</dd>
</dl>
<p>This is due to the qml engine storing &#8216;RedRect&#8217; as a QQuickRectangle in
the UI tree and the xpathquery query needs a node type to query for.
By default the query will use the class name (in this case RedRect) but
this will not match any node type in the tree.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.introspection.ProxyBase.is_moving">
<tt class="descname">is_moving</tt><big>(</big><em>gap_interval=0.1</em><big>)</big><a class="headerlink" href="#autopilot.introspection.ProxyBase.is_moving" title="Permalink to this definition"></a></dt>
<dd><p>Check if the element is moving.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><strong>gap_interval</strong> &#8211; Time in seconds to wait before
re-inquiring the object co-ordinates to be able
to evaluate if, the element is moving.</td>
</tr>
<tr class="field-even field"><th class="field-name">Returns:</th><td class="field-body">True, if the element is moving, otherwise False.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.introspection.ProxyBase.no_automatic_refreshing">
<tt class="descname">no_automatic_refreshing</tt><big>(</big><big>)</big><a class="headerlink" href="#autopilot.introspection.ProxyBase.no_automatic_refreshing" title="Permalink to this definition"></a></dt>
<dd><p>Context manager function to disable automatic DBus refreshing when
retrieving attributes.</p>
<p>Example usage:</p>
<blockquote>
<dt>with instance.no_automatic_refreshing():</dt>
<dd># access lots of attributes.</dd>
</dl>
</blockquote>
<p>This can be useful if you need to check lots of attributes in a tight
loop, or if you want to atomicaly check several attributes at once.</p>
</dd></dl>
<dl class="method">
<dt id="autopilot.introspection.ProxyBase.print_tree">
<tt class="descname">print_tree</tt><big>(</big><em>output=None</em>, <em>maxdepth=None</em>, <em>_curdepth=0</em><big>)</big><a class="headerlink" href="#autopilot.introspection.ProxyBase.print_tree" title="Permalink to this definition"></a></dt>
<dd><p>Print properties of the object and its children to a stream.</p>
<p>When writing new tests, this can be called when it is too difficult to
find the widget or property that you are interested in in &#8220;vis&#8221;.</p>
<p class="first admonition-title">Warning</p>
<p class="last">Do not use this in production tests, this is expensive and
not at all appropriate for actual testing. Only call this
temporarily and replace with proper select_single/select_many
calls.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first last simple">
<li><strong>output</strong> &#8211; A file object or path name where the output will be
written to. If not given, write to stdout.</li>
<li><strong>maxdepth</strong> &#8211; If given, limit the maximum recursion level to that
number, i. e. only print children which have at most maxdepth-1
intermediate parents.</li>
</ul>
</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.introspection.ProxyBase.refresh_state">
<tt class="descname">refresh_state</tt><big>(</big><big>)</big><a class="headerlink" href="#autopilot.introspection.ProxyBase.refresh_state" title="Permalink to this definition"></a></dt>
<dd><p>Refreshes the object&#8217;s state.</p>
<p>You should probably never have to call this directly. Autopilot
automatically retrieves new state every time this object&#8217;s attributes
are read.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name" colspan="2">Raises StateNotFound:</th></tr>
<tr class="field-odd field"><td>&nbsp;</td><td class="field-body">if the object in the application under test
has been destroyed.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.introspection.ProxyBase.select_many">
<tt class="descname">select_many</tt><big>(</big><em>type_name='*'</em>, <em>ap_result_sort_keys=None</em>, <em>**kwargs</em><big>)</big><a class="headerlink" href="#autopilot.introspection.ProxyBase.select_many" title="Permalink to this definition"></a></dt>
<dd><p>Get a list of nodes from the introspection tree, with type equal to
<em>type_name</em> and (optionally) matching the keyword filters present in
<em>kwargs</em>.</p>
<p>You must specify either <em>type_name</em>, keyword filters or both.</p>
<p>This method searches recursively from the instance this method is
called on. Calling <a class="reference internal" href="#autopilot.introspection.ProxyBase.select_many" title="autopilot.introspection.ProxyBase.select_many"><tt class="xref py py-meth docutils literal"><span class="pre">select_many</span></tt></a> on the application (root) proxy
object will search the entire tree. Calling <a class="reference internal" href="#autopilot.introspection.ProxyBase.select_many" title="autopilot.introspection.ProxyBase.select_many"><tt class="xref py py-meth docutils literal"><span class="pre">select_many</span></tt></a> on an
object in the tree will only search it&#8217;s descendants.</p>
<p>Example Usage:</p>
<pre><span class="n">app</span><span class="o">.</span><span class="n">select_many</span><span class="p">(</span><span class="s">&#39;QPushButton&#39;</span><span class="p">,</span> <span class="n">enabled</span><span class="o">=</span><span class="bp">True</span><span class="p">)</span>
<span class="c"># returns a list of QPushButtons that are enabled.</span>
</pre>
<p>As mentioned above, this method searches the object tree recursively:</p>
<pre><span class="n">file_menu</span> <span class="o">=</span> <span class="n">app</span><span class="o">.</span><span class="n">select_one</span><span class="p">(</span><span class="s">&#39;QMenu&#39;</span><span class="p">,</span> <span class="n">title</span><span class="o">=</span><span class="s">&#39;File&#39;</span><span class="p">)</span>
<span class="n">file_menu</span><span class="o">.</span><span class="n">select_many</span><span class="p">(</span><span class="s">&#39;QAction&#39;</span><span class="p">)</span>
<span class="c"># returns a list of QAction objects who appear below file_menu in</span>
<span class="c"># the object tree.</span>
</pre>
<p class="first admonition-title">Warning</p>
<p class="last">The order in which objects are returned is not guaranteed. It is
bad practise to write tests that depend on the order in which
this method returns objects. (see <a class="reference internal" href="guides-good_tests.md#object-ordering"><em>Do Not Depend on Object Ordering</em></a> for more
information).</p>
<p>If you want to ensure a certain count of results retrieved from this
method, use <a class="reference internal" href="#autopilot.introspection.ProxyBase.wait_select_many" title="autopilot.introspection.ProxyBase.wait_select_many"><tt class="xref py py-meth docutils literal"><span class="pre">wait_select_many</span></tt></a> or if you only want to get one
item, use <a class="reference internal" href="#autopilot.introspection.ProxyBase.select_single" title="autopilot.introspection.ProxyBase.select_single"><tt class="xref py py-meth docutils literal"><span class="pre">select_single</span></tt></a> instead.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first simple">
<li><strong>type_name</strong> &#8211; Either a string naming the type you want, or a class
of the appropriate type (the latter case is for overridden emulator
classes).</li>
<li><strong>ap_result_sort_keys</strong> &#8211; list of object properties to sort the
query result with (sort key priority starts with element 0 as
highest priority and then descends down the list).</li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name" colspan="2">Raises ValueError:</th></tr>
<tr class="field-even field"><td>&nbsp;</td><td class="field-body"><p class="first last">if neither <em>type_name</em> or keyword filters are
provided.</p>
</td>
</tr>
</tbody>
</table>
<p class="first admonition-title">See also</p>
<p class="last">Tutorial Section <a class="reference internal" href="tutorial-advanced_autopilot.md#custom-proxy-classes"><em>Writing Custom Proxy Classes</em></a></p>
</dd></dl>
<dl class="method">
<dt id="autopilot.introspection.ProxyBase.select_single">
<tt class="descname">select_single</tt><big>(</big><em>type_name='*'</em>, <em>**kwargs</em><big>)</big><a class="headerlink" href="#autopilot.introspection.ProxyBase.select_single" title="Permalink to this definition"></a></dt>
<dd><p>Get a single node from the introspection tree, with type equal to
<em>type_name</em> and (optionally) matching the keyword filters present in
<em>kwargs</em>.</p>
<p>You must specify either <em>type_name</em>, keyword filters or both.</p>
<p>This method searches recursively from the instance this method is
called on. Calling <a class="reference internal" href="#autopilot.introspection.ProxyBase.select_single" title="autopilot.introspection.ProxyBase.select_single"><tt class="xref py py-meth docutils literal"><span class="pre">select_single</span></tt></a> on the application (root)
proxy object will search the entire tree. Calling
<a class="reference internal" href="#autopilot.introspection.ProxyBase.select_single" title="autopilot.introspection.ProxyBase.select_single"><tt class="xref py py-meth docutils literal"><span class="pre">select_single</span></tt></a> on an object in the tree will only search it&#8217;s
descendants.</p>
<p>Example usage:</p>
<pre><span class="n">app</span><span class="o">.</span><span class="n">select_single</span><span class="p">(</span><span class="s">&#39;QPushButton&#39;</span><span class="p">,</span> <span class="n">objectName</span><span class="o">=</span><span class="s">&#39;clickme&#39;</span><span class="p">)</span>
<span class="c"># returns a QPushButton whose &#39;objectName&#39; property is &#39;clickme&#39;.</span>
</pre>
<p>If nothing is returned from the query, this method raises
StateNotFoundError.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><p class="first"><strong>type_name</strong> &#8211; Either a string naming the type you want, or a class
of the appropriate type (the latter case is for overridden emulator
classes).</p>
</td>
</tr>
<tr class="field-even field"><th class="field-name">Raises:</th><td class="field-body"><ul class="first last simple">
<li><strong>ValueError</strong> &#8211; if the query returns more than one item. <em>If
you want more than one item, use select_many instead</em>.</li>
<li><strong>ValueError</strong> &#8211; if neither <em>type_name</em> or keyword filters are
provided.</li>
<li><strong>StateNotFoundError</strong> &#8211; if the requested object was not found.</li>
</ul>
</td>
</tr>
</tbody>
</table>
<p class="first admonition-title">See also</p>
<p class="last">Tutorial Section <a class="reference internal" href="tutorial-advanced_autopilot.md#custom-proxy-classes"><em>Writing Custom Proxy Classes</em></a></p>
</dd></dl>
<dl class="classmethod">
<dt id="autopilot.introspection.ProxyBase.validate_dbus_object">
<em class="property">classmethod </em><tt class="descname">validate_dbus_object</tt><big>(</big><em>path</em>, <em>_state</em><big>)</big><a class="headerlink" href="#autopilot.introspection.ProxyBase.validate_dbus_object" title="Permalink to this definition"></a></dt>
<dd><p>Return whether this class is the appropriate proxy object class for
a given dbus path and state.</p>
<p>The default version matches the name of the dbus object and the class.
Subclasses of CustomProxyObject can override it to define a different
validation method.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first simple">
<li><strong>path</strong> &#8211; The dbus path of the object to check</li>
<li><strong>state</strong> &#8211; The dbus state dict of the object to check
(ignored in default implementation)</li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name">Returns:</th><td class="field-body"><p class="first last">Whether this class is appropriate for the dbus object</p>
</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.introspection.ProxyBase.wait_select_many">
<tt class="descname">wait_select_many</tt><big>(</big><em>type_name='*'</em>, <em>ap_query_timeout=10</em>, <em>ap_result_count=1</em>, <em>ap_result_sort_keys=None</em>, <em>**kwargs</em><big>)</big><a class="headerlink" href="#autopilot.introspection.ProxyBase.wait_select_many" title="Permalink to this definition"></a></dt>
<dd><p>Get a list of nodes from the introspection tree, with type equal to
<em>type_name</em> and (optionally) matching the keyword filters present in
<em>kwargs</em>.</p>
<p>This method is identical to the <a class="reference internal" href="#autopilot.introspection.ProxyBase.select_many" title="autopilot.introspection.ProxyBase.select_many"><tt class="xref py py-meth docutils literal"><span class="pre">select_many</span></tt></a> method, except
that this method will poll the application under test for
<em>ap_query_timeout</em> seconds in the event that the search result count
is not greater than or equal to <em>ap_result_count</em>.</p>
<p>You must specify either <em>type_name</em>, keyword filters or both.</p>
<p>This method searches recursively from the instance this method is
called on. Calling <a class="reference internal" href="#autopilot.introspection.ProxyBase.wait_select_many" title="autopilot.introspection.ProxyBase.wait_select_many"><tt class="xref py py-meth docutils literal"><span class="pre">wait_select_many</span></tt></a> on the application (root)
proxy object will search the entire tree. Calling
<a class="reference internal" href="#autopilot.introspection.ProxyBase.wait_select_many" title="autopilot.introspection.ProxyBase.wait_select_many"><tt class="xref py py-meth docutils literal"><span class="pre">wait_select_many</span></tt></a> on an object in the tree will only search
it&#8217;s descendants.</p>
<p>Example Usage:</p>
<pre><span class="n">app</span><span class="o">.</span><span class="n">wait_select_many</span><span class="p">(</span>
<span class="s">&#39;QPushButton&#39;</span><span class="p">,</span>
<span class="n">ap_query_timeout</span><span class="o">=</span><span class="mi">5</span><span class="p">,</span>
<span class="n">ap_result_count</span><span class="o">=</span><span class="mi">2</span><span class="p">,</span>
<span class="n">enabled</span><span class="o">=</span><span class="bp">True</span>
<span class="p">)</span>
<span class="c"># returns at least 2 QPushButtons that are enabled, within</span>
<span class="c"># 5 seconds.</span>
</pre>
<p class="first admonition-title">Warning</p>
<p class="last">The order in which objects are returned is not guaranteed. It is
bad practise to write tests that depend on the order in which
this method returns objects. (see <a class="reference internal" href="guides-good_tests.md#object-ordering"><em>Do Not Depend on Object Ordering</em></a> for more
information).</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first simple">
<li><strong>type_name</strong> &#8211; Either a string naming the type you want, or a class
of the appropriate type (the latter case is for overridden emulator
classes).</li>
<li><strong>ap_query_timeout</strong> &#8211; Time in seconds to wait for search criteria
to match.</li>
<li><strong>ap_result_count</strong> &#8211; Minimum number of results to return.</li>
<li><strong>ap_result_sort_keys</strong> &#8211; list of object properties to sort the
query result with (sort key priority starts with element 0 as
highest priority and then descends down the list).</li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name" colspan="2">Raises ValueError:</th></tr>
<tr class="field-even field"><td>&nbsp;</td><td class="field-body"><p class="first last">if neither <em>type_name</em> or keyword filters are
provided. Also raises, if search result count does not match the
number specified by <em>ap_result_count</em> within <em>ap_query_timeout</em>
seconds.</p>
</td>
</tr>
</tbody>
</table>
<p class="first admonition-title">See also</p>
<p class="last">Tutorial Section <a class="reference internal" href="tutorial-advanced_autopilot.md#custom-proxy-classes"><em>Writing Custom Proxy Classes</em></a></p>
</dd></dl>
<dl class="method">
<dt id="autopilot.introspection.ProxyBase.wait_select_single">
<tt class="descname">wait_select_single</tt><big>(</big><em>type_name='*'</em>, <em>ap_query_timeout=10</em>, <em>**kwargs</em><big>)</big><a class="headerlink" href="#autopilot.introspection.ProxyBase.wait_select_single" title="Permalink to this definition"></a></dt>
<dd><p>Get a proxy object matching some search criteria, retrying if no
object is found until a timeout is reached.</p>
<p>This method is identical to the <a class="reference internal" href="#autopilot.introspection.ProxyBase.select_single" title="autopilot.introspection.ProxyBase.select_single"><tt class="xref py py-meth docutils literal"><span class="pre">select_single</span></tt></a> method, except
that this method will poll the application under test for 10 seconds
in the event that the search criteria does not match anything.</p>
<p>This method will return single proxy object from the introspection
tree, with type equal to <em>type_name</em> and (optionally) matching the
keyword filters present in <em>kwargs</em>.</p>
<p>You must specify either <em>type_name</em>, keyword filters or both.</p>
<p>This method searches recursively from the proxy object this method is
called on. Calling <a class="reference internal" href="#autopilot.introspection.ProxyBase.select_single" title="autopilot.introspection.ProxyBase.select_single"><tt class="xref py py-meth docutils literal"><span class="pre">select_single</span></tt></a> on the application (root)
proxy object will search the entire tree. Calling
<a class="reference internal" href="#autopilot.introspection.ProxyBase.select_single" title="autopilot.introspection.ProxyBase.select_single"><tt class="xref py py-meth docutils literal"><span class="pre">select_single</span></tt></a> on an object in the tree will only search it&#8217;s
descendants.</p>
<p>Example usage:</p>
<pre><span class="n">app</span><span class="o">.</span><span class="n">wait_select_single</span><span class="p">(</span><span class="s">&#39;QPushButton&#39;</span><span class="p">,</span> <span class="n">objectName</span><span class="o">=</span><span class="s">&#39;clickme&#39;</span><span class="p">)</span>
<span class="c"># returns a QPushButton whose &#39;objectName&#39; property is &#39;clickme&#39;.</span>
<span class="c"># will poll the application until such an object exists, or will</span>
<span class="c"># raise StateNotFoundError after 10 seconds.</span>
</pre>
<p>If nothing is returned from the query, this method raises
StateNotFoundError after <em>ap_query_timeout</em> seconds.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first simple">
<li><strong>type_name</strong> &#8211; Either a string naming the type you want, or a class
of the appropriate type (the latter case is for overridden emulator
classes).</li>
<li><strong>ap_query_timeout</strong> &#8211; Time in seconds to wait for search criteria
to match.</li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name">Raises:</th><td class="field-body"><ul class="first last simple">
<li><strong>ValueError</strong> &#8211; if the query returns more than one item. <em>If
you want more than one item, use select_many instead</em>.</li>
<li><strong>ValueError</strong> &#8211; if neither <em>type_name</em> or keyword filters are
provided.</li>
<li><strong>StateNotFoundError</strong> &#8211; if the requested object was not found.</li>
</ul>
</td>
</tr>
</tbody>
</table>
<p class="first admonition-title">See also</p>
<p class="last">Tutorial Section <a class="reference internal" href="tutorial-advanced_autopilot.md#custom-proxy-classes"><em>Writing Custom Proxy Classes</em></a></p>
</dd></dl>
<dl class="method">
<dt id="autopilot.introspection.ProxyBase.wait_until_destroyed">
<tt class="descname">wait_until_destroyed</tt><big>(</big><em>timeout=10</em><big>)</big><a class="headerlink" href="#autopilot.introspection.ProxyBase.wait_until_destroyed" title="Permalink to this definition"></a></dt>
<dd><p>Block until this object is destroyed in the application.</p>
<p>Block until the object this instance is a proxy for has been destroyed
in the applicaiton under test. This is commonly used to wait until a
UI component has been destroyed.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><strong>timeout</strong> &#8211; The number of seconds to wait for the object to be
destroyed. If not specified, defaults to 10 seconds.</td>
</tr>
<tr class="field-even field"><th class="field-name" colspan="2">Raises RuntimeError:</th></tr>
<tr class="field-even field"><td>&nbsp;</td><td class="field-body">if the method timed out.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="method">
<dt id="autopilot.introspection.ProxyBase.wait_until_not_moving">
<tt class="descname">wait_until_not_moving</tt><big>(</big><em>retry_attempts_count=20</em>, <em>retry_interval=0.5</em><big>)</big><a class="headerlink" href="#autopilot.introspection.ProxyBase.wait_until_not_moving" title="Permalink to this definition"></a></dt>
<dd><p>Block until this object is not moving.</p>
<p>Block until both x and y of the object stop changing. This is
normally useful for cases, where there is a need to ensure an
object is static before interacting with it.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first simple">
<li><strong>retry_attempts_count</strong> &#8211; number of attempts to check
if the object is moving.</li>
<li><strong>retry_interval</strong> &#8211; time in fractional seconds to be
slept, between each attempt to check if the object
moving.</li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name" colspan="2">Raises RuntimeError:</th></tr>
<tr class="field-even field"><td>&nbsp;</td><td class="field-body"><p class="first last">if DBus node is still moving after
number of retries specified in <em>retry_attempts_count</em>.</p>
</td>
</tr>
</tbody>
</table>
</dd></dl>
</dd></dl>
<dl class="attribute">
<dt id="autopilot.introspection.CustomEmulatorBase">
<tt class="descclassname">autopilot.introspection.</tt><tt class="descname">CustomEmulatorBase</tt><a class="headerlink" href="#autopilot.introspection.CustomEmulatorBase" title="Permalink to this definition"></a></dt>
<dd><p>alias of <a class="reference internal" href="#autopilot.introspection.ProxyBase" title="autopilot.introspection.ProxyBase"><tt class="xref py py-class docutils literal"><span class="pre">ProxyBase</span></tt></a></p>
</dd></dl>
<dl class="function">
<dt id="autopilot.introspection.is_element">
<tt class="descclassname">autopilot.introspection.</tt><tt class="descname">is_element</tt><big>(</big><em>ap_query_func</em>, <em>*args</em>, <em>**kwargs</em><big>)</big><a class="headerlink" href="#autopilot.introspection.is_element" title="Permalink to this definition"></a></dt>
<dd><p>Call the <em>ap_query_func</em> with the args and indicate if it
raises StateNotFoundError.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Param:</th><td class="field-body">ap_query_func: The dbus query call to be evaluated.</td>
</tr>
<tr class="field-even field"><th class="field-name">Param:</th><td class="field-body"><em>args: The *ap_query_func</em> positional parameters.</td>
</tr>
<tr class="field-odd field"><th class="field-name">Param:</th><td class="field-body"><a href="#id1"><span class="problematic" id="id2">**</span></a>kwargs: The <em>ap_query_func</em> optional parameters.</td>
</tr>
<tr class="field-even field"><th class="field-name">Returns:</th><td class="field-body">False if the <em>ap_query_func</em> raises StateNotFoundError,
True otherwise.</td>
</tr>
</tbody>
</table>
</dd></dl>
<dl class="function">
<dt id="autopilot.introspection.get_classname_from_path">
<tt class="descclassname">autopilot.introspection.</tt><tt class="descname">get_classname_from_path</tt><big>(</big><em>object_path</em><big>)</big><a class="headerlink" href="#autopilot.introspection.get_classname_from_path" title="Permalink to this definition"></a></dt>
<dd><p>Given an object path, return the class name component.</p>
</dd></dl>
<dl class="function">
<dt id="autopilot.introspection.get_path_root">
<tt class="descclassname">autopilot.introspection.</tt><tt class="descname">get_path_root</tt><big>(</big><em>object_path</em><big>)</big><a class="headerlink" href="#autopilot.introspection.get_path_root" title="Permalink to this definition"></a></dt>
<dd><p>Return the name of the root node of specified path.</p>
</dd></dl>
<dl class="exception">
<dt id="autopilot.introspection.ProcessSearchError">
<em class="property">exception </em><tt class="descclassname">autopilot.introspection.</tt><tt class="descname">ProcessSearchError</tt><a class="headerlink" href="#autopilot.introspection.ProcessSearchError" title="Permalink to this definition"></a></dt>
<dd><p>Object introspection error occured.</p>
</dd></dl>
<dl class="function">
<dt id="autopilot.introspection.get_proxy_object_for_existing_process">
<tt class="descclassname">autopilot.introspection.</tt><tt class="descname">get_proxy_object_for_existing_process</tt><big>(</big><em>**kwargs</em><big>)</big><a class="headerlink" href="#autopilot.introspection.get_proxy_object_for_existing_process" title="Permalink to this definition"></a></dt>
<dd><p>Return a single proxy object for an application that is already running
(i.e. launched outside of Autopilot).</p>
<p>Searches the given bus (supplied by the kwarg <strong>dbus_bus</strong>) for an
application matching the search criteria (also supplied in kwargs, see
further down for explaination on what these can be.)
Returns a proxy object created using the supplied custom emulator
<strong>emulator_base</strong> (which defaults to None).</p>
<p>This function take kwargs arguments containing search parameter values to
use when searching for the target application.</p>
<p><strong>Possible search criteria</strong>:
<em>(unless specified otherwise these parameters default to None)</em></p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first last simple">
<li><strong>pid</strong> &#8211; The PID of the application to search for.</li>
<li><strong>process</strong> &#8211; The process of the application to search for.
If provided only the pid of the process is used in the search, but if
the process exits before the search is complete it is used to supply
details provided by the process object.</li>
<li><strong>connection_name</strong> &#8211; A string containing the DBus connection name to
use with the search criteria.</li>
<li><strong>application_name</strong> &#8211; A string containing the applications name to
search for.</li>
<li><strong>object_path</strong> &#8211; A string containing the object path to use as the
search criteria.
Defaults to:
<tt class="xref py py-data docutils literal"><span class="pre">autopilot.introspection.constants.AUTOPILOT_PATH</span></tt>.</li>
</ul>
</td>
</tr>
</tbody>
</table>
<p><strong>Non-search parameters:</strong></p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first last simple">
<li><strong>dbus_bus</strong> &#8211; The DBus bus to search for the application.
Must be a string containing either &#8216;session&#8217;, &#8216;system&#8217; or the
custom buses name (i.e. &#8216;unix:abstract=/tmp/dbus-IgothuMHNk&#8217;).
Defaults to &#8216;session&#8217;</li>
<li><strong>emulator_base</strong> &#8211; The custom emulator to use when creating the
resulting proxy object.
Defaults to None</li>
</ul>
</td>
</tr>
</tbody>
</table>
<p><strong>Exceptions possibly thrown by this function:</strong></p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Raises:</th><td class="field-body"><ul class="first last simple">
<li><strong>ProcessSearchError</strong> &#8211; If no search criteria match.</li>
<li><strong>RuntimeError</strong> &#8211; If the search criteria results in many matches.</li>
<li><strong>RuntimeError</strong> &#8211; If both <tt class="docutils literal"><span class="pre">process</span></tt> and <tt class="docutils literal"><span class="pre">pid</span></tt> are supplied, but
<tt class="docutils literal"><span class="pre">process.pid</span> <span class="pre">!=</span> <span class="pre">pid</span></tt>.</li>
</ul>
</td>
</tr>
</tbody>
</table>
<p><strong>Examples:</strong></p>
<p>Retrieving an application on the system bus where the applications PID is
known:</p>
<pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="n">get_proxy_object_for_existing_process</span><span class="p">(</span><span class="n">pid</span><span class="o">=</span><span class="n">app_pid</span><span class="p">)</span>
</pre>
<p>Multiple criteria are allowed, for instance you could search on <strong>pid</strong>
and <strong>connection_name</strong>:</p>
<pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="n">get_proxy_object_for_existing_process</span><span class="p">(</span>
<span class="n">pid</span><span class="o">=</span><span class="n">app_pid</span><span class="p">,</span>
<span class="n">connection_name</span><span class="o">=</span><span class="s">&#39;org.gnome.Gedit&#39;</span>
<span class="p">)</span>
</pre>
<p>If the application from the previous example was on the system bus:</p>
<pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="n">get_proxy_object_for_existing_process</span><span class="p">(</span>
<span class="n">dbus_bus</span><span class="o">=</span><span class="s">&#39;system&#39;</span><span class="p">,</span>
<span class="n">pid</span><span class="o">=</span><span class="n">app_pid</span><span class="p">,</span>
<span class="n">connection_name</span><span class="o">=</span><span class="s">&#39;org.gnome.Gedit&#39;</span>
<span class="p">)</span>
</pre>
<p>It is possible to search for the application given just the applications
name.
An example for an application running on a custom bus searching using the
applications name:</p>
<pre><span class="n">app_proxy</span> <span class="o">=</span> <span class="n">get_proxy_object_for_existing_process</span><span class="p">(</span>
<span class="n">application_name</span><span class="o">=</span><span class="s">&#39;qmlscene&#39;</span><span class="p">,</span>
<span class="n">dbus_bus</span><span class="o">=</span><span class="s">&#39;unix:abstract=/tmp/dbus-IgothuMHNk&#39;</span>
<span class="p">)</span>
</pre>
</dd></dl>
<dl class="function">
<dt id="autopilot.introspection.get_proxy_object_for_existing_process_by_name">
<tt class="descclassname">autopilot.introspection.</tt><tt class="descname">get_proxy_object_for_existing_process_by_name</tt><big>(</big><em>process_name</em>, <em>emulator_base=None</em><big>)</big><a class="headerlink" href="#autopilot.introspection.get_proxy_object_for_existing_process_by_name" title="Permalink to this definition"></a></dt>
<dd><p>Return the proxy object for a process by its name.</p>
<table class="docutils field-list" frame="void" rules="none">
<col class="field-name" />
<col class="field-body" />
<tbody valign="top">
<tr class="field-odd field"><th class="field-name">Parameters:</th><td class="field-body"><ul class="first simple">
<li><strong>process_name</strong> &#8211; name of the process to get proxy object.
This must be a string.</li>
<li><strong>emulator_base</strong> &#8211; emulator base to use with the custom proxy object.</li>
</ul>
</td>
</tr>
<tr class="field-even field"><th class="field-name" colspan="2">Raises ValueError:</th></tr>
<tr class="field-even field"><td>&nbsp;</td><td class="field-body"><p class="first">if process not running or more than one PIDs
associated with the process.</p>
</td>
</tr>
<tr class="field-odd field"><th class="field-name">Returns:</th><td class="field-body"><p class="first last">proxy object for the requested process.</p>
</td>
</tr>
</tbody>
</table>
</dd></dl>
