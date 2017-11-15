---
Title: index.html
---

# index.html

<h3 class="section_title">Searching</h3>
<ul>
<li><b>Pages</b></li>
<ul>
<li><a href="index.md">Unity Scopes API</a></li>
<li><a href="md__r_e_l_e_a_s_e__n_o_t_e_s.md">Release notes</a></li>
<li><a href="previewwidgets.md">Preview widget types</a></li>
<li><a href="unity.md">unity</a></li>
<li><a href="unity.scopes.md">unity.scopes</a></li>
</ul>
<li><b>Namespaces</b></li>
<ul>
<li><a href="unity.scopes.qt.md">qt</a></li>
<li><a href="unity.scopes.utility.md">utility</a></li>
</ul>
<li><b>Elements</b></li>
<ul>
<li><a href="unity.scopes.ActivationListenerBase.md">ActivationListenerBase</a> - Base class to receive a response to a result activation request.  
</li>
<li><a href="unity.scopes.ActivationQueryBase.md">ActivationQueryBase</a> - Base class for an activation request that is executed inside a scope.  
</li>
<li><a href="unity.scopes.ActivationResponse.md">ActivationResponse</a> - Response to a result activation.  
</li>
<li><a href="unity.scopes.CannedQuery.md">CannedQuery</a> - Parameters of a search query.  
</li>
<li><a href="unity.scopes.CategorisedResult.md">CategorisedResult</a> - A result, including the category it belongs to.  
</li>
<li><a href="unity.scopes.ChildScope.md">ChildScope</a> - A container for details about an aggregator's child scope.  
</li>
<li><a href="unity.scopes.CompletionDetails.md">CompletionDetails</a> - A container for details about the completion status of a query as well as any additional information regarding the operation of the request.  
</li>
<li><a href="unity.scopes.FilterGroup.md">FilterGroup</a> - Groups several filters into an expandable widget in the UI.  
</li>
<li><a href="unity.scopes.ListenerBase.md">ListenerBase</a> - Abstract base class to be notified of request completion (such as a query or activation request).  
</li>
<li><a href="unity.scopes.Location.md">Location</a> - Holds location attributes such as latitude, longitude, etc.  
</li>
<li><a href="unity.scopes.Object.md">Object</a> - The root base class for all proxies.  
</li>
<li><a href="unity.scopes.OperationInfo.md">OperationInfo</a> - A container for details about something of interest that occurs during the operation of a request.  
</li>
<li><a href="unity.scopes.QueryBase.md">QueryBase</a> - Abstract server-side base interface for a query that is executed inside a scope.  
</li>
<li><a href="unity.scopes.QueryCtrl.md">QueryCtrl</a> - QueryCtrl allows a query to be cancelled.  
</li>
<li><a href="unity.scopes.QueryMetadata.md">QueryMetadata</a> - Base class for extra metadata passed to scopes as a part of a request.  
</li>
<li><a href="unity.scopes.RangeInputFilter.md">RangeInputFilter</a> - A range filter allows a start and end value to be entered by the user.  
</li>
<li><a href="unity.scopes.Registry.md">Registry</a> - White pages service for available scopes.  
</li>
<li><a href="unity.scopes.Reply.md">Reply</a> - Allows query termination to be sent to the source of a query.  
</li>
<li><a href="unity.scopes.Result.md">Result</a> - The attributes of a result returned by a Scope.  
</li>
<li><a href="unity.scopes.Runtime.md">Runtime</a> - The main object for query originators to access the scopes runtime.  
</li>
<li><a href="unity.scopes.Scope.md">Scope</a> - Allows queries, preview requests, and activation requests to be sent to a scope.  
</li>
<li><a href="unity.scopes.ScopeBase.md">ScopeBase</a> - Base class for a scope implementation.  
</li>
<li><a href="unity.scopes.ScopeMetadata.md">ScopeMetadata</a> - Holds scope attributes such as name, description, icon etc.  
</li>
<li><a href="unity.scopes.SearchListenerBase.md">SearchListenerBase</a> - Abstract base interface for a client to receive the results of a query.  
</li>
<li><a href="unity.scopes.SearchMetadata.md">SearchMetadata</a> - Metadata passed with search requests.  
</li>
<li><a href="unity.scopes.SearchQueryBase.md">SearchQueryBase</a> - Abstract base class to represent a particular query.  
</li>
<li><a href="unity.scopes.SearchReply.md">SearchReply</a> - Allows the results of a search query to be sent to the query source.  
</li>
<li><a href="unity.scopes.ValueSliderFilter.md">ValueSliderFilter</a> - A value slider filter that allows for selecting a value within a given range.  
</li>
<li><a href="unity.scopes.ValueSliderLabels.md">ValueSliderLabels</a> - Labels used by a ValueSliderFilter.  
</li>
</ul>
</ul>
<h3 class="section_title">Filtering</h3>
<ul>
<li><a href="unity.scopes.Category.md">Category</a> - A set of related results returned by a scope and displayed within a single pane in the Unity dash.  
</li>
<li><a href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a> - A category renderer template in JSON format.  
</li>
<li><a href="unity.scopes.ColumnLayout.md">ColumnLayout</a> - Defines a layout for preview widgets with given column setup.  
</li>
<li><a href="unity.scopes.Department.md">Department</a> - A department with optional sub-departments.  
</li>
<li><a href="unity.scopes.FilterBase.md">FilterBase</a> - Base class for all implementations of filters.  
</li>
<li><a href="unity.scopes.FilterOption.md">FilterOption</a> - Holds definition of filter option for OptionSelectorFilter.  
</li>
<li><a href="unity.scopes.FilterState.md">FilterState</a> - Stores the state of multiple filters.  
</li>
<li><a href="unity.scopes.OptionSelectorFilter.md">OptionSelectorFilter</a> - A selection filter that displays a list of choices and allows one or more of them to be selected.  
</li>
</ul>
<h3 class="section_title">Exceptions</h3>
<ul>
<li><a href="unity.scopes.ConfigException.md">ConfigException</a> - Exception to indicate that something went wrong with the contents of configuration files.  
</li>
<li><a href="unity.scopes.MiddlewareException.md">MiddlewareException</a> - Exception to indicate that something went wrong with the middleware layer.  
</li>
<li><a href="unity.scopes.NotFoundException.md">NotFoundException</a> - Exception to indicate that an object wasn't found by a lookup function.  
</li>
<li><a href="unity.scopes.ObjectNotExistException.md">ObjectNotExistException</a> - Exception to indicate that a (twoway) request was sent to an object with an unknown identity.  
</li>
<li><a href="unity.scopes.TimeoutException.md">TimeoutException</a> - Exception to indicate that a twoway request timed out.  
</li>
</ul>
<h3 class="section_title">Previews</h3>
<ul>
<li><a href="unity.scopes.ActionMetadata.md">ActionMetadata</a> - Metadata passed to scopes for preview and activation.  
</li>
<li><a href="unity.scopes.PreviewListenerBase.md">PreviewListenerBase</a> - Abstract base class for a scope to respond to preview requests.  
</li>
<li><a href="unity.scopes.PreviewQueryBase.md">PreviewQueryBase</a> - Abstract base class to represent a particular preview.  
</li>
<li><a href="unity.scopes.PreviewReply.md">PreviewReply</a> - Allows the results of a preview to be sent to the preview requester.  
</li>
<li><a href="unity.scopes.PreviewWidget.md">PreviewWidget</a> - A widget for a preview.  
</li>
</ul>
<h3 class="section_title">Platform Services</h3>
<ul>
<li><b>Namespaces</b></li>
<ul>
<li><a href="Accounts.md">Accounts</a></li>
<li><a href="U1db.md">U1db</a></li>
<li><a href="unity.scopes.OnlineAccountClient.md">OnlineAccountClient</a></li>
</ul>
<li><b>Elements</b></li>
<ul>
<li><a href="unity.scopes.OnlineAccountClient.md">OnlineAccountClient</a> - A simple interface for integrating online accounts access and monitoring into scopes.  
</li>
</ul>
</ul>
<h3 class="section_title">Common</h3>
<ul>
<li><a href="unity.scopes.Link.md">Link</a> - A hyperlink (label and canned query).  
</li>
<li><a href="unity.scopes.Variant.md">Variant</a> - Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value.  
</li>
<li><a href="unity.scopes.VariantBuilder.md">VariantBuilder</a> - Helper class for creating and populating Variant containers.  
</li>
</ul>
<h3 class="section_title">Testing</h3>
<ul>
<li><a href="unity.scopes.testing.md">testing</a></li>
<li><a href="unity.scopes.testing.Benchmark.md">testing.Benchmark</a></li>
</ul>
