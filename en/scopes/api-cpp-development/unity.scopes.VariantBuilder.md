---
Title: unity.scopes.VariantBuilder
---
        
VariantBuilder
==============

Helper class for creating and populating <a href="unity.scopes.Variant.md" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> containers. [More...](#details)

`#include <unity/scopes/VariantBuilder.h>`

pub-methods
------------------------------------------------------

void 
<a href="#a6636c251658079d95b2c9da9fac297d5">add_tuple</a> (std::initializer\_list&lt; std::pair&lt; std::string, <a href="unity.scopes.Variant.md">Variant</a> &gt;&gt; const &tuple)
 
Adds a tuple of key-value pairs to an array. More...
 
void 
<a href="#aea54406435e03542d10da70cd04a6b80">add_tuple</a> (std::vector&lt; std::pair&lt; std::string, <a href="unity.scopes.Variant.md">Variant</a> &gt;&gt; const &tuple)
 
Adds a tuple of key-value pairs to an array. More...
 
<a href="unity.scopes.Variant.md">Variant</a> 
<a href="#abc6c1133cffc6730df7470185460e802">end</a> ()
 
Retrieves a completed variant. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**VariantBuilder** (<a href="index.html">VariantBuilder</a> const &other)
 
 
**VariantBuilder** (<a href="index.html">VariantBuilder</a> &&other)
 
<a href="index.html">VariantBuilder</a> & 
**operator=** (<a href="index.html">VariantBuilder</a> const &other)
 
<a href="index.html">VariantBuilder</a> & 
**operator=** (<a href="index.html">VariantBuilder</a> &&other)
 
<span id="details"></span>
Detailed Description
--------------------

Helper class for creating and populating <a href="unity.scopes.Variant.md" title="Simple variant class that can hold an integer, boolean, string, double, dictionary, array or null value. ">Variant</a> containers.

The main purpose of this class is to ease creation of variant containers needed for <a href="unity.scopes.PreviewWidget.md" title="A widget for a preview. ">PreviewWidget</a> instances or any other classes that require non-trivial variant definitions.

For example, the value of the "rating" key of the following JSON template

{

<span class="stringliteral">"type"</span>: <span class="stringliteral">"reviews"</span>,

...

<span class="stringliteral">"reviews"</span>: \[{<span class="stringliteral">"rating"</span>: null, <span class="stringliteral">"review"</span>: null, <span class="stringliteral">"author"</span>: null}\]

}

can be created with <a href="index.html" title="Helper class for creating and populating Variant containers. ">VariantBuilder</a> as follows:

VariantBuilder builder;

builder.add\_tuple({{<span class="stringliteral">"rating"</span>, <a href="../unity.scopes.Variant.md#a2bd2d5425fdec9af9340c22e3b47ac1c" class="code">Variant::null</a>())}, {<span class="stringliteral">"review"</span>, <a href="../unity.scopes.Variant.md#a2bd2d5425fdec9af9340c22e3b47ac1c" class="code">Variant::null</a>()}, {<span class="stringliteral">"author"</span>, <a href="../unity.scopes.Variant.md#a2bd2d5425fdec9af9340c22e3b47ac1c" class="code">Variant::null</a>()}});

Member Function Documentation
-----------------------------

<span id="a6636c251658079d95b2c9da9fac297d5" class="anchor"></span>
|                                                |     |                                                                                                                                             |         |     |     |
|------------------------------------------------|-----|---------------------------------------------------------------------------------------------------------------------------------------------|---------|-----|-----|
| void unity::scopes::VariantBuilder::add\_tuple | (   | std::initializer\_list&lt; std::pair&lt; std::string, <a href="unity.scopes.Variant.md">Variant</a> &gt;&gt; const &  | *tuple* | )   |     |

Adds a tuple of key-value pairs to an array.

It can be used multiple times to create an array of tuples, for example:

\[{<span class="stringliteral">"a"</span>: 1, <span class="stringliteral">"b"</span>: 2}, {<span class="stringliteral">"c"</span>: 2, <span class="stringliteral">"d"</span> : 3}\]

can be created with:

VariantBuilder builder;

builder.add\_tuple({{<span class="stringliteral">"a"</span>, Variant(1)}, {<span class="stringliteral">"b"</span>, Variant(2)}});

builder.add\_tuple({{<span class="stringliteral">"c"</span>, Variant(2)}, {<span class="stringliteral">"d"</span>, Variant(3)}});

<span id="aea54406435e03542d10da70cd04a6b80" class="anchor"></span>
|                                                |     |                                                                                                                                  |         |     |     |
|------------------------------------------------|-----|----------------------------------------------------------------------------------------------------------------------------------|---------|-----|-----|
| void unity::scopes::VariantBuilder::add\_tuple | (   | std::vector&lt; std::pair&lt; std::string, <a href="unity.scopes.Variant.md">Variant</a> &gt;&gt; const &  | *tuple* | )   |     |

Adds a tuple of key-value pairs to an array.

This is an overloaded version of add\_tuple that accepts `std::vector` instead of `std::initializer_list`, making it more convenient for language bindings.

<span id="abc6c1133cffc6730df7470185460e802" class="anchor"></span>
|                                                                                                        |     |     |     |     |
|--------------------------------------------------------------------------------------------------------|-----|-----|-----|-----|
| <a href="unity.scopes.Variant.md">Variant</a> unity::scopes::VariantBuilder::end | (   |     | )   |     |

Retrieves a completed variant.

Returns the completed variant and resets this builder, so the builder can be re-used.

Returns  
The completed variant.

<!-- -->

Exceptions  
|                       |                                         |
|-----------------------|-----------------------------------------|
| unity::LogicException | if the builder does not hold a variant. |

