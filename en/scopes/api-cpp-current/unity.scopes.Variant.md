---
Title: unity.scopes.Variant
---
        
Variant
=======

Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. [More...](#details)

`#include <unity/scopes/Variant.h>`

pub-types
-----------------------------------------

<span id="a84e79f64156503599a549d86230a2cf5" class="anchor"></span>enum  
<a href="#a84e79f64156503599a549d86230a2cf5">Type</a> {
  **Null**, **Int**, **Bool**, **String**,
  **Double**, **Dict**, **Array**, **Int64**
}
 
Type of value held by a <a href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> instance.
 
pub-methods
------------------------------------------------------

Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**Variant** (<a href="index.html">Variant</a> const &)
 
 
**Variant** (<a href="index.html">Variant</a> &&)
 
<a href="index.html">Variant</a> & 
**operator=** (<a href="index.html">Variant</a> const &)
 
<a href="index.html">Variant</a> & 
**operator=** (<a href="index.html">Variant</a> &&)
 
Value assignment

The assignment operators replace the value currently held by a <a href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> with the supplied value, potentially changing the type of the value held by the <a href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a>. Assigning a `const char*` to a <a href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> stores the corresponding `std::string` value.

<a href="index.html">Variant</a> & 
**operator=** (int val) noexcept
 
<a href="index.html">Variant</a> & 
**operator=** (int64\_t val) noexcept
 
<a href="index.html">Variant</a> & 
**operator=** (double val) noexcept
 
<a href="index.html">Variant</a> & 
**operator=** (bool val) noexcept
 
<a href="index.html">Variant</a> & 
**operator=** (std::string const &val)
 
<a href="index.html">Variant</a> & 
**operator=** (char const \*val)
 
<a href="index.html">Variant</a> & 
**operator=** (<a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> const &val)
 
<a href="index.html">Variant</a> & 
**operator=** (<a href="../unity.scopes.md#aa3bf32d584efd902bca79698a07dd934">VariantArray</a> const &val)
 
Comparison operators

Two variants are considered equal if they both store values of the same type and equal value.

For Variants storing values of different type, ordering follows the types defined in the Type enum. For example, any integer value compares less than any boolean value. For Variants of the same type, the stored values determine order as usual.

bool 
**operator==** (<a href="index.html">Variant</a> const &) const noexcept
 
bool 
**operator&lt;** (<a href="index.html">Variant</a> const &) const noexcept
 
Value accessors

The accessor methods retrieve a value of the specified type.

If a <a href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> currently stores a value of different type, these methods throw `unity::LogicException`.

int 
**get\_int** () const
 
int64\_t 
**get\_int64\_t** () const
 
double 
**get\_double** () const
 
bool 
**get\_bool** () const
 
std::string 
**get\_string** () const
 
<a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> 
**get\_dict** () const
 
<a href="../unity.scopes.md#aa3bf32d584efd902bca79698a07dd934">VariantArray</a> 
**get\_array** () const
 
bool 
<a href="#abcbee9f21657da6ccabff844bb5f472f">is_null</a> () const
 
Test if variant holds null value. More...
 
Observers

<a href="#a84e79f64156503599a549d86230a2cf5">Type</a> 
<a href="#a5d5234019ce1069df485d539852f23be">which</a> () const noexcept
 
Returns the type of value currently stored by this <a href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a>.
 
Modifiers

void 
<a href="#a84e3a3281dd078fc7a690e17104f0c07">swap</a> (<a href="index.html">Variant</a> &other) noexcept
 
Swaps the contents of this <a href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> with `other`.
 
member-group
-----------------------------------------------------------

 
<a href="#afb7dc4ba8297d82003009cd5e22a0056">Variant</a> () noexcept
 
The default constructor creates a <a href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> instance containing a null.
 
 
<a href="#a4c011541041207fb0aac2455a004dd91">Variant</a> (int val) noexcept
 
Creates a <a href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> instance that stores the supplied integer.
 
 
**Variant** (int64\_t val) noexcept
 
 
<a href="#aa0965c3cf5bf396709b90f88e9e84069">Variant</a> (double val) noexcept
 
Creates a <a href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> instance that stores the supplied double.
 
 
<a href="#a10b5eeaa5716be6e87878e9abfa4a54d">Variant</a> (bool val) noexcept
 
Creates a <a href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> instance that stores the supplied boolean.
 
 
<a href="#aeef78caa145819293d14672537f299f2">Variant</a> (std::string const &val)
 
Creates a <a href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> instance that stores the supplied string.
 
 
<a href="#a5608d071cccb81fa5f6840210df332c9">Variant</a> (char const \*val)
 
Converts the supplied pointer to a string and stores the string in the <a href="index.html" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> instance.
 
 
**Variant** (<a href="../unity.scopes.md#ad5d8ccfa11a327fca6f3e4cee11f4c10">VariantMap</a> const &val)
 
 
**Variant** (<a href="../unity.scopes.md#aa3bf32d584efd902bca79698a07dd934">VariantArray</a> const &val)
 
 
<a href="#ac03ed47f49e4c5f4ec4d4a663fdd3945">~Variant</a> ()
 
Destructor.
 
static <a href="index.html">Variant</a> const & 
<a href="#a2bd2d5425fdec9af9340c22e3b47ac1c">null</a> ()
 
Construct a null variant.
 
member-group
---------------------------------------------

std::string 
<a href="#a60d63bafa627e24f14c39790573b34db">serialize_json</a> () const
 
Serializes the variant to a JSON encoded string.
 
static <a href="index.html">Variant</a> 
<a href="#aa2defbe2d1601c38c2a2188eb547b44b">deserialize_json</a> (std::string const &json\_string)
 
Deserializes a JSON encoded string to a `Variant`.
 
<span id="details"></span>
Detailed Description
--------------------

Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value.

Member Function Documentation
-----------------------------

<span id="abcbee9f21657da6ccabff844bb5f472f" class="anchor"></span>
|                                       |     |     |     |       |
|---------------------------------------|-----|-----|-----|-------|
| bool unity::scopes::Variant::is\_null | (   |     | )   | const |

Test if variant holds null value.

Returns  
True if variant holds null.

