---
Title: unity.scopes.qt.QVariantBuilder
---
        
QVariantBuilder
===============

Helper class for creating and populating QVariant containers. [More...](#details)

`#include <unity/scopes/qt/QVariantBuilder.h>`

pub-methods
------------------------------------------------------

void 
<a href="#a379142f075b92183acf729798ebc5794">add_tuple</a> (std::initializer\_list&lt; QPair&lt; QString, QVariant &gt;&gt; const &tuple)
 
Adds a tuple of key-value pairs to an array. More...
 
void 
<a href="#a0fd901e8b0b1c7f6e78a993fd445b55c">add_tuple</a> (QVector&lt; QPair&lt; QString, QVariant &gt;&gt; const &tuple)
 
Adds a tuple of key-value pairs to an array. More...
 
QVariant 
<a href="#aaf11b857f040eb86cda244190166ee5b">end</a> ()
 
Retrieves a completed variant. More...
 
Copy and assignment

Copy and assignment operators (move and non-move versions) have the usual value semantics.

 
**QVariantBuilder** (<a href="index.html">QVariantBuilder</a> const &other)
 
 
**QVariantBuilder** (<a href="index.html">QVariantBuilder</a> &&other)
 
<a href="index.html">QVariantBuilder</a> & 
**operator=** (<a href="index.html">QVariantBuilder</a> const &other)
 
<a href="index.html">QVariantBuilder</a> & 
**operator=** (<a href="index.html">QVariantBuilder</a> &&other)
 
<span id="details"></span>
Detailed Description
--------------------

Helper class for creating and populating QVariant containers.

The main purpose of this class is to ease creation of variant containers needed for <a href="unity.scopes.qt.QPreviewWidget.md" title="Widget used in Preview. ">QPreviewWidget</a> instances or any other classes that require non-trivial variant definitions.

For example, the value of the "rating" key of the following JSON template

{

<span class="stringliteral">"type"</span>: <span class="stringliteral">"reviews"</span>,

...

<span class="stringliteral">"reviews"</span>: \[{<span class="stringliteral">"rating"</span>: null, <span class="stringliteral">"review"</span>: null, <span class="stringliteral">"author"</span>: null}\]

}

can be created with <a href="index.html" title="Helper class for creating and populating QVariant containers. ">QVariantBuilder</a> as follows:

VariantBuilder builder;

builder.add\_tuple({{<span class="stringliteral">"rating"</span>, QVariant()}, {<span class="stringliteral">"review"</span>, QVariant()}, {<span class="stringliteral">"author"</span>, QVariant()}});

Member Function Documentation
-----------------------------

<span id="a379142f075b92183acf729798ebc5794" class="anchor"></span>
|                                  |     |                                                                          |         |     |     |
|----------------------------------|-----|--------------------------------------------------------------------------|---------|-----|-----|
| void QVariantBuilder::add\_tuple | (   | std::initializer\_list&lt; QPair&lt; QString, QVariant &gt;&gt; const &  | *tuple* | )   |     |

Adds a tuple of key-value pairs to an array.

It can be used multiple times to create an array of tuples, for example:

\[{<span class="stringliteral">"a"</span>: 1, <span class="stringliteral">"b"</span>: 2}, {<span class="stringliteral">"c"</span>: 2, <span class="stringliteral">"d"</span> : 3}\]

can be created with:

QVariantBuilder builder;

builder.add\_tuple({{<span class="stringliteral">"a"</span>, QVariant(1)}, {<span class="stringliteral">"b"</span>, QVariant(2)}});

builder.add\_tuple({{<span class="stringliteral">"c"</span>, QVariant(2)}, {<span class="stringliteral">"d"</span>, QVariant(3)}});

<span id="a0fd901e8b0b1c7f6e78a993fd445b55c" class="anchor"></span>
|                                  |     |                                                           |         |     |     |
|----------------------------------|-----|-----------------------------------------------------------|---------|-----|-----|
| void QVariantBuilder::add\_tuple | (   | QVector&lt; QPair&lt; QString, QVariant &gt;&gt; const &  | *tuple* | )   |     |

Adds a tuple of key-value pairs to an array.

This is an overloaded version of add\_tuple that accepts `QVector` instead of `std::initializer_list`.

<span id="aaf11b857f040eb86cda244190166ee5b" class="anchor"></span>
|                               |     |     |     |     |
|-------------------------------|-----|-----|-----|-----|
| QVariant QVariantBuilder::end | (   |     | )   |     |

Retrieves a completed variant.

Returns the completed variant and resets this builder, so the builder can be re-used.

Returns  
The completed variant.

<!-- -->

Exceptions  
|                       |                                         |
|-----------------------|-----------------------------------------|
| unity::LogicException | if the builder does not hold a variant. |

