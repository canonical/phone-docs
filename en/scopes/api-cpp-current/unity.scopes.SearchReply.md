---
Title: unity.scopes.SearchReply
---
        
SearchReply
===========

Allows the results of a search query to be sent to the query source. [More...](#details)

`#include <unity/scopes/SearchReply.h>`

Inheritance diagram for unity::scopes::SearchReply:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/f8470f2c-a24b-465e-a084-ea7b447afd75-api/scopes/cpp/sdk-15.04.4/unity.scopes.SearchReply/classunity_1_1scopes_1_1_search_reply__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

virtual void 
<a href="#a17fdd52a4a8b19d6f8e13e5d7f576344">register_departments</a> (Department::SCPtr const &parent)=0
 
Register departments for the current search reply and provide the current department. More...
 
virtual Category::SCPtr 
<a href="#aaa061806a96f50ff66abc6184135ea66">register_category</a> (std::string const &id, std::string const &title, std::string const &icon, <a href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a> const &renderer\_template=<a href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a>())=0
 
Register new category and send it to the source of the query. More...
 
virtual void 
<a href="#a3bf901e2b5c8b6db3c8e758a9ccbef1c">register_category</a> (Category::SCPtr category)=0
 
Register an existing category instance and send it to the source of the query. More...
 
virtual Category::SCPtr 
<a href="#a55335c829bf950d36dee6c394569688a">lookup_category</a> (std::string const &id)=0
 
Returns a previously registered category. More...
 
virtual bool 
<a href="#a63d6de93152b3a972901c2d406ef5760">push</a> (<a href="unity.scopes.CategorisedResult.md">CategorisedResult</a> const &result)=0
 
Sends a single result to the source of a query. More...
 
virtual bool 
<a href="#ad6c02e387248cfe382dd3d8c7cc9c589">push</a> (experimental::Annotation const &annotation)=0
 
Push an annotation. More...
 
virtual bool 
<a href="#a121842b4206980360c208a1f5828ef12">push</a> (<a href="../unity.scopes.md#adab58c13cf604e0e64bd6b1a745364d3">Filters</a> const &filters, <a href="unity.scopes.FilterState.md">FilterState</a> const &filter\_state)=0
 
Sends all filters and their state to the source of a query. More...
 
virtual 
<a href="#aafc76a74146ebed8b8849797838ef5c5">~SearchReply</a> ()
 
Destroys a Reply. More...
 
virtual Category::SCPtr 
<a href="#a73d044ea7719f3538e391477d8dd7afb">register_category</a> (std::string const &id, std::string const &title, std::string const &icon, <a href="unity.scopes.CannedQuery.md">CannedQuery</a> const &query, <a href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a> const &renderer\_template=<a href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a>())=0
 
Register new category and send it to the source of the query. More...
 
virtual void 
<a href="#a4ba805136164b11bb358917070cde24d">push_surfacing_results_from_cache</a> ()=0
 
Push the results that were produced by the most recent surfacing query. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/b0c5a149-0e9c-474c-a4dd-1d640a27a1be-api/scopes/cpp/sdk-15.04.4/unity.scopes.SearchReply/closed.png) Public Member Functions inherited from <a href="unity.scopes.Reply.md">unity::scopes::Reply</a>
virtual void 
<a href="../unity.scopes.Reply.md#a9ca653d5d7f7c97a781bc362f2af7749">finished</a> ()=0
 
Informs the source of a query that the query results are complete. More...
 
virtual void 
<a href="../unity.scopes.Reply.md#a526c9cbb11f896210835fb3420324ba8">error</a> (std::exception\_ptr ex)=0
 
Informs the source of a query that the query was terminated due to an error. More...
 
virtual void 
<a href="../unity.scopes.Reply.md#af35cbaba152e4919306f32b06bd81029">info</a> (<a href="unity.scopes.OperationInfo.md">OperationInfo</a> const &op\_info)=0
 
Informs the source of a query that additional information regarding the reply is available. More...
 
virtual 
<a href="../unity.scopes.Reply.md#a9f0cfeeee75a27e111ebd955523e1bb0">~Reply</a> ()
 
Destroys a Reply. More...
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/ad340bc8-8432-4b29-85f6-151291a220ea-api/scopes/cpp/sdk-15.04.4/unity.scopes.SearchReply/closed.png) Public Member Functions inherited from <a href="unity.scopes.Object.md">unity::scopes::Object</a>
virtual std::string 
<a href="../unity.scopes.Object.md#ad7618cc9d878c40b389361d4acd473ae">endpoint</a> ()=0
 
Returns the endpoint this proxy connects to. More...
 
virtual std::string 
<a href="../unity.scopes.Object.md#a1b55aea886f0a68cb8a578f7ee0b1cfd">identity</a> ()=0
 
Returns the identity of the target object of this proxy. More...
 
virtual std::string 
<a href="../unity.scopes.Object.md#a40a997516629df3dacca9742dbddd6cb">target_category</a> ()=0
 
Returns the category of the target object of this proxy. More...
 
virtual int64\_t 
<a href="../unity.scopes.Object.md#a41d9839f1e3cbcd6d8baee0736feccab">timeout</a> ()=0
 
Returns the timeout in milliseconds if this proxy is a twoway proxy. More...
 
virtual std::string 
<a href="../unity.scopes.Object.md#a9ae27e1f30dc755abcd796a1e8a25150">to_string</a> ()=0
 
Converts a proxy into its string representation. More...
 
<span id="details"></span>
Detailed Description
--------------------

Allows the results of a search query to be sent to the query source.

Constructor & Destructor Documentation
--------------------------------------

<span id="aafc76a74146ebed8b8849797838ef5c5" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual unity::scopes::SearchReply::~SearchReply</td>
<td>(</td>
<td></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">virtual</span></span></td>
</tr>
</tbody>
</table>

Destroys a <a href="unity.scopes.Reply.md" title="Allows query termination to be sent to the source of a query. ">Reply</a>.

If a <a href="unity.scopes.Reply.md" title="Allows query termination to be sent to the source of a query. ">Reply</a> goes out of scope without a prior call to <a href="../unity.scopes.Reply.md#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a>, the destructor implicitly calls <a href="../unity.scopes.Reply.md#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a>.

Member Function Documentation
-----------------------------

<span id="a55335c829bf950d36dee6c394569688a" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual Category::SCPtr unity::scopes::SearchReply::lookup_category</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>id</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Returns a previously registered category.

Returns  
The category instance or `nullptr` if the category does not exist.

<span id="a63d6de93152b3a972901c2d406ef5760" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual bool unity::scopes::SearchReply::push</td>
<td>(</td>
<td><a href="unity.scopes.CategorisedResult.md">CategorisedResult</a> const &amp; </td>
<td><em>result</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Sends a single result to the source of a query.

Any calls to <a href="#a63d6de93152b3a972901c2d406ef5760" title="Sends a single result to the source of a query. ">push()</a> after <a href="../unity.scopes.Reply.md#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a> was called are ignored.

Returns  
The return value is true if the result was accepted, false otherwise. A false return value can be due to <a href="../unity.scopes.Reply.md#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a> having been called earlier, or the client that sent the query having cancelled that query. The return value is false also if the query has a cardinality limit and is reached or exceeded. (The return value is false for the last valid push and subsequent pushes.)

<span id="ad6c02e387248cfe382dd3d8c7cc9c589" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual bool unity::scopes::SearchReply::push</td>
<td>(</td>
<td>experimental::Annotation const &amp; </td>
<td><em>annotation</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Push an annotation.

The annotation will be rendered at a next available spot below the category of last pushed result. To render an annotation in the top annotation area, push it before pushing search results.

Note  
The Unity shell can ignore some or all annotations, depending on available screen real estate.

<span id="a121842b4206980360c208a1f5828ef12" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual bool unity::scopes::SearchReply::push</td>
<td>(</td>
<td><a href="../unity.scopes.md#adab58c13cf604e0e64bd6b1a745364d3">Filters</a> const &amp; </td>
<td><em>filters</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.FilterState.md">FilterState</a> const &amp; </td>
<td><em>filter_state</em> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Sends all filters and their state to the source of a query.

Returns  
True if the filters were accepted, false otherwise.

<span id="a4ba805136164b11bb358917070cde24d" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual void unity::scopes::SearchReply::push_surfacing_results_from_cache</td>
<td>(</td>
<td></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Push the results that were produced by the most recent surfacing query.

The runtime automatically saves the results of the most recent surfacing query. If a scope cannot produce a result for a surfacing query (presumably, due to connectivity problems), calling <a href="#a4ba805136164b11bb358917070cde24d" title="Push the results that were produced by the most recent surfacing query. ">push_surfacing_results_from_cache()</a> pushes the results that were produced by the most recent successful surfacing query from the cache. If a scope cannot produce surfacing results, it can call this method to "replay" the previous results. In turn, this avoids the user being presented with an empty screen if he/she swipes to the scope while the device does not have connectivity.

This method has an effect only if called for a surfacing query (that is, a query with an empty query string). If called for a non-empty query, it does nothing.

You must call this method before calling <a href="../unity.scopes.Reply.md#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a>, otherwise no cached results will be pushed (<a href="#a4ba805136164b11bb358917070cde24d" title="Push the results that were produced by the most recent surfacing query. ">push_surfacing_results_from_cache()</a> implicitly calls <a href="../unity.scopes.Reply.md#a9ca653d5d7f7c97a781bc362f2af7749" title="Informs the source of a query that the query results are complete. ">finished()</a>).

<span id="aaa061806a96f50ff66abc6184135ea66" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual Category::SCPtr unity::scopes::SearchReply::register_category</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>title</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>icon</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a> const &amp; </td>
<td><em>renderer_template</em> = <code>CategoryRenderer()</code> </td>
</tr>
<tr class="odd">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Register new category and send it to the source of the query.

Parameters  
|                    |                                                               |
|--------------------|---------------------------------------------------------------|
| id                 | The identifier of the category                                |
| title              | The title of the category                                     |
| icon               | The icon of the category                                      |
| renderer\_template | The renderer template to be used for results in this category |

<!-- -->

Returns  
The category instance

<!-- -->

Exceptions  
|                                         |                                                       |
|-----------------------------------------|-------------------------------------------------------|
| unity::scopes::InvalidArgumentException | if category with that id has already been registered. |

<!-- -->

Note  
The UI uses category IDs for incremental rendering when refreshing search results. For this to work correctly, you need to make sure that you use the same category ID for different queries if the search results apply to the same category as for a previous search.

<span id="a3bf901e2b5c8b6db3c8e758a9ccbef1c" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual void unity::scopes::SearchReply::register_category</td>
<td>(</td>
<td>Category::SCPtr </td>
<td><em>category</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Register an existing category instance and send it to the source of the query.

The purpose of this call is to register a category obtained via <a href="../unity.scopes.SearchListenerBase.md#af246bd38c8ba9cec36dfae3d0607dbfc" title="Called once by the scopes runtime for each category that is returned by a query(). ">SearchListenerBase::push(Category::SCPtr const&amp;)</a> when aggregating results and categories from other scope(s).

Exceptions  
|                                 |                                    |
|---------------------------------|------------------------------------|
| unity::InvalidArgumentException | if category is already registered. |

<span id="a73d044ea7719f3538e391477d8dd7afb" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual Category::SCPtr unity::scopes::SearchReply::register_category</td>
<td>(</td>
<td>std::string const &amp; </td>
<td><em>id</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>title</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td>std::string const &amp; </td>
<td><em>icon</em>,</td>
</tr>
<tr class="even">
<td></td>
<td></td>
<td><a href="unity.scopes.CannedQuery.md">CannedQuery</a> const &amp; </td>
<td><em>query</em>,</td>
</tr>
<tr class="odd">
<td></td>
<td></td>
<td><a href="unity.scopes.CategoryRenderer.md">CategoryRenderer</a> const &amp; </td>
<td><em>renderer_template</em> = <code>CategoryRenderer()</code> </td>
</tr>
<tr class="even">
<td></td>
<td>)</td>
<td></td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Register new category and send it to the source of the query.

Parameters  
|                    |                                                               |
|--------------------|---------------------------------------------------------------|
| id                 | The identifier of the category                                |
| title              | The title of the category                                     |
| icon               | The icon of the category                                      |
| query              | Query to perform when expanding this category                 |
| renderer\_template | The renderer template to be used for results in this category |

<!-- -->

Returns  
The category instance

<!-- -->

Exceptions  
|                                         |                                                       |
|-----------------------------------------|-------------------------------------------------------|
| unity::scopes::InvalidArgumentException | if category with that id has already been registered. |

<span id="a17fdd52a4a8b19d6f8e13e5d7f576344" class="anchor"></span>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><table>
<tbody>
<tr class="odd">
<td>virtual void unity::scopes::SearchReply::register_departments</td>
<td>(</td>
<td>Department::SCPtr const &amp; </td>
<td><em>parent</em></td>
<td>)</td>
<td></td>
</tr>
</tbody>
</table></td>
<td><span class="mlabels"><span class="mlabel">pure virtual</span></span></td>
</tr>
</tbody>
</table>

Register departments for the current search reply and provide the current department.

Departments are optional. If scope supports departments, it is expected to register departments on every search as follows:

-   create a <a href="unity.scopes.Department.md" title="A department with optional sub-departments. ">Department</a> node for current department and attach to it a list of its subdepartments (unless current department is a leaf department) using <a href="../unity.scopes.Department.md#ab17057cef9ce35f1302f5421a087c067" title="Set sub-departments of this department. ">unity::scopes::Department::set_subdepartments()</a> method. For every subdepartment on the list set "has\_subdepartments" flag if applicable.
-   provide an alternate label for current department with <a href="../unity.scopes.Department.md#a9ab1192cdfcbce44b9164df11290c217" title="Set the alternate label (plural of the normal label) of this department. ">unity::scopes::Department::set_alternate_label()</a>.
-   create a <a href="unity.scopes.Department.md" title="A department with optional sub-departments. ">Department</a> node for parent of current department (if applicable - not when in root department), and attach current <a href="unity.scopes.Department.md" title="A department with optional sub-departments. ">Department</a> node to it with <a href="../unity.scopes.Department.md#ab17057cef9ce35f1302f5421a087c067" title="Set sub-departments of this department. ">unity::scopes::Department::set_subdepartments()</a> method.
-   register the parent department with <a href="#a17fdd52a4a8b19d6f8e13e5d7f576344" title="Register departments for the current search reply and provide the current department. ">unity::scopes::SearchReply::register_departments()</a>.

For example, assuming the user is visiting a "History" department in "Books", and "History" has sub-departments such as "World War Two" and "Ancient", the code that registers departments for current search in "History" may look like this:

unity::scopes::Department::SPtr books = move(<a href="../unity.scopes.Department.md#a11a3b8e9a3317f963d4bc9f46f79922b" class="code">unity::scopes::Department::create</a>(<span class="stringliteral">"books"</span>, query, <span class="stringliteral">"Books"</span>)); <span class="comment">// the parent of "History"</span>

unity::scopes::Department::SPtr history = move(<a href="../unity.scopes.Department.md#a11a3b8e9a3317f963d4bc9f46f79922b" class="code">unity::scopes::Department::create</a>(<span class="stringliteral">"history"</span>, query, <span class="stringliteral">"History"</span>));

<a href="../unity.scopes.md#ab8effc4ea05a59f2ddea896833f07231" class="code">unity::scopes::DepartmentList</a> history\_depts({

move(<a href="../unity.scopes.Department.md#a11a3b8e9a3317f963d4bc9f46f79922b" class="code">unity::scopes::Department::create</a>(<span class="stringliteral">"ww2"</span>, query, <span class="stringliteral">"World War Two"</span>)),

move(<a href="../unity.scopes.Department.md#a11a3b8e9a3317f963d4bc9f46f79922b" class="code">unity::scopes::Department::create</a>(<span class="stringliteral">"ancient"</span>, query, <span class="stringliteral">"Ancient"</span>))});

history-&gt;set\_subdepartments(history\_depts);

books-&gt;set\_subdepartments({history});

reply-&gt;register\_departments(books);

Current department should be the department returned by <a href="../unity.scopes.CannedQuery.md#a61351960149bb4c0840f020c4e645f66" title="Returns the department id of this CannedQuery. ">unity::scopes::CannedQuery::department_id()</a>. Empty department id denotes the root deparment.

Parameters  
|        |                                                                                          |
|--------|------------------------------------------------------------------------------------------|
| parent | The parent department of current department, or current one if visiting root department. |

<!-- -->

Exceptions  
|                       |                                                                                                                                                  |
|-----------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| unity::LogicException | if departments are invalid (nullptr passed, current department not present in the parent's tree, duplicated department ids present in the tree). |

