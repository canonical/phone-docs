---
Title: index
---
        
### Searching

**Pages**
-   [Unity Scopes API](index.md)
-   [Release notes](md__r_e_l_e_a_s_e__n_o_t_e_s.md)
-   [Preview widget types](previewwidgets.md)
-   [unity](unity.md)
-   [unity.scopes](unity.scopes.md)

**Namespaces**
-   [qt](unity.scopes.qt.md)
-   [utility](unity.scopes.utility.md)

**Elements**
-   [ActivationListenerBase](unity.scopes.ActivationListenerBase.md) - Base class to receive a response to a result activation request.
-   [ActivationQueryBase](unity.scopes.ActivationQueryBase.md) - Base class for an activation request that is executed inside a scope.
-   [ActivationResponse](unity.scopes.ActivationResponse.md) - Response to a result activation.
-   [CannedQuery](unity.scopes.CannedQuery.md) - Parameters of a search query.
-   [CategorisedResult](unity.scopes.CategorisedResult.md) - A result, including the category it belongs to.
-   [ChildScope](unity.scopes.ChildScope.md) - A container for details about an aggregator's child scope.
-   [CompletionDetails](unity.scopes.CompletionDetails.md) - A container for details about the completion status of a query as well as any additional information regarding the operation of the request.
-   [FilterGroup](unity.scopes.FilterGroup.md) - Groups several filters into an expandable widget in the UI.
-   [ListenerBase](unity.scopes.ListenerBase.md) - Abstract base class to be notified of request completion (such as a query or activation request).
-   [Location](unity.scopes.Location.md) - Holds location attributes such as latitude, longitude, etc.
-   [Object](unity.scopes.Object.md) - The root base class for all proxies.
-   [OperationInfo](unity.scopes.OperationInfo.md) - A container for details about something of interest that occurs during the operation of a request.
-   [QueryBase](unity.scopes.QueryBase.md) - Abstract server-side base interface for a query that is executed inside a scope.
-   [QueryCtrl](unity.scopes.QueryCtrl.md) - QueryCtrl allows a query to be cancelled.
-   [QueryMetadata](unity.scopes.QueryMetadata.md) - Base class for extra metadata passed to scopes as a part of a request.
-   [RangeInputFilter](unity.scopes.RangeInputFilter.md) - A range filter allows a start and end value to be entered by the user.
-   [Registry](unity.scopes.Registry.md) - White pages service for available scopes.
-   [Reply](unity.scopes.Reply.md) - Allows query termination to be sent to the source of a query.
-   [Result](unity.scopes.Result.md) - The attributes of a result returned by a Scope.
-   [Runtime](unity.scopes.Runtime.md) - The main object for query originators to access the scopes runtime.
-   [Scope](unity.scopes.Scope.md) - Allows queries, preview requests, and activation requests to be sent to a scope.
-   [ScopeBase](unity.scopes.ScopeBase.md) - Base class for a scope implementation.
-   [ScopeMetadata](unity.scopes.ScopeMetadata.md) - Holds scope attributes such as name, description, icon etc.
-   [SearchListenerBase](unity.scopes.SearchListenerBase.md) - Abstract base interface for a client to receive the results of a query.
-   [SearchMetadata](unity.scopes.SearchMetadata.md) - Metadata passed with search requests.
-   [SearchQueryBase](unity.scopes.SearchQueryBase.md) - Abstract base class to represent a particular query.
-   [SearchReply](unity.scopes.SearchReply.md) - Allows the results of a search query to be sent to the query source.
-   [ValueSliderFilter](unity.scopes.ValueSliderFilter.md) - A value slider filter that allows for selecting a value within a given range.
-   [ValueSliderLabels](unity.scopes.ValueSliderLabels.md) - Labels used by a ValueSliderFilter.

### Filtering

-   [Category](unity.scopes.Category.md) - A set of related results returned by a scope and displayed within a single pane in the Unity dash.
-   [CategoryRenderer](unity.scopes.CategoryRenderer.md) - A category renderer template in JSON format.
-   [ColumnLayout](unity.scopes.ColumnLayout.md) - Defines a layout for preview widgets with given column setup.
-   [Department](unity.scopes.Department.md) - A department with optional sub-departments.
-   [FilterBase](unity.scopes.FilterBase.md) - Base class for all implementations of filters.
-   [FilterOption](unity.scopes.FilterOption.md) - Holds definition of filter option for OptionSelectorFilter.
-   [FilterState](unity.scopes.FilterState.md) - Stores the state of multiple filters.
-   [OptionSelectorFilter](unity.scopes.OptionSelectorFilter.md) - A selection filter that displays a list of choices and allows one or more of them to be selected.

### Exceptions

-   [ConfigException](unity.scopes.ConfigException.md) - Exception to indicate that something went wrong with the contents of configuration files.
-   [MiddlewareException](unity.scopes.MiddlewareException.md) - Exception to indicate that something went wrong with the middleware layer.
-   [NotFoundException](unity.scopes.NotFoundException.md) - Exception to indicate that an object wasn't found by a lookup function.
-   [ObjectNotExistException](unity.scopes.ObjectNotExistException.md) - Exception to indicate that a (twoway) request was sent to an object with an unknown identity.
-   [TimeoutException](unity.scopes.TimeoutException.md) - Exception to indicate that a twoway request timed out.

### Previews

-   [ActionMetadata](unity.scopes.ActionMetadata.md) - Metadata passed to scopes for preview and activation.
-   [PreviewListenerBase](unity.scopes.PreviewListenerBase.md) - Abstract base class for a scope to respond to preview requests.
-   [PreviewQueryBase](unity.scopes.PreviewQueryBase.md) - Abstract base class to represent a particular preview.
-   [PreviewReply](unity.scopes.PreviewReply.md) - Allows the results of a preview to be sent to the preview requester.
-   [PreviewWidget](unity.scopes.PreviewWidget.md) - A widget for a preview.

### Platform Services

**Namespaces**
-   [Accounts](Accounts.md)
-   [U1db](U1db.md)
-   [OnlineAccountClient](unity.scopes.OnlineAccountClient.md)

**Elements**
-   [OnlineAccountClient](unity.scopes.OnlineAccountClient.md) - A simple interface for integrating online accounts access and monitoring into scopes.

### Common

-   [Link](unity.scopes.Link.md) - A hyperlink (label and canned query).
-   [Variant](unity.scopes.Variant.md) - Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value.
-   [VariantBuilder](unity.scopes.VariantBuilder.md) - Helper class for creating and populating Variant containers.

### Testing

-   [testing](unity.scopes.testing.md)
-   [testing.Benchmark](unity.scopes.testing.Benchmark.md)

