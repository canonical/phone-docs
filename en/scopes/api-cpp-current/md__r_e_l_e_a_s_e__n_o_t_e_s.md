---
Title: md__r_e_l_e_a_s_e__n_o_t_e_s
---
        
Release notes
=============

Changes in version 0.6.20
=========================

-   Support preview widget updates via ActivationResponse.
-   Consolidated build for gcc 4.9 and 5.0 so we can build both Vivid and Wily packages from the same tree. All the debian files are now generated from the debian/rules clean target.

Changes in version 0.6.19
=========================

-   Support UNITY\_SCOPES\_CONFIG\_DIR environment variable.

Changes in version 0.6.18
=========================

-   Allow child\_scopes() and set\_child\_scopes() methods more time to execute as they read from and write to disk.
-   Added ChildScopes.Timeout configuration parameter to Zmq.ini
-   Added API for activation of in-card result actions - see ScopeBase::activate\_result\_action() and ActivationResponse::Status::UpdateResult.

Changes in version 0.6.17
=========================

-   Added is\_account\_login\_result() method to Result class.

Changes in version 0.6.16
=========================

-   Added support for attaching arbitrary data to CannedQuery.
-   Added *ENABLE\_QT\_EXPERIMENTAL* guard to qt headers until that library is finalized. Further changes in the unity::scopes::qt namespace are expected at this point.
-   Added DateTimePickerFilter into experimental namespace.

Changes in version 0.6.15
=========================

-   Renamed "child\_scopes()" to "find\_child\_scopes()"
-   Renamed "child\_scopes\_ordered()" to "child\_scopes()"
-   Added is\_aggregated() and aggregated\_keywords() to SearchMetaData

Changes in version 0.6.14
=========================

-   Added push\_surfacing\_results\_from\_cache() to Reply proxy. This allows a scope to reply the results of the last succesful surfacing query from an on-disk cache. This is useful to prevent the user being presented with an empty screen when swiping to the scope while the device has no network access, or the scope's data source is off-line.

    Note: This is change is ABI compatible with gcc and clang despite the addition a new virtual function.

Changes in version 0.6.13
=========================

-   Return keywords as a set rather than a vector.

Changes in version 0.6.12
=========================

-   Introduced child\_scopes() methods for aggregators to return their list of child scopes at runtime.
-   Added missing virtual destructor to AbstractScopeBase. (LP: \#1360266)
-   Removed deprecated Runtime::run\_scope() method.
-   Prevent query from looping indefinitely if a query is forwarded among aggregators and loops back to an earlier aggregator.

Changes in version 0.6.11
=========================

-   The JSON for a CategoryRenderer now supports a "fallback" field in the "art" and "mascot" entries of the "components" dictionary. This allows a scope to specify a category-specific fallback image in case the artwork for a result cannot be retrieved.
-   PreviewWidget now supports a "fallback" field for the "image", "gallery", and "header" widget types. This allows the scope to specify a fallback image in case the artwork for a widget cannot be retrieved.

Changes in version 0.6.10
=========================

-   Renamed "Tags" scope .ini option to "Keywords".
-   Added support for IsAggregator scope .ini option.
-   Implemented BufferedResultForwarder API in utility namespace.

Changes in version 0.6.9
========================

-   Added support for ChildScopes scope .ini option to list scopes ids of aggregated scopes.
-   Added support for Version attribute in scope.ini file, and added version() accessor to ScopeMetadata.
-   Added app\_directory() method ScopeBase for scopes that are installed from the same click package as an app. This allows the app to share data with its scope (but not vice versa).
-   Added missing methods for settings\_definitions(), location\_data\_needed(), and child\_scope\_ids() to testing::ScopeMetadataBuilder.
-   Added support for Tags scope .ini option.

Changes in version 0.6.8
========================

-   Replaced dbus-send with "list updated" pub/sub to invalidate smart scopes.

Changes in version 0.6.7
========================

-   OnlineAccountClient fixes: run the internal event loop within its own context to avoid clashing with external main loop (LP: \#1377147).
-   Introduced new dependencies on dbus-test-runner and libdbustest1-dev.
-   Fix for Zmq infinite reconnection problem (LP: \#1374206)

Changes in version 0.6.6
========================

-   Added support for online accounts (via new OnlineAccountClient class).

Changes in version 0.6.5
========================

-   Implemented support for expandable preview widgets. See the documentation of PreviewWidget for details of the new widget type.

Changes in version 0.6.3
========================

-   Fix scope cache path for confined scopes.

Changes in version 0.6.2
========================

-   Move scope configuration to ~/.config/unity-scopes/
-   New setting to enable/disable of location data being fed to scopes.
-   New DebugMode scope configuration option.

Changes in version 0.6.1
========================

-   Clear any signal masks inherited from the parent process when forking.
-   Allow timeout value of -1 to disable the scope idle timeout, reaper timeouts, and two-way invocation timeout.

Changes in version 0.6.0
========================

-   Added tmp\_directory() method to ScopeBase, so a scope can find out where it can write temporary files.
-   Added cache\_directory() method to ScopeBase, so a scope can find out where it can write its files.
-   Upgraded finished() callback to be more flexible and expandable.
-   Refactored scoperunner and ScopeLoader. ScopeLoader no longer knows about the registry and scoperunner now calls RuntimeImpl::run\_scope() to set the scope running, instead of duplicating lots of functionality.
-   Removed registry parameter from ScopeBase::start(). The registry is now available via a registry() accessor on ScopeBase. The original start() method is still present, but deprecated. The default implementation of the new start() method forwards to the old one so, if a scope implements only the old one but not the new one, things still work.
-   Made methods on ScopeBase virtual, so the testing framework can override them in a test scope.
-   Added support for additional query reply info.
-   Introduced QueryMetadata base for shared functionality of \*Metadata classes.
-   Added set\_internet\_connectivity() and internet\_connectivity() to QueryMetadata.

Changes in version 0.5.2
========================

-   Added CannedQuery parameter to Category.
-   Added support for scope settings.
-   Added Registry.Timeout configuration parameter to Zmq.ini.

Changes in version 0.5.1
========================

-   Support nested dictionaries in appearance attributes of scope metadata. To define nested dictionary, use dots in key names in \[Appearance\] section of scope .ini file, e.g. "PageHeader.Logo" = "logo.svg" creates "Logo" attribute inside "PageHeader" dictionary of appearance attributes.

Changes in version 0.5.0
========================

-   Changed ScopeBase::start() method to return void instead of int, and made both start() and stop() methods virtual instead of pure virtual.
-   Moved all filter classes except for OptionSelectorFilter into experimental namespace, since they are not currently supported by the Shell and their API may get changed.
-   Moved Annotation class into experimental namespace. Annotations are not currently supported by the shell and should not be used as their API may change or get removed.
-   removed deprecated SearchReply::register\_annotation() method.
-   Changes to departments API: SearchReply::register\_departments() method now takes parent department argument only, and uses Department::SCPtr for it. SearchListenerBase::push() method for departments got changed to match as well. Removed constructors of Department and added static create() methods instead. Changed DepartmentList to hold Department pointers instead of values. Changed Department::set\_has\_subdepartments() method to take bool value (true by default).
-   Changed parameter type for pushing categories on SearchListenerBase to Category::SCPtr const&.
-   Changed constructor of SearchQueryBase to take CannedQuery and SearchMetadata arguments. Changed constructor of PreviewQueryBase to take Result and ActionMetadata arguments. Changed ActivationQueryBase constructor to take Result, widget id and action id argument. All the constructor arguments are then available via respective getters of the base classes.

Changes in version 0.4.8
========================

-   Introduced Dir/ScopesWatcher classes to watch for updates to the scope install directories, and added API to subscribe to changes in registry.

Changes in version 0.4.7
========================

-   Implemented RatingFilter and RadioButtonsFilter.
-   changed create() methods of OptionSelectorFilter and RangeInputFilter to return unique\_ptr (UPtr) instead of shared pointers.

Changes in version 0.4.6
========================

-   Added method to get and set display hints for filters (at this moment the only display hint available is Primary hint).
-   Added has\_subdepartments flag and alternate label to Department class.
-   Added TTL option for scope results.

Changes in version 0.4.5
========================

-   Implemented RangeInputFilter.

Changes in version 0.4.4
========================

-   The register\_annotation() method of SearchReply is now deprecated - push(Annotation const&) should be used instead. The display order of annotations with respect to results and categories got updated in the documentation of that method.
-   Simplified configuration with sensible defaults for all values.
-   scoperunner, scoperegistry, and smartscopesproxy are now install in /usr/lib/&lt;arch&gt; (instead of in a subdirectory of &lt;arch&gt;).
-   Runtime::run\_scope() now has an overload to accept a path to Runtime.ini. If no file name is passed, the system-wide Runtime.ini is used.
-   UNIX domain sockets for Zmq are now placed under /user/run/&lt;uid&gt;/zmq by default.

Changes in version 0.4.2
========================

-   Made the scope search, activate, perform\_action, and preview methods non-blocking. A (fake) QueryCtrl is returned immediately from these methods now. Calling cancel() before the server has finished creating the query remembers the cancel and sends it to the server once the server has returned the real QueryCtrl. This change should be transparent to application code (the only difference being that these methods complete faster now).
-   CannedQuery class can now be converted to and from a scopes:// uri with to\_uri() and from\_uri() methods. These methods replace to\_string() and from\_string() methods that got removed.

Changes in version 0.4.0
========================

-   Re-factored proxy class implementation. These changes are API compatible, but not ABI compatible.
-   Renaming of various API elements for consistency and clarity:

    PreviewWidget::add\_attribute() -&gt; PreviewWidget::add\_attribute\_value() PreviewWidget::attributes() -&gt; PreviewWidget::attribute\_values() PreviewWidget::add\_component() -&gt; PreviewWidget::add\_attribute\_mapping() PreviewWidget::components() -&gt; PreviewWidget::attribute\_mappings()

    ActivationListener -&gt; ActivationListenerBase ActivationListenerBase::activation\_response() -&gt; ActivationListenerBase::activated()

    PreviewListener -&gt; PreviewListenerBase

    SearchListener -&gt; SearchListenerBase

    PreviewQuery -&gt; PreviewQueryBase

    SearchQuery -&gt; SearchQueryBase

    ActivationBase -&gt; ActivationQueryBase

    ReplyBase -&gt; Reply

    RegistryBase -&gt; Registry

    Query -&gt; CannedQuery CannedQuery::scope\_name() -&gt; CannedQuery::scope\_id()

    ScopeMetadata::scope\_name() -&gt; CannedQuery::scope\_id()

    Scope::create\_query() -&gt; Scope::search()

    ScopeBase::create\_query() -&gt; ScopeBase::search()

    SearchQuery::create\_subquery() -&gt; SearchQuery::subsearch()

    Variant::Type: changed ordinal values of enumerators

Changes in version 0.3.2
========================

-   ActivationResponse::set\_scope\_data(Variant const&) and scope\_data() methods have been added; they are meant to replace setHints() and hints() and use Variant instead of VariantMap for arbitrary scope data. The existing ActivationResponse::setHints(VariantMap const&) and hints() methods have been marked as deprecated and for removal in 0.4.0.

Changes in version 0.3.1
========================

-   Scope::activate\_preview\_action() and ScopeBase::activate\_preview\_action() were renamed to perform\_action(). They now also require widget identifier along with action id and hints.
-   Added SearchMetadata and ActionMetadata classes; these classes are now passed to create\_query(), activate(), perform\_action(), preview() methods of ScopeBase and Scope (ScopeProxy) instead of a plain VariantMap.
-   The 'Handled' state was removed from ActivationResponse::Status and two new values were added instead: ShowDash and HideDash.
-   Annotation API changes: annotations of 'Card' type were removed and Annotation doesn't support category attribute anymore. SearchReply::push() method for annotations was renamed to register\_annotation(). Annotations are now going to be displayed in the order they were registered by scopes.
-   Result::activation\_scope\_name() method was renamed to target\_scope\_proxy() and it now returns ScopeProxy instead of a string. Client code can now use that proxy for result activation or preview calls, instead of having to do an extra registry lookup.

Changes in version 0.3.0
========================

-   Preliminary API for filters has been added via OptionSelectorFilter and FilterState classes. This part of the API is not yet supported by Unity shell and should be considered highly experimental.
-   ScopeBase::create\_query() method now takes Query object instance instead of just a search query string. Search query string is now encapsulated in the Query class and can be retrieved via Query::query\_string().
-   ScopeProxy class provides overloaded create\_query methods for passing filter state and department id. Note: departments are not yet supported across the API.
-   The scoperegistry allows extra scopes to be added on the command line now:

    $ scoperegistry some/path/Runtime.ini some/other/path/Fred.ini Joe.ini

    This loads Fred and Joe scopes in addition to any scopes picked up via the normal configuration. If Fred or Joe appear in configuration as well as on the command line, the config file on the command line takes precedence. The .so for additional scopes is expected to be in the same directory as the corresponding .ini file.

