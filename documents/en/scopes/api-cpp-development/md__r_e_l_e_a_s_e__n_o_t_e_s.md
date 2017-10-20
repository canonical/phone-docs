---
Title: md__r_e_l_e_a_s_e__n_o_t_e_s
---

# md__r_e_l_e_a_s_e__n_o_t_e_s

<h1>Changes in version 1.0.7 </h1>
<ul>
<li>Fixed potential login deadlock in OnlineAccountClient.</li>
<li>Increased upper timeout limits to 60s to assist scope-harness testing on slow builders.</li>
<li>Fixes for building with Florian Boucault's crossbuilder.</li>
<li>Fixed incorrect generation of shlib files.</li>
<li>Marked the push(Filters const&amp;, FilterState const&amp;) method of SearchReply and SearchListenerBase as deprecated and provided push methods which take the Filters argument only.</li>
<li>Fixed Yakkety build by adding missing #includes</li>
<li>Fixed arm64 build by temporarily disabling SmartScopesClient_test</li>
</ul>
<h1>Changes in version 1.0.6 </h1>
<ul>
<li>Got rid of category header background, as per design (Bug #1446216).</li>
<li>Re-enabled license/copyright test for xenial+.</li>
<li>Removed libjson-cpp and replaced with json-glib based implementation (Bug #1360247).</li>
<li>Fixed Yakkety build.</li>
</ul>
<h1>Changes in version 1.0.5 </h1>
<ul>
<li>Simplify debian/control munging.</li>
<li>Look for clang-format as opposed to clang-format-3.x.</li>
<li>Added missing initializations to TypedScopeFixture (Bug #1542906).</li>
<li>Allow clients to specify authentication parameters (Bug #1554040).</li>
<li>Fixed incorrect generation of Replaces: and Conflicts: entries in debian/control for xenial.</li>
</ul>
<h1>Changes in version 1.0.4 </h1>
<ul>
<li>New RangeInputFilter.</li>
<li>Changed ABI compliance testing to use abigail.</li>
</ul>
<h1>Changes in version 1.0.3 </h1>
<ul>
<li>No-change rebuild for zeromq3 transition.</li>
</ul>
<h1>Changes in version 1.0.2 </h1>
<ul>
<li>Changed version number generation to use a common script.</li>
<li>Removed symbols files because we are now using abi-compliance-checker.</li>
<li>Replaced global dummy loggers for testing with heap-allocated instances to avoid crash due to global destructor ordering (LP: #1472755).</li>
<li>Store scopes package version in /var/lib/.../version file for fast retrieval from the shell plugin.</li>
<li>Loop through each argument of the custom scope runner command and ensure that all path arguments are absolute.</li>
<li>Protect all JsonCppNode::get_node() methods with a "if (!root_) throw;" check (Bug #1494796).</li>
</ul>
<h1>Changes in version 1.0.1 </h1>
<ul>
<li>Consolidate debian packaging for Vivid and Wily, so we don't need to keep to separate series for the gcc 5 ABI break.</li>
<li>Add docs for the table widget</li>
<li>Added support for preview widget updates via ActivationResponse.</li>
</ul>
<h1>Changes in version 1.0.0 </h1>
<ul>
<li>Changed package name and soname for toolchain update to gcc 5.0.</li>
</ul>
<h1>Changes in version 0.6.20 </h1>
<ul>
<li>Support preview widget updates via ActivationResponse.</li>
<li>Consolidated build for gcc 4.9 and 5.0 so we can build both Vivid and Wily packages from the same tree. All the debian files are now generated from the debian/rules clean target.</li>
</ul>
<h1>Changes in version 0.6.19 </h1>
<ul>
<li>Support UNITY_SCOPES_CONFIG_DIR environment variable.</li>
</ul>
<h1>Changes in version 0.6.18 </h1>
<ul>
<li>Allow child_scopes() and set_child_scopes() methods more time to execute as they read from and write to disk.</li>
<li>Added ChildScopes.Timeout configuration parameter to Zmq.ini</li>
<li>Added API for activation of in-card result actions - see ScopeBase::activate_result_action() and ActivationResponse::Status::UpdateResult.</li>
</ul>
<h1>Changes in version 0.6.17 </h1>
<ul>
<li>Added is_account_login_result() method to Result class.</li>
</ul>
<h1>Changes in version 0.6.16 </h1>
<ul>
<li>Added support for attaching arbitrary data to CannedQuery.</li>
<li>Added <em>ENABLE_QT_EXPERIMENTAL</em> guard to qt headers until that library is finalized. Further changes in the unity::scopes::qt namespace are expected at this point.</li>
<li>Added DateTimePickerFilter into experimental namespace.</li>
</ul>
<h1>Changes in version 0.6.15 </h1>
<ul>
<li>Renamed "child_scopes()" to "find_child_scopes()"</li>
<li>Renamed "child_scopes_ordered()" to "child_scopes()"</li>
<li>Added is_aggregated() and aggregated_keywords() to SearchMetaData</li>
</ul>
<h1>Changes in version 0.6.14 </h1>
<ul>
<li><p class="startli">Added push_surfacing_results_from_cache() to Reply proxy. This allows a scope to reply the results of the last succesful surfacing query from an on-disk cache. This is useful to prevent the user being presented with an empty screen when swiping to the scope while the device has no network access, or the scope's data source is off-line.</p>
<p class="startli">Note: This is change is ABI compatible with gcc and clang despite the addition a new virtual function.</p>
</li>
</ul>
<h1>Changes in version 0.6.13 </h1>
<ul>
<li>Return keywords as a set rather than a vector.</li>
</ul>
<h1>Changes in version 0.6.12 </h1>
<ul>
<li>Introduced child_scopes() methods for aggregators to return their list of child scopes at runtime.</li>
<li>Added missing virtual destructor to AbstractScopeBase. (LP: #1360266)</li>
<li>Removed deprecated Runtime::run_scope() method.</li>
<li>Prevent query from looping indefinitely if a query is forwarded among aggregators and loops back to an earlier aggregator.</li>
</ul>
<h1>Changes in version 0.6.11 </h1>
<ul>
<li>The JSON for a CategoryRenderer now supports a "fallback" field in the "art" and "mascot" entries of the "components" dictionary. This allows a scope to specify a category-specific fallback image in case the artwork for a result cannot be retrieved.</li>
<li>PreviewWidget now supports a "fallback" field for the "image", "gallery", and "header" widget types. This allows the scope to specify a fallback image in case the artwork for a widget cannot be retrieved.</li>
</ul>
<h1>Changes in version 0.6.10 </h1>
<ul>
<li>Renamed "Tags" scope .ini option to "Keywords".</li>
<li>Added support for IsAggregator scope .ini option.</li>
<li>Implemented BufferedResultForwarder API in utility namespace.</li>
</ul>
<h1>Changes in version 0.6.9 </h1>
<ul>
<li>Added support for ChildScopes scope .ini option to list scopes ids of aggregated scopes.</li>
<li>Added support for Version attribute in scope.ini file, and added version() accessor to ScopeMetadata.</li>
<li>Added app_directory() method ScopeBase for scopes that are installed from the same click package as an app. This allows the app to share data with its scope (but not vice versa).</li>
<li>Added missing methods for settings_definitions(), location_data_needed(), and child_scope_ids() to testing::ScopeMetadataBuilder.</li>
<li>Added support for Tags scope .ini option.</li>
</ul>
<h1>Changes in version 0.6.8 </h1>
<ul>
<li>Replaced dbus-send with "list updated" pub/sub to invalidate smart scopes.</li>
</ul>
<h1>Changes in version 0.6.7 </h1>
<ul>
<li>OnlineAccountClient fixes: run the internal event loop within its own context to avoid clashing with external main loop (LP: #1377147).</li>
<li>Introduced new dependencies on dbus-test-runner and libdbustest1-dev.</li>
<li>Fix for Zmq infinite reconnection problem (LP: #1374206)</li>
</ul>
<h1>Changes in version 0.6.6 </h1>
<ul>
<li>Added support for online accounts (via new OnlineAccountClient class).</li>
</ul>
<h1>Changes in version 0.6.5 </h1>
<ul>
<li>Implemented support for expandable preview widgets. See the documentation of PreviewWidget for details of the new widget type.</li>
</ul>
<h1>Changes in version 0.6.3 </h1>
<ul>
<li>Fix scope cache path for confined scopes.</li>
</ul>
<h1>Changes in version 0.6.2 </h1>
<ul>
<li>Move scope configuration to ~/.config/unity-scopes/</li>
<li>New setting to enable/disable of location data being fed to scopes.</li>
<li>New DebugMode scope configuration option.</li>
</ul>
<h1>Changes in version 0.6.1 </h1>
<ul>
<li>Clear any signal masks inherited from the parent process when forking.</li>
<li>Allow timeout value of -1 to disable the scope idle timeout, reaper timeouts, and two-way invocation timeout.</li>
</ul>
<h1>Changes in version 0.6.0 </h1>
<ul>
<li>Added tmp_directory() method to ScopeBase, so a scope can find out where it can write temporary files.</li>
<li>Added cache_directory() method to ScopeBase, so a scope can find out where it can write its files.</li>
<li>Upgraded finished() callback to be more flexible and expandable.</li>
<li>Refactored scoperunner and ScopeLoader. ScopeLoader no longer knows about the registry and scoperunner now calls RuntimeImpl::run_scope() to set the scope running, instead of duplicating lots of functionality.</li>
<li>Removed registry parameter from ScopeBase::start(). The registry is now available via a registry() accessor on ScopeBase. The original start() method is still present, but deprecated. The default implementation of the new start() method forwards to the old one so, if a scope implements only the old one but not the new one, things still work.</li>
<li>Made methods on ScopeBase virtual, so the testing framework can override them in a test scope.</li>
<li>Added support for additional query reply info.</li>
<li>Introduced QueryMetadata base for shared functionality of *Metadata classes.</li>
<li>Added set_internet_connectivity() and internet_connectivity() to QueryMetadata.</li>
</ul>
<h1>Changes in version 0.5.2 </h1>
<ul>
<li>Added CannedQuery parameter to Category.</li>
<li>Added support for scope settings.</li>
<li>Added Registry.Timeout configuration parameter to Zmq.ini.</li>
</ul>
<h1>Changes in version 0.5.1 </h1>
<ul>
<li>Support nested dictionaries in appearance attributes of scope metadata. To define nested dictionary, use dots in key names in [Appearance] section of scope .ini file, e.g. "PageHeader.Logo" = "logo.svg" creates "Logo" attribute inside "PageHeader" dictionary of appearance attributes.</li>
</ul>
<h1>Changes in version 0.5.0 </h1>
<ul>
<li>Changed ScopeBase::start() method to return void instead of int, and made both start() and stop() methods virtual instead of pure virtual.</li>
<li>Moved all filter classes except for OptionSelectorFilter into experimental namespace, since they are not currently supported by the Shell and their API may get changed.</li>
<li>Moved Annotation class into experimental namespace. Annotations are not currently supported by the shell and should not be used as their API may change or get removed.</li>
<li>removed deprecated SearchReply::register_annotation() method.</li>
<li>Changes to departments API: SearchReply::register_departments() method now takes parent department argument only, and uses Department::SCPtr for it. SearchListenerBase::push() method for departments got changed to match as well. Removed constructors of Department and added static create() methods instead. Changed DepartmentList to hold Department pointers instead of values. Changed Department::set_has_subdepartments() method to take bool value (true by default).</li>
<li>Changed parameter type for pushing categories on SearchListenerBase to Category::SCPtr const&amp;.</li>
<li>Changed constructor of SearchQueryBase to take CannedQuery and SearchMetadata arguments. Changed constructor of PreviewQueryBase to take Result and ActionMetadata arguments. Changed ActivationQueryBase constructor to take Result, widget id and action id argument. All the constructor arguments are then available via respective getters of the base classes.</li>
</ul>
<h1>Changes in version 0.4.8 </h1>
<ul>
<li>Introduced Dir/ScopesWatcher classes to watch for updates to the scope install directories, and added API to subscribe to changes in registry.</li>
</ul>
<h1>Changes in version 0.4.7 </h1>
<ul>
<li>Implemented RatingFilter and RadioButtonsFilter.</li>
<li>changed create() methods of OptionSelectorFilter and RangeInputFilter to return unique_ptr (UPtr) instead of shared pointers.</li>
</ul>
<h1>Changes in version 0.4.6 </h1>
<ul>
<li>Added method to get and set display hints for filters (at this moment the only display hint available is Primary hint).</li>
<li>Added has_subdepartments flag and alternate label to Department class.</li>
<li>Added TTL option for scope results.</li>
</ul>
<h1>Changes in version 0.4.5 </h1>
<ul>
<li>Implemented RangeInputFilter.</li>
</ul>
<h1>Changes in version 0.4.4 </h1>
<ul>
<li>The register_annotation() method of SearchReply is now deprecated - push(Annotation const&amp;) should be used instead. The display order of annotations with respect to results and categories got updated in the documentation of that method.</li>
<li>Simplified configuration with sensible defaults for all values.</li>
<li>scoperunner, scoperegistry, and smartscopesproxy are now install in /usr/lib/&lt;arch&gt; (instead of in a subdirectory of &lt;arch&gt;).</li>
<li>Runtime::run_scope() now has an overload to accept a path to Runtime.ini. If no file name is passed, the system-wide Runtime.ini is used.</li>
<li>UNIX domain sockets for Zmq are now placed under /user/run/&lt;uid&gt;/zmq by default.</li>
</ul>
<h1>Changes in version 0.4.2 </h1>
<ul>
<li>Made the scope search, activate, perform_action, and preview methods non-blocking. A (fake) QueryCtrl is returned immediately from these methods now. Calling cancel() before the server has finished creating the query remembers the cancel and sends it to the server once the server has returned the real QueryCtrl. This change should be transparent to application code (the only difference being that these methods complete faster now).</li>
<li>CannedQuery class can now be converted to and from a scopes:// uri with to_uri() and from_uri() methods. These methods replace to_string() and from_string() methods that got removed.</li>
</ul>
<h1>Changes in version 0.4.0 </h1>
<ul>
<li>Re-factored proxy class implementation. These changes are API compatible, but not ABI compatible.</li>
<li><p class="startli">Renaming of various API elements for consistency and clarity:</p>
<p class="startli">PreviewWidget::add_attribute() -&gt; PreviewWidget::add_attribute_value() PreviewWidget::attributes() -&gt; PreviewWidget::attribute_values() PreviewWidget::add_component() -&gt; PreviewWidget::add_attribute_mapping() PreviewWidget::components() -&gt; PreviewWidget::attribute_mappings()</p>
<p class="startli">ActivationListener -&gt; ActivationListenerBase ActivationListenerBase::activation_response() -&gt; ActivationListenerBase::activated()</p>
<p class="startli">PreviewListener -&gt; PreviewListenerBase</p>
<p class="startli">SearchListener -&gt; SearchListenerBase</p>
<p class="startli">PreviewQuery -&gt; PreviewQueryBase</p>
<p class="startli">SearchQuery -&gt; SearchQueryBase</p>
<p class="startli">ActivationBase -&gt; ActivationQueryBase</p>
<p class="startli">ReplyBase -&gt; Reply</p>
<p class="startli">RegistryBase -&gt; Registry</p>
<p class="startli">Query -&gt; CannedQuery CannedQuery::scope_name() -&gt; CannedQuery::scope_id()</p>
<p class="startli">ScopeMetadata::scope_name() -&gt; CannedQuery::scope_id()</p>
<p class="startli">Scope::create_query() -&gt; Scope::search()</p>
<p class="startli">ScopeBase::create_query() -&gt; ScopeBase::search()</p>
<p class="startli">SearchQuery::create_subquery() -&gt; SearchQuery::subsearch()</p>
<p class="startli">Variant::Type: changed ordinal values of enumerators</p>
</li>
</ul>
<h1>Changes in version 0.3.2 </h1>
<ul>
<li>ActivationResponse::set_scope_data(Variant const&amp;) and scope_data() methods have been added; they are meant to replace setHints() and hints() and use Variant instead of VariantMap for arbitrary scope data. The existing ActivationResponse::setHints(VariantMap const&amp;) and hints() methods have been marked as deprecated and for removal in 0.4.0.</li>
</ul>
<h1>Changes in version 0.3.1 </h1>
<ul>
<li>Scope::activate_preview_action() and ScopeBase::activate_preview_action() were renamed to perform_action(). They now also require widget identifier along with action id and hints.</li>
<li>Added SearchMetadata and ActionMetadata classes; these classes are now passed to create_query(), activate(), perform_action(), preview() methods of ScopeBase and Scope (ScopeProxy) instead of a plain VariantMap.</li>
<li>The 'Handled' state was removed from ActivationResponse::Status and two new values were added instead: ShowDash and HideDash.</li>
<li>Annotation API changes: annotations of 'Card' type were removed and Annotation doesn't support category attribute anymore. SearchReply::push() method for annotations was renamed to register_annotation(). Annotations are now going to be displayed in the order they were registered by scopes.</li>
<li>Result::activation_scope_name() method was renamed to target_scope_proxy() and it now returns ScopeProxy instead of a string. Client code can now use that proxy for result activation or preview calls, instead of having to do an extra registry lookup.</li>
</ul>
<h1>Changes in version 0.3.0 </h1>
<ul>
<li>Preliminary API for filters has been added via OptionSelectorFilter and FilterState classes. This part of the API is not yet supported by Unity shell and should be considered highly experimental.</li>
<li>ScopeBase::create_query() method now takes Query object instance instead of just a search query string. Search query string is now encapsulated in the Query class and can be retrieved via Query::query_string().</li>
<li>ScopeProxy class provides overloaded create_query methods for passing filter state and department id. Note: departments are not yet supported across the API.</li>
<li><p class="startli">The scoperegistry allows extra scopes to be added on the command line now:</p>
<p class="startli">$ scoperegistry some/path/Runtime.ini some/other/path/Fred.ini Joe.ini</p>
<p class="startli">This loads Fred and Joe scopes in addition to any scopes picked up via the normal configuration. If Fred or Joe appear in configuration as well as on the command line, the config file on the command line takes precedence. The .so for additional scopes is expected to be in the same directory as the corresponding .ini file. </p>
</li>
</ul>
