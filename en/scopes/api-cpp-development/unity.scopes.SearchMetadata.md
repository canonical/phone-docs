---
Title: unity.scopes.SearchMetadata
---
        
SearchMetadata
==============

Metadata passed with search requests. [More...](#details)

`#include <unity/scopes/SearchMetadata.h>`

Inheritance diagram for unity::scopes::SearchMetadata:

![Inheritance graph](https://developer.ubuntu.com/static/devportal_uploaded/4b48c407-a62c-4667-9477-0cf2dbddc115-api/scopes/cpp/sdk-15.04.5/unity.scopes.SearchMetadata/classunity_1_1scopes_1_1_search_metadata__inherit__graph.png)

<span class="legend">\[legend\]</span>

pub-methods
------------------------------------------------------

 
<a href="#afbef43ec4b8977f3a4bd334795ba53db">SearchMetadata</a> (std::string const &<a href="../unity.scopes.QueryMetadata.md#a3ca25150669d96171aec6ab56ef6bb0e">locale</a>, std::string const &<a href="../unity.scopes.QueryMetadata.md#a494f592f3055fba4da6554a6d8fb7c42">form_factor</a>)
 
Create SearchMetadata with the given locale and form factor. More...
 
 
<a href="#aed4a61dc45656bc36f07ca2802a8c6e0">SearchMetadata</a> (int <a href="#a439fca5f1acb2476784e43ca4d01cd3f">cardinality</a>, std::string const &<a href="../unity.scopes.QueryMetadata.md#a3ca25150669d96171aec6ab56ef6bb0e">locale</a>, std::string const &<a href="../unity.scopes.QueryMetadata.md#a494f592f3055fba4da6554a6d8fb7c42">form_factor</a>)
 
Create SearchMetadata with the given cardinality, locale, and form factor. More...
 
void 
<a href="#af6ee25cabcefae0204753bd78d5c67f2">set_cardinality</a> (int <a href="#a439fca5f1acb2476784e43ca4d01cd3f">cardinality</a>)
 
Set cardinality. More...
 
int 
<a href="#a439fca5f1acb2476784e43ca4d01cd3f">cardinality</a> () const
 
Get cardinality. More...
 
void 
<a href="#aa7f858cb1d9716381836b0e8e9a01d06">set_location</a> (<a href="unity.scopes.Location.md">Location</a> const &<a href="#a150922b97294bcda195030648a1f6f1b">location</a>)
 
Set location. More...
 
<a href="unity.scopes.Location.md">Location</a> 
<a href="#a150922b97294bcda195030648a1f6f1b">location</a> () const
 
Get location. More...
 
bool 
<a href="#a3d71111819dbfc9e409ab2ae1d9dce7f">has_location</a> () const
 
Does the SearchMetadata have a location. More...
 
void 
<a href="#a06b9b4acc427e5124f400763bb4f14d0">remove_location</a> ()
 
Remove location data entirely. More...
 
void 
<a href="#a20dd440f94658a78eff73a8d66ea98c0">set_aggregated_keywords</a> (std::set&lt; std::string &gt; const &<a href="#ab00673c4b1264388e0673d525e6d883e">aggregated_keywords</a>)
 
Set the list of scope keywords used to initiate this search request. More...
 
std::set&lt; std::string &gt; 
<a href="#ab00673c4b1264388e0673d525e6d883e">aggregated_keywords</a> () const
 
Get the list of scope keywords used to initiate this search request. More...
 
bool 
<a href="#ab999e0fd62e31b4c5e3095264ed81672">is_aggregated</a> () const
 
Check if this search request originated from an aggregator scope. More...
 
void 
<a href="#a7b8bf8376371fd3e90b4b84484822ba2">set_hint</a> (std::string const &key, <a href="unity.scopes.Variant.md">Variant</a> const &value)
 
Sets a hint. More...
 
<a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> 
<a href="#ab112cd1adfb1fdd24a1960c7db444531">hints</a> () const
 
Get all hints. More...
 
bool 
<a href="#ac2815cd1941d463eeffd82fde76c79c7">contains_hint</a> (std::string const &key) const
 
Check if this SearchMetadata has a hint. More...
 
<a href="unity.scopes.Variant.md">Variant</a> & 
<a href="#a0f8ec6f0f54b6ecc0fee1cfcf6d630a3">operator[]</a> (std::string const &key)
 
Returns a reference to a hint. More...
 
<a href="unity.scopes.Variant.md">Variant</a> const & 
<a href="#a811a5da751cfe716e04a30bb8273ad8c">operator[]</a> (std::string const &key) const
 
Returns a const reference to a hint. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**SearchMetadata** (<a href="index.html">SearchMetadata</a> const &other)
 
 
**SearchMetadata** (<a href="index.html">SearchMetadata</a> &&)
 
<a href="index.html">SearchMetadata</a> & 
**operator=** (<a href="index.html">SearchMetadata</a> const &other)
 
<a href="index.html">SearchMetadata</a> & 
**operator=** (<a href="index.html">SearchMetadata</a> &&)
 
![-](https://developer.ubuntu.com/static/devportal_uploaded/56fb6e5c-dcc6-47f0-ac4b-cce0eb053b7e-api/scopes/cpp/sdk-15.04.5/unity.scopes.SearchMetadata/closed.png) Public Member Functions inherited from <a href="unity.scopes.QueryMetadata.md">unity::scopes::QueryMetadata</a>
std::string 
<a href="../unity.scopes.QueryMetadata.md#a3ca25150669d96171aec6ab56ef6bb0e">locale</a> () const
 
Get the locale string. More...
 
std::string 
<a href="../unity.scopes.QueryMetadata.md#a494f592f3055fba4da6554a6d8fb7c42">form_factor</a> () const
 
Get the form factor string. More...
 
void 
<a href="../unity.scopes.QueryMetadata.md#a5b2395aff97cbe1009759de03f270bf3">set_internet_connectivity</a> (<a href="../unity.scopes.QueryMetadata.md#a20eb916661728a7d9c00485e28f88701">ConnectivityStatus</a> connectivity\_status)
 
Set internet connectivity status. More...
 
<a href="../unity.scopes.QueryMetadata.md#a20eb916661728a7d9c00485e28f88701">ConnectivityStatus</a> 
<a href="../unity.scopes.QueryMetadata.md#a3da06f370e53b5e381ec8cf33d8ee191">internet_connectivity</a> () const
 
Get internet connectivity status. More...
 
inherited
---------------------------------------------------------

![-](https://developer.ubuntu.com/static/devportal_uploaded/01c15e3e-dc41-4a2c-832c-a726a80c523d-api/scopes/cpp/sdk-15.04.5/unity.scopes.SearchMetadata/closed.png) Public Types inherited from <a href="unity.scopes.QueryMetadata.md">unity::scopes::QueryMetadata</a>
enum  
<a href="../unity.scopes.QueryMetadata.md#a20eb916661728a7d9c00485e28f88701">ConnectivityStatus</a> { **Unknown**, **Connected**, **Disconnected** }
 
Indicates the internet connectivity status. [More...](../unity.scopes.QueryMetadata.md#a20eb916661728a7d9c00485e28f88701)
 
<span id="details"></span>
Detailed Description
--------------------

Metadata passed with search requests.

Constructor & Destructor Documentation
--------------------------------------

<span id="afbef43ec4b8977f3a4bd334795ba53db" class="anchor"></span>
|                                               |     |                      |                 |
|-----------------------------------------------|-----|----------------------|-----------------|
| unity::scopes::SearchMetadata::SearchMetadata | (   | std::string const &  | *locale*,       |
|                                               |     | std::string const &  | *form\_factor*  |
|                                               | )   |                      |                 |

Create <a href="index.html" title="Metadata passed with search requests. ">SearchMetadata</a> with the given locale and form factor.

Parameters  
|              |                                                           |
|--------------|-----------------------------------------------------------|
| locale       | locale string, eg. en\_EN                                 |
| form\_factor | form factor name, e.g. phone, desktop, phone-version etc. |

<span id="aed4a61dc45656bc36f07ca2802a8c6e0" class="anchor"></span>
|                                               |     |                      |                 |
|-----------------------------------------------|-----|----------------------|-----------------|
| unity::scopes::SearchMetadata::SearchMetadata | (   | int                  | *cardinality*,  |
|                                               |     | std::string const &  | *locale*,       |
|                                               |     | std::string const &  | *form\_factor*  |
|                                               | )   |                      |                 |

Create <a href="index.html" title="Metadata passed with search requests. ">SearchMetadata</a> with the given cardinality, locale, and form factor.

Parameters  
|              |                                                           |
|--------------|-----------------------------------------------------------|
| cardinality  | maximum number of search results                          |
| locale       | locale string, eg. en\_EN                                 |
| form\_factor | form factor name, e.g. phone, desktop, phone-version etc. |

Member Function Documentation
-----------------------------

<span id="ab00673c4b1264388e0673d525e6d883e" class="anchor"></span>
|                                                                                   |     |     |     |       |
|-----------------------------------------------------------------------------------|-----|-----|-----|-------|
| std::set&lt; std::string &gt; unity::scopes::SearchMetadata::aggregated\_keywords | (   |     | )   | const |

Get the list of scope keywords used to initiate this search request.

Returns  
The list of scope keywords used to initiate this search request.

<span id="a439fca5f1acb2476784e43ca4d01cd3f" class="anchor"></span>
|                                                |     |     |     |       |
|------------------------------------------------|-----|-----|-----|-------|
| int unity::scopes::SearchMetadata::cardinality | (   |     | )   | const |

Get cardinality.

Returns  
The maxmium number of search results, or 0 for no limit.

<span id="ac2815cd1941d463eeffd82fde76c79c7" class="anchor"></span>
|                                                    |     |                      |       |     |       |
|----------------------------------------------------|-----|----------------------|-------|-----|-------|
| bool unity::scopes::SearchMetadata::contains\_hint | (   | std::string const &  | *key* | )   | const |

Check if this <a href="index.html" title="Metadata passed with search requests. ">SearchMetadata</a> has a hint.

Parameters  
|     |                |
|-----|----------------|
| key | The hint name. |

<!-- -->

Returns  
True if the hint is set.

<span id="a3d71111819dbfc9e409ab2ae1d9dce7f" class="anchor"></span>
|                                                   |     |     |     |       |
|---------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::SearchMetadata::has\_location | (   |     | )   | const |

Does the <a href="index.html" title="Metadata passed with search requests. ">SearchMetadata</a> have a location.

Returns  
True if there is a location property.

<span id="ab112cd1adfb1fdd24a1960c7db444531" class="anchor"></span>
|                                                                                                                                       |     |     |     |       |
|---------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> unity::scopes::SearchMetadata::hints | (   |     | )   | const |

Get all hints.

Returns  
Hints dictionary.

<!-- -->

Exceptions  
|                          |                            |
|--------------------------|----------------------------|
| unity::NotFoundException | if no hints are available. |

<span id="ab999e0fd62e31b4c5e3095264ed81672" class="anchor"></span>
|                                                    |     |     |     |       |
|----------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::SearchMetadata::is\_aggregated | (   |     | )   | const |

Check if this search request originated from an aggregator scope.

Returns  
True if this search request originated from an aggregator scope.

<span id="a150922b97294bcda195030648a1f6f1b" class="anchor"></span>
|                                                                                                               |     |     |     |       |
|---------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="unity.scopes.Location.md">Location</a> unity::scopes::SearchMetadata::location | (   |     | )   | const |

Get location.

Returns  
<a href="unity.scopes.Location.md" title="Holds location attributes such as latitude, longitude, etc. ">Location</a> data representing the current location, including attributes such as city and country.

<!-- -->

Exceptions  
|                          |                                   |
|--------------------------|-----------------------------------|
| unity::NotFoundException | if no location data is available. |

<span id="a0f8ec6f0f54b6ecc0fee1cfcf6d630a3" class="anchor"></span>
|                                                                                                                   |     |                      |       |     |     |
|-------------------------------------------------------------------------------------------------------------------|-----|----------------------|-------|-----|-----|
| <a href="unity.scopes.Variant.md">Variant</a> & unity::scopes::SearchMetadata::operator\[\] | (   | std::string const &  | *key* | )   |     |

Returns a reference to a hint.

This method can be used to read or set hints. Setting a value of an existing hint overwrites its previous value. Referencing a non-existing hint automatically creates it with a default value of Variant::Type::Null.

Parameters  
|     |                       |
|-----|-----------------------|
| key | The name of the hint. |

<!-- -->

Returns  
A reference to the hint.

<span id="a811a5da751cfe716e04a30bb8273ad8c" class="anchor"></span>
|                                                                                                                         |     |                      |       |     |       |
|-------------------------------------------------------------------------------------------------------------------------|-----|----------------------|-------|-----|-------|
| <a href="unity.scopes.Variant.md">Variant</a> const & unity::scopes::SearchMetadata::operator\[\] | (   | std::string const &  | *key* | )   | const |

Returns a const reference to a hint.

This method can be used for read-only access to hints. Referencing a non-existing hint throws unity::InvalidArgumentException.

Parameters  
|     |                       |
|-----|-----------------------|
| key | The name of the hint. |

<!-- -->

Returns  
A const reference to the hint.

<!-- -->

Exceptions  
|                          |                                        |
|--------------------------|----------------------------------------|
| unity::NotFoundException | if no hint with the given name exists. |

<span id="a06b9b4acc427e5124f400763bb4f14d0" class="anchor"></span>
|                                                      |     |     |     |     |
|------------------------------------------------------|-----|-----|-----|-----|
| void unity::scopes::SearchMetadata::remove\_location | (   |     | )   |     |

Remove location data entirely.

This method does nothing if no location data is present.

<span id="a20dd440f94658a78eff73a8d66ea98c0" class="anchor"></span>
|                                                               |     |                                        |                        |     |     |
|---------------------------------------------------------------|-----|----------------------------------------|------------------------|-----|-----|
| void unity::scopes::SearchMetadata::set\_aggregated\_keywords | (   | std::set&lt; std::string &gt; const &  | *aggregated\_keywords* | )   |     |

Set the list of scope keywords used to initiate this search request.

Parameters  
|                      |                                                                  |
|----------------------|------------------------------------------------------------------|
| aggregated\_keywords | The list of scope keywords used to initiate this search request. |

<span id="af6ee25cabcefae0204753bd78d5c67f2" class="anchor"></span>
|                                                      |     |      |               |     |     |
|------------------------------------------------------|-----|------|---------------|-----|-----|
| void unity::scopes::SearchMetadata::set\_cardinality | (   | int  | *cardinality* | )   |     |

Set cardinality.

Parameters  
|             |                                       |
|-------------|---------------------------------------|
| cardinality | The maximum number of search results. |

<span id="a7b8bf8376371fd3e90b4b84484822ba2" class="anchor"></span>
|                                               |     |                                                                              |          |
|-----------------------------------------------|-----|------------------------------------------------------------------------------|----------|
| void unity::scopes::SearchMetadata::set\_hint | (   | std::string const &                                                          | *key*,   |
|                                               |     | <a href="unity.scopes.Variant.md">Variant</a> const &  | *value*  |
|                                               | )   |                                                                              |          |

Sets a hint.

Parameters  
|       |                       |
|-------|-----------------------|
| key   | The name of the hint. |
| value | Hint value            |

<span id="aa7f858cb1d9716381836b0e8e9a01d06" class="anchor"></span>
|                                                   |     |                                                                                |            |     |     |
|---------------------------------------------------|-----|--------------------------------------------------------------------------------|------------|-----|-----|
| void unity::scopes::SearchMetadata::set\_location | (   | <a href="unity.scopes.Location.md">Location</a> const &  | *location* | )   |     |

Set location.

Parameters  
|          |                                                                                                                                                  |
|----------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| location | <a href="unity.scopes.Location.md" title="Holds location attributes such as latitude, longitude, etc. ">Location</a> data. |

