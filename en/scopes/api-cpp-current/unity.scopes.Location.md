---
Title: unity.scopes.Location
---
        
Location
========

Holds location attributes such as latitude, longitude, etc. [More...](#details)

`#include <unity/scopes/Location.h>`

pub-methods
------------------------------------------------------

 
<a href="#a29785026741614382c49237af463b134">Location</a> (double <a href="#a50f5c02d7bab4a0d8dd57295a83d30a5">latitude</a>, double <a href="#a29476cb6bb6134f775ced08f49653fbf">longitude</a>)
 
Construct a new Location with the specified latitude and longitude. More...
 
 
<a href="#acd547c0fd175dc09af7f21c2510455d8">Location</a> (<a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> const &variant)
 
Construct a <a href="index.html" title="Holds location attributes such as latitude, longitude, etc. ">Location</a> from a the given serialized VariantMap.
 
double 
<a href="#a835ec1dcd3c73decf26efe07edde7de1">altitude</a> () const
 
Get the altitude. More...
 
bool 
<a href="#acd12460c91fdfe505ca7c48c6d9ff8e0">has_altitude</a> () const
 
Is there an altitude property. More...
 
std::string 
<a href="#a62e2b1a20fca9c7aa7e193d35fc0de1d">area_code</a> () const
 
Get the area code. More...
 
bool 
<a href="#a8f50b410a669b84fabe6b2fb335322e9">has_area_code</a> () const
 
Is there an area code property. More...
 
std::string 
<a href="#af57bae33c7f02bb3aae6f3afdd8751b4">city</a> () const
 
Get the city name. More...
 
bool 
<a href="#ad87381d174720bdf4098ab073ad3036c">has_city</a> () const
 
Is there a city property. More...
 
std::string 
<a href="#a12d1ffb8ebf540f09937f39bd93cf7a3">country_code</a> () const
 
Get the country code. More...
 
bool 
<a href="#afa933efd7a44f0e28757d132c480091e">has_country_code</a> () const
 
Is there a country code property. More...
 
std::string 
<a href="#a8545a7b5d50011c18068f2a90ae7440a">country_name</a> () const
 
Get the country name. More...
 
bool 
<a href="#ade946afbcfe219ad046e35b9818bc6c2">has_country_name</a> () const
 
Is there a country name property. More...
 
double 
<a href="#ab8cae20de2053fd966a895a72b4c4d23">horizontal_accuracy</a> () const
 
Get the horizontal accuracy. More...
 
bool 
<a href="#a849365d5a0a161e282badac69aa38e40">has_horizontal_accuracy</a> () const
 
Is there a horizontal accuracy property. More...
 
double 
<a href="#a50f5c02d7bab4a0d8dd57295a83d30a5">latitude</a> () const
 
Get the latitude. More...
 
double 
<a href="#a29476cb6bb6134f775ced08f49653fbf">longitude</a> () const
 
Get the longitude. More...
 
<a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> 
<a href="#a2d17dfecd743f6777e39f9e06653b7cd">serialize</a> () const
 
Return a dictionary of all location attributes. More...
 
std::string 
<a href="#a16f0fbcf4a0811506c64452289878539">region_code</a> () const
 
Get the region code. More...
 
bool 
<a href="#a18aa845b15b710fb32fa65bb02fcc8ec">has_region_code</a> () const
 
Is there a region code property. More...
 
std::string 
<a href="#a4d13ccb82265c0622092d78fb708578c">region_name</a> () const
 
Get the region name. More...
 
bool 
<a href="#a244f6d61af0d09c6649ff352fd0da1e8">has_region_name</a> () const
 
Is there a region name property. More...
 
double 
<a href="#a99f86caa4eecfeb278b1f8ec0ab640ed">vertical_accuracy</a> () const
 
Get the vertical accuracy. More...
 
bool 
<a href="#a734214294d31266e581aceba1c43fa04">has_vertical_accuracy</a> () const
 
Is there a vertical accuracy property. More...
 
std::string 
<a href="#a2b7a689928e29c415a894dbc1cf640af">zip_postal_code</a> () const
 
Get the zip or postal code. More...
 
bool 
<a href="#aa49d5fcd4e67a86aea6a5354f01682a3">has_zip_postal_code</a> () const
 
Is there a zip / postal code property. More...
 
void 
<a href="#a6fe5248e04481732f75e2f51625ebf23">set_altitude</a> (double <a href="#a835ec1dcd3c73decf26efe07edde7de1">altitude</a>)
 
Set the altitude. More...
 
void 
<a href="#aa2ae4c88a310152f375048fa9e109a70">set_area_code</a> (std::string const &<a href="#a62e2b1a20fca9c7aa7e193d35fc0de1d">area_code</a>)
 
Set the area code. More...
 
void 
<a href="#aa8518fd0a3eb35fbe6242fd3bdbe7635">set_city</a> (std::string const &<a href="#af57bae33c7f02bb3aae6f3afdd8751b4">city</a>)
 
Set the city name. More...
 
void 
<a href="#a458adf562171b91a27cb8402364bd505">set_country_code</a> (std::string const &<a href="#a12d1ffb8ebf540f09937f39bd93cf7a3">country_code</a>)
 
Set the country code. More...
 
void 
<a href="#a6848dccd62f563a2ed7f3afe7deed9bf">set_country_name</a> (std::string const &<a href="#a8545a7b5d50011c18068f2a90ae7440a">country_name</a>)
 
Set the country name. More...
 
void 
<a href="#a9874386c93fa5864fc459fc88e311ee5">set_horizontal_accuracy</a> (double <a href="#ab8cae20de2053fd966a895a72b4c4d23">horizontal_accuracy</a>)
 
Set the horizontal accuracy. More...
 
void 
<a href="#aef5aacbc207c4fff67c0fb5fbb3414be">set_latitude</a> (double <a href="#a50f5c02d7bab4a0d8dd57295a83d30a5">latitude</a>)
 
Set the latitude. More...
 
void 
<a href="#ae0fc9cc4e3d1fd8c2c0c9a7297c3e6b2">set_longitude</a> (double <a href="#a29476cb6bb6134f775ced08f49653fbf">longitude</a>)
 
Set the longitude. More...
 
void 
<a href="#a35ba30e0a576f416854f5962ae292a02">set_region_code</a> (std::string const &<a href="#a16f0fbcf4a0811506c64452289878539">region_code</a>)
 
Set the region code. More...
 
void 
<a href="#aeebff1a970e84a44f5f1cda7c8a9cdd9">set_region_name</a> (std::string const &<a href="#a4d13ccb82265c0622092d78fb708578c">region_name</a>)
 
Set the region name. More...
 
void 
<a href="#aa7e876729fdd07d5141203ad1a805e8c">set_vertical_accuracy</a> (double <a href="#a99f86caa4eecfeb278b1f8ec0ab640ed">vertical_accuracy</a>)
 
Set the vertical\_accuracy. More...
 
void 
<a href="#af0e7c149082d5d55ea6364b921fefcdf">set_zip_postal_code</a> (std::string const &<a href="#a2b7a689928e29c415a894dbc1cf640af">zip_postal_code</a>)
 
Set the zip/postal code. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**Location** (<a href="index.html">Location</a> const &other)
 
 
**Location** (<a href="index.html">Location</a> &&)
 
<a href="index.html">Location</a> & 
**operator=** (<a href="index.html">Location</a> const &other)
 
<a href="index.html">Location</a> & 
**operator=** (<a href="index.html">Location</a> &&)
 
<span id="details"></span>
Detailed Description
--------------------

Holds location attributes such as latitude, longitude, etc.

Constructor & Destructor Documentation
--------------------------------------

<span id="a29785026741614382c49237af463b134" class="anchor"></span>
|                                   |     |         |              |
|-----------------------------------|-----|---------|--------------|
| unity::scopes::Location::Location | (   | double  | *latitude*,  |
|                                   |     | double  | *longitude*  |
|                                   | )   |         |              |

Construct a new <a href="index.html" title="Holds location attributes such as latitude, longitude, etc. ">Location</a> with the specified latitude and longitude.

Parameters  
|           |           |
|-----------|-----------|
| latitude  | Latitude  |
| longitude | Longitude |

Member Function Documentation
-----------------------------

<span id="a835ec1dcd3c73decf26efe07edde7de1" class="anchor"></span>
|                                          |     |     |     |       |
|------------------------------------------|-----|-----|-----|-------|
| double unity::scopes::Location::altitude | (   |     | )   | const |

Get the altitude.

Returns  
The altitude.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                         |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------|
| <a href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if altitude is not set. |

<span id="a62e2b1a20fca9c7aa7e193d35fc0de1d" class="anchor"></span>
|                                                 |     |     |     |       |
|-------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Location::area\_code | (   |     | )   | const |

Get the area code.

Returns  
The area code.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                          |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------|
| <a href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if area code is not set. |

<span id="af57bae33c7f02bb3aae6f3afdd8751b4" class="anchor"></span>
|                                           |     |     |     |       |
|-------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Location::city | (   |     | )   | const |

Get the city name.

Returns  
The city name.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                     |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|
| <a href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if city is not set. |

<span id="a12d1ffb8ebf540f09937f39bd93cf7a3" class="anchor"></span>
|                                                    |     |     |     |       |
|----------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Location::country\_code | (   |     | )   | const |

Get the country code.

Returns  
The country code.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                             |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------|
| <a href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if country code is not set. |

<span id="a8545a7b5d50011c18068f2a90ae7440a" class="anchor"></span>
|                                                    |     |     |     |       |
|----------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Location::country\_name | (   |     | )   | const |

Get the country name.

Returns  
The country name.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                             |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------|
| <a href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if country name is not set. |

<span id="acd12460c91fdfe505ca7c48c6d9ff8e0" class="anchor"></span>
|                                             |     |     |     |       |
|---------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Location::has\_altitude | (   |     | )   | const |

Is there an altitude property.

Returns  
True if there is an altitude property.

<span id="a8f50b410a669b84fabe6b2fb335322e9" class="anchor"></span>
|                                               |     |     |     |       |
|-----------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Location::has\_area\_code | (   |     | )   | const |

Is there an area code property.

Returns  
True if there is an area code property.

<span id="ad87381d174720bdf4098ab073ad3036c" class="anchor"></span>
|                                         |     |     |     |       |
|-----------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Location::has\_city | (   |     | )   | const |

Is there a city property.

Returns  
True if there is a city property.

<span id="afa933efd7a44f0e28757d132c480091e" class="anchor"></span>
|                                                  |     |     |     |       |
|--------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Location::has\_country\_code | (   |     | )   | const |

Is there a country code property.

Returns  
True if there is a country code property.

<span id="ade946afbcfe219ad046e35b9818bc6c2" class="anchor"></span>
|                                                  |     |     |     |       |
|--------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Location::has\_country\_name | (   |     | )   | const |

Is there a country name property.

Returns  
True if there is a country name property.

<span id="a849365d5a0a161e282badac69aa38e40" class="anchor"></span>
|                                                         |     |     |     |       |
|---------------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Location::has\_horizontal\_accuracy | (   |     | )   | const |

Is there a horizontal accuracy property.

Returns  
True if there is a horizontal accuracy property.

<span id="a18aa845b15b710fb32fa65bb02fcc8ec" class="anchor"></span>
|                                                 |     |     |     |       |
|-------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Location::has\_region\_code | (   |     | )   | const |

Is there a region code property.

Returns  
True if there is a region code property.

<span id="a244f6d61af0d09c6649ff352fd0da1e8" class="anchor"></span>
|                                                 |     |     |     |       |
|-------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Location::has\_region\_name | (   |     | )   | const |

Is there a region name property.

Returns  
True if there is a region name property.

<span id="a734214294d31266e581aceba1c43fa04" class="anchor"></span>
|                                                       |     |     |     |       |
|-------------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Location::has\_vertical\_accuracy | (   |     | )   | const |

Is there a vertical accuracy property.

Returns  
True if there is a vertical accuracy property.

<span id="aa49d5fcd4e67a86aea6a5354f01682a3" class="anchor"></span>
|                                                      |     |     |     |       |
|------------------------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Location::has\_zip\_postal\_code | (   |     | )   | const |

Is there a zip / postal code property.

Returns  
True if there is a zip / postal code property.

<span id="ab8cae20de2053fd966a895a72b4c4d23" class="anchor"></span>
|                                                      |     |     |     |       |
|------------------------------------------------------|-----|-----|-----|-------|
| double unity::scopes::Location::horizontal\_accuracy | (   |     | )   | const |

Get the horizontal accuracy.

Returns  
The horizontal accuracy.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                                    |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------|
| <a href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if horizontal accuracy is not set. |

<span id="a50f5c02d7bab4a0d8dd57295a83d30a5" class="anchor"></span>
|                                          |     |     |     |       |
|------------------------------------------|-----|-----|-----|-------|
| double unity::scopes::Location::latitude | (   |     | )   | const |

Get the latitude.

Returns  
The latitude.

<span id="a29476cb6bb6134f775ced08f49653fbf" class="anchor"></span>
|                                           |     |     |     |       |
|-------------------------------------------|-----|-----|-----|-------|
| double unity::scopes::Location::longitude | (   |     | )   | const |

Get the longitude.

Returns  
The longitude.

<span id="a16f0fbcf4a0811506c64452289878539" class="anchor"></span>
|                                                   |     |     |     |       |
|---------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Location::region\_code | (   |     | )   | const |

Get the region code.

Returns  
The region code.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                            |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------|
| <a href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if region code is not set. |

<span id="a4d13ccb82265c0622092d78fb708578c" class="anchor"></span>
|                                                   |     |     |     |       |
|---------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Location::region\_name | (   |     | )   | const |

Get the region name.

Returns  
The region name.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                            |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------|
| <a href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if region name is not set. |

<span id="a2d17dfecd743f6777e39f9e06653b7cd" class="anchor"></span>
|                                                                                                                                     |     |     |     |       |
|-------------------------------------------------------------------------------------------------------------------------------------|-----|-----|-----|-------|
| <a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> unity::scopes::Location::serialize | (   |     | )   | const |

Return a dictionary of all location attributes.

Returns  
Dictionary of all location attributes.

<span id="a6fe5248e04481732f75e2f51625ebf23" class="anchor"></span>
|                                             |     |         |            |     |     |
|---------------------------------------------|-----|---------|------------|-----|-----|
| void unity::scopes::Location::set\_altitude | (   | double  | *altitude* | )   |     |

Set the altitude.

Parameters  
|          |            |
|----------|------------|
| altitude | In meters. |

<span id="aa2ae4c88a310152f375048fa9e109a70" class="anchor"></span>
|                                               |     |                      |              |     |     |
|-----------------------------------------------|-----|----------------------|--------------|-----|-----|
| void unity::scopes::Location::set\_area\_code | (   | std::string const &  | *area\_code* | )   |     |

Set the area code.

Parameters  
|            |                     |
|------------|---------------------|
| area\_code | FIPS10-4 area code. |

<span id="aa8518fd0a3eb35fbe6242fd3bdbe7635" class="anchor"></span>
|                                         |     |                      |        |     |     |
|-----------------------------------------|-----|----------------------|--------|-----|-----|
| void unity::scopes::Location::set\_city | (   | std::string const &  | *city* | )   |     |

Set the city name.

Parameters  
|      |                   |
|------|-------------------|
| city | Name of the city. |

<span id="a458adf562171b91a27cb8402364bd505" class="anchor"></span>
|                                                  |     |                      |                 |     |     |
|--------------------------------------------------|-----|----------------------|-----------------|-----|-----|
| void unity::scopes::Location::set\_country\_code | (   | std::string const &  | *country\_code* | )   |     |

Set the country code.

Parameters  
|               |                        |
|---------------|------------------------|
| country\_code | FIPS10-4 country code. |

<span id="a6848dccd62f563a2ed7f3afe7deed9bf" class="anchor"></span>
|                                                  |     |                      |                 |     |     |
|--------------------------------------------------|-----|----------------------|-----------------|-----|-----|
| void unity::scopes::Location::set\_country\_name | (   | std::string const &  | *country\_name* | )   |     |

Set the country name.

Parameters  
|               |                              |
|---------------|------------------------------|
| country\_name | Human readable country name. |

<span id="a9874386c93fa5864fc459fc88e311ee5" class="anchor"></span>
|                                                         |     |         |                        |     |     |
|---------------------------------------------------------|-----|---------|------------------------|-----|-----|
| void unity::scopes::Location::set\_horizontal\_accuracy | (   | double  | *horizontal\_accuracy* | )   |     |

Set the horizontal accuracy.

Parameters  
|                      |                       |
|----------------------|-----------------------|
| horizontal\_accuracy | Horizontal accouracy. |

<span id="aef5aacbc207c4fff67c0fb5fbb3414be" class="anchor"></span>
|                                             |     |         |            |     |     |
|---------------------------------------------|-----|---------|------------|-----|-----|
| void unity::scopes::Location::set\_latitude | (   | double  | *latitude* | )   |     |

Set the latitude.

Parameters  
|          |           |
|----------|-----------|
| latitude | Latitude. |

<span id="ae0fc9cc4e3d1fd8c2c0c9a7297c3e6b2" class="anchor"></span>
|                                              |     |         |             |     |     |
|----------------------------------------------|-----|---------|-------------|-----|-----|
| void unity::scopes::Location::set\_longitude | (   | double  | *longitude* | )   |     |

Set the longitude.

Parameters  
|           |           |
|-----------|-----------|
| longitude | Latitude. |

<span id="a35ba30e0a576f416854f5962ae292a02" class="anchor"></span>
|                                                 |     |                      |                |     |     |
|-------------------------------------------------|-----|----------------------|----------------|-----|-----|
| void unity::scopes::Location::set\_region\_code | (   | std::string const &  | *region\_code* | )   |     |

Set the region code.

Parameters  
|              |                       |
|--------------|-----------------------|
| region\_code | FIPS10-4 region code. |

<span id="aeebff1a970e84a44f5f1cda7c8a9cdd9" class="anchor"></span>
|                                                 |     |                      |                |     |     |
|-------------------------------------------------|-----|----------------------|----------------|-----|-----|
| void unity::scopes::Location::set\_region\_name | (   | std::string const &  | *region\_name* | )   |     |

Set the region name.

Parameters  
|              |                             |
|--------------|-----------------------------|
| region\_name | Human readable region name. |

<span id="aa7e876729fdd07d5141203ad1a805e8c" class="anchor"></span>
|                                                       |     |         |                      |     |     |
|-------------------------------------------------------|-----|---------|----------------------|-----|-----|
| void unity::scopes::Location::set\_vertical\_accuracy | (   | double  | *vertical\_accuracy* | )   |     |

Set the vertical\_accuracy.

Parameters  
|                    |                              |
|--------------------|------------------------------|
| vertical\_accuracy | Vertical accuracy in meters. |

<span id="af0e7c149082d5d55ea6364b921fefcdf" class="anchor"></span>
|                                                      |     |                      |                     |     |     |
|------------------------------------------------------|-----|----------------------|---------------------|-----|-----|
| void unity::scopes::Location::set\_zip\_postal\_code | (   | std::string const &  | *zip\_postal\_code* | )   |     |

Set the zip/postal code.

Parameters  
|                   |                              |
|-------------------|------------------------------|
| zip\_postal\_code | Either a zip or postal code. |

<span id="a99f86caa4eecfeb278b1f8ec0ab640ed" class="anchor"></span>
|                                                    |     |     |     |       |
|----------------------------------------------------|-----|-----|-----|-------|
| double unity::scopes::Location::vertical\_accuracy | (   |     | )   | const |

Get the vertical accuracy.

Returns  
The vertical accuracy.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                                  |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------|
| <a href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if vertical accuracy is not set. |

<span id="a2b7a689928e29c415a894dbc1cf640af" class="anchor"></span>
|                                                        |     |     |     |       |
|--------------------------------------------------------|-----|-----|-----|-------|
| std::string unity::scopes::Location::zip\_postal\_code | (   |     | )   | const |

Get the zip or postal code.

Returns  
The zip or postal code.

<!-- -->

Exceptions  
|                                                                                                                                                                                             |                            |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------|
| <a href="unity.scopes.NotFoundException.md" title="Exception to indicate that an object wasn&#39;t found by a lookup function. ">unity::scopes::NotFoundException</a> | if postal code is not set. |

