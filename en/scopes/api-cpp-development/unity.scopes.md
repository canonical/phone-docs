---
Title: unity.scopes
---
        
unity.scopes
============

Top-level namespace for public functionality of the Unity scopes API. More...

nested-classes
-----------------------------------------

class  
AbstractScopeBase
 
Abstract base class for a scope implementation. More...
 
class  
<a href="unity.scopes.ActionMetadata.md">ActionMetadata</a>
 
Metadata passed to scopes for preview and activation. [More...](../unity.scopes.ActionMetadata.md#details)
 
class  
<a href="unity.scopes.ActivationListenerBase.md">ActivationListenerBase</a>
 
Base class to receive a response to a result activation request. [More...](../unity.scopes.ActivationListenerBase.md#details)
 
class  
<a href="unity.scopes.ActivationQueryBase.md">ActivationQueryBase</a>
 
Base class for an activation request that is executed inside a scope. [More...](../unity.scopes.ActivationQueryBase.md#details)
 
class  
<a href="unity.scopes.ActivationResponse.md">ActivationResponse</a>
 
Response to a result activation. [More...](../unity.scopes.ActivationResponse.md#details)
 
class  
<a href="unity.scopes.CannedQuery.md">CannedQuery</a>
 
Parameters of a search query. [More...](../unity.scopes.CannedQuery.md#details)
 
class  
<a href="unity.scopes.CategorisedResult.md">CategorisedResult</a>
 
A result, including the category it belongs to. [More...](../unity.scopes.CategorisedResult.md#details)
 
class  
<a href="unity.scopes.Category.md">Category</a>
 
A set of related results returned by a scope and displayed within a single pane in the Unity dash. [More...](../unity.scopes.Category.md#details)
 
class  
<a href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a>
 
A category renderer template in JSON format. [More...](../unity.scopes.CategoryRenderer.md#details)
 
struct  
<a href="unity.scopes.ChildScope.md">ChildScope</a>
 
A container for details about an aggregator's child scope. [More...](../unity.scopes.ChildScope.md#details)
 
class  
<a href="unity.scopes.ColumnLayout.md">ColumnLayout</a>
 
Defines a layout for preview widgets with given column setup. [More...](../unity.scopes.ColumnLayout.md#details)
 
class  
<a href="unity.scopes.CompletionDetails.md">CompletionDetails</a>
 
A container for details about the completion status of a query as well as any additional information regarding the operation of the request. [More...](../unity.scopes.CompletionDetails.md#details)
 
class  
<a href="unity.scopes.ConfigException.md">ConfigException</a>
 
Exception to indicate that something went wrong with the contents of configuration files. [More...](../unity.scopes.ConfigException.md#details)
 
class  
<a href="unity.scopes.Department.md">Department</a>
 
A department with optional sub-departments. [More...](../unity.scopes.Department.md#details)
 
class  
<a href="unity.scopes.FilterBase.md">FilterBase</a>
 
Base class for all implementations of filters. [More...](../unity.scopes.FilterBase.md#details)
 
class  
<a href="unity.scopes.FilterGroup.md">FilterGroup</a>
 
Groups several filters into an expandable widget in the UI. [More...](../unity.scopes.FilterGroup.md#details)
 
class  
<a href="unity.scopes.FilterOption.md">FilterOption</a>
 
Holds definition of filter option for <a href="unity.scopes.OptionSelectorFilter.md" title="A selection filter that displays a list of choices and allows one or more of them to be selected...">OptionSelectorFilter</a>. [More...](../unity.scopes.FilterOption.md#details)
 
class  
<a href="unity.scopes.FilterState.md">FilterState</a>
 
Stores the state of multiple filters. [More...](../unity.scopes.FilterState.md#details)
 
class  
<a href="unity.scopes.Link.md">Link</a>
 
A hyperlink (label and canned query). [More...](../unity.scopes.Link.md#details)
 
class  
<a href="unity.scopes.ListenerBase.md">ListenerBase</a>
 
Abstract base class to be notified of request completion (such as a query or activation request). [More...](../unity.scopes.ListenerBase.md#details)
 
class  
<a href="unity.scopes.Location.md">Location</a>
 
Holds location attributes such as latitude, longitude, etc. [More...](../unity.scopes.Location.md#details)
 
class  
<a href="unity.scopes.MiddlewareException.md">MiddlewareException</a>
 
Exception to indicate that something went wrong with the middleware layer. [More...](../unity.scopes.MiddlewareException.md#details)
 
class  
<a href="unity.scopes.NotFoundException.md">NotFoundException</a>
 
Exception to indicate that an object wasn't found by a lookup function. [More...](../unity.scopes.NotFoundException.md#details)
 
class  
<a href="unity.scopes.Object.md">Object</a>
 
The root base class for all proxies. [More...](../unity.scopes.Object.md#details)
 
class  
<a href="unity.scopes.ObjectNotExistException.md">ObjectNotExistException</a>
 
Exception to indicate that a (twoway) request was sent to an object with an unknown identity. [More...](../unity.scopes.ObjectNotExistException.md#details)
 
class  
<a href="unity.scopes.OnlineAccountClient.md">OnlineAccountClient</a>
 
A simple interface for integrating online accounts access and monitoring into scopes. [More...](../unity.scopes.OnlineAccountClient.md#details)
 
class  
<a href="unity.scopes.OperationInfo.md">OperationInfo</a>
 
A container for details about something of interest that occurs during the operation of a request. [More...](../unity.scopes.OperationInfo.md#details)
 
class  
<a href="unity.scopes.OptionSelectorFilter.md">OptionSelectorFilter</a>
 
A selection filter that displays a list of choices and allows one or more of them to be selected. [More...](../unity.scopes.OptionSelectorFilter.md#details)
 
class  
<a href="unity.scopes.PreviewListenerBase.md">PreviewListenerBase</a>
 
Abstract base class for a scope to respond to preview requests. [More...](../unity.scopes.PreviewListenerBase.md#details)
 
class  
<a href="unity.scopes.PreviewQueryBase.md">PreviewQueryBase</a>
 
Abstract base class to represent a particular preview. [More...](../unity.scopes.PreviewQueryBase.md#details)
 
class  
<a href="unity.scopes.PreviewReply.md">PreviewReply</a>
 
Allows the results of a preview to be sent to the preview requester. [More...](../unity.scopes.PreviewReply.md#details)
 
class  
<a href="unity.scopes.PreviewWidget.md">PreviewWidget</a>
 
A widget for a preview. [More...](../unity.scopes.PreviewWidget.md#details)
 
class  
<a href="unity.scopes.QueryBase.md">QueryBase</a>
 
Abstract server-side base interface for a query that is executed inside a scope. [More...](../unity.scopes.QueryBase.md#details)
 
class  
<a href="unity.scopes.QueryCtrl.md">QueryCtrl</a>
 
<a href="unity.scopes.QueryCtrl.md" title="QueryCtrl allows a query to be cancelled. ">QueryCtrl</a> allows a query to be cancelled. [More...](../unity.scopes.QueryCtrl.md#details)
 
class  
<a href="unity.scopes.QueryMetadata.md">QueryMetadata</a>
 
Base class for extra metadata passed to scopes as a part of a request. [More...](../unity.scopes.QueryMetadata.md#details)
 
class  
<a href="unity.scopes.RangeInputFilter.md">RangeInputFilter</a>
 
A range filter allows a start and end value to be entered by the user. [More...](../unity.scopes.RangeInputFilter.md#details)
 
class  
<a href="unity.scopes.Registry.md">Registry</a>
 
White pages service for available scopes. [More...](../unity.scopes.Registry.md#details)
 
class  
<a href="unity.scopes.Reply.md">Reply</a>
 
Allows query termination to be sent to the source of a query. [More...](../unity.scopes.Reply.md#details)
 
class  
<a href="unity.scopes.Result.md">Result</a>
 
The attributes of a result returned by a <a href="unity.scopes.Scope.md" title="Allows queries, preview requests, and activation requests to be sent to a scope. ">Scope</a>. [More...](../unity.scopes.Result.md#details)
 
class  
<a href="unity.scopes.Runtime.md">Runtime</a>
 
The main object for query originators to access the scopes runtime. [More...](../unity.scopes.Runtime.md#details)
 
class  
<a href="unity.scopes.Scope.md">Scope</a>
 
Allows queries, preview requests, and activation requests to be sent to a scope. [More...](../unity.scopes.Scope.md#details)
 
class  
<a href="unity.scopes.ScopeBase.md">ScopeBase</a>
 
Base class for a scope implementation. [More...](../unity.scopes.ScopeBase.md#details)
 
class  
<a href="unity.scopes.ScopeMetadata.md">ScopeMetadata</a>
 
Holds scope attributes such as name, description, icon etc. [More...](../unity.scopes.ScopeMetadata.md#details)
 
class  
<a href="unity.scopes.SearchListenerBase.md">SearchListenerBase</a>
 
Abstract base interface for a client to receive the results of a query. [More...](../unity.scopes.SearchListenerBase.md#details)
 
class  
<a href="unity.scopes.SearchMetadata.md">SearchMetadata</a>
 
Metadata passed with search requests. [More...](../unity.scopes.SearchMetadata.md#details)
 
class  
<a href="unity.scopes.SearchQueryBase.md">SearchQueryBase</a>
 
Abstract base class to represent a particular query. [More...](../unity.scopes.SearchQueryBase.md#details)
 
class  
<a href="unity.scopes.SearchReply.md">SearchReply</a>
 
Allows the results of a search query to be sent to the query source. [More...](../unity.scopes.SearchReply.md#details)
 
class  
<a href="unity.scopes.TimeoutException.md">TimeoutException</a>
 
Exception to indicate that a twoway request timed out. [More...](../unity.scopes.TimeoutException.md#details)
 
class  
<a href="unity.scopes.ValueSliderFilter.md">ValueSliderFilter</a>
 
A value slider filter that allows for selecting a value within a given range. [More...](../unity.scopes.ValueSliderFilter.md#details)
 
class  
<a href="unity.scopes.ValueSliderLabels.md">ValueSliderLabels</a>
 
Labels used by a <a href="unity.scopes.ValueSliderFilter.md" title="A value slider filter that allows for selecting a value within a given range. ">ValueSliderFilter</a>. [More...](../unity.scopes.ValueSliderLabels.md#details)
 
class  
<a href="unity.scopes.Variant.md">Variant</a>
 
Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. [More...](../unity.scopes.Variant.md#details)
 
class  
<a href="unity.scopes.VariantBuilder.md">VariantBuilder</a>
 
Helper class for creating and populating <a href="unity.scopes.Variant.md" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> containers. [More...](../unity.scopes.VariantBuilder.md#details)
 
typedef-members
-------------------------------------------

typedef std::vector&lt; <a href="unity.scopes.ChildScope.md">ChildScope</a> &gt; 
<a href="#a4daaa9ad07daf596af4dacd6e0b7be9a">ChildScopeList</a>
 
A list of child scopes.
 
typedef std::list&lt; <a href="unity.scopes.ColumnLayout.md">ColumnLayout</a> &gt; 
<a href="#a5b970e3c73bf25548398b32e79b2224d">ColumnLayoutList</a>
 
List of column layouts (see <a href="unity.scopes.ColumnLayout.md" title="Defines a layout for preview widgets with given column setup. ">unity::scopes::ColumnLayout</a>)
 
typedef std::list&lt; std::shared\_ptr&lt; <a href="unity.scopes.Department.md">Department</a> const &gt; &gt; 
<a href="#ab8effc4ea05a59f2ddea896833f07231">DepartmentList</a>
 
List of departments (see <a href="unity.scopes.Department.md" title="A department with optional sub-departments. ">unity::scopes::Department</a>)
 
typedef std::list&lt; FilterBase::SCPtr &gt; 
<a href="#adab58c13cf604e0e64bd6b1a745364d3">Filters</a>
 
List of filters.
 
typedef std::shared\_ptr&lt; <a href="unity.scopes.Object.md">Object</a> &gt; 
<a href="#aa68ce1769f7a888d0b4b2951741ca75a">ObjectProxy</a>
 
Convenience type definition for the proxy inheritance root.
 
typedef std::shared\_ptr&lt; <a href="unity.scopes.PreviewReply.md">PreviewReply</a> &gt; 
<a href="#a7b46ef0e880da4c75314fe60bdd55754">PreviewReplyProxy</a>
 
Convenience type definition.
 
typedef std::list&lt; <a href="unity.scopes.PreviewWidget.md">PreviewWidget</a> &gt; 
<a href="#aed3b7b1daf2e49d0a820ef931caa792d">PreviewWidgetList</a>
 
List of preview widgets (see <a href="unity.scopes.PreviewWidget.md" title="A widget for a preview. ">unity::scopes::PreviewWidget</a>)
 
typedef std::shared\_ptr&lt; <a href="unity.scopes.QueryCtrl.md">QueryCtrl</a> &gt; 
<a href="#a35e73cba26e0db0b36ffa0283a7d55dd">QueryCtrlProxy</a>
 
Convenience type definition.
 
typedef std::map&lt; std::string, <a href="unity.scopes.ScopeMetadata.md">ScopeMetadata</a> &gt; 
<a href="#a9f6e8e62689e49cdabadacf39b697816">MetadataMap</a>
 
Map for scope ID and metadata pairs.
 
typedef std::shared\_ptr&lt; <a href="unity.scopes.Registry.md">Registry</a> &gt; 
<a href="#a45babc254d3548863d79ee54f266e84d">RegistryProxy</a>
 
Convenience type definition.
 
typedef std::shared\_ptr&lt; <a href="unity.scopes.Reply.md">Reply</a> &gt; 
<a href="#a8c91fad901d437ede2195a1cab136baf">ReplyProxy</a>
 
Convenience type definition.
 
typedef std::shared\_ptr&lt; <a href="unity.scopes.Scope.md">Scope</a> &gt; 
<a href="#a94db15da410f8419e4da711db842aaae">ScopeProxy</a>
 
Convenience type definition.
 
typedef std::shared\_ptr&lt; <a href="unity.scopes.SearchReply.md">SearchReply</a> &gt; 
<a href="#a9cd604d9b842ac3b2b8636c2165dec1f">SearchReplyProxy</a>
 
Convenience type definition.
 
typedef std::pair&lt; double, std::string &gt; 
<a href="#aa8a0ba9172b4431df7628f2335409e0e">ValueLabelPair</a>
 
A value and its corresponding label.
 
typedef std::vector&lt; <a href="#aa8a0ba9172b4431df7628f2335409e0e">ValueLabelPair</a> &gt; 
<a href="#aa2ccb5d7acadeb38f44e9405f1b55c6b">ValueLabelPairList</a>
 
A sequence of value-label pairs.
 
typedef std::map&lt; std::string, <a href="unity.scopes.Variant.md">Variant</a> &gt; 
<a href="#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a>
 
A dictionary of (string, <a href="unity.scopes.Variant.md" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a>) pairs.
 
typedef std::vector&lt; <a href="unity.scopes.Variant.md">Variant</a> &gt; 
<a href="#aa3bf32d584efd902bca79698a07dd934">VariantArray</a>
 
An array of variants.
 
func-members
-----------------------------------------

char const \* 
<a href="#ae62357e6e19eda314bb79ddf65a678ac">to_string</a> (<a href="../unity.scopes.CompletionDetails.md#a38cbf8502d92a411d1c6ac5d1bd6ee1c">CompletionDetails::CompletionStatus</a> status)
 
Convenience function to convert a CompletionDetails::CompletionStatus enumerator to a string. More...
 
void 
<a href="#a0e2da826f3ff512e632dff7604f1f63f">swap</a> (<a href="unity.scopes.Variant.md">Variant</a> &, <a href="unity.scopes.Variant.md">Variant</a> &) noexcept
 
Swaps the contents of two Variants.
 
Version information

Version information is represented as *&lt;`major`&gt;*.*&lt;`minor`&gt;*.*&lt;`micro`&gt;*.

Releases that differ in the major version number or minor are binary incompatible.

Releases of the library that differ in the micro version number are binary compatible with older releases, so client code does not need to be recompiled to use the newer library version.

Changes in the micro version number indicate bug fixes or feature additions that are binary compatible.

int 
<a href="#ada491223b797c1f0f5a25ab3c5d8f715">major_version</a> ()
 
Returns the major version number of the Unity scopes library. More...
 
int 
<a href="#af13f99bac555f4a3c2a1647e972b1953">minor_version</a> ()
 
Returns the minor version number of the Unity scopes library. More...
 
int 
<a href="#af8cce57971924bc625032a9ff3f6b2b5">micro_version</a> ()
 
Returns the micro version number of the Unity scopes library. More...
 
const char \* 
<a href="#a80865ea53b482becc5c56f486762545e">version_string</a> ()
 
Returns the Unity scopes version as a string in the format *&lt;`major`&gt;*.*&lt;`minor`&gt;*.*&lt;`micro`&gt;*. More...
 
var-members
----------------------------------------

constexpr const char \* 
<a href="#a697a8f21545922bcfc8345d83f5cc156">DEFAULT_RENDERER</a>
 
A default template for generic use. More...
 
constexpr const char \* 
<a href="#abf16a855b33daf77e1a3a515cf4ab1e5">MUSIC_GRID_RENDERER</a>
 
A template suitable for displaying music results. More...
 
decltype(&UNITY\_SCOPE\_CREATE\_FUNCTION) typedef 
CreateFunction
 
Convenience typedef for the create function pointer.
 
decltype(&UNITY\_SCOPE\_DESTROY\_FUNCTION) typedef 
DestroyFunction
 
Convenience typedef for the destroy function pointer.
 
<span id="details"></span>
Detailed Description
--------------------

Top-level namespace for public functionality of the Unity scopes API.

Function Documentation
----------------------

<span id="ada491223b797c1f0f5a25ab3c5d8f715" class="anchor"></span>
|                                   |     |     |     |     |
|-----------------------------------|-----|-----|-----|-----|
| int unity::scopes::major\_version | (   |     | )   |     |

Returns the major version number of the Unity scopes library.

The major version number is also available as the macro `UNITY_SCOPES_VERSION_MAJOR`.

<span id="af8cce57971924bc625032a9ff3f6b2b5" class="anchor"></span>
|                                   |     |     |     |     |
|-----------------------------------|-----|-----|-----|-----|
| int unity::scopes::micro\_version | (   |     | )   |     |

Returns the micro version number of the Unity scopes library.

The micro version number is also available as the macro `UNITY_SCOPES_VERSION_MICRO`.

<span id="af13f99bac555f4a3c2a1647e972b1953" class="anchor"></span>
|                                   |     |     |     |     |
|-----------------------------------|-----|-----|-----|-----|
| int unity::scopes::minor\_version | (   |     | )   |     |

Returns the minor version number of the Unity scopes library.

The minor version number is also available as the macro `UNITY_SCOPES_VERSION_MINOR`.

<span id="ae62357e6e19eda314bb79ddf65a678ac" class="anchor"></span>
|                                         |     |                                                                                                                                              |          |     |     |
|-----------------------------------------|-----|----------------------------------------------------------------------------------------------------------------------------------------------|----------|-----|-----|
| char const \* unity::scopes::to\_string | (   | <a href="../unity.scopes.CompletionDetails.md#a38cbf8502d92a411d1c6ac5d1bd6ee1c">CompletionDetails::CompletionStatus</a>  | *status* | )   |     |

Convenience function to convert a <a href="../unity.scopes.CompletionDetails.md#a38cbf8502d92a411d1c6ac5d1bd6ee1c" title="Indicates the completion status for a query. ">CompletionDetails::CompletionStatus</a> enumerator to a string.

Returns  
Possible return values are "ok", "cancelled", and "error".

<span id="a80865ea53b482becc5c56f486762545e" class="anchor"></span>
|                                              |     |     |     |     |
|----------------------------------------------|-----|-----|-----|-----|
| char const \* unity::scopes::version\_string | (   |     | )   |     |

Returns the Unity scopes version as a string in the format *&lt;`major`&gt;*.*&lt;`minor`&gt;*.*&lt;`micro`&gt;*.

The version string is also available as the macro `UNITY_SCOPES_VERSION_STRING`.

Variable Documentation
----------------------

<span id="a697a8f21545922bcfc8345d83f5cc156" class="anchor"></span>
|                                                         |
|---------------------------------------------------------|
| constexpr const char\* unity::scopes::DEFAULT\_RENDERER |

**Initial value:**
{

R<span class="stringliteral">"(</span>

<span class="stringliteral"> {</span>

<span class="stringliteral"> "schema-version":1,</span>

<span class="stringliteral"> "template":</span>

<span class="stringliteral"> {</span>

<span class="stringliteral"> "category-layout":"grid"</span>

<span class="stringliteral"> },</span>

<span class="stringliteral"> "components":</span>

<span class="stringliteral"> {</span>

<span class="stringliteral"> "title":"title",</span>

<span class="stringliteral"> "art":"art"</span>

<span class="stringliteral"> }</span>

<span class="stringliteral"> }</span>

<span class="stringliteral"> )"</span>

<span class="stringliteral">}</span>

A default template for generic use.

<span id="abf16a855b33daf77e1a3a515cf4ab1e5" class="anchor"></span>
|                                                             |
|-------------------------------------------------------------|
| constexpr const char\* unity::scopes::MUSIC\_GRID\_RENDERER |

**Initial value:**
{

R<span class="stringliteral">"(</span>

<span class="stringliteral"> {</span>

<span class="stringliteral"> "schema-version":1,</span>

<span class="stringliteral"> "template":</span>

<span class="stringliteral"> {</span>

<span class="stringliteral"> "category-layout":"grid"</span>

<span class="stringliteral"> },</span>

<span class="stringliteral"> "components":</span>

<span class="stringliteral"> {</span>

<span class="stringliteral"> "title":"title",</span>

<span class="stringliteral"> "subtitle":"subtitle",</span>

<span class="stringliteral"> "art":"art"</span>

<span class="stringliteral"> }</span>

<span class="stringliteral"> }</span>

<span class="stringliteral"> )"</span>

<span class="stringliteral">}</span>

A template suitable for displaying music results.

